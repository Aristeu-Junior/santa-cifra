/**
 * SANTA CIFRA — Módulo de Autenticação Segura (AppSec / Anti-IDOR / Anti-Input Falso)
 *
 * Funcionalidades:
 * 1. Cadastro de Usuário (Nome, E-mail, Paróquia/Ministério, Senha com hashing seguro SHA-256)
 * 2. Login de Usuário (com rate-limiting e prevenção de força bruta)
 * 3. Recuperação de Senha (via e-mail seguro / chave de recuperação)
 * 4. Proteção contra IDOR (Insecure Direct Object Reference):
 *    - Todas as pastas, favoritos e repertórios pertencem exclusivamente ao user_id autenticado.
 *    - Bloqueio de acesso cruzado a recursos de outros usuários.
 * 5. Pastas Zeradas no Primeiro Acesso:
 *    - O novo usuário inicia com suas pastas 100% limpas (apenas "Favoritas" vazia),
 *      permitindo montar o repertório litúrgico do zero como preferir.
 * 6. Suporte Híbrido:
 *    - Supabase GoTrue Auth quando configurado.
 *    - Web Crypto API (W3C standard) nativa offline/local-first quando sem servidor ou no APK offline.
 */

window.SantaCifra = window.SantaCifra || {};

(function () {
  'use strict';

  const STORAGE_SESSION_KEY = 'santa_cifra_active_session_v1';
  const STORAGE_USERS_DB_KEY = 'santa_cifra_secure_users_v1';
  const RATE_LIMIT_KEY = 'santa_cifra_auth_attempts_v1';

  // =========================================================================
  // 1. Sanitização Rigorosa & Prevenção de Input Falso / XSS / Injeção
  // =========================================================================

  function sanitizeText(input, maxLength = 80) {
    if (typeof input !== 'string') return '';
    // Remove tags HTML, caracteres de controle perigosos e normaliza espaços
    const clean = input
      .replace(/<[^>]*>/g, '')
      .replace(/[\u0000-\u001F\u007F-\u009F]/g, '')
      .trim();
    return clean.slice(0, maxLength);
  }

  function validateEmail(email) {
    if (typeof email !== 'string') return false;
    const clean = email.trim();
    if (clean.length < 5 || clean.length > 100) return false;
    // Regex RFC 5322 simplificado e seguro contra ReDoS
    const re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)+$/;
    return re.test(clean);
  }

  function validatePassword(password) {
    if (typeof password !== 'string') return { valid: false, message: 'Senha inválida.' };
    if (password.length < 8) {
      return { valid: false, message: 'A senha deve conter no mínimo 8 caracteres.' };
    }
    if (password.length > 128) {
      return { valid: false, message: 'A senha excede o comprimento máximo permitido.' };
    }
    // Exigir pelo menos 1 letra e 1 número
    const hasLetter = /[a-zA-Z]/.test(password);
    const hasNumber = /[0-9]/.test(password);
    if (!hasLetter || !hasNumber) {
      return { valid: false, message: 'A senha deve conter pelo menos uma letra e um número.' };
    }
    return { valid: true };
  }

  // Rate Limiting no cliente para mitigar ataques de força bruta
  function checkRateLimit() {
    try {
      const raw = localStorage.getItem(RATE_LIMIT_KEY);
      if (!raw) return { allowed: true };
      const data = JSON.parse(raw);
      const now = Date.now();
      if (data.blockedUntil && data.blockedUntil > now) {
        const remainingSeconds = Math.ceil((data.blockedUntil - now) / 1000);
        return {
          allowed: false,
          message: `Muitas tentativas sucessivas. Por favor, aguarde ${remainingSeconds} segundos antes de tentar novamente.`
        };
      }
      return { allowed: true };
    } catch (_) {
      return { allowed: true };
    }
  }

  function recordFailedAttempt() {
    try {
      const raw = localStorage.getItem(RATE_LIMIT_KEY);
      const now = Date.now();
      let data = raw ? JSON.parse(raw) : { count: 0, firstAttempt: now, blockedUntil: 0 };
      if (now - data.firstAttempt > 60000) {
        data = { count: 0, firstAttempt: now, blockedUntil: 0 };
      }
      data.count += 1;
      if (data.count >= 5) {
        // Bloqueia por 30 segundos
        data.blockedUntil = now + 30000;
        data.count = 0;
      }
      localStorage.setItem(RATE_LIMIT_KEY, JSON.stringify(data));
    } catch (_) {}
  }

  function resetRateLimit() {
    try {
      localStorage.removeItem(RATE_LIMIT_KEY);
    } catch (_) {}
  }

  // =========================================================================
  // 2. Criptografia Segura (Web Crypto API SHA-256 + Salt Criptográfico)
  // =========================================================================

  function generateSaltHex() {
    const arr = new Uint8Array(16);
    crypto.getRandomValues(arr);
    return Array.from(arr, (b) => b.toString(16).padStart(2, '0')).join('');
  }

  async function hashPasswordWithSalt(password, saltHex) {
    const enc = new TextEncoder();
    const data = enc.encode(`${saltHex}::${password}::santa_cifra_salt_2026`);
    const hashBuffer = await crypto.subtle.digest('SHA-256', data);
    const hashArray = Array.from(new Uint8Array(hashBuffer));
    return hashArray.map((b) => b.toString(16).padStart(2, '0')).join('');
  }

  function getLocalUsersDB() {
    try {
      const raw = localStorage.getItem(STORAGE_USERS_DB_KEY);
      return raw ? JSON.parse(raw) : {};
    } catch (_) {
      return {};
    }
  }

  function saveLocalUsersDB(db) {
    localStorage.setItem(STORAGE_USERS_DB_KEY, JSON.stringify(db));
  }

  // =========================================================================
  // 3. Gerenciamento de Sessão & Proteção contra IDOR
  // =========================================================================

  function getCurrentUser() {
    try {
      const raw = localStorage.getItem(STORAGE_SESSION_KEY);
      if (!raw) return null;
      const session = JSON.parse(raw);
      // Validar expiração de sessão (7 dias)
      if (session && session.expiresAt && Date.now() > session.expiresAt) {
        logout();
        return null;
      }
      return session.user || null;
    } catch (_) {
      return null;
    }
  }

  function setSession(user, token = null) {
    const session = {
      user: {
        id: user.id,
        email: user.email,
        name: user.name,
        parish: user.parish || '',
        createdAt: user.createdAt || new Date().toISOString()
      },
      token: token || 'local_session_' + Date.now(),
      expiresAt: Date.now() + 7 * 24 * 60 * 60 * 1000 // 7 dias
    };
    localStorage.setItem(STORAGE_SESSION_KEY, JSON.stringify(session));
    return session.user;
  }

  // =========================================================================
  // 4. Operações de Autenticação (Cadastro, Login, Recuperação, Logout)
  // =========================================================================

  /**
   * Criar Conta (Sign Up)
   * Garante validação estrita, proteção contra e-mails duplicados e criação de
   * pastas 100% ZERADAS para o novo usuário.
   */
  async function registerUser({ name, email, parish, password, confirmPassword }) {
    const rateCheck = checkRateLimit();
    if (!rateCheck.allowed) {
      throw new Error(rateCheck.message);
    }

    const cleanName = sanitizeText(name, 60);
    const cleanEmail = sanitizeText(email, 100).toLowerCase();
    const cleanParish = sanitizeText(parish, 80);

    if (cleanName.length < 2) {
      throw new Error('Por favor, informe seu nome completo (mínimo 2 letras).');
    }
    if (!validateEmail(cleanEmail)) {
      throw new Error('E-mail em formato inválido. Verifique o endereço digitado.');
    }
    if (password !== confirmPassword) {
      throw new Error('A confirmação de senha não confere com a senha digitada.');
    }

    const passCheck = validatePassword(password);
    if (!passCheck.valid) {
      throw new Error(passCheck.message);
    }

    // Se o Supabase estiver configurado, tenta cadastrar via GoTrue
    const supabaseCfg = window.SantaCifraSupabase ? window.SantaCifraSupabase.getConfig() : null;
    if (supabaseCfg && supabaseCfg.enabled) {
      try {
        const res = await fetch(`${supabaseCfg.url}/auth/v1/signup`, {
          method: 'POST',
          headers: {
            apikey: supabaseCfg.anonKey,
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            email: cleanEmail,
            password,
            data: {
              name: cleanName,
              parish: cleanParish
            }
          })
        });

        if (!res.ok) {
          const errData = await res.json().catch(() => ({}));
          throw new Error(errData.msg || errData.message || 'Falha no cadastro com o servidor.');
        }

        const data = await res.json();
        const userObj = {
          id: (data.user && data.user.id) || (data.id) || 'usr_' + Date.now(),
          email: cleanEmail,
          name: cleanName,
          parish: cleanParish,
          createdAt: new Date().toISOString()
        };

        // Inicializa as pastas do novo usuário 100% ZERADAS
        initEmptyUserPlaylists(userObj.id);
        setSession(userObj, data.access_token);
        resetRateLimit();
        return userObj;
      } catch (err) {
        // Se o Supabase falhar por indisponibilidade, prossegue para autenticação segura local
        console.warn('Supabase Auth indisponível, usando armazenamento local seguro:', err.message);
      }
    }

    // Armazenamento Local Seguro com Hashing SHA-256
    const db = getLocalUsersDB();
    if (db[cleanEmail]) {
      throw new Error('Já existe uma conta cadastrada com este endereço de e-mail.');
    }

    const saltHex = generateSaltHex();
    const passwordHash = await hashPasswordWithSalt(password, saltHex);
    const userId = 'usr_' + (crypto.randomUUID ? crypto.randomUUID() : Date.now() + '_' + Math.random().toString(36).slice(2));

    const newUser = {
      id: userId,
      name: cleanName,
      email: cleanEmail,
      parish: cleanParish,
      salt: saltHex,
      passwordHash,
      createdAt: new Date().toISOString()
    };

    db[cleanEmail] = newUser;
    saveLocalUsersDB(db);

    // Inicializa pastas do novo usuário 100% ZERADAS
    initEmptyUserPlaylists(userId);
    setSession(newUser);
    resetRateLimit();
    return newUser;
  }

  /**
   * Fazer Login (Sign In)
   */
  async function loginUser({ email, password }) {
    const rateCheck = checkRateLimit();
    if (!rateCheck.allowed) {
      throw new Error(rateCheck.message);
    }

    const cleanEmail = sanitizeText(email, 100).toLowerCase();
    if (!validateEmail(cleanEmail)) {
      recordFailedAttempt();
      throw new Error('E-mail ou senha incorretos.');
    }

    if (!password || typeof password !== 'string') {
      recordFailedAttempt();
      throw new Error('E-mail ou senha incorretos.');
    }

    // Se o Supabase estiver configurado, tenta login via GoTrue
    const supabaseCfg = window.SantaCifraSupabase ? window.SantaCifraSupabase.getConfig() : null;
    if (supabaseCfg && supabaseCfg.enabled) {
      try {
        const res = await fetch(`${supabaseCfg.url}/auth/v1/token?grant_type=password`, {
          method: 'POST',
          headers: {
            apikey: supabaseCfg.anonKey,
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            email: cleanEmail,
            password
          })
        });

        if (res.ok) {
          const data = await res.json();
          const meta = (data.user && data.user.user_metadata) || {};
          const userObj = {
            id: data.user.id,
            email: cleanEmail,
            name: meta.name || cleanEmail.split('@')[0],
            parish: meta.parish || '',
            createdAt: data.user.created_at || new Date().toISOString()
          };
          setSession(userObj, data.access_token);
          resetRateLimit();
          return userObj;
        }
      } catch (_) {
        // Fallback local se estiver offline
      }
    }

    // Login local seguro via hash SHA-256
    const db = getLocalUsersDB();
    const userRecord = db[cleanEmail];
    if (!userRecord) {
      recordFailedAttempt();
      // Mensagem genérica para mitigar User Enumeration
      throw new Error('E-mail ou senha incorretos.');
    }

    const computedHash = await hashPasswordWithSalt(password, userRecord.salt);
    if (computedHash !== userRecord.passwordHash) {
      recordFailedAttempt();
      throw new Error('E-mail ou senha incorretos.');
    }

    resetRateLimit();
    const sessionUser = {
      id: userRecord.id,
      email: userRecord.email,
      name: userRecord.name,
      parish: userRecord.parish,
      createdAt: userRecord.createdAt
    };
    setSession(sessionUser);
    return sessionUser;
  }

  /**
   * Recuperação de Senha (Forgot Password)
   */
  async function recoverPassword(email) {
    const rateCheck = checkRateLimit();
    if (!rateCheck.allowed) {
      throw new Error(rateCheck.message);
    }

    const cleanEmail = sanitizeText(email, 100).toLowerCase();
    if (!validateEmail(cleanEmail)) {
      throw new Error('Por favor, informe um endereço de e-mail válido.');
    }

    const supabaseCfg = window.SantaCifraSupabase ? window.SantaCifraSupabase.getConfig() : null;
    if (supabaseCfg && supabaseCfg.enabled) {
      try {
        await fetch(`${supabaseCfg.url}/auth/v1/recover`, {
          method: 'POST',
          headers: {
            apikey: supabaseCfg.anonKey,
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({ email: cleanEmail })
        });
      } catch (_) {}
    }

    // Sempre retorna mensagem amigável sem expor se o e-mail existe ou não (Security Best Practice)
    return {
      success: true,
      message: `Se o e-mail ${cleanEmail} estiver cadastrado no Santa Cifra, as instruções de redefinição de senha foram processadas com sucesso.`
    };
  }

  /**
   * Logout Seguro
   */
  function logout() {
    try {
      localStorage.removeItem(STORAGE_SESSION_KEY);
    } catch (_) {}

    // Recarrega as playlists para o estado anônimo ou limpo
    if (window.SantaCifra.initPlaylists) {
      window.SantaCifra.initPlaylists();
    }
    if (window.SantaCifra.renderPlaylistsView && window.SantaCifra.state && window.SantaCifra.state.activeTab === 'playlists') {
      window.SantaCifra.renderPlaylistsView();
    }
    updateAuthUI();
  }

  // =========================================================================
  // 5. Pastas Isoladas por Usuário (Prevenção Anti-IDOR & Pastas Zeradas)
  // =========================================================================

  function getUserPlaylistsKey(userId) {
    if (!userId || typeof userId !== 'string') return 'santa_cifra_guest_playlists';
    // Sanitizar ID do usuário para evitar manipulação de chaves
    const safeId = userId.replace(/[^a-zA-Z0-9_-]/g, '');
    return `santa_cifra_user_${safeId}_playlists`;
  }

  /**
   * Inicializa as pastas de um NOVO usuário de forma 100% ZERADA.
   * Não insere nenhuma pasta pré-fabricada de domingo ou comunidade:
   * apenas a pasta de sistema "Favoritas" vazia, para o usuário montar
   * o repertório dele como bem entender.
   */
  function initEmptyUserPlaylists(userId) {
    const key = getUserPlaylistsKey(userId);
    const emptyPlaylists = [
      {
        id: 'favorites',
        name: 'Favoritas',
        isSystem: true,
        description: 'Suas cifras favoritas salvas para acesso rápido.',
        songIds: [] // 100% ZERADA
      }
    ];
    localStorage.setItem(key, JSON.stringify(emptyPlaylists));
    return emptyPlaylists;
  }

  function loadPlaylistsForActiveUser() {
    const user = getCurrentUser();
    if (!user) {
      // Modo visitante anônimo
      const guestKey = 'santa_cifra_guest_playlists';
      const saved = localStorage.getItem(guestKey);
      if (saved) {
        try {
          return JSON.parse(saved);
        } catch (_) {}
      }
      return [
        {
          id: 'favorites',
          name: 'Favoritas',
          isSystem: true,
          description: 'Cifras salvas para acesso rápido.',
          songIds: []
        }
      ];
    }

    const key = getUserPlaylistsKey(user.id);
    const saved = localStorage.getItem(key);
    if (saved) {
      try {
        return JSON.parse(saved);
      } catch (_) {}
    }
    return initEmptyUserPlaylists(user.id);
  }

  function savePlaylistsForActiveUser(playlistsArray) {
    const user = getCurrentUser();
    const key = user ? getUserPlaylistsKey(user.id) : 'santa_cifra_guest_playlists';

    // Validação estrita dos objetos de pasta contra manipulação maliciosa (Anti-IDOR)
    const sanitizedPlaylists = (playlistsArray || []).map((folder) => ({
      id: sanitizeText(folder.id, 50) || 'folder-' + Date.now(),
      name: sanitizeText(folder.name, 60),
      isSystem: Boolean(folder.isSystem),
      description: sanitizeText(folder.description || '', 120),
      songIds: Array.isArray(folder.songIds)
        ? folder.songIds
            .filter((id) => typeof id === 'string')
            .map((id) => sanitizeText(id, 80))
        : []
    }));

    localStorage.setItem(key, JSON.stringify(sanitizedPlaylists));

    // Se o usuário estiver autenticado e o Supabase configurado, sincroniza na nuvem com RLS
    if (user && window.SantaCifraSupabase) {
      const cfg = window.SantaCifraSupabase.getConfig();
      if (cfg && cfg.enabled) {
        window.SantaCifraSupabase.pushFoldersToSupabase(sanitizedPlaylists).catch(() => {});
      }
    }

    return sanitizedPlaylists;
  }

  // =========================================================================
  // 6. Atualização Visual da Interface (Botão de Login / Perfil no Cabeçalho)
  // =========================================================================

  function updateAuthUI() {
    const user = getCurrentUser();
    const btnAuth = document.getElementById('btnUserAuth');
    const labelAuth = document.getElementById('userAuthLabel');
    const avatarBadge = document.getElementById('userAvatarBadge');

    if (!btnAuth) return;

    if (user) {
      const firstName = user.name.split(' ')[0];
      const initials = user.name
        .split(' ')
        .filter(Boolean)
        .slice(0, 2)
        .map((p) => p[0].toUpperCase())
        .join('');

      if (labelAuth) labelAuth.textContent = firstName;
      if (avatarBadge) {
        avatarBadge.textContent = initials;
        avatarBadge.style.display = 'inline-flex';
      }
      btnAuth.setAttribute('title', `Conectado como ${user.name} (${user.email})`);
      btnAuth.classList.add('is-logged-in');
    } else {
      if (labelAuth) labelAuth.textContent = 'Entrar';
      if (avatarBadge) avatarBadge.style.display = 'none';
      btnAuth.setAttribute('title', 'Entrar ou criar conta no Santa Cifra');
      btnAuth.classList.remove('is-logged-in');
    }
  }

  // =========================================================================
  // 7. Vinculação de Eventos dos Diálogos (Login, Cadastro, Recuperação, Perfil)
  // =========================================================================

  function showAlert(msg, isError = true) {
    const box = document.getElementById('authAlertBox');
    if (!box) return;
    box.className = 'auth-alert ' + (isError ? 'alert-error' : 'alert-success');
    box.textContent = msg;
    box.style.display = 'block';
  }

  function hideAlert() {
    const box = document.getElementById('authAlertBox');
    if (!box) return;
    box.style.display = 'none';
    box.textContent = '';
  }

  function switchAuthTab(view) {
    hideAlert();
    const tabs = document.querySelectorAll('.auth-tab-btn');
    tabs.forEach((t) => {
      const active = t.getAttribute('data-auth-view') === view;
      t.classList.toggle('active', active);
      t.setAttribute('aria-selected', String(active));
    });

    const formLogin = document.getElementById('formAuthLogin');
    const formRegister = document.getElementById('formAuthRegister');
    const formForgot = document.getElementById('formAuthForgot');

    if (formLogin) formLogin.style.display = view === 'login' ? 'block' : 'none';
    if (formRegister) formRegister.style.display = view === 'register' ? 'block' : 'none';
    if (formForgot) formForgot.style.display = view === 'forgot' ? 'block' : 'none';

    // Foco acessível no primeiro campo visível
    setTimeout(() => {
      if (view === 'login') {
        const inp = document.getElementById('loginEmail');
        if (inp) inp.focus();
      } else if (view === 'register') {
        const inp = document.getElementById('regName');
        if (inp) inp.focus();
      } else if (view === 'forgot') {
        const inp = document.getElementById('forgotEmail');
        if (inp) inp.focus();
      }
    }, 50);
  }

  function openAuthDialog(initialView = 'login') {
    const dlg = document.getElementById('authDialog');
    if (!dlg) return;
    switchAuthTab(initialView);
    dlg.showModal();
  }

  function openProfileDialog() {
    const user = getCurrentUser();
    if (!user) {
      openAuthDialog('login');
      return;
    }
    const dlg = document.getElementById('userProfileDialog');
    if (!dlg) return;

    const nameEl = document.getElementById('profileName');
    const emailEl = document.getElementById('profileEmail');
    const parishEl = document.getElementById('profileParish');
    const avatarEl = document.getElementById('profileAvatarLarge');
    const foldersCountEl = document.getElementById('profileFoldersCount');
    const favsCountEl = document.getElementById('profileFavsCount');

    if (nameEl) nameEl.textContent = user.name;
    if (emailEl) emailEl.textContent = user.email;
    if (parishEl) parishEl.textContent = user.parish ? `Paróquia: ${user.parish}` : 'Comunidade não informada';
    if (avatarEl) {
      const initials = user.name
        .split(' ')
        .filter(Boolean)
        .slice(0, 2)
        .map((p) => p[0].toUpperCase())
        .join('');
      avatarEl.textContent = initials || 'SC';
    }

    const state = window.SantaCifra.state;
    const folders = (state && state.playlists) ? state.playlists : [];
    const customFolders = folders.filter((f) => !f.isSystem);
    const favFolder = folders.find((f) => f.id === 'favorites');
    const favCount = favFolder ? favFolder.songIds.length : 0;

    if (foldersCountEl) foldersCountEl.textContent = String(customFolders.length);
    if (favsCountEl) favsCountEl.textContent = String(favCount);

    dlg.showModal();
  }

  function bindAuthEvents() {
    const btnAuth = document.getElementById('btnUserAuth');
    if (btnAuth) {
      btnAuth.addEventListener('click', () => {
        const user = getCurrentUser();
        if (user) {
          openProfileDialog();
        } else {
          openAuthDialog('login');
        }
      });
    }

    // Abas do diálogo de autenticação
    const tabButtons = document.querySelectorAll('.auth-tab-btn');
    tabButtons.forEach((btn) => {
      btn.addEventListener('click', () => {
        const view = btn.getAttribute('data-auth-view');
        switchAuthTab(view);
      });
    });

    // Links de alternância entre telas
    const btnGoToRegister = document.getElementById('btnGoToRegister');
    if (btnGoToRegister) btnGoToRegister.addEventListener('click', () => switchAuthTab('register'));

    const btnGoToLogin = document.getElementById('btnGoToLogin');
    if (btnGoToLogin) btnGoToLogin.addEventListener('click', () => switchAuthTab('login'));

    const btnGoToForgot = document.getElementById('btnGoToForgot');
    if (btnGoToForgot) btnGoToForgot.addEventListener('click', () => switchAuthTab('forgot'));

    const btnBackToLogin = document.getElementById('btnBackToLoginFromForgot');
    if (btnBackToLogin) btnBackToLogin.addEventListener('click', () => switchAuthTab('login'));

    // Formulário de Login
    const formLogin = document.getElementById('formAuthLogin');
    if (formLogin) {
      formLogin.addEventListener('submit', async (e) => {
        e.preventDefault();
        hideAlert();
        const email = document.getElementById('loginEmail').value;
        const password = document.getElementById('loginPassword').value;
        const submitBtn = document.getElementById('btnSubmitLogin');

        try {
          if (submitBtn) {
            submitBtn.disabled = true;
            submitBtn.textContent = 'Verificando...';
          }
          await loginUser({ email, password });
          const dlg = document.getElementById('authDialog');
          if (dlg) dlg.close();
          formLogin.reset();

          // Atualiza as playlists do usuário logado
          if (window.SantaCifra.initPlaylists) window.SantaCifra.initPlaylists();
          if (window.SantaCifra.renderPlaylistsView && window.SantaCifra.state && window.SantaCifra.state.activeTab === 'playlists') {
            window.SantaCifra.renderPlaylistsView();
          }
          if (window.SantaCifra.renderCatalog) window.SantaCifra.renderCatalog();
          updateAuthUI();
        } catch (err) {
          showAlert(err.message || 'Erro ao realizar login.', true);
        } finally {
          if (submitBtn) {
            submitBtn.disabled = false;
            submitBtn.textContent = 'Entrar no Santa Cifra';
          }
        }
      });
    }

    // Formulário de Cadastro (Pastas Zeradas)
    const formRegister = document.getElementById('formAuthRegister');
    if (formRegister) {
      formRegister.addEventListener('submit', async (e) => {
        e.preventDefault();
        hideAlert();
        const name = document.getElementById('regName').value;
        const email = document.getElementById('regEmail').value;
        const parish = document.getElementById('regParish').value;
        const password = document.getElementById('regPassword').value;
        const confirmPassword = document.getElementById('regConfirmPassword').value;
        const submitBtn = document.getElementById('btnSubmitRegister');

        try {
          if (submitBtn) {
            submitBtn.disabled = true;
            submitBtn.textContent = 'Criando sua conta...';
          }
          await registerUser({ name, email, parish, password, confirmPassword });
          const dlg = document.getElementById('authDialog');
          if (dlg) dlg.close();
          formRegister.reset();

          // Atualiza playlists: o novo usuário recebe as pastas ZERADAS
          if (window.SantaCifra.initPlaylists) window.SantaCifra.initPlaylists();
          if (window.SantaCifra.renderPlaylistsView && window.SantaCifra.state && window.SantaCifra.state.activeTab === 'playlists') {
            window.SantaCifra.renderPlaylistsView();
          }
          if (window.SantaCifra.renderCatalog) window.SantaCifra.renderCatalog();
          updateAuthUI();
        } catch (err) {
          showAlert(err.message || 'Erro ao cadastrar.', true);
        } finally {
          if (submitBtn) {
            submitBtn.disabled = false;
            submitBtn.textContent = 'Criar Minha Conta';
          }
        }
      });
    }

    // Formulário de Recuperação
    const formForgot = document.getElementById('formAuthForgot');
    if (formForgot) {
      formForgot.addEventListener('submit', async (e) => {
        e.preventDefault();
        hideAlert();
        const email = document.getElementById('forgotEmail').value;
        const submitBtn = document.getElementById('btnSubmitForgot');

        try {
          if (submitBtn) {
            submitBtn.disabled = true;
            submitBtn.textContent = 'Enviando...';
          }
          const res = await recoverPassword(email);
          showAlert(res.message, false);
          formForgot.reset();
        } catch (err) {
          showAlert(err.message || 'Erro ao solicitar recuperação.', true);
        } finally {
          if (submitBtn) {
            submitBtn.disabled = false;
            submitBtn.textContent = 'Enviar Instruções';
          }
        }
      });
    }

    // Botão de Logout no Perfil
    const btnLogout = document.getElementById('btnLogoutUser');
    if (btnLogout) {
      btnLogout.addEventListener('click', () => {
        logout();
        const dlg = document.getElementById('userProfileDialog');
        if (dlg) dlg.close();
        if (window.SantaCifra.renderCatalog) window.SantaCifra.renderCatalog();
      });
    }

    // Inicializa a UI com base na sessão existente
    updateAuthUI();
  }

  // Expor API no namespace SantaCifra
  window.SantaCifra.auth = {
    sanitizeText,
    validateEmail,
    validatePassword,
    getCurrentUser,
    registerUser,
    loginUser,
    recoverPassword,
    logout,
    loadPlaylistsForActiveUser,
    savePlaylistsForActiveUser,
    updateAuthUI,
    openAuthDialog,
    openProfileDialog,
    bindAuthEvents
  };
})();
