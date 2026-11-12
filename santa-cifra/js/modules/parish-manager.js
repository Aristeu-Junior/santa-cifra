/**
 * SANTA CIFRA — Módulo de Paróquias, Ministérios, Escalas & Gestão Pastoral (v3.9.4)
 *
 * Funcionalidades Canônicas:
 * 1. Base sóbria e resumida: Usuários sem paróquia iniciam em estado não-filiado com busca
 * 2. Filtro e busca de paróquias por Estado (UF), Município, Diocese e Nome
 * 3. Base cadastrada autêntica: Paróquia Santo Antônio de Pádua - Ferraz de Vasconcelos (Diocese de Mogi das Cruzes / Pe. Marlson Assis de Araújo)
 * 4. Filiação de Ministérios com autorização pastoral: Músicos solicitam filiação e o Pároco aprova ou recusa
 * 5. Edição pastoral: Pároco pode atualizar os dados oficiais da sua paróquia
 * 6. Calendário e escalas de missas: Lançamento de múltiplos horários e candidatura de grupos filiados
 * 7. Design estrito: Proibição total de emojis decorativos, tipografia refinada e layout 100% responsivo para celular
 */

window.SantaCifra = window.SantaCifra || {};

(function () {
  'use strict';

  const STORAGE_PARISHES_KEY = 'santa_cifra_parishes_v1';
  const STORAGE_SCHEDULES_KEY = 'santa_cifra_mass_schedules_v1';
  const STORAGE_MINISTRIES_KEY = 'santa_cifra_ministries_v1';
  const STORAGE_ACTIVE_PARISH_KEY = 'santa_cifra_active_parish_id_v1';
  const STORAGE_USER_ORIGIN_PARISH_KEY = 'santa_cifra_user_origin_parish_id_v2';

  const sec = window.SantaCifra.security || {};
  const safeParse = sec.safeJsonParse || ((raw, fb) => { try { return JSON.parse(raw); } catch (_) { return fb; } });
  const sanitize = sec.sanitizeText || ((str, max = 80) => (typeof str === 'string' ? str.slice(0, max).trim() : ''));

  const OFFICIAL_PARISH_SANTO_ANTONIO = {
    id: 'paroquia-santo-antonio-de-padua-fv13',
    name: 'Paróquia Santo Antônio de Pádua - Ferraz de Vasconcelos',
    shortName: 'Paróquia Santo Antônio de Pádua',
    priestName: 'Pe. Marlson Assis de Araújo',
    priestEmail: 'padre.marlson@santoantonio.org.br',
    city: 'Ferraz de Vasconcelos - SP',
    state: 'SP',
    diocese: 'Diocese de Mogi das Cruzes',
    address: 'Rua Francisco Fernandes Barroso, 30 - Vila Santo Antônio, Ferraz de Vasconcelos - SP',
    creationDate: 'Criada aos 31 de julho de 2013',
    contactPhone: '(11) 4676-1234',
    description: 'Comunidade Paroquial Santo Antônio de Pádua em Ferraz de Vasconcelos - SP, Diocese de Mogi das Cruzes. Criada aos 31 de julho de 2013. Pároco: Pe. Marlson Assis de Araújo.',
    facebookUrl: 'https://web.facebook.com/santoantoniodepaduafv13/',
    createdAt: '2013-07-31T00:00:00.000Z'
  };

  // ---------------------------------------------------------------------------
  // 1. Persistência de Dados
  // ---------------------------------------------------------------------------

  function getParishes() {
    const raw = localStorage.getItem(STORAGE_PARISHES_KEY);
    let list = safeParse(raw, null);
    if (!Array.isArray(list) || list.length === 0) {
      list = [OFFICIAL_PARISH_SANTO_ANTONIO];
      saveParishes(list);
    } else {
      const found = list.find(p => p.id === OFFICIAL_PARISH_SANTO_ANTONIO.id || p.name.toLowerCase().includes('santo antônio de pádua'));
      if (!found) {
        list.unshift(OFFICIAL_PARISH_SANTO_ANTONIO);
        saveParishes(list);
      } else {
        found.name = OFFICIAL_PARISH_SANTO_ANTONIO.name;
        found.priestName = OFFICIAL_PARISH_SANTO_ANTONIO.priestName;
        found.priestEmail = OFFICIAL_PARISH_SANTO_ANTONIO.priestEmail;
        found.city = OFFICIAL_PARISH_SANTO_ANTONIO.city;
        found.state = OFFICIAL_PARISH_SANTO_ANTONIO.state;
        found.diocese = OFFICIAL_PARISH_SANTO_ANTONIO.diocese;
        found.address = OFFICIAL_PARISH_SANTO_ANTONIO.address;
        found.creationDate = OFFICIAL_PARISH_SANTO_ANTONIO.creationDate;
        found.description = OFFICIAL_PARISH_SANTO_ANTONIO.description;
        found.facebookUrl = OFFICIAL_PARISH_SANTO_ANTONIO.facebookUrl;
        saveParishes(list);
      }
    }
    return list;
  }

  function saveParishes(list) {
    try {
      localStorage.setItem(STORAGE_PARISHES_KEY, JSON.stringify(list));
    } catch (_) {}
  }

  function getMinistries() {
    const raw = localStorage.getItem(STORAGE_MINISTRIES_KEY);
    const list = safeParse(raw, null);
    return Array.isArray(list) ? list : [];
  }

  function saveMinistries(list) {
    try {
      localStorage.setItem(STORAGE_MINISTRIES_KEY, JSON.stringify(list));
    } catch (_) {}
  }

  function getSchedules() {
    const raw = localStorage.getItem(STORAGE_SCHEDULES_KEY);
    const list = safeParse(raw, null);
    return Array.isArray(list) ? list : [];
  }

  function saveSchedules(list) {
    try {
      localStorage.setItem(STORAGE_SCHEDULES_KEY, JSON.stringify(list));
    } catch (_) {}
  }

  function getActiveParishId() {
    return localStorage.getItem(STORAGE_ACTIVE_PARISH_KEY);
  }

  function setActiveParishId(id) {
    if (id) {
      localStorage.setItem(STORAGE_ACTIVE_PARISH_KEY, id);
    } else {
      localStorage.removeItem(STORAGE_ACTIVE_PARISH_KEY);
    }
  }

  function getActiveParish() {
    const parishes = getParishes();
    if (parishes.length === 0) return null;

    const user = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;

    // Se o usuário logado for Pároco, acessa diretamente sua paróquia
    if (user && (user.role === 'padre' || user.role === 'paroco')) {
      if (user.parishId) {
        const found = parishes.find(p => p.id === user.parishId);
        if (found) return found;
      }
      return parishes[0];
    }

    // Se o usuário tem paróquia associada em seu perfil
    if (user && user.parishId) {
      const userParish = parishes.find(p => p.id === user.parishId);
      if (userParish) return userParish;
    }

    // Se o usuário selecionou uma paróquia de origem na busca
    const originParishId = localStorage.getItem(STORAGE_USER_ORIGIN_PARISH_KEY);
    if (originParishId) {
      const originMatch = parishes.find(p => p.id === originParishId);
      if (originMatch) return originMatch;
    }

    // Se alternou manualmente a paróquia ativa
    const savedId = getActiveParishId();
    if (savedId) {
      const found = parishes.find(p => p.id === savedId);
      if (found) return found;
    }

    // Caso contrário: estado não-filiado (não expõe paróquias aleatoriamente)
    return null;
  }

  // ---------------------------------------------------------------------------
  // 2. Operações de Paróquia
  // ---------------------------------------------------------------------------

  function createParish(data) {
    const list = getParishes();
    const newParish = {
      id: 'parish_' + Date.now().toString(36) + '_' + Math.random().toString(36).substring(2, 6),
      name: sanitize(data.name || 'Nova Paróquia', 120),
      priestName: sanitize(data.priestName || 'Pároco', 80),
      priestEmail: sanitize(data.priestEmail || '', 100).toLowerCase(),
      city: sanitize(data.city || '', 80),
      state: sanitize(data.state || '', 10),
      diocese: sanitize(data.diocese || '', 80),
      contactPhone: sanitize(data.contactPhone || '', 30),
      address: sanitize(data.address || '', 160),
      facebookUrl: sanitize(data.facebookUrl || '', 150),
      description: sanitize(data.description || '', 240),
      createdAt: new Date().toISOString()
    };
    list.push(newParish);
    saveParishes(list);
    setActiveParishId(newParish.id);
    localStorage.setItem(STORAGE_USER_ORIGIN_PARISH_KEY, newParish.id);
    return newParish;
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

  // ---------------------------------------------------------------------------
  // 3. Operações de Ministérios de Música (com Aprovação Pastoral)
  // ---------------------------------------------------------------------------

  function registerMinistry(parishId, data) {
    const list = getMinistries();
    const user = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;
    const isPriest = user && (user.role === 'padre' || user.role === 'paroco');

    const newMin = {
      id: 'min_' + Date.now().toString(36) + '_' + Math.random().toString(36).substring(2, 6),
      parishId: parishId,
      name: sanitize(data.name || 'Ministério de Música', 80),
      leaderName: sanitize(data.leaderName || (user ? user.name : 'Líder'), 60),
      leaderPhone: sanitize(data.leaderPhone || '', 30),
      instruments: sanitize(data.instruments || '', 120),
      members: data.leaderName ? [data.leaderName] : (user ? [user.name] : []),
      status: isPriest ? 'approved' : 'pending',
      requestedBy: user ? (user.email || user.name) : (data.leaderName || 'Músico'),
      createdAt: new Date().toISOString()
    };
    list.push(newMin);
    saveMinistries(list);
    return newMin;
  }

  function approveMinistry(ministryId) {
    const list = getMinistries();
    const min = list.find(m => m.id === ministryId);
    if (!min) return false;
    min.status = 'approved';
    min.approvedAt = new Date().toISOString();
    saveMinistries(list);
    return true;
  }

  function rejectMinistry(ministryId) {
    const list = getMinistries();
    const min = list.find(m => m.id === ministryId);
    if (!min) return false;
    min.status = 'rejected';
    min.rejectedAt = new Date().toISOString();
    saveMinistries(list);
    return true;
  }

  function addMemberToMinistry(ministryId, musicianName, instrument) {
    const list = getMinistries();
    const min = list.find(m => m.id === ministryId);
    if (!min) return false;

    min.members = min.members || [];
    const cleanMusician = sanitize(musicianName, 60);
    if (cleanMusician && !min.members.includes(cleanMusician)) {
      min.members.push(cleanMusician);
      if (instrument) {
        min.instruments = min.instruments ? min.instruments + ', ' + sanitize(instrument, 40) : sanitize(instrument, 40);
      }
      saveMinistries(list);
    }
    return true;
  }

  // ---------------------------------------------------------------------------
  // 4. Operações de Missas & Escalas
  // ---------------------------------------------------------------------------

  function launchMultipleMasses(parishId, { date, times, celebrationTitle, priestNotes }) {
    if (!parishId || !date || !Array.isArray(times) || times.length === 0) return [];

    const list = getSchedules();
    const created = [];
    const cleanTitle = sanitize(celebrationTitle || 'Santa Missa', 100);
    const cleanNotes = sanitize(priestNotes || '', 250);

    times.forEach(time => {
      const cleanTime = sanitize(time, 10);
      const scheduleItem = {
        id: 'sched_' + date + '_' + cleanTime.replace(':', '') + '_' + Date.now().toString(36),
        parishId,
        date,
        time: cleanTime,
        celebrationTitle: cleanTitle,
        ministryId: null,
        ministryName: null,
        claimedBy: null,
        status: 'open',
        priestNotes: cleanNotes,
        priestSuggestions: [],
        createdAt: new Date().toISOString()
      };
      list.push(scheduleItem);
      created.push(scheduleItem);
    });

    saveSchedules(list);
    return created;
  }

  function claimSchedule(scheduleId, ministryId, ministryName, contact) {
    const list = getSchedules();
    const item = list.find(s => s.id === scheduleId);
    if (!item) return false;

    item.ministryId = ministryId || null;
    item.ministryName = sanitize(ministryName, 80);
    item.claimedBy = sanitize(contact || '', 80);
    item.status = 'confirmed';
    item.claimedAt = new Date().toISOString();
    saveSchedules(list);
    return true;
  }

  function releaseSchedule(scheduleId) {
    const list = getSchedules();
    const item = list.find(s => s.id === scheduleId);
    if (!item) return false;

    item.ministryId = null;
    item.ministryName = null;
    item.claimedBy = null;
    item.status = 'open';
    item.claimedAt = null;
    saveSchedules(list);
    return true;
  }

  function deleteSchedule(scheduleId) {
    const list = getSchedules();
    const filtered = list.filter(s => s.id !== scheduleId);
    saveSchedules(filtered);
    return true;
  }

  function addPriestSuggestion(scheduleId, { moment, songTitle, songId }) {
    const list = getSchedules();
    const item = list.find(s => s.id === scheduleId);
    if (!item) return false;

    item.priestSuggestions = item.priestSuggestions || [];
    item.priestSuggestions.push({
      moment: sanitize(moment, 40),
      songTitle: sanitize(songTitle, 80),
      songId: sanitize(songId, 80)
    });
    saveSchedules(list);
    return true;
  }

  function removePriestSuggestion(scheduleId, suggestionIndex) {
    const list = getSchedules();
    const item = list.find(s => s.id === scheduleId);
    if (!item || !item.priestSuggestions) return false;

    item.priestSuggestions.splice(suggestionIndex, 1);
    saveSchedules(list);
    return true;
  }

  // ---------------------------------------------------------------------------
  // 5. Convites Exclusivos via Link
  // ---------------------------------------------------------------------------

  function buildPriestInviteUrl() {
    const origin = window.location.origin && window.location.origin !== 'null'
      ? window.location.origin + window.location.pathname
      : 'https://santa-cifra.surge.sh';
    return origin + '?convite_padre=sacerdote_paroco_' + Date.now().toString(36);
  }

  function buildMinistryInviteUrl(ministryId, parishId) {
    const origin = window.location.origin && window.location.origin !== 'null'
      ? window.location.origin + window.location.pathname
      : 'https://santa-cifra.surge.sh';
    return origin + '?convite_ministerio=' + encodeURIComponent(ministryId) + '&paroquia=' + encodeURIComponent(parishId);
  }

  function checkUrlForInvites() {
    try {
      const urlParams = new URLSearchParams(window.location.search);

      if (urlParams.has('convite_padre')) {
        setTimeout(() => {
          openPriestRegisterDialog();
          if (window.history && window.history.replaceState) {
            window.history.replaceState({}, document.title, window.location.pathname);
          }
        }, 350);
        return true;
      }

      if (urlParams.has('convite_ministerio')) {
        const minId = urlParams.get('convite_ministerio');
        const parId = urlParams.get('paroquia') || '';
        setTimeout(() => {
          openJoinMinistryDialog(minId, parId);
          if (window.history && window.history.replaceState) {
            window.history.replaceState({}, document.title, window.location.pathname);
          }
        }, 350);
        return true;
      }
    } catch (_) {}
    return false;
  }

  // ---------------------------------------------------------------------------
  // 6. Diálogo de Compartilhamento (#shareInviteLinkDialog)
  // ---------------------------------------------------------------------------

  function openShareInviteDialog({ title, subtitle, desc, url, whatsappText }) {
    let dlg = document.getElementById('shareInviteLinkDialog');
    if (!dlg) return;

    const titleEl = document.getElementById('shareInviteTitle');
    const subEl = document.getElementById('shareInviteSubtitle');
    const descEl = document.getElementById('shareInviteDescText');
    const inputEl = document.getElementById('shareInviteUrlInput');
    const btnCopy = document.getElementById('btnCopyShareInvite');
    const copyLabel = document.getElementById('copyShareInviteLabel');
    const btnWa = document.getElementById('btnWhatsappShareInvite');

    if (titleEl) titleEl.textContent = title || 'Link de Convite';
    if (subEl) subEl.textContent = subtitle || 'Envie o link para a pessoa acessar';
    if (descEl) descEl.textContent = desc || 'Copie o link abaixo ou compartilhe diretamente no WhatsApp:';
    if (inputEl) inputEl.value = url;

    if (btnWa) {
      btnWa.href = 'https://api.whatsapp.com/send?text=' + encodeURIComponent(whatsappText || url);
    }

    if (btnCopy) {
      btnCopy.onclick = () => {
        if (navigator.clipboard && navigator.clipboard.writeText) {
          navigator.clipboard.writeText(url).then(() => {
            if (copyLabel) copyLabel.textContent = 'Copiado!';
            setTimeout(() => { if (copyLabel) copyLabel.textContent = 'Copiar'; }, 2000);
          });
        } else {
          inputEl.select();
          document.execCommand('copy');
          if (copyLabel) copyLabel.textContent = 'Copiado!';
          setTimeout(() => { if (copyLabel) copyLabel.textContent = 'Copiar'; }, 2000);
        }
      };
    }

    dlg.showModal();
  }

  function openSharePriestInviteDialog() {
    const inviteUrl = buildPriestInviteUrl();
    openShareInviteDialog({
      title: 'Convite Pastoral para o Pároco',
      subtitle: 'Envie este link para o Padre cadastrar a paróquia',
      desc: 'Somente quem acessa através deste link exclusivo poderá preencher o formulário pastoral de Pároco e gerenciar a paróquia:',
      url: inviteUrl,
      whatsappText: 'Olá Padre! Segue o convite exclusivo para criar sua conta de Pároco no Santa Cifra e gerenciar a liturgia, os ministérios e as escalas de missas da nossa paróquia: ' + inviteUrl
    });
  }

  function openShareMinistryInviteDialog(ministryId, parishId, ministryName) {
    const parish = getParishes().find(p => p.id === parishId) || { name: 'nossa paróquia' };
    const inviteUrl = buildMinistryInviteUrl(ministryId, parishId);
    openShareInviteDialog({
      title: 'Convite para ' + ministryName,
      subtitle: 'Adicionar músicos ao ministério (' + parish.name + ')',
      desc: 'Envie este link para os músicos do grupo. Ao abrir, eles poderão confirmar a participação no ' + ministryName + ':',
      url: inviteUrl,
      whatsappText: 'Olá! Venha fazer parte do nosso Ministério de Música "' + ministryName + '" (' + parish.name + ') no Santa Cifra! Acesse o link para ver o repertório e as escalas: ' + inviteUrl
    });
  }

  // ---------------------------------------------------------------------------
  // 7. Diálogo de Cadastro do Pároco (#priestRegisterDialog)
  // ---------------------------------------------------------------------------

  function openPriestRegisterDialog() {
    const dlg = document.getElementById('priestRegisterDialog');
    if (!dlg) return;

    const alertBox = document.getElementById('priestRegAlertBox');
    if (alertBox) {
      alertBox.style.display = 'none';
      alertBox.textContent = '';
    }

    dlg.showModal();
  }

  function bindPriestRegisterEvents() {
    const form = document.getElementById('formPriestRegister');
    if (!form || form.dataset.bound) return;
    form.dataset.bound = 'true';

    form.addEventListener('submit', async (e) => {
      e.preventDefault();
      const alertBox = document.getElementById('priestRegAlertBox');
      const submitBtn = document.getElementById('btnSubmitPriestRegister');

      const name = document.getElementById('priestRegName').value.trim();
      const email = document.getElementById('priestRegEmail').value.trim();
      const password = document.getElementById('priestRegPassword').value;
      const confirmPass = document.getElementById('priestRegConfirm').value;

      const parishName = document.getElementById('priestRegParish').value.trim();
      const diocese = document.getElementById('priestRegDiocese').value.trim();
      const city = document.getElementById('priestRegCity').value.trim();
      const phone = document.getElementById('priestRegPhone').value.trim();

      if (password !== confirmPass) {
        if (alertBox) {
          alertBox.textContent = 'As senhas digitadas não coincidem.';
          alertBox.style.display = 'block';
        }
        return;
      }

      if (password.length < 6) {
        if (alertBox) {
          alertBox.textContent = 'A senha deve ter no mínimo 6 caracteres.';
          alertBox.style.display = 'block';
        }
        return;
      }

      try {
        if (submitBtn) {
          submitBtn.disabled = true;
          submitBtn.textContent = 'Cadastrando paróquia...';
        }

        const newParish = createParish({
          name: parishName,
          priestName: name,
          priestEmail: email,
          diocese,
          city,
          contactPhone: phone,
          description: 'Paróquia ' + parishName + ' em ' + city + ', ' + diocese + '. Pároco: ' + name + '.'
        });

        if (window.SantaCifra.auth && window.SantaCifra.auth.registerUser) {
          await window.SantaCifra.auth.registerUser({
            name,
            email,
            password,
            confirmPassword: password,
            role: 'padre',
            parish: newParish.name,
            parishId: newParish.id
          });
        }

        const dlg = document.getElementById('priestRegisterDialog');
        if (dlg) dlg.close();
        form.reset();

        renderParishView();
        alert('Paróquia "' + newParish.name + '" cadastrada com sucesso! Bem-vindo, ' + name + '.');
      } catch (err) {
        if (alertBox) {
          alertBox.textContent = 'Erro ao cadastrar: ' + (err.message || 'Tente novamente.');
          alertBox.style.display = 'block';
        }
      } finally {
        if (submitBtn) {
          submitBtn.disabled = false;
          submitBtn.textContent = 'Concluir Cadastro e Acessar Paróquia';
        }
      }
    });
  }

  // ---------------------------------------------------------------------------
  // 8. Diálogo de Busca / Filtro de Paróquias (#searchParishDialog)
  // ---------------------------------------------------------------------------

  function openSearchParishDialog() {
    const dlg = document.getElementById('searchParishDialog');
    if (!dlg) return;

    const stateSelect = document.getElementById('filterParishState');
    const cityInput = document.getElementById('filterParishCity');
    const dioceseInput = document.getElementById('filterParishDiocese');
    const nameInput = document.getElementById('filterParishName');

    if (stateSelect) stateSelect.value = '';
    if (cityInput) cityInput.value = '';
    if (dioceseInput) dioceseInput.value = '';
    if (nameInput) nameInput.value = '';

    renderParishSearchResults();
    dlg.showModal();
  }

  function renderParishSearchResults() {
    const container = document.getElementById('parishResultsContainer');
    const countEl = document.getElementById('parishResultsCount');
    if (!container) return;

    const stateEl = document.getElementById('filterParishState');
    const cityEl = document.getElementById('filterParishCity');
    const dioceseEl = document.getElementById('filterParishDiocese');
    const nameEl = document.getElementById('filterParishName');

    const stateVal = (stateEl ? stateEl.value : '').trim().toLowerCase();
    const cityVal = (cityEl ? cityEl.value : '').trim().toLowerCase();
    const dioceseVal = (dioceseEl ? dioceseEl.value : '').trim().toLowerCase();
    const nameVal = (nameEl ? nameEl.value : '').trim().toLowerCase();

    const parishes = getParishes();
    const matches = parishes.filter(p => {
      if (stateVal && stateVal !== 'outros') {
        const pCity = (p.city || '').toLowerCase();
        const pState = (p.state || '').toLowerCase();
        if (!pCity.includes(stateVal) && !pState.includes(stateVal)) return false;
      }
      if (cityVal) {
        const pCity = (p.city || '').toLowerCase();
        if (!pCity.includes(cityVal)) return false;
      }
      if (dioceseVal) {
        const pDiocese = (p.diocese || '').toLowerCase();
        if (!pDiocese.includes(dioceseVal)) return false;
      }
      if (nameVal) {
        const pName = (p.name || '').toLowerCase();
        const pShort = (p.shortName || '').toLowerCase();
        if (!pName.includes(nameVal) && !pShort.includes(nameVal)) return false;
      }
      return true;
    });

    if (countEl) {
      countEl.textContent = matches.length + ' paróquia(s) encontrada(s):';
    }

    if (matches.length === 0) {
      container.innerHTML = `
        <div class="search-res-empty">
          <p>Nenhuma paróquia encontrada com os filtros informados.</p>
          <p style="font-size:0.84rem;margin-top:6px;color:var(--text-secondary);">
            Verifique a digitação ou remova alguns filtros para expandir a busca.
          </p>
        </div>
      `;
      return;
    }

    container.innerHTML = matches.map(p => `
      <article class="parish-search-result-card">
        <div class="search-res-info">
          <h3 class="search-res-name">${window.SantaCifra.esc(p.name)}</h3>
          <p class="search-res-sub"><span>${window.SantaCifra.esc(p.diocese)}</span> • <span>${window.SantaCifra.esc(p.city)}</span></p>
          <p class="search-res-priest"><strong>Pároco:</strong> ${window.SantaCifra.esc(p.priestName)}</p>
          ${p.address ? `<p class="search-res-addr">${window.SantaCifra.esc(p.address)}</p>` : ''}
        </div>
        <div class="search-res-action">
          <button type="button" class="btn-primary-solid btn-select-parish" data-parish-id="${p.id}">
            Definir como Minha Paróquia
          </button>
        </div>
      </article>
    `).join('');

    container.querySelectorAll('.btn-select-parish').forEach(btn => {
      btn.addEventListener('click', () => {
        const parishId = btn.getAttribute('data-parish-id');
        localStorage.setItem(STORAGE_USER_ORIGIN_PARISH_KEY, parishId);
        setActiveParishId(parishId);

        const curUser = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
          ? window.SantaCifra.auth.getCurrentUser()
          : null;
        if (curUser) {
          const chosen = matches.find(m => m.id === parishId);
          if (chosen) {
            curUser.parish = chosen.name;
            curUser.parishId = chosen.id;
            if (window.SantaCifra.auth && window.SantaCifra.auth.setSession) {
              window.SantaCifra.auth.setSession(curUser);
            }
          }
        }

        const dlg = document.getElementById('searchParishDialog');
        if (dlg) dlg.close();

        renderParishView();
        alert('Paróquia vinculada com sucesso!');
      });
    });
  }

  function bindSearchParishEvents() {
    ['filterParishState', 'filterParishCity', 'filterParishDiocese', 'filterParishName'].forEach(id => {
      const el = document.getElementById(id);
      if (el && !el.dataset.bound) {
        el.dataset.bound = 'true';
        el.addEventListener('input', () => renderParishSearchResults());
        el.addEventListener('change', () => renderParishSearchResults());
      }
    });
  }

  // ---------------------------------------------------------------------------
  // 9. Diálogo de Edição de Dados da Paróquia (#editParishDialog - Pároco)
  // ---------------------------------------------------------------------------

  function openEditParishDialog() {
    const dlg = document.getElementById('editParishDialog');
    if (!dlg) return;

    const parish = getActiveParish();
    if (!parish) return;

    const nameInput = document.getElementById('editParishName');
    const priestInput = document.getElementById('editParishPriest');
    const dioceseInput = document.getElementById('editParishDiocese');
    const cityInput = document.getElementById('editParishCity');
    const phoneInput = document.getElementById('editParishPhone');
    const addressInput = document.getElementById('editParishAddress');
    const fbInput = document.getElementById('editParishFacebook');
    const descInput = document.getElementById('editParishDescription');

    if (nameInput) nameInput.value = parish.name || '';
    if (priestInput) priestInput.value = parish.priestName || '';
    if (dioceseInput) dioceseInput.value = parish.diocese || '';
    if (cityInput) cityInput.value = parish.city || '';
    if (phoneInput) phoneInput.value = parish.contactPhone || '';
    if (addressInput) addressInput.value = parish.address || '';
    if (fbInput) fbInput.value = parish.facebookUrl || '';
    if (descInput) descInput.value = parish.description || '';

    dlg.showModal();
  }

  function bindEditParishEvents() {
    const form = document.getElementById('formEditParish');
    if (!form || form.dataset.bound) return;
    form.dataset.bound = 'true';

    form.addEventListener('submit', (e) => {
      e.preventDefault();
      const parish = getActiveParish();
      if (!parish) return;

      const updated = {
        name: sanitize(document.getElementById('editParishName')?.value || parish.name, 120),
        priestName: sanitize(document.getElementById('editParishPriest')?.value || parish.priestName, 80),
        diocese: sanitize(document.getElementById('editParishDiocese')?.value || parish.diocese, 80),
        city: sanitize(document.getElementById('editParishCity')?.value || parish.city, 80),
        contactPhone: sanitize(document.getElementById('editParishPhone')?.value || '', 30),
        address: sanitize(document.getElementById('editParishAddress')?.value || '', 160),
        facebookUrl: sanitize(document.getElementById('editParishFacebook')?.value || '', 150),
        description: sanitize(document.getElementById('editParishDescription')?.value || '', 250)
      };

      updateParishData(parish.id, updated);
      const dlg = document.getElementById('editParishDialog');
      if (dlg) dlg.close();

      renderParishView();
      alert('Dados da Paróquia atualizados com sucesso!');
    });
  }

  // ---------------------------------------------------------------------------
  // 10. Diálogo de Aceite de Convite de Ministério (#joinMinistryDialog)
  // ---------------------------------------------------------------------------

  let pendingJoinMinistry = null;

  function openJoinMinistryDialog(ministryId, parishId) {
    const dlg = document.getElementById('joinMinistryDialog');
    if (!dlg) return;

    const list = getMinistries();
    const min = list.find(m => m.id === ministryId);
    const parish = getParishes().find(p => p.id === (parishId || (min ? min.parishId : '')));

    pendingJoinMinistry = {
      ministryId,
      ministryName: min ? min.name : 'Ministério de Música',
      parishId: parish ? parish.id : '',
      parishName: parish ? parish.name : 'Paróquia'
    };

    const nameDisplay = document.getElementById('joinMinNameDisplay');
    const parishDisplay = document.getElementById('joinMinParishDisplay');
    if (nameDisplay) nameDisplay.textContent = pendingJoinMinistry.ministryName;
    if (parishDisplay) parishDisplay.textContent = pendingJoinMinistry.parishName;

    dlg.showModal();
  }

  function bindJoinMinistryEvents() {
    const form = document.getElementById('formJoinMinistry');
    if (!form || form.dataset.bound) return;
    form.dataset.bound = 'true';

    form.addEventListener('submit', (e) => {
      e.preventDefault();
      if (!pendingJoinMinistry) return;

      const name = document.getElementById('joinMusicianName').value.trim();
      const inst = document.getElementById('joinMusicianInstrument').value.trim();

      addMemberToMinistry(pendingJoinMinistry.ministryId, name, inst);

      const curUser = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
        ? window.SantaCifra.auth.getCurrentUser()
        : null;

      if (curUser) {
        curUser.ministry = pendingJoinMinistry.ministryName;
        curUser.parish = pendingJoinMinistry.parishName;
        curUser.parishId = pendingJoinMinistry.parishId;
        if (window.SantaCifra.auth && window.SantaCifra.auth.setSession) {
          window.SantaCifra.auth.setSession(curUser);
        }
      }

      if (pendingJoinMinistry.parishId) {
        localStorage.setItem(STORAGE_USER_ORIGIN_PARISH_KEY, pendingJoinMinistry.parishId);
        setActiveParishId(pendingJoinMinistry.parishId);
      }

      const dlg = document.getElementById('joinMinistryDialog');
      if (dlg) dlg.close();
      pendingJoinMinistry = null;

      if (window.SantaCifra.switchTab) {
        window.SantaCifra.switchTab('parish');
      } else {
        renderParishView();
      }

      alert('Parabéns, ' + name + '! Você agora integra o ministério de música.');
    });
  }

  // ---------------------------------------------------------------------------
  // 11. Diálogo de Ministérios da Paróquia (#parishMinistriesDialog)
  // ---------------------------------------------------------------------------

  function openParishMinistriesDialog() {
    const dlg = document.getElementById('parishMinistriesDialog');
    if (!dlg) return;

    const parish = getActiveParish();
    const subEl = document.getElementById('parishMinSubtitle');
    if (subEl) {
      subEl.textContent = parish ? parish.name : 'Selecione uma paróquia';
    }

    switchMinistryTab('list');
    renderMinistriesListInModal();
    dlg.showModal();
  }

  function switchMinistryTab(tab) {
    const btnList = document.getElementById('tabMinList');
    const btnCreate = document.getElementById('tabMinCreate');
    const panelList = document.getElementById('panelMinList');
    const panelCreate = document.getElementById('panelMinCreate');

    if (btnList) btnList.classList.toggle('active', tab === 'list');
    if (btnCreate) btnCreate.classList.toggle('active', tab === 'create');
    if (panelList) panelList.style.display = tab === 'list' ? 'block' : 'none';
    if (panelCreate) panelCreate.style.display = tab === 'create' ? 'block' : 'none';
  }

  function renderMinistriesListInModal() {
    const container = document.getElementById('ministriesListContainer');
    if (!container) return;

    const parish = getActiveParish();
    if (!parish) {
      container.innerHTML = '<div class="empty-hint-card">Nenhuma paróquia selecionada.</div>';
      return;
    }

    const ministries = getMinistries().filter(m => m.parishId === parish.id);

    if (ministries.length === 0) {
      container.innerHTML = `
        <div class="empty-hint-card">
          <p><strong>Nenhum ministério de música cadastrado nesta paróquia ainda.</strong></p>
          <p class="empty-hint-sub">Cadastre seu grupo na aba acima para solicitar filiação ao Pároco.</p>
        </div>
      `;
      return;
    }

    container.innerHTML = ministries.map(min => {
      const isApproved = min.status === 'approved';
      const isPending = min.status === 'pending';
      const membersText = min.members && min.members.length > 0 ? min.members.join(', ') : (min.leaderName || 'Líder');
      return `
        <div class="min-item-card">
          <div class="min-item-left">
            <div class="min-item-icon" aria-hidden="true">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 18V5l12-2v13"/><circle cx="6" cy="18" r="3"/><circle cx="18" cy="16" r="3"/></svg>
            </div>
            <div>
              <h4 class="min-item-name">${window.SantaCifra.esc(min.name)}</h4>
              <p class="min-item-sub"><strong>Líder:</strong> ${min.leaderName || 'Não informado'} ${min.leaderPhone ? '• ' + min.leaderPhone : ''}</p>
              ${min.instruments ? `<p class="min-item-sub"><strong>Instrumentos:</strong> ${window.SantaCifra.esc(min.instruments)}</p>` : ''}
              <p class="min-item-sub"><strong>Integrantes:</strong> ${membersText}</p>
              <span class="min-status-badge ${min.status || 'pending'}">
                ${isApproved ? 'Filiado à Paróquia' : (isPending ? 'Pendente de autorização pastoral' : 'Não filiado')}
              </span>
            </div>
          </div>
          ${isApproved ? `
            <button type="button" class="btn-invite-min-musicians" data-min-id="${window.SantaCifra.esc(min.id)}" data-min-name="${window.SantaCifra.esc(min.name)}">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"/><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"/></svg>
              <span>Convidar Músicos</span>
            </button>
          ` : ''}
        </div>
      `;
    }).join('');

    container.querySelectorAll('.btn-invite-min-musicians').forEach(btn => {
      btn.addEventListener('click', () => {
        const minId = btn.getAttribute('data-min-id');
        const minName = btn.getAttribute('data-min-name');
        openShareMinistryInviteDialog(minId, parish.id, minName);
      });
    });
  }

  function bindParishMinistriesEvents() {
    const btnList = document.getElementById('tabMinList');
    const btnCreate = document.getElementById('tabMinCreate');
    if (btnList) btnList.onclick = () => switchMinistryTab('list');
    if (btnCreate) btnCreate.onclick = () => switchMinistryTab('create');

    const form = document.getElementById('formRegisterMinistry');
    if (form && !form.dataset.bound) {
      form.dataset.bound = 'true';
      form.addEventListener('submit', (e) => {
        e.preventDefault();
        const parish = getActiveParish();
        if (!parish) {
          alert('Por favor, selecione sua paróquia primeiro.');
          return;
        }

        const name = document.getElementById('regMinName').value.trim();
        const leader = document.getElementById('regMinLeader').value.trim();
        const phone = document.getElementById('regMinPhone').value.trim();
        const instruments = document.getElementById('regMinInstruments').value.trim();

        const newMin = registerMinistry(parish.id, {
          name,
          leaderName: leader,
          leaderPhone: phone,
          instruments
        });

        // Atualizar sessão do usuário
        const curUser = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
          ? window.SantaCifra.auth.getCurrentUser()
          : null;

        if (curUser) {
          curUser.ministry = name;
          curUser.parish = parish.name;
          curUser.parishId = parish.id;
          if (window.SantaCifra.auth && window.SantaCifra.auth.setSession) {
            window.SantaCifra.auth.setSession(curUser);
          }
        }

        form.reset();
        switchMinistryTab('list');
        renderMinistriesListInModal();
        renderParishView();

        if (newMin.status === 'approved') {
          alert('Ministério registrado com sucesso!');
        } else {
          alert('Solicitação de filiação enviada com sucesso! Aguardando autorização pastoral do ' + parish.priestName + '.');
        }
      });
    }
  }

  // ---------------------------------------------------------------------------
  // 12. Diálogo de Lançamento de Múltiplos Horários de Missas (#launchMassScheduleDialog)
  // ---------------------------------------------------------------------------

  let selectedMassTimes = ['08:00', '10:00', '19:00'];

  function openLaunchMassDialog() {
    const dlg = document.getElementById('launchMassScheduleDialog');
    if (!dlg) return;

    const dateInput = document.getElementById('launchMassDate');
    if (dateInput && !dateInput.value) {
      const now = new Date();
      const daysUntilSunday = (7 - now.getDay()) % 7 || 7;
      const nextSunday = new Date(now.getFullYear(), now.getMonth(), now.getDate() + daysUntilSunday);
      dateInput.value = nextSunday.toISOString().split('T')[0];
    }

    renderMassTimeChips();
    dlg.showModal();
  }

  function renderMassTimeChips() {
    const grid = document.getElementById('massTimeChipsGrid');
    const summary = document.getElementById('selectedTimesSummary');
    if (!grid) return;

    grid.querySelectorAll('.time-chip').forEach(chip => {
      const time = chip.getAttribute('data-time');
      chip.classList.toggle('selected', selectedMassTimes.includes(time));
    });

    if (summary) {
      if (selectedMassTimes.length === 0) {
        summary.innerHTML = '<span style="color:var(--accent);">Nenhum horário selecionado. Clique nos botões acima para marcar os horários.</span>';
      } else {
        const sorted = [...selectedMassTimes].sort();
        summary.innerHTML = 'Horários selecionados: <strong>' + sorted.join(', ') + '</strong> (' + sorted.length + ' missa(s) serão lançadas no calendário)';
      }
    }
  }

  function bindLaunchMassEvents() {
    const grid = document.getElementById('massTimeChipsGrid');
    if (grid && !grid.dataset.bound) {
      grid.dataset.bound = 'true';
      grid.addEventListener('click', (e) => {
        const chip = e.target.closest('.time-chip');
        if (!chip) return;
        const time = chip.getAttribute('data-time');
        const idx = selectedMassTimes.indexOf(time);
        if (idx !== -1) {
          selectedMassTimes.splice(idx, 1);
        } else {
          selectedMassTimes.push(time);
        }
        renderMassTimeChips();
      });
    }

    const btnAddCustom = document.getElementById('btnAddCustomTime');
    const inputCustom = document.getElementById('inputCustomTime');
    if (btnAddCustom && inputCustom && !btnAddCustom.dataset.bound) {
      btnAddCustom.dataset.bound = 'true';
      btnAddCustom.addEventListener('click', () => {
        const val = inputCustom.value;
        if (val && !selectedMassTimes.includes(val)) {
          selectedMassTimes.push(val);
          renderMassTimeChips();
          inputCustom.value = '';
        }
      });
    }

    const btnNextSunday = document.getElementById('btnQuickNextSunday');
    const btnNextSaturday = document.getElementById('btnQuickNextSaturday');
    const dateInput = document.getElementById('launchMassDate');

    if (btnNextSunday && dateInput) {
      btnNextSunday.onclick = () => {
        const now = new Date();
        const days = (7 - now.getDay()) % 7 || 7;
        const d = new Date(now.getFullYear(), now.getMonth(), now.getDate() + days);
        dateInput.value = d.toISOString().split('T')[0];
      };
    }

    if (btnNextSaturday && dateInput) {
      btnNextSaturday.onclick = () => {
        const now = new Date();
        const days = (6 - now.getDay() + 7) % 7 || 7;
        const d = new Date(now.getFullYear(), now.getMonth(), now.getDate() + days);
        dateInput.value = d.toISOString().split('T')[0];
      };
    }

    const form = document.getElementById('formLaunchMass');
    if (form && !form.dataset.bound) {
      form.dataset.bound = 'true';
      form.addEventListener('submit', (e) => {
        e.preventDefault();
        const parish = getActiveParish();
        if (!parish) {
          alert('Por favor, selecione ou cadastre uma paróquia primeiro.');
          return;
        }

        if (selectedMassTimes.length === 0) {
          alert('Por favor, selecione ao menos um horário para a missa.');
          return;
        }

        const date = document.getElementById('launchMassDate').value;
        const title = document.getElementById('launchMassCelebrationTitle').value.trim();
        const notes = document.getElementById('launchMassPriestNotes').value.trim();

        launchMultipleMasses(parish.id, {
          date,
          times: selectedMassTimes,
          celebrationTitle: title,
          priestNotes: notes
        });

        const dlg = document.getElementById('launchMassScheduleDialog');
        if (dlg) dlg.close();

        renderParishView();
        alert(selectedMassTimes.length + ' missa(s) lançadas com sucesso no calendário da paróquia!');
      });
    }
  }

  // ---------------------------------------------------------------------------
  // 13. Diálogo de Candidatura para Tocar na Missa (#claimScheduleDialog)
  // ---------------------------------------------------------------------------

  let pendingClaimScheduleId = null;

  function openClaimScheduleDialog(scheduleId) {
    const dlg = document.getElementById('claimScheduleDialog');
    if (!dlg) return;

    const list = getSchedules();
    const schedule = list.find(s => s.id === scheduleId);
    if (!schedule) return;

    pendingClaimScheduleId = scheduleId;
    const parish = getActiveParish();
    const ministries = getMinistries().filter(m => m.parishId === parish.id);
    const approvedMinistries = ministries.filter(m => m.status === 'approved');

    const preview = document.getElementById('claimSlotPreview');
    const selectMin = document.getElementById('selectClaimMinistry');
    const contactInput = document.getElementById('claimLeaderContact');

    const curUser = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;

    if (preview) {
      preview.innerHTML = `
        <div><strong>Data e Horário:</strong> ${formatDateBR(schedule.date)} às ${schedule.time}</div>
        <div><strong>Celebração:</strong> ${window.SantaCifra.esc(schedule.celebrationTitle)}</div>
        ${schedule.priestNotes ? `<div style="font-size:0.84rem;color:var(--gold);margin-top:4px;"><strong>Orientações do Pároco:</strong> ${window.SantaCifra.esc(schedule.priestNotes)}</div>` : ''}
      `;
    }

    if (selectMin) {
      if (approvedMinistries.length === 0) {
        selectMin.innerHTML = `<option value="">-- Nenhum ministério aprovado nesta paróquia --</option>`;
      } else {
        selectMin.innerHTML = approvedMinistries.map(m => `
          <option value="${window.SantaCifra.esc(m.id)}" ${(curUser && curUser.ministry === m.name) ? 'selected' : ''}>${window.SantaCifra.esc(m.name)} (Líder: ${window.SantaCifra.esc(m.leaderName || 'Líder')})</option>
        `).join('');
      }
    }

    if (contactInput && curUser) {
      contactInput.value = curUser.name + (curUser.email ? ' • ' + curUser.email : '');
    }

    dlg.showModal();
  }

  function bindClaimScheduleEvents() {
    const form = document.getElementById('formClaimSchedule');
    if (!form || form.dataset.bound) return;
    form.dataset.bound = 'true';

    form.addEventListener('submit', (e) => {
      e.preventDefault();
      if (!pendingClaimScheduleId) return;

      const selectMin = document.getElementById('selectClaimMinistry');
      const ministryId = selectMin ? selectMin.value : null;
      if (!ministryId) {
        alert('Por favor, selecione um ministério aprovado. Se você cadastrou seu grupo recentemente, aguarde a autorização pastoral do Pároco.');
        return;
      }
      const parish = getActiveParish();
      const min = getMinistries().find(m => m.id === ministryId);
      if (!min || min.status !== 'approved') {
        alert('Este ministério está aguardando aprovação pastoral do Pároco para assumir escalas.');
        return;
      }
      const contact = document.getElementById('claimLeaderContact')?.value.trim();

      claimSchedule(pendingClaimScheduleId, min.id, min.name, contact);

      const dlg = document.getElementById('claimScheduleDialog');
      if (dlg) dlg.close();
      pendingClaimScheduleId = null;

      renderParishView();
      alert('Ministério "' + min.name + '" confirmado na escala desta celebração com sucesso!');
    });
  }

  // ---------------------------------------------------------------------------
  // 14. Diálogo de Indicação de Cantos pelo Pároco
  // ---------------------------------------------------------------------------

  function openAddSuggestionDialog(scheduleId) {
    const moment = prompt('Informe o Momento Litúrgico da indicação (ex: Entrada, Comunhão, Ação de Graças):', 'Comunhão');
    if (!moment) return;

    const query = prompt('Digite o nome ou trecho da música que você deseja indicar:');
    if (!query) return;

    const songs = window.SongsCatalog || (window.SantaCifra.state ? window.SantaCifra.state.songs : []);
    const cleanQ = query.toLowerCase().trim();
    const found = songs.find(s => (s.title && s.title.toLowerCase().includes(cleanQ)) || (s.composer && s.composer.toLowerCase().includes(cleanQ)));

    if (!found) {
      alert('Nenhuma música encontrada com o termo "' + query + '". Tente buscar pelo título oficial.');
      return;
    }

    addPriestSuggestion(scheduleId, {
      moment: moment.trim(),
      songTitle: found.title,
      songId: found.id
    });

    renderParishView();
    alert('Canto "' + found.title + '" indicado para o momento de ' + moment + '!');
  }

  // ---------------------------------------------------------------------------
  // 15. Renderização Principal da Aba Paróquia (renderParishView)
  // ---------------------------------------------------------------------------

  function renderParishView() {
    const container = document.getElementById('parishSection');
    if (!container) return;

    const parishes = getParishes();
    const activeParish = getActiveParish();

    const user = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;

    const isPriest = user && (user.role === 'padre' || user.role === 'paroco');

    // -------------------------------------------------------------------------
    // CASO 1: BASE NÃO-FILIADA (Silenciosa / Sem Paróquia Forçada)
    // -------------------------------------------------------------------------
    if (!activeParish) {
      container.innerHTML = `
        <div class="parish-layout">
          <div class="parish-unaffiliated-view">
            <div class="unaffiliated-card">
              <div class="unaffiliated-icon-wrap" aria-hidden="true">
                <svg width="34" height="34" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                  <path d="M12 2v20M2 12h20M12 2l-7 7v13h14V9z"/>
                </svg>
              </div>
              <h1 class="unaffiliated-title">Comunidade Paroquial</h1>
              <p class="unaffiliated-subtitle">
                Vincule sua paróquia de fé para acompanhar o calendário de missas, ministérios de música e escalas litúrgicas.
              </p>

              <div class="unaffiliated-actions-stack">
                <button type="button" class="btn-primary-solid btn-lg" id="btnUnaffiliatedSearch">
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
                  <span>Localizar Minha Paróquia</span>
                </button>

                <div class="unaffiliated-priest-prompt">
                  <span>É sacerdote ou pároco responsável?</span>
                  <button type="button" class="btn-text-action" id="btnUnaffiliatedPriestAccess">Acessar pastoral do Pároco</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      `;

      const btnSearch = container.querySelector('#btnUnaffiliatedSearch');
      const btnPriest = container.querySelector('#btnUnaffiliatedPriestAccess');
      if (btnSearch) btnSearch.onclick = () => openSearchParishDialog();
      if (btnPriest) btnPriest.onclick = () => openPriestRegisterDialog();
      return;
    }

    // -------------------------------------------------------------------------
    // CASO 2: PARÓQUIA VINCULADA / ATIVA
    // -------------------------------------------------------------------------
    const parish = activeParish;
    const ministries = getMinistries().filter(m => m.parishId === parish.id);
    const approvedMinistries = ministries.filter(m => m.status === 'approved');
    const pendingMinistries = ministries.filter(m => m.status === 'pending');
    const schedules = getSchedules().filter(s => s.parishId === parish.id);

    schedules.sort((a, b) => new Date(`${a.date}T${a.time}`) - new Date(`${b.date}T${b.time}`));

    const openCount = schedules.filter(s => s.status === 'open').length;

    container.innerHTML = `
      <div class="parish-layout">

        <!-- Card Resumido e Nobre da Paróquia -->
        <header class="parish-summary-card">
          <div class="parish-summary-header">
            <div class="parish-summary-text">
              <h1 class="parish-title">${window.SantaCifra.esc(parish.name)}</h1>
              <p class="parish-meta-line">
                <span>${window.SantaCifra.esc(parish.diocese)}</span>
                <span class="meta-sep" aria-hidden="true"></span>
                <span>${window.SantaCifra.esc(parish.city)}</span>
                <span class="meta-sep" aria-hidden="true"></span>
                <span>Pároco: ${window.SantaCifra.esc(parish.priestName || 'Pe. Marlson Assis de Araújo')}</span>
              </p>
              ${parish.address ? `<p class="parish-address-sub">${window.SantaCifra.esc(parish.address)}${parish.contactPhone ? ' — Tel: ' + window.SantaCifra.esc(parish.contactPhone) : ''}</p>` : ''}
            </div>
          </div>

          <div class="parish-summary-actions">
            <button type="button" class="btn-text-action" id="btnChangeParish">Trocar de Paróquia</button>
            ${isPriest ? `<button type="button" class="btn-text-action" id="btnEditParishData">Editar Dados</button>` : ''}
            ${parish.facebookUrl ? `<a href="${parish.facebookUrl}" target="_blank" rel="noopener noreferrer" class="btn-text-action">Página no Facebook</a>` : ''}
          </div>

          <div class="parish-stats-pills">
            <div class="stat-pill-item" id="btnPillMinistries" role="button" tabindex="0">
              <span class="stat-pill-num">${approvedMinistries.length}</span>
              <span class="stat-pill-label">Ministérios de Música</span>
            </div>
            <div class="stat-pill-item" id="btnPillSchedules" role="button" tabindex="0">
              <span class="stat-pill-num">${schedules.length}</span>
              <span class="stat-pill-label">Missas na Escala (${openCount} ${openCount === 1 ? "vaga aberta" : "vagas abertas"})</span>
            </div>
          </div>
        </header>

        <!-- Barra de Ações -->
        <div class="parish-toolbar">
          <button type="button" class="btn-parish-action btn-parish-primary" id="btnOpenMinistriesModal">
            <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 18V5l12-2v13"/><circle cx="6" cy="18" r="3"/><circle cx="18" cy="16" r="3"/></svg>
            <span>Ministérios (${approvedMinistries.length})</span>
          </button>

          ${isPriest ? `
            <button type="button" class="btn-parish-action btn-gold-solid" id="btnOpenLaunchMassModal">
              <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/><line x1="12" y1="14" x2="12" y2="18"/><line x1="10" y1="16" x2="14" y2="16"/></svg>
              <span>+ Lançar Missas no Calendário</span>
            </button>
            <button type="button" class="btn-parish-action" id="btnInviteMusiciansLink">
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="8.5" cy="7" r="4"/><line x1="20" y1="8" x2="20" y2="14"/><line x1="23" y1="11" x2="17" y2="11"/></svg>
              <span>Convidar Músicos</span>
            </button>
          ` : `
            <button type="button" class="btn-parish-action" id="btnInvitePriestAgain">
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"/><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"/></svg>
              <span>Convidar Pároco</span>
            </button>
          `}
        </div>

        <!-- Solicitações de Filiação Pendentes (Exclusivo Pároco) -->
        ${(isPriest && pendingMinistries.length > 0) ? `
          <section class="parish-pending-card">
            <div class="pending-card-header">
              <h2 class="pending-card-title">Solicitações de Filiação de Ministérios (${pendingMinistries.length})</h2>
              <p class="pending-card-sub">Grupos musicais que aguardam autorização pastoral para assumir escalas de missas:</p>
            </div>
            <div class="pending-list">
              ${pendingMinistries.map(m => `
                <div class="pending-min-item">
                  <div class="pending-min-info">
                    <h3 class="pending-min-name">${window.SantaCifra.esc(m.name)}</h3>
                    <p class="pending-min-meta">
                      <span><strong>Responsável:</strong> ${window.SantaCifra.esc(m.leaderName)}</span>
                      ${m.leaderPhone ? ` • <span><strong>WhatsApp:</strong> ${window.SantaCifra.esc(m.leaderPhone)}</span>` : ''}
                      ${m.instruments ? ` • <span><strong>Instrumentos:</strong> ${window.SantaCifra.esc(m.instruments)}</span>` : ''}
                    </p>
                  </div>
                  <div class="pending-min-actions">
                    <button type="button" class="btn-approve-min" data-min-id="${m.id}">Aprovar Filiação</button>
                    <button type="button" class="btn-reject-min" data-min-id="${m.id}">Recusar</button>
                  </div>
                </div>
              `).join('')}
            </div>
          </section>
        ` : ''}

        <!-- Seção: Calendário das Missas & Escalas -->
        <section class="parish-schedules-section" id="parishScheduleArea">
          <div class="schedules-header">
            <div>
              <h2 class="section-title">Calendário das Missas & Escalas</h2>
              <p class="section-desc">Horários disponibilizados pelo Padre para os ministérios filiados</p>
            </div>
            ${isPriest ? `
              <button type="button" class="btn-primary-solid btn-sm" id="btnHeaderLaunchMass">
                + Lançar Missas
              </button>
            ` : ''}
          </div>

          ${schedules.length === 0 ? `
            <div class="empty-hint-card" style="padding: 28px; text-align: center;">
              <p style="font-size: 1.1rem; font-weight: 700; color: var(--text-main); margin-bottom: 6px;">Nenhuma missa lançada na escala ainda.</p>
              <p class="empty-hint-sub">O Padre pode selecionar o dia (ex: Domingo) e lançar múltiplos horários (08:00, 10:00, 19:00) para os grupos se candidatarem.</p>
              ${isPriest ? `
                <button type="button" class="btn-primary-solid" id="btnEmptyLaunchMass" style="margin-top: 14px;">
                  + Lançar Missas no Calendário
                </button>
              ` : ''}
            </div>
          ` : `
            <div class="schedules-list">
              ${schedules.map(sched => {
                const isClaimed = sched.status === 'confirmed';
                const suggestions = sched.priestSuggestions || [];
                return `
                  <article class="schedule-card ${isClaimed ? 'is-claimed' : 'is-open'}">
                    <div class="sched-date-badge">
                      <span class="sched-day">${sched.date.split('-')[2]}</span>
                      <span class="sched-month">${getMonthAbbr(sched.date)}</span>
                      <span class="sched-time">${sched.time}</span>
                    </div>

                    <div class="sched-main-info">
                      <div class="sched-title-row">
                        <h3 class="sched-celebration-title">${window.SantaCifra.esc(sched.celebrationTitle)}</h3>
                        <span class="sched-status-chip ${isClaimed ? 'chip-confirmed' : 'chip-open'}">
                          ${isClaimed ? 'Confirmado' : 'Vaga Aberta'}
                        </span>
                      </div>

                      <p class="sched-date-full">${formatDateBR(sched.date)} às ${sched.time}</p>

                      ${sched.priestNotes ? `
                        <div class="sched-priest-callout">
                          <span class="priest-callout-text"><strong>Orientações do Pároco:</strong> ${window.SantaCifra.esc(sched.priestNotes)}</span>
                        </div>
                      ` : ''}

                      ${suggestions.length > 0 ? `
                        <div class="sched-suggestions-box">
                          <span class="sugg-header">Cantos indicados pelo Pároco para esta Missa:</span>
                          <div class="sugg-chips-row">
                            ${suggestions.map((sugg, sIdx) => `
                              <span class="sugg-pill">
                                <strong>${window.SantaCifra.esc(sugg.moment)}:</strong>
                                <button type="button" class="sugg-song-link" data-song-id="${window.SantaCifra.esc(sugg.songId)}">${window.SantaCifra.esc(sugg.songTitle)}</button>
                                ${isPriest ? `<button type="button" class="btn-del-sugg" data-sched-id="${sched.id}" data-sugg-idx="${sIdx}" title="Remover sugestão" aria-label="Remover sugestão">${window.SantaCifra.ICONS.close}</button>` : ''}
                              </span>
                            `).join('')}
                          </div>
                        </div>
                      ` : ''}

                      <div class="sched-bottom-row">
                        ${isClaimed ? `
                          <div class="sched-claimed-info">
                            <span><strong>Ministério:</strong> ${window.SantaCifra.esc(sched.ministryName)}</span>
                            <button type="button" class="btn-release-schedule" data-action="release" data-id="${sched.id}">
                              Liberar Vaga
                            </button>
                          </div>
                        ` : `
                          <button type="button" class="btn-claim-schedule" data-action="claim" data-id="${sched.id}">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 5v14M5 12h14"/></svg>
                            <span>Candidatar-se / Tocar nesta Missa</span>
                          </button>
                        `}

                        <div class="sched-priest-actions">
                          ${isPriest ? `
                            <button type="button" class="btn-add-suggestion" data-action="add-suggestion" data-id="${sched.id}">
                              + Indicar Canto
                            </button>
                            <button type="button" class="btn-delete-sched-sm" data-action="delete-sched" data-id="${sched.id}" title="Excluir celebração">
                              Excluir
                            </button>
                          ` : ''}
                        </div>
                      </div>
                    </div>
                  </article>
                `;
              }).join('')}
            </div>
          `}
        </section>
      </div>
    `;

    // -------------------------------------------------------------------------
    // VINCULAÇÃO DE EVENTOS NA VIEW
    // -------------------------------------------------------------------------

    // Trocar Paróquia
    const btnChange = container.querySelector('#btnChangeParish');
    if (btnChange) btnChange.onclick = () => openSearchParishDialog();

    // Editar Paróquia (Pároco)
    const btnEdit = container.querySelector('#btnEditParishData');
    if (btnEdit) btnEdit.onclick = () => openEditParishDialog();

    // Pills de Acesso Rápido
    const pillMin = container.querySelector('#btnPillMinistries');
    if (pillMin) pillMin.onclick = () => openParishMinistriesDialog();

    const pillSched = container.querySelector('#btnPillSchedules');
    if (pillSched) {
      pillSched.onclick = () => {
        const area = document.getElementById('parishScheduleArea');
        if (area) area.scrollIntoView({ behavior: 'smooth' });
      };
    }

    // Modal de ministérios
    const btnOpenMin = container.querySelector('#btnOpenMinistriesModal');
    if (btnOpenMin) btnOpenMin.onclick = () => openParishMinistriesDialog();

    // Lançar missas
    const btnLaunch = container.querySelector('#btnOpenLaunchMassModal');
    const btnHdrLaunch = container.querySelector('#btnHeaderLaunchMass');
    const btnEmptyLaunch = container.querySelector('#btnEmptyLaunchMass');
    if (btnLaunch) btnLaunch.onclick = () => openLaunchMassDialog();
    if (btnHdrLaunch) btnHdrLaunch.onclick = () => openLaunchMassDialog();
    if (btnEmptyLaunch) btnEmptyLaunch.onclick = () => openLaunchMassDialog();

    // Convidar Pároco / Músicos
    const btnInvPriest = container.querySelector('#btnInvitePriestAgain');
    if (btnInvPriest) btnInvPriest.onclick = () => openSharePriestInviteDialog();

    const btnInvMusicians = container.querySelector('#btnInviteMusiciansLink');
    if (btnInvMusicians) {
      btnInvMusicians.onclick = () => {
        const origin = window.location.origin && window.location.origin !== 'null'
          ? window.location.origin + window.location.pathname
          : 'https://santa-cifra.surge.sh';
        openShareInviteDialog({
          title: 'Convidar Músicos para a Paróquia',
          subtitle: `${parish.name}`,
          desc: 'Envie o link da paróquia para os músicos cadastrarem seus ministérios e assumirem as escalas:',
          url: origin + '?paroquia=' + parish.id,
          whatsappText: 'Olá! Acesse a nossa comunidade ' + parish.name + ' no Santa Cifra para cadastrar o seu ministério de música e assumir escalas de missas: ' + origin + '?paroquia=' + parish.id
        });
      };
    }

    // Aprovações Pastorais (Pároco)
    container.querySelectorAll('.btn-approve-min').forEach(btn => {
      btn.addEventListener('click', () => {
        const mId = btn.getAttribute('data-min-id');
        approveMinistry(mId);
        renderParishView();
        alert('Ministério aprovado com sucesso! Agora o grupo está filiado e pode assumir escalas.');
      });
    });

    container.querySelectorAll('.btn-reject-min').forEach(btn => {
      btn.addEventListener('click', () => {
        const mId = btn.getAttribute('data-min-id');
        if (confirm('Deseja recusar a filiação deste ministério?')) {
          rejectMinistry(mId);
          renderParishView();
        }
      });
    });

    // Ações de Escala: Candidatar-se
    container.querySelectorAll('[data-action="claim"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const sId = btn.getAttribute('data-id');
        openClaimScheduleDialog(sId);
      });
    });

    // Ações de Escala: Liberar Vaga
    container.querySelectorAll('[data-action="release"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const sId = btn.getAttribute('data-id');
        if (confirm('Deseja liberar a vaga desta missa para outro ministério se candidatar?')) {
          releaseSchedule(sId);
          renderParishView();
        }
      });
    });

    // Ações de Escala: Excluir celebração
    container.querySelectorAll('[data-action="delete-sched"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const sId = btn.getAttribute('data-id');
        if (confirm('Tem certeza que deseja excluir esta celebração do calendário?')) {
          deleteSchedule(sId);
          renderParishView();
        }
      });
    });

    // Ações de Escala: Indicar canto
    container.querySelectorAll('[data-action="add-suggestion"]').forEach(btn => {
      btn.addEventListener('click', () => {
        const sId = btn.getAttribute('data-id');
        openAddSuggestionDialog(sId);
      });
    });

    // Ações de Escala: Remover sugestão de canto
    container.querySelectorAll('.btn-del-sugg').forEach(btn => {
      btn.addEventListener('click', () => {
        const sId = btn.getAttribute('data-sched-id');
        const idx = parseInt(btn.getAttribute('data-sugg-idx'), 10);
        removePriestSuggestion(sId, idx);
        renderParishView();
      });
    });

    // Abrir cifra ao clicar na sugestão do padre
    container.querySelectorAll('.sugg-song-link').forEach(btn => {
      btn.addEventListener('click', () => {
        const songId = btn.getAttribute('data-song-id');
        const songs = window.SongsCatalog || (window.SantaCifra.state ? window.SantaCifra.state.songs : []);
        const found = songs.find(s => s.id === songId);
        if (found && window.SantaCifra.openSongView) {
          window.SantaCifra.openSongView(found);
        }
      });
    });
  }

  // ---------------------------------------------------------------------------
  // 16. Utilitários de Data
  // ---------------------------------------------------------------------------

  function formatDateBR(dateStr) {
    if (!dateStr) return '';
    const parts = dateStr.split('-');
    if (parts.length !== 3) return dateStr;
    const [y, m, d] = parts;
    const dateObj = new Date(parseInt(y, 10), parseInt(m, 10) - 1, parseInt(d, 10));
    const weekdays = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'];
    const months = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'];
    return `${weekdays[dateObj.getDay()]}, ${d} de ${months[dateObj.getMonth()]} de ${y}`;
  }

  function getMonthAbbr(dateStr) {
    if (!dateStr) return '';
    const parts = dateStr.split('-');
    if (parts.length < 2) return '';
    const m = parseInt(parts[1], 10) - 1;
    const months = ['JAN', 'FEV', 'MAR', 'ABR', 'MAI', 'JUN', 'JUL', 'AGO', 'SET', 'OUT', 'NOV', 'DEZ'];
    return months[m] || '';
  }

  // ---------------------------------------------------------------------------
  // 17. Inicialização do Módulo
  // ---------------------------------------------------------------------------

  function initParishModule() {
    bindPriestRegisterEvents();
    bindParishMinistriesEvents();
    bindLaunchMassEvents();
    bindClaimScheduleEvents();
    bindJoinMinistryEvents();
    bindSearchParishEvents();
    bindEditParishEvents();

    checkUrlForInvites();

    const state = window.SantaCifra.state;
    if (state && state.activeTab === 'parish') {
      renderParishView();
    }
  }

  // Expor API global do módulo
  window.SantaCifra.parish = {
    getParishes,
    getActiveParish,
    setActiveParishId,
    createParish,
    updateParishData,
    getMinistries,
    registerMinistry,
    approveMinistry,
    rejectMinistry,
    addMemberToMinistry,
    getSchedules,
    launchMultipleMasses,
    claimSchedule,
    releaseSchedule,
    deleteSchedule,
    addPriestSuggestion,
    removePriestSuggestion,
    buildPriestInviteUrl,
    buildMinistryInviteUrl,
    openShareInviteDialog,
    openSharePriestInviteDialog,
    openShareMinistryInviteDialog,
    openPriestRegisterDialog,
    openParishMinistriesDialog,
    openLaunchMassDialog,
    openClaimScheduleDialog,
    openJoinMinistryDialog,
    openAddSuggestionDialog,
    openSearchParishDialog,
    openEditParishDialog,
    renderParishView,
    initParishModule
  };

})();
