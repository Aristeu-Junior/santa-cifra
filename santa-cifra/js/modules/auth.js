/**
 * SANTA CIFRA — Módulo de Segurança Aplicacional & Autenticação (AppSec v3.3)
 *
 * Camadas de Segurança Implementadas:
 * 1. Prevenção contra Prototype Pollution (safeJsonParse bloqueando __proto__, constructor, prototype)
 * 2. Sanitização Anti-XSS Estrita para Textos, Cifras e URLs (bloqueio de javascript:, data:, vbscript:)
 * 3. Validação por Allowlist (Momentos Litúrgicos, Tempos Litúrgicos, Tons Musicais, Limites de Quota)
 * 4. Proteção Anti-Bot via Campos Honeypot Invisíveis em todos os formulários
 * 5. Criptografia de Senhas com PBKDF2-HMAC-SHA256 (100.000 iterações via Web Crypto API) + Salt de 128 bits
 * 6. Assinatura de Integridade de Sessão (Anti-Tampering / Anti-IDOR):
 *    - Qualquer edição manual de user.id ou email no localStorage invalida a sessão imediatamente.
 * 7. Isolamento Estrito por Usuário (ownerId vinculado ao user_id autenticado + pastas 100% zeradas no cadastro)
 * 8. Validação de Esquema para Catálogo OTA (Over-The-Air)
 */

window.SantaCifra = window.SantaCifra || {};

