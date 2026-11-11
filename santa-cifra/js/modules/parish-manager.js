/**
 * SANTA CIFRA — Módulo de Paróquia, Escala Litúrgica & Login Mágico do Pároco (v3.9.0)
 *
 * Funcionalidades:
 * 1. Login por Link Mágico (Magic Link) para o Padre e Ministérios via URL segura
 * 2. Gestão de Paróquia (Cadastro de Paróquia, Pároco responsável, Diocese, Contatos)
 * 3. Gestão de Ministérios de Música filiados (ex: Ministério Amor e Vida)
 * 4. Calendário de Escalas de Missas (Vagas abertas onde o ministério pode se voluntariar)
 * 5. Indicação Litúrgica de Músicas pelo Padre (com busca direta no acervo e link para cifra)
 * 6. Compartilhamento facilitado via WhatsApp e Área de Transferência
 */

window.SantaCifra = window.SantaCifra || {};

(function () {
  'use strict';

  const STORAGE_PARISHES_KEY = 'santa_cifra_parishes_v1';
  const STORAGE_SCHEDULES_KEY = 'santa_cifra_mass_schedules_v1';
  const STORAGE_MINISTRIES_KEY = 'santa_cifra_ministries_v1';
  const MAGIC_TOKEN_PREFIX = 'sc_magic_v1_';

  const sec = window.SantaCifra.security || {};
  const safeParse = sec.safeJsonParse || ((raw, fb) => { try { return JSON.parse(raw); } catch (_) { return fb; } });
  const sanitize = sec.sanitizeText || ((str, max = 80) => (typeof str === 'string' ? str.slice(0, max).trim() : ''));

  // ---------------------------------------------------------------------------
  // 1. Dados Padrão (Paróquia Santo Antônio de Pádua & Ministério Amor e Vida)
  // ---------------------------------------------------------------------------

  const DEFAULT_PARISH = {
    id: 'paroquia-santo-antonio-de-padua',
    name: 'Paróquia Santo Antônio de Pádua',
    priestName: 'Pe. Antônio (Pároco)',
    priestEmail: 'padre@santoantonio.org.br',
    city: 'São Paulo - SP',
    diocese: 'Diocese de Santo Amaro',
    contactPhone: '(11) 98765-4321',
    description: 'Comunidade paroquial acolhedora com liturgia viva e ministérios de música dedicados ao louvor de Deus.',
    createdAt: new Date().toISOString()
  };

  const DEFAULT_MINISTRIES = [
    {
      id: 'min-amor-e-vida',
      parishId: 'paroquia-santo-antonio-de-padua',
      name: 'Ministério Amor e Vida',
      leaderName: 'Aristeu Junior',
      leaderEmail: 'aristeu@santoantonio.org.br',
      contactPhone: '(11) 99999-8888',
      instruments: 'Violão, Voz, Teclado, Percussão',
      membersCount: 5,
      active: true
    },
    {
      id: 'min-coral-santa-cecilia',
      parishId: 'paroquia-santo-antonio-de-padua',
      name: 'Coral Santa Cecília',
      leaderName: 'Maria Helena',
      leaderEmail: 'helena@santoantonio.org.br',
      contactPhone: '(11) 98888-7777',
      instruments: 'Vozes (Soprano, Contralto, Tenor, Baixo), Órgão',
      membersCount: 12,
      active: true
    }
  ];

  function getUpcomingDates() {
    const dates = [];
    const now = new Date();
    // Próximos 4 sábados e domingos
    for (let i = 0; i < 28; i++) {
      const d = new Date(now.getFullYear(), now.getMonth(), now.getDate() + i);
      const day = d.getDay();
      if (day === 6) { // Sábado
        dates.push({ date: d.toISOString().split('T')[0], time: '19:00', label: 'Sábado • Missa da Comunidade' });
      } else if (day === 0) { // Domingo
        dates.push({ date: d.toISOString().split('T')[0], time: '08:00', label: 'Domingo • Missa da Manhã' });
        dates.push({ date: d.toISOString().split('T')[0], time: '10:00', label: 'Domingo • Missa da Família e Catequese' });
        dates.push({ date: d.toISOString().split('T')[0], time: '19:00', label: 'Domingo • Missa Solene da Noite' });
      }
    }
    return dates;
  }

  function getSeedSchedules() {
    const upcoming = getUpcomingDates().slice(0, 8);
    return upcoming.map((slot, idx) => {
      const isClaimed = idx === 1; // Segunda missa atribuída ao Ministério Amor e Vida
      return {
        id: `sched-${slot.date}-${slot.time.replace(':', '')}`,
        parishId: 'paroquia-santo-antonio-de-padua',
        date: slot.date,
        time: slot.time,
        celebrationTitle: slot.label,
        ministryName: isClaimed ? 'Ministério Amor e Vida' : null,
        claimedBy: isClaimed ? 'aristeu@santoantonio.org.br' : null,
        status: isClaimed ? 'confirmed' : 'open',
        priestNotes: idx % 2 === 0 ? 'Foco na piedade litúrgica e participação da assembleia.' : 'Missa com acolhida especial aos jovens.',
        priestSuggestions: [
          { moment: 'Entrada', songTitle: 'Cantar a Beleza da Vida', songId: 'cantar-a-beleza-da-vida' },
          { moment: 'Ato Penitencial', songTitle: 'Kyrie Eleison (Como a Ovelha Perdida)', songId: 'kyrie-eleison-shalom' },
          { moment: 'Ofertório', songTitle: 'Ofertas Singelas, Pão e Vinho sobre a Mesa', songId: 'ofertas-singelas-pao-e-vinho' },
          { moment: 'Comunhão', songTitle: 'Incendeia Minha Alma', songId: 'pe-fabio-de-melo-incendeia-minha-alma' },
          { moment: 'Final', songTitle: 'Maria de Nazaré', songId: 'maria-de-nazare-pe-zezinho' }
        ]
      };
    });
  }

  // ---------------------------------------------------------------------------
  // 2. Persistência de Dados
  // ---------------------------------------------------------------------------

  function getParishes() {
    const raw = localStorage.getItem(STORAGE_PARISHES_KEY);
    const list = safeParse(raw, null);
    if (Array.isArray(list) && list.length > 0) return list;
    const initial = [DEFAULT_PARISH];
    localStorage.setItem(STORAGE_PARISHES_KEY, JSON.stringify(initial));
    return initial;
  }

  function saveParishes(list) {
    localStorage.setItem(STORAGE_PARISHES_KEY, JSON.stringify(list));
  }

  function getMinistries() {
    const raw = localStorage.getItem(STORAGE_MINISTRIES_KEY);
    const list = safeParse(raw, null);
    if (Array.isArray(list) && list.length > 0) return list;
    localStorage.setItem(STORAGE_MINISTRIES_KEY, JSON.stringify(DEFAULT_MINISTRIES));
    return DEFAULT_MINISTRIES;
  }

  function saveMinistries(list) {
    localStorage.setItem(STORAGE_MINISTRIES_KEY, JSON.stringify(list));
  }

  function getSchedules() {
    const raw = localStorage.getItem(STORAGE_SCHEDULES_KEY);
    const list = safeParse(raw, null);
    if (Array.isArray(list) && list.length > 0) return list;
    const initial = getSeedSchedules();
    localStorage.setItem(STORAGE_SCHEDULES_KEY, JSON.stringify(initial));
    return initial;
  }

  function saveSchedules(list) {
    localStorage.setItem(STORAGE_SCHEDULES_KEY, JSON.stringify(list));
  }

  // ---------------------------------------------------------------------------
  // 3. Sistema de Login Mágico (Magic Link Generator & Authenticator)
  // ---------------------------------------------------------------------------

  function generateMagicToken(payload) {
    try {
      const data = {
        ...payload,
        iat: Date.now(),
        exp: Date.now() + 30 * 24 * 60 * 60 * 1000 // 30 dias de validade
      };
      const jsonStr = JSON.stringify(data);
      const b64 = btoa(encodeURIComponent(jsonStr));
      return MAGIC_TOKEN_PREFIX + b64;
    } catch (_) {
      return null;
    }
  }

  function verifyMagicToken(token) {
    if (!token || typeof token !== 'string' || !token.startsWith(MAGIC_TOKEN_PREFIX)) {
      return null;
    }
    try {
      const b64 = token.slice(MAGIC_TOKEN_PREFIX.length);
      const jsonStr = decodeURIComponent(atob(b64));
      const data = safeParse(jsonStr, null);
      if (!data || !data.email || !data.exp) return null;
      if (Date.now() > data.exp) return null; // expirado
      return data;
    } catch (_) {
      return null;
    }
  }

  function buildMagicLoginUrl(token) {
    const origin = window.location.origin && window.location.origin !== 'null'
      ? window.location.origin
      : 'https://santa-cifra.surge.sh';
    const path = window.location.pathname || '/';
    return `${origin}${path}?magic_login=${encodeURIComponent(token)}`;
  }

  /**
   * Verifica se o usuário abriu a página via Magic Link
   */
  function checkUrlForMagicLogin() {
    try {
      const urlParams = new URLSearchParams(window.location.search);
      let magicToken = urlParams.get('magic_login') || urlParams.get('token');

      // Suporte também a hash (#magic_login=...)
      if (!magicToken && window.location.hash.includes('magic_login=')) {
        const hashParams = new URLSearchParams(window.location.hash.slice(1));
        magicToken = hashParams.get('magic_login');
      }

      if (!magicToken) return false;

      const payload = verifyMagicToken(magicToken);
      if (!payload) return false;

      // Autenticar a sessão
      const user = {
        id: payload.id || 'usr_' + Date.now().toString(36),
        name: payload.name || (payload.role === 'padre' ? 'Padre Pároco' : 'Músico Paroquiano'),
        email: payload.email.toLowerCase(),
        role: payload.role || 'padre',
        parish: payload.parishName || DEFAULT_PARISH.name,
        parishId: payload.parishId || DEFAULT_PARISH.id,
        ministry: payload.ministry || '',
        avatar: payload.avatar || ''
      };

      if (window.SantaCifra.auth && window.SantaCifra.auth.setSession) {
        window.SantaCifra.auth.setSession(user);
      } else {
        localStorage.setItem('santa_cifra_active_session_v1', JSON.stringify({
          user,
          token: 'magic_' + Date.now(),
          expiresAt: Date.now() + 30 * 24 * 60 * 60 * 1000,
          sig: 'magic_valid'
        }));
      }

      // Limpar os parâmetros da URL para ficar limpa
      if (window.history && window.history.replaceState) {
        const cleanUrl = window.location.pathname;
        window.history.replaceState({}, document.title, cleanUrl);
      }

      // Notificar o usuário com banner
      setTimeout(() => {
        if (window.SantaCifra.auth && window.SantaCifra.auth.updateAuthUI) {
          window.SantaCifra.auth.updateAuthUI();
        }
        if (window.SantaCifra.switchTab) {
          window.SantaCifra.switchTab('parish');
        }
        const roleLabel = user.role === 'padre' ? 'Padre / Pároco' : 'Músico Paroquiano';
        if (window.SantaCifra.auth && window.SantaCifra.auth.showAlert) {
          window.SantaCifra.auth.showAlert(`✝️ Login efetuado com sucesso via Link de Acesso! Bem-vindo(a), ${user.name} (${roleLabel}).`, false);
        }
      }, 400);

      return true;
    } catch (_) {
      return false;
    }
  }

  // ---------------------------------------------------------------------------
  // 4. Operações de Paróquia, Escala e Sugestões do Padre
  // ---------------------------------------------------------------------------

  function getActiveParish() {
    const list = getParishes();
    const user = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;

    if (user && user.parishId) {
      const found = list.find(p => p.id === user.parishId);
      if (found) return found;
    }
    return list[0] || DEFAULT_PARISH;
  }

  function updateParishData(parishId, data) {
    const list = getParishes();
    const idx = list.findIndex(p => p.id === parishId);
    if (idx !== -1) {
      list[idx] = { ...list[idx], ...data, updatedAt: new Date().toISOString() };
      saveParishes(list);
      return list[idx];
    }
    return null;
  }

  function createParish(data) {
    const list = getParishes();
    const newParish = {
      id: 'parish_' + Date.now().toString(36),
      name: sanitize(data.name || 'Nova Paróquia', 80),
      priestName: sanitize(data.priestName || 'Pároco', 60),
      priestEmail: sanitize(data.priestEmail || '', 100).toLowerCase(),
      city: sanitize(data.city || '', 60),
      diocese: sanitize(data.diocese || '', 60),
      contactPhone: sanitize(data.contactPhone || '', 30),
      description: sanitize(data.description || '', 240),
      createdAt: new Date().toISOString()
    };
    list.push(newParish);
    saveParishes(list);
    return newParish;
  }

  function claimSchedule(scheduleId, ministryName, userEmail) {
    const list = getSchedules();
    const item = list.find(s => s.id === scheduleId);
    if (!item) return false;

    item.ministryName = sanitize(ministryName, 80);
    item.claimedBy = sanitize(userEmail || '', 100);
    item.status = 'confirmed';
    item.claimedAt = new Date().toISOString();
    saveSchedules(list);
    return true;
  }

  function releaseSchedule(scheduleId) {
    const list = getSchedules();
    const item = list.find(s => s.id === scheduleId);
    if (!item) return false;

    item.ministryName = null;
    item.claimedBy = null;
    item.status = 'open';
    item.claimedAt = null;
    saveSchedules(list);
    return true;
  }

  function addPriestSuggestion(scheduleId, { moment, songTitle, songId }) {
    const list = getSchedules();
    const item = list.find(s => s.id === scheduleId);
    if (!item) return false;

    item.priestSuggestions = item.priestSuggestions || [];
    item.priestSuggestions.push({
      moment: sanitize(moment, 40),
      songTitle: sanitize(songTitle, 100),
      songId: sanitize(songId, 100)
    });
    saveSchedules(list);
    return true;
  }

  function removePriestSuggestion(scheduleId, index) {
    const list = getSchedules();
    const item = list.find(s => s.id === scheduleId);
    if (!item || !item.priestSuggestions) return false;

    item.priestSuggestions.splice(index, 1);
    saveSchedules(list);
    return true;
  }

  function addMassCelebration(data) {
    const list = getSchedules();
    const newSchedule = {
      id: `sched-${data.date}-${(data.time || '19:00').replace(':', '')}-${Date.now().toString(36)}`,
      parishId: data.parishId || getActiveParish().id,
      date: data.date,
      time: data.time || '19:00',
      celebrationTitle: sanitize(data.celebrationTitle || 'Santa Missa', 100),
      ministryName: data.ministryName ? sanitize(data.ministryName, 80) : null,
      claimedBy: data.claimedBy || null,
      status: data.ministryName ? 'confirmed' : 'open',
      priestNotes: sanitize(data.priestNotes || '', 240),
      priestSuggestions: data.priestSuggestions || []
    };
    list.push(newSchedule);
    saveSchedules(list);
    return newSchedule;
  }

  function removeMassCelebration(scheduleId) {
    const list = getSchedules();
    const filtered = list.filter(s => s.id !== scheduleId);
    saveSchedules(filtered);
    return true;
  }

  // ---------------------------------------------------------------------------
  // 5. Interface de Renderização da Aba "Paróquia"
  // ---------------------------------------------------------------------------

  let activeParishFilter = 'all'; // all, open, claimed, suggestions

  function renderParishView() {
    const container = document.getElementById('parishSection');
    if (!container) return;

    const user = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;

    const isPriest = user && (user.role === 'padre' || user.role === 'paroco');
    const parish = getActiveParish();
    const schedules = getSchedules().filter(s => s.parishId === parish.id);
    const ministries = getMinistries().filter(m => m.parishId === parish.id);

    // Filtrar escalas
    let filteredSchedules = [...schedules];
    if (activeParishFilter === 'open') {
      filteredSchedules = filteredSchedules.filter(s => s.status === 'open');
    } else if (activeParishFilter === 'claimed') {
      filteredSchedules = filteredSchedules.filter(s => s.status === 'confirmed');
    } else if (activeParishFilter === 'suggestions') {
      filteredSchedules = filteredSchedules.filter(s => s.priestSuggestions && s.priestSuggestions.length > 0);
    }

    // Ordenar por data
    filteredSchedules.sort((a, b) => new Date(`${a.date}T${a.time}`) - new Date(`${b.date}T${b.time}`));

    const openCount = schedules.filter(s => s.status === 'open').length;
    const confirmedCount = schedules.filter(s => s.status === 'confirmed').length;

    container.innerHTML = `
      <div class="parish-layout">
        <!-- Cabeçalho da Paróquia -->
        <header class="parish-hero-card">
          <div class="parish-hero-top">
            <div class="parish-icon-badge">
              <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                <path d="M12 2v20M2 12h20M12 2l-7 7v13h14V9z"/>
              </svg>
            </div>
            <div class="parish-hero-text">
              <div class="parish-badges-row">
                <span class="parish-status-chip">✦ Paróquia Católica</span>
                ${isPriest
                  ? `<span class="parish-role-chip priest-chip">✝️ Acesso do Pároco</span>`
                  : `<span class="parish-role-chip musician-chip">🎸 Acesso de Músico / Ministério</span>`
                }
              </div>
              <h1 class="parish-title" id="parishTitleView">${parish.name}</h1>
              <p class="parish-meta-line">
                <span><strong>Pároco:</strong> ${parish.priestName}</span> •
                <span>${parish.diocese}</span> •
                <span>${parish.city}</span>
              </p>
            </div>
          </div>

          <p class="parish-desc-text">${parish.description || 'Comunidade eclesial viva unida na música litúrgica e oração.'}</p>

          <!-- Barra de Ações Rápidas -->
          <div class="parish-actions-bar">
            ${isPriest ? `
              <button type="button" class="btn-parish-action btn-parish-primary" id="btnNewMassCelebration">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="5" x2="12" y2="19"/><line x1="5" y1="12" x2="19" y2="12"/></svg>
                <span>Cadastrar Nova Missa</span>
              </button>
              <button type="button" class="btn-parish-action" id="btnEditParishData">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"/></svg>
                <span>Editar Paróquia</span>
              </button>
              <button type="button" class="btn-parish-action" id="btnSharePriestMagicLink">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"/><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"/></svg>
                <span>Link de Acesso do Padre</span>
              </button>
              <button type="button" class="btn-parish-action" id="btnInviteMusiciansLink">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M22 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg>
                <span>Convidar Ministérios</span>
              </button>
            ` : `
              <button type="button" class="btn-parish-action btn-parish-primary" id="btnOpenMyMinistrySettings">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 18V5l12-2v13"/><circle cx="6" cy="18" r="3"/><circle cx="18" cy="16" r="3"/></svg>
                <span>Meu Ministério: ${user && user.ministry ? user.ministry : 'Amor e Vida'}</span>
              </button>
              <button type="button" class="btn-parish-action" id="btnSharePriestMagicLink">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"/><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"/></svg>
                <span>Enviar Link ao Padre</span>
              </button>
            `}
          </div>
        </header>

        <!-- Estatísticas das Missas -->
        <div class="parish-stats-grid">
          <div class="parish-stat-card">
            <span class="stat-number">${schedules.length}</span>
            <span class="stat-label">Missas cadastradas</span>
          </div>
          <div class="parish-stat-card open-card">
            <span class="stat-number">${openCount}</span>
            <span class="stat-label">Missas sem ministério (Vagas)</span>
          </div>
          <div class="parish-stat-card confirmed-card">
            <span class="stat-number">${confirmedCount}</span>
            <span class="stat-label">Missas escaladas</span>
          </div>
          <div class="parish-stat-card">
            <span class="stat-number">${ministries.length}</span>
            <span class="stat-label">Ministérios na paróquia</span>
          </div>
        </div>

        <!-- Seção de Escalas com Filtros -->
        <section class="parish-schedules-section">
          <div class="parish-section-header">
            <div>
              <h2 class="section-title">Escala de Missas & Celebrações</h2>
              <p class="section-subtitle">Escolha o dia em que seu ministério vai tocar e confira as músicas indicadas pelo Pároco.</p>
            </div>
            <div class="parish-filter-tabs" role="tablist">
              <button type="button" class="p-filter-btn ${activeParishFilter === 'all' ? 'active' : ''}" data-filter="all">Todas (${schedules.length})</button>
              <button type="button" class="p-filter-btn ${activeParishFilter === 'open' ? 'active' : ''}" data-filter="open">🟡 Vagas Abertas (${openCount})</button>
              <button type="button" class="p-filter-btn ${activeParishFilter === 'claimed' ? 'active' : ''}" data-filter="claimed">🟢 Confirmadas (${confirmedCount})</button>
              <button type="button" class="p-filter-btn ${activeParishFilter === 'suggestions' ? 'active' : ''}" data-filter="suggestions">✝️ Com Sugestões do Padre</button>
            </div>
          </div>

          <!-- Lista de Missas -->
          <div class="schedules-cards-grid">
            ${filteredSchedules.length === 0 ? `
              <div class="empty-schedules-box">
                <p>Nenhuma missa encontrada para este filtro.</p>
              </div>
            ` : filteredSchedules.map(sched => {
              const [year, month, day] = sched.date.split('-');
              const dateObj = new Date(year, month - 1, day);
              const weekDayName = dateObj.toLocaleDateString('pt-BR', { weekday: 'long' });
              const monthName = dateObj.toLocaleDateString('pt-BR', { month: 'short' });
              const isClaimed = sched.status === 'confirmed';
              const myMinistry = user && user.ministry ? user.ministry : 'Ministério Amor e Vida';
              const isMyMinistryClaimed = isClaimed && sched.ministryName === myMinistry;

              return `
                <article class="schedule-card ${isClaimed ? 'schedule-confirmed' : 'schedule-open'}" data-sched-id="${sched.id}">
                  <div class="sched-date-badge">
                    <span class="sched-day">${day}</span>
                    <span class="sched-month">${monthName.toUpperCase()}</span>
                    <span class="sched-time">${sched.time}</span>
                  </div>

                  <div class="sched-content">
                    <div class="sched-top-row">
                      <div class="sched-weekday-tag">${weekDayName.toUpperCase()}</div>
                      ${isClaimed
                        ? `<span class="sched-status-badge badge-confirmed">🟢 Escalado: <strong>${sched.ministryName}</strong></span>`
                        : `<span class="sched-status-badge badge-open">🟡 Vaga Aberta • Sem Ministério</span>`
                      }
                    </div>

                    <h3 class="sched-title">${sched.celebrationTitle}</h3>
                    ${sched.priestNotes ? `<p class="sched-priest-notes"><em>Orientação do Pároco:</em> "${sched.priestNotes}"</p>` : ''}

                    <!-- Sugestões de Músicas do Padre -->
                    <div class="sched-suggestions-box">
                      <div class="sched-suggestions-header">
                        <span class="sugg-header-title">
                          <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 2v20M2 12h20M12 2l-7 7v13h14V9z"/></svg>
                          Músicas Sugeridas pelo Padre (${(sched.priestSuggestions || []).length}):
                        </span>
                        ${isPriest ? `
                          <button type="button" class="btn-add-sugg-sm" data-action="add-suggestion" data-sched-id="${sched.id}" title="Indicar uma música para esta celebração">
                            + Indicar Música
                          </button>
                        ` : ''}
                      </div>

                      <div class="sched-suggestions-list">
                        ${(!sched.priestSuggestions || sched.priestSuggestions.length === 0) ? `
                          <span class="no-sugg-text">Nenhuma música indicada ainda. O ministério tem livre escolha litúrgica.</span>
                        ` : sched.priestSuggestions.map((sugg, sIdx) => `
                          <div class="sugg-item-pill">
                            <span class="sugg-moment-tag">${sugg.moment}:</span>
                            <button type="button" class="sugg-song-link" data-song-id="${sugg.songId || ''}" title="Ver cifra completa">
                              ${sugg.songTitle}
                            </button>
                            ${isPriest ? `
                              <button type="button" class="btn-remove-sugg-item" data-action="remove-sugg" data-sched-id="${sched.id}" data-sugg-idx="${sIdx}" title="Remover sugestão">×</button>
                            ` : ''}
                          </div>
                        `).join('')}
                      </div>
                    </div>

                    <!-- Botões de Ação na Escala -->
                    <div class="sched-actions-row">
                      ${!isClaimed ? `
                        <button type="button" class="btn-claim-schedule" data-action="claim" data-sched-id="${sched.id}">
                          🎸 Quero Tocar Nesta Missa (${myMinistry})
                        </button>
                      ` : (isMyMinistryClaimed || isPriest) ? `
                        <div class="sched-claimed-info">
                          <span>Confirmado para: <strong>${sched.ministryName}</strong></span>
                          <button type="button" class="btn-release-schedule" data-action="release" data-sched-id="${sched.id}" title="Liberar vaga para outro ministério">
                            Desmarcar Escala
                          </button>
                        </div>
                      ` : `
                        <span class="sched-locked-text">Escala preenchida por <strong>${sched.ministryName}</strong></span>
                      `}

                      ${isPriest ? `
                        <button type="button" class="btn-delete-sched-sm" data-action="delete-sched" data-sched-id="${sched.id}" title="Excluir celebração da escala">
                          Excluir Missa
                        </button>
                      ` : ''}
                    </div>
                  </div>
                </article>
              `;
            }).join('')}
          </div>
        </section>

        <!-- Ministérios Filiados à Paróquia -->
        <section class="parish-ministries-section">
          <div class="parish-section-header">
            <div>
              <h2 class="section-title">Ministérios de Música Filiados</h2>
              <p class="section-subtitle">Grupos e corais responsáveis pelas celebrações nesta paróquia.</p>
            </div>
            ${isPriest ? `
              <button type="button" class="btn-parish-action" id="btnInviteMusiciansLink2">
                + Convidar Novo Ministério
              </button>
            ` : ''}
          </div>

          <div class="ministries-grid">
            ${ministries.map(min => `
              <div class="ministry-card">
                <div class="min-card-avatar">🎵</div>
                <div class="min-card-details">
                  <h3 class="min-name">${min.name}</h3>
                  <p class="min-leader">Líder: <strong>${min.leaderName}</strong> (${min.contactPhone})</p>
                  <p class="min-instruments">Instrumentos: ${min.instruments}</p>
                  <span class="min-members-count">${min.membersCount} integrantes ativos</span>
                </div>
              </div>
            `).join('')}
          </div>
        </section>
      </div>
    `;

    bindParishEvents(container);
  }

  function bindParishEvents(container) {
    // Filtros de escala
    container.querySelectorAll('.p-filter-btn').forEach(btn => {
      btn.addEventListener('click', () => {
        activeParishFilter = btn.dataset.filter;
        renderParishView();
      });
    });

    // Abrir cifra sugerida pelo Padre
    container.querySelectorAll('.sugg-song-link').forEach(btn => {
      btn.addEventListener('click', () => {
        const songId = btn.dataset.songId;
        if (!songId) return;
        const song = (window.SantaCifra.state && window.SantaCifra.state.songs)
          ? window.SantaCifra.state.songs.find(s => s.id === songId)
          : null;
        if (song && window.SantaCifra.openSongView) {
          window.SantaCifra.openSongView(song);
        } else if (window.SantaCifra.filterByQuery) {
          window.SantaCifra.switchTab('home');
          window.SantaCifra.filterByQuery(btn.textContent.trim());
        }
      });
    });

    // Reivindicar escala / Quero tocar nesta missa
    container.querySelectorAll('[data-action="claim"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const schedId = btn.dataset.schedId;
        const user = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
          ? window.SantaCifra.auth.getCurrentUser()
          : null;
        const myMinistry = user && user.ministry ? user.ministry : 'Ministério Amor e Vida';
        const userEmail = user ? user.email : 'aristeu@santoantonio.org.br';

        if (claimSchedule(schedId, myMinistry, userEmail)) {
          if (window.SantaCifra.auth && window.SantaCifra.auth.showAlert) {
            window.SantaCifra.auth.showAlert(`🎉 Que bênção! O ${myMinistry} foi escalado com sucesso para esta Santa Missa.`, false);
          }
          renderParishView();
        }
      });
    });

    // Liberar escala
    container.querySelectorAll('[data-action="release"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const schedId = btn.dataset.schedId;
        if (confirm('Deseja liberar esta escala para outro ministério de música da paróquia?')) {
          if (releaseSchedule(schedId)) {
            renderParishView();
          }
        }
      });
    });

    // Excluir missa (Padre)
    container.querySelectorAll('[data-action="delete-sched"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const schedId = btn.dataset.schedId;
        if (confirm('Tem certeza de que deseja remover esta celebração da escala paroquial?')) {
          removeMassCelebration(schedId);
          renderParishView();
        }
      });
    });

    // Adicionar sugestão de música pelo Padre
    container.querySelectorAll('[data-action="add-suggestion"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const schedId = btn.dataset.schedId;
        openAddSuggestionDialog(schedId);
      });
    });

    // Remover sugestão de música (Padre)
    container.querySelectorAll('[data-action="remove-sugg"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const schedId = btn.dataset.schedId;
        const idx = parseInt(btn.dataset.suggIdx, 10);
        removePriestSuggestion(schedId, idx);
        renderParishView();
      });
    });

    // Botões do Cabeçalho
    const btnNewMass = container.querySelector('#btnNewMassCelebration');
    if (btnNewMass) {
      btnNewMass.addEventListener('click', openNewMassDialog);
    }

    const btnEditParish = container.querySelector('#btnEditParishData');
    if (btnEditParish) {
      btnEditParish.addEventListener('click', openEditParishDialog);
    }

    const btnShareMagic = container.querySelector('#btnSharePriestMagicLink');
    if (btnShareMagic) {
      btnShareMagic.addEventListener('click', () => openMagicLinkDialog('padre'));
    }

    const btnInvite = container.querySelector('#btnInviteMusiciansLink');
    if (btnInvite) {
      btnInvite.addEventListener('click', () => openMagicLinkDialog('musico'));
    }

    const btnInvite2 = container.querySelector('#btnInviteMusiciansLink2');
    if (btnInvite2) {
      btnInvite2.addEventListener('click', () => openMagicLinkDialog('musico'));
    }

    const btnMinistry = container.querySelector('#btnOpenMyMinistrySettings');
    if (btnMinistry) {
      btnMinistry.addEventListener('click', () => {
        if (window.SantaCifra.auth && window.SantaCifra.auth.openProfileDialog) {
          window.SantaCifra.auth.openProfileDialog();
        }
      });
    }
  }

  // ---------------------------------------------------------------------------
  // 6. Diálogos Modais (Cadastrar Missa, Sugerir Música, Link Mágico)
  // ---------------------------------------------------------------------------

  function openMagicLinkDialog(targetRole = 'padre') {
    let dlg = document.getElementById('magicLinkDialog');
    if (!dlg) {
      dlg = document.createElement('dialog');
      dlg.id = 'magicLinkDialog';
      dlg.className = 'app-dialog magic-link-dialog';
      dlg.setAttribute('closedby', 'any');
      document.body.appendChild(dlg);
    }

    const parish = getActiveParish();
    const token = generateMagicToken({
      email: targetRole === 'padre' ? parish.priestEmail : 'musico@santoantonio.org.br',
      name: targetRole === 'padre' ? parish.priestName : 'Músico Paroquiano',
      role: targetRole,
      parishId: parish.id,
      parishName: parish.name,
      ministry: targetRole === 'musico' ? 'Ministério Amor e Vida' : ''
    });

    const magicUrl = buildMagicLoginUrl(token);
    const roleTitle = targetRole === 'padre' ? 'Link de Acesso do Pároco' : 'Link de Convite para Ministérios';
    const descText = targetRole === 'padre'
      ? `Envie este link direto para o <strong>${parish.priestName}</strong>. Ao abrir, o Padre entra automaticamente no Santa Cifra com perfil de Pároco, podendo gerenciar a ${parish.name} e sugerir músicas.`
      : `Envie este convite para os ministérios e músicos da paróquia. Ao abrir, eles já entram filiados à <strong>${parish.name}</strong> e podem assumir as escalas de missa!`;

    const whatsMessage = targetRole === 'padre'
      ? `✝️ *Santa Cifra — Acesso do Pároco*\nOlá, ${parish.priestName}! Segue o link de acesso direto para gerenciar as escalas e sugerir as músicas da ${parish.name}:\n\n${magicUrl}`
      : `🎵 *Santa Cifra — Convite da Paróquia*\nOlá! Você foi convidado para ingressar no Santa Cifra como ministério de música da ${parish.name}. Clique no link para ver a escala e escolher as missas:\n\n${magicUrl}`;

    const whatsUrl = `https://api.whatsapp.com/send?text=${encodeURIComponent(whatsMessage)}`;

    dlg.innerHTML = `
      <div class="dialog-header">
        <h2>${roleTitle}</h2>
        <button type="button" class="btn-close-dialog" id="btnCloseMagicDlg" aria-label="Fechar">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M18 6 6 18M6 6l12 12"/></svg>
        </button>
      </div>
      <div class="dialog-body">
        <p class="magic-dlg-desc">${descText}</p>

        <div class="magic-link-box">
          <input type="text" id="magicUrlInput" class="magic-url-input" value="${magicUrl}" readonly>
          <button type="button" class="btn-copy-magic" id="btnCopyMagicLink">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="9" y="9" width="13" height="13" rx="2" ry="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg>
            <span id="copyMagicLabel">Copiar</span>
          </button>
        </div>

        <div class="magic-buttons-row">
          <a href="${whatsUrl}" target="_blank" rel="noopener noreferrer" class="btn-whatsapp-magic">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M12.031 6.172c-3.181 0-5.767 2.586-5.768 5.766-.001 1.298.38 2.27 1.019 3.287l-.582 2.128 2.182-.573c.978.58 1.911.928 3.145.929 3.178 0 5.767-2.587 5.768-5.766.001-3.187-2.575-5.77-5.764-5.771zm3.392 8.244c-.144.405-.837.774-1.17.824-.299.045-.677.063-1.092-.069-.252-.08-.575-.187-.988-.365-1.739-.751-2.874-2.502-2.961-2.617-.087-.116-.708-.94-.708-1.793s.448-1.273.607-1.446c.159-.173.346-.217.462-.217l.332.006c.106.005.249-.04.39.298.144.347.491 1.2.534 1.287.043.087.072.188.014.304-.058.116-.087.188-.173.289l-.26.304c-.087.086-.177.18-.076.354.101.174.449.741.964 1.201.662.591 1.221.774 1.394.86.174.086.275.072.376-.044.101-.116.433-.506.549-.68.116-.173.231-.145.39-.086s1.011.477 1.184.564.289.13.332.202c.045.072.045.419-.099.824zm-3.423-14.416c-6.627 0-12 5.373-12 12 0 2.12.553 4.111 1.517 5.839l-1.611 5.889 6.036-1.583c1.665.912 3.575 1.431 5.608 1.431 6.627 0 12-5.373 12-12s-5.373-12-12-12z"/></svg>
            <span>Enviar pelo WhatsApp</span>
          </a>
        </div>
      </div>
    `;

    dlg.showModal();

    dlg.querySelector('#btnCloseMagicDlg').addEventListener('click', () => dlg.close());
    const btnCopy = dlg.querySelector('#btnCopyMagicLink');
    btnCopy.addEventListener('click', () => {
      const input = dlg.querySelector('#magicUrlInput');
      input.select();
      navigator.clipboard.writeText(input.value).then(() => {
        dlg.querySelector('#copyMagicLabel').textContent = 'Copiado!';
        setTimeout(() => {
          const l = dlg.querySelector('#copyMagicLabel');
          if (l) l.textContent = 'Copiar';
        }, 2000);
      });
    });
  }

  function openAddSuggestionDialog(scheduleId) {
    let dlg = document.getElementById('addSuggestionDialog');
    if (!dlg) {
      dlg = document.createElement('dialog');
      dlg.id = 'addSuggestionDialog';
      dlg.className = 'app-dialog';
      dlg.setAttribute('closedby', 'any');
      document.body.appendChild(dlg);
    }

    const moments = [
      'Entrada', 'Ato Penitencial', 'Glória', 'Salmo', 'Aclamação ao Evangelho',
      'Ofertório', 'Santo', 'Cordeiro de Deus', 'Comunhão', 'Ação de Graças', 'Final'
    ];

    const allSongs = (window.SantaCifra.state && window.SantaCifra.state.songs) || [];

    dlg.innerHTML = `
      <div class="dialog-header">
        <h2>Indicar Música (Sugestão do Padre)</h2>
        <button type="button" class="btn-close-dialog" id="btnCloseSuggDlg" aria-label="Fechar">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M18 6 6 18M6 6l12 12"/></svg>
        </button>
      </div>
      <form id="formAddSuggestion" class="dialog-body-form">
        <div class="form-field">
          <label for="suggMomentSelect">Momento Litúrgico</label>
          <select id="suggMomentSelect" class="dialog-input" required>
            ${moments.map(m => `<option value="${m}">${m}</option>`).join('')}
          </select>
        </div>

        <div class="form-field">
          <label for="suggSongSearch">Buscar Música no Acervo (521 Cifras)</label>
          <input type="text" id="suggSongSearch" class="dialog-input" placeholder="Digite o título ou autor (ex: Incendeia, Shalom, Zezinho)..." autocomplete="off" required>
          <input type="hidden" id="suggSelectedSongId">
          <input type="hidden" id="suggSelectedSongTitle">
          <div class="sugg-autocomplete-results" id="suggAutocompleteList" style="display:none;"></div>
        </div>

        <div class="dialog-actions">
          <button type="submit" class="btn-primary-solid btn-block" id="btnConfirmAddSugg">Adicionar Sugestão à Missa</button>
        </div>
      </form>
    `;

    dlg.showModal();
    dlg.querySelector('#btnCloseSuggDlg').addEventListener('click', () => dlg.close());

    const searchInput = dlg.querySelector('#suggSongSearch');
    const autoList = dlg.querySelector('#suggAutocompleteList');
    const hiddenId = dlg.querySelector('#suggSelectedSongId');
    const hiddenTitle = dlg.querySelector('#suggSelectedSongTitle');

    searchInput.addEventListener('input', () => {
      const q = searchInput.value.toLowerCase().trim();
      if (q.length < 2) {
        autoList.style.display = 'none';
        return;
      }

      const matches = allSongs.filter(s => {
        const text = `${s.title} ${s.artist || ''} ${s.composer || ''}`.toLowerCase();
        return text.includes(q);
      }).slice(0, 8);

      if (matches.length === 0) {
        autoList.innerHTML = `<div class="auto-item-empty">Nenhuma música encontrada</div>`;
        autoList.style.display = 'block';
        return;
      }

      autoList.innerHTML = matches.map(s => `
        <div class="auto-item" data-id="${s.id}" data-title="${s.title}">
          <strong>${s.title}</strong>
          <span class="auto-item-artist">${s.artist || s.composer || 'Litúrgica'} (${s.originalKey || s.tom || 'C'})</span>
        </div>
      `).join('');
      autoList.style.display = 'block';

      autoList.querySelectorAll('.auto-item').forEach(item => {
        item.addEventListener('click', () => {
          searchInput.value = item.dataset.title;
          hiddenId.value = item.dataset.id;
          hiddenTitle.value = item.dataset.title;
          autoList.style.display = 'none';
        });
      });
    });

    dlg.querySelector('#formAddSuggestion').addEventListener('submit', (e) => {
      e.preventDefault();
      const moment = dlg.querySelector('#suggMomentSelect').value;
      const songTitle = hiddenTitle.value || searchInput.value;
      const songId = hiddenId.value || 'custom';

      if (addPriestSuggestion(scheduleId, { moment, songTitle, songId })) {
        dlg.close();
        renderParishView();
      }
    });
  }

  function openNewMassDialog() {
    let dlg = document.getElementById('newMassDialog');
    if (!dlg) {
      dlg = document.createElement('dialog');
      dlg.id = 'newMassDialog';
      dlg.className = 'app-dialog';
      dlg.setAttribute('closedby', 'any');
      document.body.appendChild(dlg);
    }

    const todayStr = new Date().toISOString().split('T')[0];

    dlg.innerHTML = `
      <div class="dialog-header">
        <h2>Cadastrar Celebração / Missa</h2>
        <button type="button" class="btn-close-dialog" id="btnCloseNewMassDlg" aria-label="Fechar">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M18 6 6 18M6 6l12 12"/></svg>
        </button>
      </div>
      <form id="formNewMass" class="dialog-body-form">
        <div class="form-row-2">
          <div class="form-field">
            <label for="newMassDate">Data da Missa</label>
            <input type="date" id="newMassDate" class="dialog-input" value="${todayStr}" required>
          </div>
          <div class="form-field">
            <label for="newMassTime">Horário</label>
            <input type="time" id="newMassTime" class="dialog-input" value="19:00" required>
          </div>
        </div>
        <div class="form-field">
          <label for="newMassTitle">Título da Celebração</label>
          <input type="text" id="newMassTitle" class="dialog-input" placeholder="Ex: Missa Dominical Solene, Missa com Batizados..." required>
        </div>
        <div class="form-field">
          <label for="newMassNotes">Orientações do Pároco (Opcional)</label>
          <textarea id="newMassNotes" class="dialog-input" rows="2" placeholder="Ex: Solenidade de Cristo Rei. Privilegiar cantos solenes e vibrantes."></textarea>
        </div>
        <div class="dialog-actions">
          <button type="submit" class="btn-primary-solid btn-block">Salvar e Abrir para os Ministérios</button>
        </div>
      </form>
    `;

    dlg.showModal();
    dlg.querySelector('#btnCloseNewMassDlg').addEventListener('click', () => dlg.close());

    dlg.querySelector('#formNewMass').addEventListener('submit', (e) => {
      e.preventDefault();
      const date = dlg.querySelector('#newMassDate').value;
      const time = dlg.querySelector('#newMassTime').value;
      const celebrationTitle = dlg.querySelector('#newMassTitle').value;
      const priestNotes = dlg.querySelector('#newMassNotes').value;

      addMassCelebration({ date, time, celebrationTitle, priestNotes });
      dlg.close();
      renderParishView();
    });
  }

  function openEditParishDialog() {
    let dlg = document.getElementById('editParishDialog');
    if (!dlg) {
      dlg = document.createElement('dialog');
      dlg.id = 'editParishDialog';
      dlg.className = 'app-dialog';
      dlg.setAttribute('closedby', 'any');
      document.body.appendChild(dlg);
    }

    const p = getActiveParish();

    dlg.innerHTML = `
      <div class="dialog-header">
        <h2>Dados da Paróquia</h2>
        <button type="button" class="btn-close-dialog" id="btnCloseEditParishDlg" aria-label="Fechar">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M18 6 6 18M6 6l12 12"/></svg>
        </button>
      </div>
      <form id="formEditParish" class="dialog-body-form">
        <div class="form-field">
          <label for="pName">Nome da Paróquia</label>
          <input type="text" id="pName" class="dialog-input" value="${p.name}" required>
        </div>
        <div class="form-row-2">
          <div class="form-field">
            <label for="pPriest">Nome do Pároco</label>
            <input type="text" id="pPriest" class="dialog-input" value="${p.priestName}" required>
          </div>
          <div class="form-field">
            <label for="pCity">Cidade / Estado</label>
            <input type="text" id="pCity" class="dialog-input" value="${p.city}" required>
          </div>
        </div>
        <div class="form-row-2">
          <div class="form-field">
            <label for="pDiocese">Diocese / Arquidiocese</label>
            <input type="text" id="pDiocese" class="dialog-input" value="${p.diocese}">
          </div>
          <div class="form-field">
            <label for="pPhone">Telefone / Secretaria</label>
            <input type="text" id="pPhone" class="dialog-input" value="${p.contactPhone}">
          </div>
        </div>
        <div class="form-field">
          <label for="pDesc">Apresentação da Paróquia</label>
          <textarea id="pDesc" class="dialog-input" rows="3">${p.description || ''}</textarea>
        </div>
        <div class="dialog-actions">
          <button type="submit" class="btn-primary-solid btn-block">Atualizar Paróquia</button>
        </div>
      </form>
    `;

    dlg.showModal();
    dlg.querySelector('#btnCloseEditParishDlg').addEventListener('click', () => dlg.close());

    dlg.querySelector('#formEditParish').addEventListener('submit', (e) => {
      e.preventDefault();
      updateParishData(p.id, {
        name: dlg.querySelector('#pName').value,
        priestName: dlg.querySelector('#pPriest').value,
        city: dlg.querySelector('#pCity').value,
        diocese: dlg.querySelector('#pDiocese').value,
        contactPhone: dlg.querySelector('#pPhone').value,
        description: dlg.querySelector('#pDesc').value
      });
      dlg.close();
      renderParishView();
    });
  }

  // ---------------------------------------------------------------------------
  // 7. Inicialização do Módulo
  // ---------------------------------------------------------------------------

  function initParishModule() {
    // 1. Checar se entrou via Magic Link
    checkUrlForMagicLogin();
  }

  // Expor API global
  window.SantaCifra.parish = {
    getParishes,
    getActiveParish,
    updateParishData,
    createParish,
    getMinistries,
    getSchedules,
    claimSchedule,
    releaseSchedule,
    addPriestSuggestion,
    removePriestSuggestion,
    addMassCelebration,
    removeMassCelebration,
    generateMagicToken,
    verifyMagicToken,
    buildMagicLoginUrl,
    checkUrlForMagicLogin,
    renderParishView,
    openMagicLinkDialog,
    openMagicLinkModal: openMagicLinkDialog,
    openNewMassDialog,
    openNewMassModal: openNewMassDialog,
    openEditParishDialog,
    openEditParishModal: openEditParishDialog,
    openAddSuggestionDialog,
    openAddSuggestionModal: openAddSuggestionDialog,
    initParishModule
  };
})();