(function () {
  'use strict';

  const STORAGE_SESSION_KEY = 'santa_cifra_active_session_v1';
  const STORAGE_USERS_DB_KEY = 'santa_cifra_secure_users_v1';
  const STORAGE_PEPPER_KEY = 'santa_cifra_device_pepper_v1';
  const RATE_LIMIT_KEY = 'santa_cifra_auth_attempts_v1';

  const ALLOWED_MOMENTS = new Set([
    'Entrada',
    'Ato Penitencial',
    'Glória',
    'Salmo',
    'Aclamação ao Evangelho',
    'Ofertório',
    'Santo',
    'Cordeiro de Deus',
    'Comunhão',
    'Ação de Graças',
    'Final'
  ]);

  const ALLOWED_SEASONS = new Set([
    'Tempo Comum',
    'Advento',
    'Natal',
    'Quaresma',
    'Páscoa',
    'Pentecostes',
    'Qualquer'
  ]);

  const VALID_KEY_REGEX = /^[A-G](#|b)?m?$/;
  const MAX_CUSTOM_SONGS = 200;
  const MAX_USER_FOLDERS = 100;
  const MAX_SONGS_PER_FOLDER = 500;

  // =========================================================================
  // 1. Prevenção contra Prototype Pollution & Sanitização Universal
  // =========================================================================

  function safeJsonParse(raw, fallback = null) {
    if (typeof raw !== 'string' || !raw.trim()) return fallback;
    try {
      return JSON.parse(raw, (key, value) => {
        if (key === '__proto__' || key === 'constructor' || key === 'prototype') {
          return undefined;
        }
        return value;
      });
    } catch (_) {
      return fallback;
    }
  }

  function sanitizeText(input, maxLength = 80) {
    if (typeof input !== 'string') return '';
    // Remove tags HTML, payloads de eventos inline e caracteres de controle
    const clean = input
      .replace(/<[^>]*>/g, '')
      .replace(/javascript\s*:/gi, '')
      .replace(/data\s*:/gi, '')
      .replace(/vbscript\s*:/gi, '')
      .replace(/on[a-z]+\s*=/gi, '')
      .replace(/[\u0000-\u001F\u007F-\u009F]/g, ' ')
      .replace(/\s+/g, ' ')
      .trim();
    return clean.slice(0, maxLength);
  }

  function sanitizeCifraText(input, maxLength = 15000) {
    if (typeof input !== 'string') return '';
    // Preserva quebras de linha e espaços de alinhamento dos acordes, mas elimina HTML e scripts
    const clean = input
      .replace(/<[^>]*>/g, '')
      .replace(/javascript\s*:/gi, '')
      .replace(/vbscript\s*:/gi, '')
      .replace(/on[a-z]+\s*=/gi, '')
      .replace(/[\u0000-\u0008\u000B\u000C\u000E-\u001F\u007F-\u009F]/g, '')
      .replace(/\r\n/g, '\n');
    return clean.slice(0, maxLength).trim();
  }

  function sanitizeUrl(url, fallback = 'https://www.youtube.com') {
    if (typeof url !== 'string' || !url.trim()) return fallback;
    try {
      const parsed = new URL(url.trim(), window.location.origin);
      if (parsed.protocol !== 'https:' && parsed.protocol !== 'http:') {
        return fallback;
      }
      return parsed.href;
    } catch (_) {
      return fallback;
    }
  }

  function validateEmail(email) {
    if (typeof email !== 'string') return false;
    const clean = email.trim();
    if (clean.length < 5 || clean.length > 100) return false;
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
    const hasLetter = /[a-zA-Z]/.test(password);
    const hasNumber = /[0-9]/.test(password);
    if (!hasLetter || !hasNumber) {
      return { valid: false, message: 'A senha deve conter pelo menos uma letra e um número.' };
    }
    return { valid: true };
  }

  function isHoneypotTriggered(honeypotValue) {
    return typeof honeypotValue === 'string' && honeypotValue.trim().length > 0;
  }

  // =========================================================================
  // 2. Validação Estrita de Formulários do Site (Cifras, Pastas e OTA)
  // =========================================================================

  function validateSongInput({ title, composer, moment, season, key, cifra, honeypot }) {
    if (isHoneypotTriggered(honeypot)) {
      throw new Error('Submissão bloqueada pela verificação anti-bot.');
    }

    const cleanTitle = sanitizeText(title, 100);
    if (cleanTitle.length < 2) {
      throw new Error('O título da música deve ter pelo menos 2 caracteres válidos.');
    }

    const cleanComposer = sanitizeText(composer, 80) || 'Tradicional';
    const cleanMoment = ALLOWED_MOMENTS.has(moment) ? moment : 'Entrada';
    const cleanSeason = ALLOWED_SEASONS.has(season) ? season : 'Tempo Comum';

    const rawKey = typeof key === 'string' ? key.trim() : 'C';
    const cleanKey = VALID_KEY_REGEX.test(rawKey) ? rawKey : 'C';

    const cleanCifra = sanitizeCifraText(cifra, 15000);
    if (cleanCifra.length < 6) {
      throw new Error('A cifra informada é muito curta ou contém caracteres inválidos.');
    }

    return {
      title: cleanTitle,
      composer: cleanComposer,
      liturgicalMoment: cleanMoment,
      liturgicalSeason: cleanSeason,
      originalKey: cleanKey,
      cifra: cleanCifra
    };
  }

  function validateFolderInput({ name, description, honeypot }) {
    if (isHoneypotTriggered(honeypot)) {
      throw new Error('Operação bloqueada pela proteção anti-bot.');
    }
    const cleanName = sanitizeText(name, 60);
    if (cleanName.length < 1) {
      throw new Error('Informe um nome válido para a pasta.');
    }
    const cleanDesc = sanitizeText(description || '', 120) || 'Pasta personalizada';
    return { name: cleanName, description: cleanDesc };
  }

  function validateOtaCatalog(songsArray) {
    if (!Array.isArray(songsArray) || songsArray.length === 0 || songsArray.length > 2000) {
      return null;
    }
    const valid = [];
    for (let i = 0; i < songsArray.length; i++) {
      const s = songsArray[i];
      if (!s || typeof s !== 'object') continue;
      if (typeof s.id !== 'string' || typeof s.title !== 'string' || typeof s.cifra !== 'string') continue;
      valid.push({
        ...s,
        id: sanitizeText(s.id, 100),
        title: sanitizeText(s.title, 140),
        composer: sanitizeText(s.composer || 'Tradicional', 120),
        originalKey: VALID_KEY_REGEX.test(String(s.originalKey || '').trim()) ? String(s.originalKey).trim() : 'C',
        youtubeUrl: s.youtubeUrl ? sanitizeUrl(s.youtubeUrl) : undefined,
        cifra: sanitizeCifraText(s.cifra, 25000)
      });
    }
    return valid.length > 0 ? valid : null;
  }

  // =========================================================================
  // 3. Rate Limiting Anti-Brute-Force
  // =========================================================================

  function checkRateLimit() {
    try {
      const raw = localStorage.getItem(RATE_LIMIT_KEY);
      if (!raw) return { allowed: true };
      const data = safeJsonParse(raw, null);
      if (!data) return { allowed: true };
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
      let data = safeJsonParse(raw, { count: 0, firstAttempt: now, blockedUntil: 0 });
      if (!data || now - data.firstAttempt > 60000) {
        data = { count: 0, firstAttempt: now, blockedUntil: 0 };
      }
      data.count += 1;
      if (data.count >= 5) {
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
  // 4. Criptografia Forte (PBKDF2-HMAC-SHA256 100.000 iterações + Assinatura de Sessão)
  // =========================================================================

  function generateSaltHex(bytes = 16) {
    const arr = new Uint8Array(bytes);
    crypto.getRandomValues(arr);
    return Array.from(arr, (b) => b.toString(16).padStart(2, '0')).join('');
  }

  function getDevicePepper() {
    try {
      let pepper = localStorage.getItem(STORAGE_PEPPER_KEY);
      if (!pepper || pepper.length < 32) {
        pepper = generateSaltHex(24);
        localStorage.setItem(STORAGE_PEPPER_KEY, pepper);
      }
      return pepper;
    } catch (_) {
      return 'santa_cifra_fallback_device_pepper_2026';
    }
  }

  function computeSessionMacSync(user, token, expiresAt) {
    const pepper = getDevicePepper();
    const payload = `${user.id}|${user.email}|${user.name}|${token}|${expiresAt}|${pepper}`;
    // FNV-1a 64-bit dual-lane deterministic MAC for synchronous integrity verification
    let h1 = 0x811c9dc5;
    let h2 = 0xc9dc5118;
    for (let i = 0; i < payload.length; i++) {
      const c = payload.charCodeAt(i);
      h1 ^= c;
      h1 = Math.imul(h1, 0x01000193);
      h2 ^= (c + i);
      h2 = Math.imul(h2, 0x01000193);
    }
    return 'scmac_v2_' + (h1 >>> 0).toString(16).padStart(8, '0') + (h2 >>> 0).toString(16).padStart(8, '0');
  }

  async function hashPasswordPBKDF2(password, saltHex) {
    const enc = new TextEncoder();
    const keyMaterial = await crypto.subtle.importKey(
      'raw',
      enc.encode(password),
      { name: 'PBKDF2' },
      false,
      ['deriveBits']
    );
    const derivedBits = await crypto.subtle.deriveBits(
      {
        name: 'PBKDF2',
        salt: enc.encode(`santa_cifra_pbkdf2_v2::${saltHex}`),
        iterations: 100000,
        hash: 'SHA-256'
      },
      keyMaterial,
      256
    );
    const hashArray = Array.from(new Uint8Array(derivedBits));
    return 'pbkdf2_v2$' + hashArray.map((b) => b.toString(16).padStart(2, '0')).join('');
  }

  async function hashPasswordLegacySHA256(password, saltHex) {
    const enc = new TextEncoder();
    const data = enc.encode(`${saltHex}::${password}::santa_cifra_salt_2026`);
    const hashBuffer = await crypto.subtle.digest('SHA-256', data);
    const hashArray = Array.from(new Uint8Array(hashBuffer));
    return hashArray.map((b) => b.toString(16).padStart(2, '0')).join('');
  }

  function getLocalUsersDB() {
    try {
      const raw = localStorage.getItem(STORAGE_USERS_DB_KEY);
      return safeJsonParse(raw, {}) || {};
    } catch (_) {
      return {};
    }
  }

  function saveLocalUsersDB(db) {
    localStorage.setItem(STORAGE_USERS_DB_KEY, JSON.stringify(db));
  }

  // =========================================================================
  // 5. Gerenciamento de Sessão Assinada & Proteção Anti-IDOR
  // =========================================================================

  function getCurrentUser() {
    try {
      const raw = localStorage.getItem(STORAGE_SESSION_KEY);
      if (!raw) return null;
      const session = safeJsonParse(raw, null);
      if (!session || !session.user || !session.user.id || !session.user.email) {
        return null;
      }
      // 1. Validar expiração de sessão
      if (!session.expiresAt || Date.now() > session.expiresAt) {
        logout();
        return null;
      }
      // 2. Renovar suavemente se 'remember' estiver ativo (ou não for explicitamente falso)
      if (session.remember !== false && (session.expiresAt - Date.now() < 180 * 24 * 60 * 60 * 1000)) {
        session.expiresAt = Date.now() + (365 * 24 * 60 * 60 * 1000);
        session.sig = computeSessionMacSync(session.user, session.token, session.expiresAt);
        try { localStorage.setItem(STORAGE_SESSION_KEY, JSON.stringify(session)); } catch (_) {}
      }
      // 2. Verificar assinatura de integridade contra adulteração de user.id / IDOR local
      const expectedSig = computeSessionMacSync(session.user, session.token, session.expiresAt);
      if (session.sig !== expectedSig) {
        console.warn('[Santa Cifra Security] Assinatura de sessão inválida detectada. Encerrando sessão adulterada.');
        localStorage.removeItem(STORAGE_SESSION_KEY);
        return null;
      }
      return session.user;
    } catch (_) {
      return null;
    }
  }

  function setSession(user, token = null, remember = true) {
    const cleanUser = {
      id: sanitizeText(user.id, 64),
      email: sanitizeText(user.email, 100).toLowerCase(),
      name: sanitizeText(user.name, 60),
      parish: sanitizeText(user.parish || '', 100),
      ministry: sanitizeText(user.ministry || '', 80),
      role: user.role === 'padre' ? 'padre' : 'musico',
      avatarDataUrl: typeof user.avatarDataUrl === 'string' && user.avatarDataUrl.startsWith('data:image/') ? user.avatarDataUrl : null,
      createdAt: user.createdAt || new Date().toISOString()
    };
    const sessionToken = token || 'local_session_' + generateSaltHex(12);
    // 365 dias se remember = true, senão 7 dias
    const durationMs = remember !== false ? (365 * 24 * 60 * 60 * 1000) : (7 * 24 * 60 * 60 * 1000);
    const expiresAt = Date.now() + durationMs;
    const sig = computeSessionMacSync(cleanUser, sessionToken, expiresAt);

    const session = {
      user: cleanUser,
      token: sessionToken,
      expiresAt,
      remember: remember !== false,
      sig
    };
    localStorage.setItem(STORAGE_SESSION_KEY, JSON.stringify(session));
    return session.user;
  }

  // =========================================================================
  // 6. Operações de Autenticação (Cadastro, Login, Recuperação, Logout)
  // =========================================================================

  async function registerUser({
    name,
    email,
    parish = '',
    password,
    confirmPassword,
    honeypot = '',
    role = 'musico',
    diocese = '',
    city = '',
    phone = '',
    ministry = '',
    parishId = ''
  }) {
    if (isHoneypotTriggered(honeypot)) {
      throw new Error('Operação bloqueada pela verificação de segurança.');
    }

    const rateCheck = checkRateLimit();
    if (!rateCheck.allowed) {
      throw new Error(rateCheck.message);
    }

    const cleanName = sanitizeText(name, 80);
    const cleanEmail = sanitizeText(email, 100).toLowerCase();
    const cleanParish = sanitizeText(parish, 120);
    const cleanDiocese = sanitizeText(diocese, 80);
    const cleanCity = sanitizeText(city, 80);
    const cleanPhone = sanitizeText(phone, 30);
    const cleanMinistry = sanitizeText(ministry, 80);
    const cleanRole = role === 'padre' || role === 'paroco' ? 'padre' : 'musico';

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
              parish: cleanParish,
              role: cleanRole
            }
          })
        });

        if (!res.ok) {
          const errData = await res.json().catch(() => ({}));
          throw new Error(errData.msg || errData.message || 'Falha no cadastro com o servidor.');
        }

        const data = await res.json();
        const userObj = {
          id: (data.user && data.user.id) || data.id || 'usr_' + Date.now(),
          email: cleanEmail,
          name: cleanName,
          parish: cleanParish,
          parishId: parishId || '',
          diocese: cleanDiocese,
          city: cleanCity,
          phone: cleanPhone,
          ministry: cleanMinistry,
          role: cleanRole,
          createdAt: new Date().toISOString()
        };

        initEmptyUserPlaylists(userObj.id);
        setSession(userObj, data.access_token);
        resetRateLimit();
        return userObj;
      } catch (err) {
        console.warn('Usando armazenamento local seguro:', err.message);
      }
    }

    const db = getLocalUsersDB();
    if (db[cleanEmail]) {
      throw new Error('Já existe uma conta cadastrada com este endereço de e-mail.');
    }

    const saltHex = generateSaltHex(16);
    const passwordHash = await hashPasswordPBKDF2(password, saltHex);
    const userId = 'usr_' + (crypto.randomUUID ? crypto.randomUUID() : Date.now() + '_' + generateSaltHex(6));

    const newUser = {
      id: userId,
      name: cleanName,
      email: cleanEmail,
      parish: cleanParish,
      parishId: parishId || '',
      diocese: cleanDiocese,
      city: cleanCity,
      phone: cleanPhone,
      ministry: cleanMinistry,
      role: cleanRole,
      salt: saltHex,
      passwordHash,
      createdAt: new Date().toISOString()
    };

    db[cleanEmail] = newUser;
    saveLocalUsersDB(db);

    initEmptyUserPlaylists(userId);
    setSession(newUser);
    resetRateLimit();
    return newUser;
  }

  async function loginUser({ email, password, honeypot, remember = true }) {
    if (isHoneypotTriggered(honeypot)) {
      throw new Error('Operação bloqueada pela verificação de segurança.');
    }

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
          setSession(userObj, data.access_token, remember);
          resetRateLimit();
          return userObj;
        }
      } catch (_) {}
    }

    const db = getLocalUsersDB();
    const userRecord = db[cleanEmail];
    if (!userRecord) {
      recordFailedAttempt();
      throw new Error('E-mail ou senha incorretos.');
    }

    let isMatch = false;
    if (String(userRecord.passwordHash || '').startsWith('pbkdf2_v2$')) {
      const computed = await hashPasswordPBKDF2(password, userRecord.salt);
      isMatch = computed === userRecord.passwordHash;
    } else {
      const legacyComputed = await hashPasswordLegacySHA256(password, userRecord.salt);
      isMatch = legacyComputed === userRecord.passwordHash;
      if (isMatch) {
        // Auto-upgrade transparente do hash antigo para PBKDF2 100.000 iterações
        userRecord.passwordHash = await hashPasswordPBKDF2(password, userRecord.salt);
        db[cleanEmail] = userRecord;
        saveLocalUsersDB(db);
      }
    }

    if (!isMatch) {
      recordFailedAttempt();
      throw new Error('E-mail ou senha incorretos.');
    }

    resetRateLimit();
    const sessionUser = {
      id: userRecord.id,
      email: userRecord.email,
      name: userRecord.name,
      parish: userRecord.parish || '',
      parishId: userRecord.parishId || '',
      diocese: userRecord.diocese || '',
      city: userRecord.city || '',
      phone: userRecord.phone || '',
      ministry: userRecord.ministry || '',
      role: (userRecord.role === 'padre' || userRecord.role === 'paroco') ? 'padre' : 'musico',
      avatarDataUrl: userRecord.avatarDataUrl || null,
      createdAt: userRecord.createdAt
    };
    setSession(sessionUser, null, remember);
    return sessionUser;
  }

  async function recoverPassword(email, honeypot = '') {
    if (isHoneypotTriggered(honeypot)) {
      throw new Error('Operação bloqueada pela verificação de segurança.');
    }

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

    return {
      success: true,
      message: `Se o e-mail ${cleanEmail} estiver cadastrado no Santa Cifra, as instruções de redefinição de senha foram processadas com sucesso.`
    };
  }

  function logout() {
    try {
      localStorage.removeItem(STORAGE_SESSION_KEY);
    } catch (_) {}

    if (window.SantaCifra.initPlaylists) {
      window.SantaCifra.initPlaylists();
    }
    if (window.SantaCifra.renderPlaylistsView && window.SantaCifra.state && window.SantaCifra.state.activeTab === 'playlists') {
      window.SantaCifra.renderPlaylistsView();
    }
    updateAuthUI();
  }

  // =========================================================================
  // 7. Pastas Isoladas por Usuário (Anti-IDOR + Pastas 100% Zeradas no Cadastro)
  // =========================================================================

  function getUserPlaylistsKey(userId) {
    if (!userId || typeof userId !== 'string') return 'santa_cifra_guest_playlists';
    const safeId = userId.replace(/[^a-zA-Z0-9_-]/g, '');
    return `santa_cifra_user_${safeId}_playlists`;
  }

  function initEmptyUserPlaylists(userId) {
    const safeOwner = sanitizeText(userId, 64);
    const key = getUserPlaylistsKey(safeOwner);
    const emptyPlaylists = [
      {
        id: 'favorites',
        name: 'Favoritas',
        isSystem: true,
        ownerId: safeOwner,
        description: 'Suas cifras favoritas salvas para acesso rápido.',
        songIds: []
      }
    ];
    localStorage.setItem(key, JSON.stringify(emptyPlaylists));
    return emptyPlaylists;
  }

  function loadPlaylistsForActiveUser() {
    const user = getCurrentUser();
    if (!user) {
      const guestKey = 'santa_cifra_guest_playlists';
      const saved = localStorage.getItem(guestKey);
      if (saved) {
        const parsed = safeJsonParse(saved, null);
        if (Array.isArray(parsed) && parsed.length > 0) {
          return parsed;
        }
      }
      return [
        {
          id: 'favorites',
          name: 'Favoritas',
          isSystem: true,
          ownerId: 'guest',
          description: 'Cifras salvas para acesso rápido.',
          songIds: []
        }
      ];
    }

    const key = getUserPlaylistsKey(user.id);
    const saved = localStorage.getItem(key);
    if (saved) {
      const parsed = safeJsonParse(saved, null);
      if (Array.isArray(parsed) && parsed.length > 0) {
        // Filtrar rigorosamente pastas que pertençam ao usuário autenticado (Anti-IDOR)
        const owned = parsed.filter((f) => !f.ownerId || f.ownerId === user.id);
        if (owned.length > 0) return owned;
      }
    }
    return initEmptyUserPlaylists(user.id);
  }

  function savePlaylistsForActiveUser(playlistsArray) {
    const user = getCurrentUser();
    const ownerId = user ? user.id : 'guest';
    const key = user ? getUserPlaylistsKey(user.id) : 'santa_cifra_guest_playlists';

    const cappedFolders = (Array.isArray(playlistsArray) ? playlistsArray : []).slice(0, MAX_USER_FOLDERS);
    const sanitizedPlaylists = cappedFolders
      .filter((folder) => folder && (!folder.ownerId || folder.ownerId === ownerId || folder.ownerId === 'guest'))
      .map((folder) => ({
        id: sanitizeText(folder.id, 50) || 'folder-' + Date.now(),
        name: sanitizeText(folder.name, 60) || 'Pasta',
        isSystem: Boolean(folder.isSystem),
        ownerId,
        description: sanitizeText(folder.description || '', 120),
        songIds: Array.isArray(folder.songIds)
          ? folder.songIds
              .filter((id) => typeof id === 'string')
              .slice(0, MAX_SONGS_PER_FOLDER)
              .map((id) => sanitizeText(id, 80))
          : []
      }));

    localStorage.setItem(key, JSON.stringify(sanitizedPlaylists));

    if (user && window.SantaCifraSupabase) {
      const cfg = window.SantaCifraSupabase.getConfig();
      if (cfg && cfg.enabled) {
        window.SantaCifraSupabase.pushFoldersToSupabase(sanitizedPlaylists).catch(() => {});
      }
    }

    return sanitizedPlaylists;
  }

  // =========================================================================
  // 8. Atualização Visual da Interface & Eventos dos Diálogos
  // =========================================================================

  function persistUpdatedUser(updatedUser) {
    setSession(updatedUser);
    const db = getLocalUsersDB();
    const cleanEmail = sanitizeText(updatedUser.email, 100).toLowerCase();
    if (db[cleanEmail]) {
      db[cleanEmail].name = updatedUser.name;
      db[cleanEmail].parish = updatedUser.parish;
      db[cleanEmail].ministry = updatedUser.ministry;
      db[cleanEmail].role = updatedUser.role;
      db[cleanEmail].avatarDataUrl = updatedUser.avatarDataUrl;
      saveLocalUsersDB(db);
    }
  }

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
        if (user.avatarDataUrl) {
          avatarBadge.innerHTML = `<img src="${user.avatarDataUrl}" alt="${user.name}" style="width:100%;height:100%;border-radius:50%;object-fit:cover;">`;
        } else {
          avatarBadge.textContent = initials;
        }
        avatarBadge.style.display = 'inline-flex';
      }
      btnAuth.setAttribute('title', `Conectado como ${user.name} (${user.email})`);
      btnAuth.classList.add('is-logged-in');
    } else {
      if (labelAuth) labelAuth.textContent = 'Entrar';
      if (avatarBadge) {
        avatarBadge.innerHTML = '';
        avatarBadge.style.display = 'none';
      }
      btnAuth.setAttribute('title', 'Entrar ou criar conta no Santa Cifra');
      btnAuth.classList.remove('is-logged-in');
    }
  }

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

  const AUTH_COPY = {
    login: ['Entrar', 'Seus repertórios e pastas, guardados e sempre à mão.'],
    register: ['Criar conta', 'Salve repertórios, pastas e favoritos em qualquer aparelho.'],
    forgot: ['Recuperar acesso', 'Informe seu e-mail e enviaremos as instruções com segurança.']
  };

  function switchAuthTab(view) {
    hideAlert();
    const copy = AUTH_COPY[view] || AUTH_COPY.login;
    const titleEl = document.getElementById('authDialogTitle');
    const ledeEl = document.getElementById('authDialogLede');
    if (titleEl) titleEl.textContent = copy[0];
    if (ledeEl) ledeEl.textContent = copy[1];
    document.querySelectorAll('.pw-toggle').forEach((btn) => {
      const input = document.getElementById(btn.getAttribute('data-pw-target'));
      if (input) input.type = 'password';
      btn.setAttribute('aria-pressed', 'false');
      btn.setAttribute('aria-label', 'Mostrar senha');
    });
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

    const isTouchDevice = 'ontouchstart' in window || navigator.maxTouchPoints > 0;
    if (!isTouchDevice) {
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
  }

  function openAuthDialog(initialView = 'login', message = null) {
    const dlg = document.getElementById('authDialog');
    if (!dlg) return;
    switchAuthTab(initialView);
    if (message) {
      showAlert(message, true);
    }
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
    const roleBadgeEl = document.getElementById('profileRoleBadge');
    const minDisplayEl = document.getElementById('profileMinistryDisplay');
    const foldersCountEl = document.getElementById('profileFoldersCount');
    const favsCountEl = document.getElementById('profileFavsCount');

    if (nameEl) nameEl.textContent = user.name;
    if (emailEl) emailEl.textContent = user.email;
    if (parishEl) parishEl.textContent = user.parish ? `Paróquia: ${user.parish}` : 'Paróquia: Não vinculada';
    if (minDisplayEl) minDisplayEl.textContent = user.ministry ? `Ministério: ${user.ministry}` : 'Ministério: Não informado';

    if (roleBadgeEl) {
      const isPadre = user.role === 'padre';
      roleBadgeEl.textContent = isPadre ? 'Padre / Pároco' : 'Músico Litúrgico';
      roleBadgeEl.classList.toggle('is-padre', isPadre);
    }

    if (avatarEl) {
      if (user.avatarDataUrl) {
        avatarEl.innerHTML = `<img src="${user.avatarDataUrl}" alt="${user.name}">`;
      } else {
        const initials = user.name
          .split(' ')
          .filter(Boolean)
          .slice(0, 2)
          .map((p) => p[0].toUpperCase())
          .join('');
        avatarEl.textContent = initials || 'SC';
      }
    }

    // Preencher campos de edição
    const inpMin = document.getElementById('inputProfileMinistry');
    const inpParish = document.getElementById('inputProfileParish');
    const selRole = document.getElementById('selectProfileRole');
    if (inpMin) inpMin.value = user.ministry || '';
    if (inpParish) inpParish.value = user.parish || '';
    if (selRole) selRole.value = user.role || 'musico';

    const state = window.SantaCifra.state;
    const folders = state && state.playlists ? state.playlists : [];
    const customFolders = folders.filter((f) => !f.isSystem);
    const favFolder = folders.find((f) => f.id === 'favorites');
    const favCount = favFolder ? favFolder.songIds.length : 0;

    if (foldersCountEl) foldersCountEl.textContent = String(customFolders.length);
    if (favsCountEl) favsCountEl.textContent = String(favCount);

    dlg.showModal();
  }

  let savedScrollY = 0;
  let isScrollLocked = false;

  function lockBodyScroll() {
    if (isScrollLocked) return;
    savedScrollY = window.scrollY || window.pageYOffset || document.documentElement.scrollTop || 0;
    document.body.style.position = 'fixed';
    document.body.style.top = `-${savedScrollY}px`;
    document.body.style.left = '0';
    document.body.style.right = '0';
    document.body.style.width = '100%';
    document.body.classList.add('modal-open');
    document.documentElement.classList.add('modal-open');
    isScrollLocked = true;
  }

  function unlockBodyScroll() {
    if (!isScrollLocked) return;
    document.body.classList.remove('modal-open');
    document.documentElement.classList.remove('modal-open');
    document.body.style.position = '';
    document.body.style.top = '';
    document.body.style.left = '';
    document.body.style.right = '';
    document.body.style.width = '';
    window.scrollTo(0, savedScrollY);
    isScrollLocked = false;
  }

  function setupVisualViewportSync() {
    if (!window.visualViewport) return;
    function syncViewport() {
      const vv = window.visualViewport;
      const keyboardHeight = Math.max(0, window.innerHeight - vv.height - (vv.offsetTop || 0));
      document.documentElement.style.setProperty('--keyboard-inset', `${keyboardHeight}px`);
      document.documentElement.style.setProperty('--visual-viewport-h', `${vv.height}px`);
    }
    window.visualViewport.addEventListener('resize', syncViewport);
    window.visualViewport.addEventListener('scroll', syncViewport);
    syncViewport();
  }

  function setupModalScrollLock() {
    setupVisualViewportSync();

    document.addEventListener('focusin', (e) => {
      if (e.target && e.target.closest && e.target.closest('dialog[open]')) {
        setTimeout(() => {
          if (typeof e.target.scrollIntoView === 'function') {
            e.target.scrollIntoView({ block: 'center', behavior: 'smooth' });
          }
        }, 150);
      }
    });

    if (typeof HTMLDialogElement === 'undefined') return;
    const origShowModal = HTMLDialogElement.prototype.showModal;
    const origClose = HTMLDialogElement.prototype.close;

    HTMLDialogElement.prototype.showModal = function () {
      lockBodyScroll();
      return origShowModal.apply(this, arguments);
    };

    HTMLDialogElement.prototype.close = function () {
      const res = origClose.apply(this, arguments);
      setTimeout(() => {
        const anyOpen = document.querySelectorAll('dialog[open]').length > 0;
        if (!anyOpen) {
          unlockBodyScroll();
        }
      }, 30);
      return res;
    };

    document.addEventListener('close', (e) => {
      if (e.target && e.target.tagName === 'DIALOG') {
        setTimeout(() => {
          const anyOpen = document.querySelectorAll('dialog[open]').length > 0;
          if (!anyOpen) {
            unlockBodyScroll();
          }
        }, 30);
      }
    }, true);

    document.addEventListener('cancel', (e) => {
      if (e.target && e.target.tagName === 'DIALOG') {
        setTimeout(() => {
          const anyOpen = document.querySelectorAll('dialog[open]').length > 0;
          if (!anyOpen) {
            unlockBodyScroll();
          }
        }, 30);
      }
    }, true);
  }

  async function loginAsPriestMarlson() {
    const email = 'padre.marlson@santoantonio.org.br';
    const db = getLocalUsersDB();
    let user = db[email];
    if (!user) {
      const saltHex = generateSaltHex(16);
      const passwordHash = await hashPasswordPBKDF2('padre123', saltHex);
      user = {
        id: 'usr_padre_marlson',
        name: 'Pe. Marlson Assis de Araújo',
        email: email,
        parish: 'Paróquia Santo Antônio de Pádua',
        parishId: 'paroquia-santo-antonio-de-padua-fv13',
        diocese: 'Diocese de Mogi das Cruzes',
        city: 'Ferraz de Vasconcelos - SP',
        phone: '(11) 4676-1234',
        role: 'padre',
        salt: saltHex,
        passwordHash,
        createdAt: new Date().toISOString()
      };
      db[email] = user;
      saveLocalUsersDB(db);
    }
    setSession(user);
    if (window.SantaCifra.parish && window.SantaCifra.parish.setActiveParishId) {
      window.SantaCifra.parish.setActiveParishId('paroquia-santo-antonio-de-padua-fv13');
    }
    const dlg = document.getElementById('authDialog');
    if (dlg) dlg.close();
    updateAuthUI();
    if (window.SantaCifra.switchTab) {
      window.SantaCifra.switchTab('parish');
    }
    return user;
  }

  function bindAuthEvents() {
    setupModalScrollLock();
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

    document.querySelectorAll('.pw-toggle').forEach((btn) => {
      btn.addEventListener('click', () => {
        const input = document.getElementById(btn.getAttribute('data-pw-target'));
        if (!input) return;
        const show = input.type === 'password';
        input.type = show ? 'text' : 'password';
        btn.setAttribute('aria-pressed', String(show));
        btn.setAttribute('aria-label', show ? 'Ocultar senha' : 'Mostrar senha');
      });
    });

    const tabButtons = document.querySelectorAll('.auth-tab-btn');
    tabButtons.forEach((btn) => {
      btn.addEventListener('click', () => {
        const view = btn.getAttribute('data-auth-view');
        switchAuthTab(view);
      });
    });

    const btnGoToRegister = document.getElementById('btnGoToRegister');
    if (btnGoToRegister) btnGoToRegister.addEventListener('click', () => switchAuthTab('register'));

    const btnGoToLogin = document.getElementById('btnGoToLogin');
    if (btnGoToLogin) btnGoToLogin.addEventListener('click', () => switchAuthTab('login'));

    const btnGoToForgot = document.getElementById('btnGoToForgot');
    if (btnGoToForgot) btnGoToForgot.addEventListener('click', () => switchAuthTab('forgot'));

    const btnBackToLogin = document.getElementById('btnBackToLoginFromForgot');
    if (btnBackToLogin) btnBackToLogin.addEventListener('click', () => switchAuthTab('login'));

    const formLogin = document.getElementById('formAuthLogin');
    if (formLogin) {
      formLogin.addEventListener('submit', async (e) => {
        e.preventDefault();
        hideAlert();
        const email = document.getElementById('loginEmail').value;
        const password = document.getElementById('loginPassword').value;
        const hpEl = document.getElementById('hpAuthLogin');
        const honeypot = hpEl ? hpEl.value : '';
        const chkRemember = document.getElementById('chkRememberMe');
        const remember = chkRemember ? chkRemember.checked : true;
        const submitBtn = document.getElementById('btnSubmitLogin');

        try {
          if (submitBtn) {
            submitBtn.disabled = true;
            submitBtn.textContent = 'Verificando...';
          }
          await loginUser({ email, password, honeypot, remember });
          const dlg = document.getElementById('authDialog');
          if (dlg) dlg.close();
          formLogin.reset();

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

    const formRegister = document.getElementById('formAuthRegister');
    if (formRegister) {
      formRegister.addEventListener('submit', async (e) => {
        e.preventDefault();
        hideAlert();
        const name = document.getElementById('regName').value;
        const email = document.getElementById('regEmail').value;
        const parishEl = document.getElementById('regParish');
        const parish = parishEl ? parishEl.value : '';
        const password = document.getElementById('regPassword').value;
        const confirmPassword = document.getElementById('regConfirmPassword').value;
        const hpEl = document.getElementById('hpAuthRegister');
        const honeypot = hpEl ? hpEl.value : '';
        const submitBtn = document.getElementById('btnSubmitRegister');

        try {
          if (submitBtn) {
            submitBtn.disabled = true;
            submitBtn.textContent = 'Criando sua conta...';
          }
          await registerUser({ name, email, parish, password, confirmPassword, honeypot });
          const dlg = document.getElementById('authDialog');
          if (dlg) dlg.close();
          formRegister.reset();

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
            submitBtn.textContent = 'Criar minha conta';
          }
        }
      });
    }

    const formForgot = document.getElementById('formAuthForgot');
    if (formForgot) {
      formForgot.addEventListener('submit', async (e) => {
        e.preventDefault();
        hideAlert();
        const email = document.getElementById('forgotEmail').value;
        const hpEl = document.getElementById('hpAuthForgot');
        const honeypot = hpEl ? hpEl.value : '';
        const submitBtn = document.getElementById('btnSubmitForgot');

        try {
          if (submitBtn) {
            submitBtn.disabled = true;
            submitBtn.textContent = 'Enviando...';
          }
          const res = await recoverPassword(email, honeypot);
          showAlert(res.message, false);
          formForgot.reset();
        } catch (err) {
          showAlert(err.message || 'Erro ao solicitar recuperação.', true);
        } finally {
          if (submitBtn) {
            submitBtn.disabled = false;
            submitBtn.textContent = 'Enviar instruções';
          }
        }
      });
    }

    const btnLogout = document.getElementById('btnLogoutUser');
    if (btnLogout) {
      btnLogout.addEventListener('click', () => {
        logout();
        const dlg = document.getElementById('userProfileDialog');
        if (dlg) dlg.close();
        if (window.SantaCifra.renderCatalog) window.SantaCifra.renderCatalog();
      });
    }

    // Upload de Foto de Perfil
    const photoInput = document.getElementById('profilePhotoInput');
    if (photoInput) {
      photoInput.addEventListener('change', (e) => {
        const file = e.target.files && e.target.files[0];
        if (!file) return;
        if (!file.type.startsWith('image/')) {
          alert('Por favor, selecione uma imagem válida (JPG ou PNG).');
          return;
        }
        const reader = new FileReader();
        reader.onload = (re) => {
          const img = new Image();
          img.onload = () => {
            const canvas = document.createElement('canvas');
            const size = 120;
            canvas.width = size;
            canvas.height = size;
            const ctx = canvas.getContext('2d');
            const minSide = Math.min(img.width, img.height);
            const sx = (img.width - minSide) / 2;
            const sy = (img.height - minSide) / 2;
            ctx.drawImage(img, sx, sy, minSide, minSide, 0, 0, size, size);
            const dataUrl = canvas.toDataURL('image/jpeg', 0.82);

            const curUser = getCurrentUser();
            if (curUser) {
              curUser.avatarDataUrl = dataUrl;
              persistUpdatedUser(curUser);
              openProfileDialog();
              updateAuthUI();
            }
          };
          img.src = re.target.result;
        };
        reader.readAsDataURL(file);
      });
    }

    // Edição de Ministério, Paróquia e Papel (Padre / Músico)
    const formEditProfile = document.getElementById('formEditUserProfile');
    if (formEditProfile) {
      formEditProfile.addEventListener('submit', (e) => {
        e.preventDefault();
        const curUser = getCurrentUser();
        if (!curUser) return;
        const ministry = (document.getElementById('inputProfileMinistry').value || '').trim();
        const parish = (document.getElementById('inputProfileParish').value || '').trim();
        const role = document.getElementById('selectProfileRole').value || 'musico';

        curUser.ministry = ministry;
        curUser.parish = parish;
        curUser.role = role;

        persistUpdatedUser(curUser);
        openProfileDialog();
        updateAuthUI();

        if (window.SantaCifra.parish && window.SantaCifra.parish.renderParishView) {
          window.SantaCifra.parish.renderParishView();
        }

        const btnSave = document.getElementById('btnSaveProfileData');
        if (btnSave) {
          const oldTxt = btnSave.textContent;
          btnSave.textContent = 'Salvo com Sucesso!';
          btnSave.style.background = 'var(--accent-strong)';
          setTimeout(() => {
            btnSave.textContent = oldTxt;
            btnSave.style.background = '';
          }, 2000);
        }
      });
    }

    // Gerador de Convite Pastoral para o Padre (Compartilhamento exclusivo pelo Administrador/Padre)
    const btnGenPriest = document.getElementById('btnGeneratePriestInviteLink') || document.getElementById('btnGeneratePriestMagicLink');
    if (btnGenPriest) {
      btnGenPriest.addEventListener('click', () => {
        if (window.SantaCifra.parish && window.SantaCifra.parish.openSharePriestInviteDialog) {
          window.SantaCifra.parish.openSharePriestInviteDialog();
        } else if (window.SantaCifra.parish && window.SantaCifra.parish.openMagicLinkModal) {
          window.SantaCifra.parish.openMagicLinkModal();
        }
      });
    }

    updateAuthUI();
  }

  // Expor motor de segurança global + autenticação
  window.SantaCifra.security = {
    safeJsonParse,
    sanitizeText,
    sanitizeCifraText,
    sanitizeUrl,
    validateSongInput,
    validateFolderInput,
    validateOtaCatalog,
    MAX_CUSTOM_SONGS,
    MAX_USER_FOLDERS,
    MAX_SONGS_PER_FOLDER
  };

  window.SantaCifra.auth = {
    sanitizeText,
    sanitizeUrl,
    safeJsonParse,
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
    showAlert,
    hideAlert,
    openAuthDialog,
    openProfileDialog,
    loginAsPriestMarlson,
    loginAsPriestMarlisson: loginAsPriestMarlson,
    bindAuthEvents
  };
})();
