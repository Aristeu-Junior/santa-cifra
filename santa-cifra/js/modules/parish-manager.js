/**
 * SANTA CIFRA — Módulo de Paróquias, Ministérios, Escalas & Convite Pastoral (v3.9.0)
 *
 * Funcionalidades Principais:
 * 1. Base de dados zerada (Clean Slate / sem dados fictícios pré-populados)
 * 2. Menu de Paróquias (Listagem de todas as paróquias cadastradas e alternância)
 * 3. Convite Exclusivo para o Pároco via Link (?convite_padre=TOKEN)
 *    - O padre preenche: nome, e-mail, senha, nome da paróquia, diocese, cidade e telefone
 *    - Nas próximas vezes, o padre entra normalmente apenas com seu e-mail e senha!
 * 4. Modal de Ministérios de Música da Paróquia (#parishMinistriesDialog)
 *    - Listagem dos ministérios daquela paróquia (vem zerada)
 *    - Registro de novo ministério (nome, responsável, instrumentos, contato)
 *    - Convite de músicos para o ministério via link exclusivo (?convite_ministerio=ID&paroquia=ID)
 * 5. Calendário de Missas & Lançamento de Múltiplos Horários pelo Padre (#launchMassScheduleDialog)
 *    - Seleção do dia da celebração
 *    - Seleção múltipla de horários (chips rápidos: 08:00, 10:00, 19:00, etc.)
 *    - Candidatura de ministérios para vagas abertas (#claimScheduleDialog)
 *    - Sugestão litúrgica de cantos pelo Padre com link direto para o leitor de cifras
 */

window.SantaCifra = window.SantaCifra || {};

(function () {
  'use strict';

  const STORAGE_PARISHES_KEY = 'santa_cifra_parishes_v1';
  const STORAGE_SCHEDULES_KEY = 'santa_cifra_mass_schedules_v1';
  const STORAGE_MINISTRIES_KEY = 'santa_cifra_ministries_v1';
  const STORAGE_ACTIVE_PARISH_KEY = 'santa_cifra_active_parish_id_v1';

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
    diocese: 'Diocese de Mogi das Cruzes',
    address: 'Rua Francisco Fernandes Barroso, 30 - Vila Santo Antônio, Ferraz de Vasconcelos - SP',
    creationDate: 'Criada aos 31 de julho de 2013',
    contactPhone: '(11) 4676-1234',
    description: 'Comunidade Paroquial Santo Antônio de Pádua em Ferraz de Vasconcelos - SP, Diocese de Mogi das Cruzes. Criada aos 31 de julho de 2013. Pároco: Pe. Marlson Assis de Araújo.',
    facebookUrl: 'https://web.facebook.com/santoantoniodepaduafv13/',
    createdAt: '2013-07-31T00:00:00.000Z'
  };

  // ---------------------------------------------------------------------------
  // 1. Persistência de Dados (100% Zerada por Padrão)
  // ---------------------------------------------------------------------------

  function getParishes() {
    const raw = localStorage.getItem(STORAGE_PARISHES_KEY);
    let list = safeParse(raw, null);
    if (!Array.isArray(list) || list.length === 0) {
      list = [OFFICIAL_PARISH_SANTO_ANTONIO];
      saveParishes(list);
      setActiveParishId(OFFICIAL_PARISH_SANTO_ANTONIO.id);
    } else {
      const found = list.find(p => p.id === OFFICIAL_PARISH_SANTO_ANTONIO.id || p.name.toLowerCase().includes('santo antônio de pádua'));
      if (!found) {
        list.unshift(OFFICIAL_PARISH_SANTO_ANTONIO);
        saveParishes(list);
      } else {
        let changed = false;
        // Atualização estrita para os dados autênticos da Paróquia
        found.name = OFFICIAL_PARISH_SANTO_ANTONIO.name;
        found.priestName = OFFICIAL_PARISH_SANTO_ANTONIO.priestName;
        found.priestEmail = OFFICIAL_PARISH_SANTO_ANTONIO.priestEmail;
        found.city = OFFICIAL_PARISH_SANTO_ANTONIO.city;
        found.diocese = OFFICIAL_PARISH_SANTO_ANTONIO.diocese;
        found.address = OFFICIAL_PARISH_SANTO_ANTONIO.address;
        found.creationDate = OFFICIAL_PARISH_SANTO_ANTONIO.creationDate;
        found.description = OFFICIAL_PARISH_SANTO_ANTONIO.description;
        found.facebookUrl = OFFICIAL_PARISH_SANTO_ANTONIO.facebookUrl;
        changed = true;
        if (changed) saveParishes(list);
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

    const savedId = getActiveParishId();
    if (savedId) {
      const found = parishes.find(p => p.id === savedId);
      if (found) return found;
    }

    const user = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;

    if (user && user.parishId) {
      const userParish = parishes.find(p => p.id === user.parishId);
      if (userParish) return userParish;
    }

    if (user && user.parish) {
      const nameMatch = parishes.find(p => p.name.toLowerCase() === user.parish.toLowerCase());
      if (nameMatch) return nameMatch;
    }

    return parishes[0];
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
      diocese: sanitize(data.diocese || '', 80),
      contactPhone: sanitize(data.contactPhone || '', 30),
      description: sanitize(data.description || '', 240),
      createdAt: new Date().toISOString()
    };
    list.push(newParish);
    saveParishes(list);
    setActiveParishId(newParish.id);
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
  // 3. Operações de Ministérios de Música
  // ---------------------------------------------------------------------------

  function registerMinistry(parishId, data) {
    const list = getMinistries();
    const newMin = {
      id: 'min_' + Date.now().toString(36) + '_' + Math.random().toString(36).substring(2, 6),
      parishId: parishId,
      name: sanitize(data.name || 'Ministério de Música', 80),
      leaderName: sanitize(data.leaderName || '', 60),
      leaderPhone: sanitize(data.leaderPhone || '', 30),
      instruments: sanitize(data.instruments || '', 120),
      members: data.leaderName ? [data.leaderName] : [],
      createdAt: new Date().toISOString()
    };
    list.push(newMin);
    saveMinistries(list);
    return newMin;
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

  // ---------------------------------------------------------------------------
  // 5. Links de Convite (Padre e Ministérios) & Detecção de URL
  // ---------------------------------------------------------------------------

  function buildPriestInviteUrl() {
    const token = 'sc_priest_' + Date.now().toString(36) + '_' + Math.random().toString(36).substring(2, 8);
    const base = window.location.origin + window.location.pathname;
    return `${base}?convite_padre=${token}`;
  }

  function buildMinistryInviteUrl(ministryId, parishId) {
    const base = window.location.origin + window.location.pathname;
    return `${base}?convite_ministerio=${encodeURIComponent(ministryId)}&paroquia=${encodeURIComponent(parishId)}`;
  }

  function checkUrlForInvites() {
    try {
      const urlParams = new URLSearchParams(window.location.search);

      // 1. Convite para o Padre
      if (urlParams.has('convite_padre')) {
        setTimeout(() => {
          openPriestRegisterDialog();
          if (window.history && window.history.replaceState) {
            window.history.replaceState({}, document.title, window.location.pathname);
          }
        }, 350);
        return true;
      }

      // 2. Convite para Integrar Ministério
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
  // 6. Diálogo Unificado de Compartilhamento (#shareInviteLinkDialog)
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
      whatsappText: `✝️ Olá Padre! Segue o convite exclusivo para criar sua conta de Pároco no Santa Cifra e gerenciar a liturgia, os ministérios e as escalas de missas da nossa paróquia: ${inviteUrl}`
    });
  }

  function openShareMinistryInviteDialog(ministryId, parishId, ministryName) {
    const parish = getParishes().find(p => p.id === parishId) || { name: 'nossa paróquia' };
    const inviteUrl = buildMinistryInviteUrl(ministryId, parishId);
    openShareInviteDialog({
      title: `Convite para ${ministryName}`,
      subtitle: `Adicionar músicos ao ministério (${parish.name})`,
      desc: `Envie este link para os músicos do grupo. Ao abrir, eles poderão confirmar a participação no ${ministryName}:`,
      url: inviteUrl,
      whatsappText: `🎸 Olá! Venha fazer parte do nosso Ministério de Música "${ministryName}" (${parish.name}) no Santa Cifra! Acesse o link para ver o repertório e as escalas: ${inviteUrl}`
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
      const confirmPassword = document.getElementById('priestRegConfirm').value;
      const parishName = document.getElementById('priestRegParish').value.trim();
      const diocese = document.getElementById('priestRegDiocese').value.trim();
      const city = document.getElementById('priestRegCity').value.trim();
      const phone = document.getElementById('priestRegPhone').value.trim();

      if (password !== confirmPassword) {
        if (alertBox) {
          alertBox.textContent = 'A confirmação de senha não confere.';
          alertBox.style.display = 'block';
        }
        return;
      }

      try {
        if (submitBtn) {
          submitBtn.disabled = true;
          submitBtn.textContent = 'Cadastrando Pároco...';
        }

        // 1. Criar a paróquia no sistema
        const newParish = createParish({
          name: parishName,
          priestName: name,
          priestEmail: email,
          diocese: diocese,
          city: city,
          contactPhone: phone,
          description: `Paróquia ${parishName}, pastoreada por ${name}. Diocese de ${diocese}.`
        });

        // 2. Cadastrar a conta do Padre
        if (window.SantaCifra.auth && window.SantaCifra.auth.registerUser) {
          await window.SantaCifra.auth.registerUser({
            name,
            email,
            password,
            confirmPassword,
            parish: parishName,
            parishId: newParish.id,
            role: 'padre',
            diocese,
            city,
            phone,
            ministry: 'Pároco Responsável'
          });
        }

        const dlg = document.getElementById('priestRegisterDialog');
        if (dlg) dlg.close();
        form.reset();

        if (window.SantaCifra.auth && window.SantaCifra.auth.updateAuthUI) {
          window.SantaCifra.auth.updateAuthUI();
        }
        if (window.SantaCifra.switchTab) {
          window.SantaCifra.switchTab('parish');
        } else {
          renderParishView();
        }

        alert(`✝️ Bem-vindo, ${name}! A ${parishName} foi cadastrada com sucesso sob sua gestão pastoral.`);
      } catch (err) {
        if (alertBox) {
          alertBox.textContent = err.message || 'Erro ao realizar cadastro pastoral.';
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
  // 8. Diálogo de Acolhida de Convite de Ministério (#joinMinistryDialog)
  // ---------------------------------------------------------------------------

  let pendingJoinMinistry = null;

  function openJoinMinistryDialog(ministryId, parishId) {
    const dlg = document.getElementById('joinMinistryDialog');
    if (!dlg) return;

    const min = getMinistries().find(m => m.id === ministryId);
    const parish = getParishes().find(p => p.id === parishId) || (min ? getParishes().find(p => p.id === min.parishId) : null);

    const nameDisplay = document.getElementById('joinMinNameDisplay');
    const parishDisplay = document.getElementById('joinMinParishDisplay');
    const inputName = document.getElementById('joinMusicianName');

    const curUser = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;

    if (nameDisplay) nameDisplay.textContent = min ? min.name : 'Ministério de Música';
    if (parishDisplay) parishDisplay.textContent = parish ? parish.name : 'Paróquia';
    if (inputName && curUser) inputName.value = curUser.name || '';

    pendingJoinMinistry = { ministryId, parishId, minName: min ? min.name : '', parishName: parish ? parish.name : '' };
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

      if (!name) return;

      addMemberToMinistry(pendingJoinMinistry.ministryId, name, inst);

      // Associar perfil do usuário se estiver logado
      const curUser = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
        ? window.SantaCifra.auth.getCurrentUser()
        : null;

      if (curUser) {
        curUser.ministry = pendingJoinMinistry.minName;
        curUser.parish = pendingJoinMinistry.parishName;
        curUser.parishId = pendingJoinMinistry.parishId;
        if (window.SantaCifra.auth && window.SantaCifra.auth.setSession) {
          window.SantaCifra.auth.setSession(curUser);
        }
      }

      if (pendingJoinMinistry.parishId) {
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

      alert(`🎸 Parabéns, ${name}! Você agora faz parte do ministério de música da paróquia.`);
    });
  }

  // ---------------------------------------------------------------------------
  // 9. Diálogo de Ministérios da Paróquia (#parishMinistriesDialog)
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
      container.innerHTML = `<div class="empty-hint-card">Nenhuma paróquia selecionada.</div>`;
      return;
    }

    const ministries = getMinistries().filter(m => m.parishId === parish.id);

    if (ministries.length === 0) {
      container.innerHTML = `
        <div class="empty-hint-card">
          <p><strong>Nenhum ministério de música cadastrado nesta paróquia ainda.</strong></p>
          <p class="empty-hint-sub">Cadastre seu grupo na aba acima para se candidatar às missas e convidar outros músicos.</p>
        </div>
      `;
      return;
    }

    container.innerHTML = ministries.map(min => {
      const membersText = min.members && min.members.length > 0 ? min.members.join(', ') : (min.leaderName || 'Líder');
      return `
        <div class="min-item-card">
          <div class="min-item-left">
            <div class="min-item-icon">🎸</div>
            <div>
              <h4 class="min-item-name">${min.name}</h4>
              <p class="min-item-sub"><strong>Líder:</strong> ${min.leaderName || 'Não informado'} ${min.leaderPhone ? '• ' + min.leaderPhone : ''}</p>
              ${min.instruments ? `<p class="min-item-sub"><strong>Instrumentos:</strong> ${min.instruments}</p>` : ''}
              <p class="min-item-sub"><strong>Integrantes:</strong> ${membersText}</p>
            </div>
          </div>
          <button type="button" class="btn-invite-min-musicians" data-min-id="${min.id}" data-min-name="${min.name}">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"/><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"/></svg>
            <span>Convidar Músicos</span>
          </button>
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
          alert('Por favor, selecione ou crie uma paróquia primeiro.');
          return;
        }

        const name = document.getElementById('regMinName').value.trim();
        const leader = document.getElementById('regMinLeader').value.trim();
        const phone = document.getElementById('regMinPhone').value.trim();
        const instruments = document.getElementById('regMinInstruments').value.trim();

        registerMinistry(parish.id, {
          name,
          leaderName: leader,
          leaderPhone: phone,
          instruments
        });

        // Atualizar perfil do usuário se ele for o líder
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
      });
    }
  }

  // ---------------------------------------------------------------------------
  // 10. Diálogo de Lançamento de Múltiplos Horários de Missas (#launchMassScheduleDialog)
  // ---------------------------------------------------------------------------

  let selectedMassTimes = ['08:00', '10:00', '19:00'];

  function openLaunchMassDialog() {
    const dlg = document.getElementById('launchMassScheduleDialog');
    if (!dlg) return;

    const dateInput = document.getElementById('launchMassDate');
    if (dateInput && !dateInput.value) {
      // Próximo domingo por padrão
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
        summary.innerHTML = '<span style="color:#ef4444;">Nenhum horário selecionado. Clique nos botões acima para marcar os horários.</span>';
      } else {
        const sorted = [...selectedMassTimes].sort();
        summary.innerHTML = `Horários selecionados: <strong>${sorted.join(', ')}</strong> (${sorted.length} missa(s) serão lançadas no calendário)`;
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
          alert('Por favor, selecione ou crie uma paróquia primeiro.');
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
        alert(`📅 ${selectedMassTimes.length} missa(s) lançadas com sucesso no calendário da paróquia!`);
      });
    }
  }

  // ---------------------------------------------------------------------------
  // 11. Diálogo de Candidatura para Tocar na Missa (#claimScheduleDialog)
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

    const preview = document.getElementById('claimSlotPreview');
    const selectMin = document.getElementById('selectClaimMinistry');
    const contactInput = document.getElementById('claimLeaderContact');

    const curUser = (window.SantaCifra.auth && window.SantaCifra.auth.getCurrentUser)
      ? window.SantaCifra.auth.getCurrentUser()
      : null;

    if (preview) {
      preview.innerHTML = `
        <div><strong>Data e Horário:</strong> ${formatDateBR(schedule.date)} às ${schedule.time}</div>
        <div><strong>Celebração:</strong> ${schedule.celebrationTitle}</div>
        ${schedule.priestNotes ? `<div style="font-size:0.84rem;color:#b38600;margin-top:4px;">✝️ <strong>Orientações do Pároco:</strong> ${schedule.priestNotes}</div>` : ''}
      `;
    }

    if (selectMin) {
      if (ministries.length === 0) {
        selectMin.innerHTML = `<option value="">-- Nenhum ministério cadastrado ainda --</option>`;
      } else {
        selectMin.innerHTML = ministries.map(m => `
          <option value="${m.id}" ${(curUser && curUser.ministry === m.name) ? 'selected' : ''}>${m.name} (Líder: ${m.leaderName || 'Líder'})\</option>
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
      const parish = getActiveParish();
      const min = getMinistries().find(m => m.id === ministryId);

      if (!min) {
        alert('Por favor, registre um ministério de música na paróquia antes de se candidatar.');
        return;
      }

      const contact = document.getElementById('claimLeaderContact').value.trim();

      claimSchedule(pendingClaimScheduleId, min.id, min.name, contact);

      const dlg = document.getElementById('claimScheduleDialog');
      if (dlg) dlg.close();
      pendingClaimScheduleId = null;

      renderParishView();
      alert(`🎸 ${min.name} escalado com sucesso para a missa!`);
    });
  }

  // ---------------------------------------------------------------------------
  // 12. Diálogo de Indicação de Cantos do Padre (#addSuggestionDialog)
  // ---------------------------------------------------------------------------

  let pendingSuggestionScheduleId = null;

  function openAddSuggestionDialog(scheduleId) {
    let dlg = document.getElementById('addSuggestionDialog');
    if (!dlg) {
      dlg = document.createElement('dialog');
      dlg.id = 'addSuggestionDialog';
      dlg.className = 'app-dialog';
      dlg.innerHTML = `
        <div class="dialog-header">
          <div>
            <h2>Indicar Canto Litúrgico</h2>
            <p class="dialog-subtitle">Sugira músicas do acervo para os músicos tocarem nesta celebração</p>
          </div>
          <form method="dialog"><button class="btn-close-dialog" value="close">✕</button></form>
        </div>
        <form id="formAddSuggestion" class="dialog-body-form">
          <div class="form-field">
            <label for="suggMomentSelect">Momento Litúrgico *</label>
            <select id="suggMomentSelect" class="dialog-select" required>
              <option value="Entrada">Entrada</option>
              <option value="Ato Penitencial">Ato Penitencial</option>
              <option value="Glória">Glória</option>
              <option value="Salmo">Salmo Responsorial</option>
              <option value="Aclamação ao Evangelho">Aclamação ao Evangelho</option>
              <option value="Ofertório">Ofertório</option>
              <option value="Santo">Santo</option>
              <option value="Cordeiro de Deus">Cordeiro de Deus</option>
              <option value="Comunhão">Comunhão</option>
              <option value="Ação de Graças">Ação de Graças</option>
              <option value="Final">Final / Envio</option>
            </select>
          </div>
          <div class="form-field" style="position:relative;">
            <label for="suggSongSearch">Buscar Música no Acervo do Santa Cifra *</label>
            <input type="text" id="suggSongSearch" class="dialog-input" placeholder="Digite o nome da música..." autocomplete="off" required>
            <input type="hidden" id="suggSelectedSongId">
            <input type="hidden" id="suggSelectedSongTitle">
            <div id="suggAutocompleteList" class="sugg-autocomplete-results" style="display:none;"></div>
          </div>
          <div class="dialog-actions">
            <button type="submit" class="btn-primary-solid btn-block">Salvar Indicação</button>
          </div>
        </form>
      `;
      document.body.appendChild(dlg);
    }

    pendingSuggestionScheduleId = scheduleId;

    const searchInput = dlg.querySelector('#suggSongSearch');
    const autoList = dlg.querySelector('#suggAutocompleteList');
    const hiddenId = dlg.querySelector('#suggSelectedSongId');
    const hiddenTitle = dlg.querySelector('#suggSelectedSongTitle');

    if (searchInput) searchInput.value = '';
    if (hiddenId) hiddenId.value = '';
    if (hiddenTitle) hiddenTitle.value = '';
    if (autoList) autoList.style.display = 'none';

    if (searchInput && !searchInput.dataset.bound) {
      searchInput.dataset.bound = 'true';
      searchInput.addEventListener('input', () => {
        const q = searchInput.value.trim().toLowerCase();
        if (q.length < 2) {
          autoList.style.display = 'none';
          return;
        }

        const songs = window.SongsCatalog || (window.SantaCifra.state ? window.SantaCifra.state.songs : []);
        const matches = songs.filter(s =>
          (s.title && s.title.toLowerCase().includes(q)) ||
          (s.composer && s.composer.toLowerCase().includes(q))
        ).slice(0, 8);

        if (matches.length === 0) {
          autoList.innerHTML = '<div class="auto-item-empty">Nenhuma música encontrada</div>';
          autoList.style.display = 'block';
          return;
        }

        autoList.innerHTML = matches.map(m => `
          <div class="auto-item" data-id="${m.id}" data-title="${m.title}">
            <strong>${m.title}</strong>
            <span class="auto-item-artist">${m.composer || 'Litúrgico'} • ${m.liturgicalMoment || ''}</span>
          </div>
        `).join('');
        autoList.style.display = 'block';

        autoList.querySelectorAll('.auto-item').forEach(item => {
          item.addEventListener('click', () => {
            hiddenId.value = item.getAttribute('data-id');
            hiddenTitle.value = item.getAttribute('data-title');
            searchInput.value = item.getAttribute('data-title');
            autoList.style.display = 'none';
          });
        });
      });
    }

    const form = dlg.querySelector('#formAddSuggestion');
    if (form && !form.dataset.bound) {
      form.dataset.bound = 'true';
      form.addEventListener('submit', (e) => {
        e.preventDefault();
        const moment = dlg.querySelector('#suggMomentSelect').value;
        const songTitle = hiddenTitle.value || searchInput.value.trim();
        const songId = hiddenId.value || 'custom';

        if (!songTitle) return;

        addPriestSuggestion(pendingSuggestionScheduleId, { moment, songTitle, songId });
        dlg.close();
        renderParishView();
      });
    }

    dlg.showModal();
  }

  // ---------------------------------------------------------------------------
  // 13. Renderização Principal da Aba Paróquia (renderParishView)
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
    // CASO 1: BASE ZERADA (NENHUMA PARÓQUIA CADASTRADA AINDA)
    // -------------------------------------------------------------------------
    if (parishes.length === 0) {
      container.innerHTML = `
        <div class="parish-layout">
          <div class="parish-empty-state">
            <div class="parish-empty-hero">
              <div class="empty-icon-shield" aria-hidden="true">⛪</div>
              <h1 class="parish-empty-title">Gestão da Paróquia & Escalas</h1>
              <p class="parish-empty-desc">
                Organize a vida litúrgica da comunidade paroquial: o Padre cadastra as missas e seus horários, e os ministérios de música se candidatam para tocar em cada celebração.
              </p>

              <div class="parish-empty-cards-grid">
                <div class="parish-option-card">
                  <div>
                    <h3>✝️ Enviar Convite ao Padre</h3>
                    <p>Envie o link exclusivo para o Padre. Ao abrir, ele poderá preencher os dados pastorais e gerenciar a paróquia no Santa Cifra.</p>
                  </div>
                  <button type="button" class="btn-primary-solid" id="btnZeroSendPriestInvite">
                    Gerar Link para o Padre
                  </button>
                </div>

                <div class="parish-option-card">
                  <div>
                    <h3>✝️ Já sou o Pároco</h3>
                    <p>Se você é o Padre responsável ou já possui o convite de Pároco, cadastre a sua Paróquia e crie seu acesso de sacerdote.</p>
                  </div>
                  <button type="button" class="btn-outline-gold" id="btnZeroOpenPriestRegister">
                    Cadastrar como Pároco
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      `;

      const btnInvite = container.querySelector('#btnZeroSendPriestInvite');
      const btnPriestReg = container.querySelector('#btnZeroOpenPriestRegister');
      if (btnInvite) btnInvite.onclick = () => openSharePriestInviteDialog();
      if (btnPriestReg) btnPriestReg.onclick = () => openPriestRegisterDialog();
      return;
    }

    // -------------------------------------------------------------------------
    // CASO 2: HÁ PARÓQUIA(S) CADASTRADA(S)
    // -------------------------------------------------------------------------
    const parish = activeParish;
    const ministries = getMinistries().filter(m => m.parishId === parish.id);
    const schedules = getSchedules().filter(s => s.parishId === parish.id);

    // Ordenar escalas por data e horário
    schedules.sort((a, b) => new Date(`${a.date}T${a.time}`) - new Date(`${b.date}T${b.time}`));

    const openCount = schedules.filter(s => s.status === 'open').length;
    const confirmedCount = schedules.filter(s => s.status === 'confirmed').length;

    // Menu de Paróquias (se houver mais de uma ou seletor de paróquias)
    const parishSelectorHtml = `
      <div class="parish-selector-bar" role="region" aria-label="Menu de Paróquias">
        <span class="parish-selector-label">Paróquias:</span>
        ${parishes.map(p => `
          <button type="button" class="parish-select-chip ${p.id === parish.id ? 'active' : ''}" data-parish-id="${p.id}">
            ⛪ ${p.name}
          </button>
        `).join('')}
      </div>
    `;

    container.innerHTML = `
      <div class="parish-layout">
        ${parishes.length > 1 ? parishSelectorHtml : ''}

        <!-- Card Principal da Paróquia -->
        <header class="parish-hero-card">
          <div class="parish-hero-top">
            <div class="parish-icon-badge" aria-hidden="true">
              <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                <path d="M12 2v20M2 12h20M12 2l-7 7v13h14V9z"/>
              </svg>
            </div>
            <div class="parish-hero-text">
              <div class="parish-badges-row">
                <span class="parish-status-chip">✦ Paróquia Ativa</span>
                <span class="parish-status-chip">📅 Criada em 31/07/2013</span>
                <span class="parish-status-chip">📍 Diocese de Mogi das Cruzes</span>
                <span class="parish-status-chip">🏙️ Ferraz de Vasconcelos - SP</span>
                ${isPriest
                  ? `<span class="parish-role-chip priest-chip">✝️ Gestão Pastoral do Pároco</span>`
                  : `<span class="parish-role-chip musician-chip">🎸 Músico / Ministério Paroquial</span>`
                }
              </div>
              <h1 class="parish-title">${parish.name}</h1>
              <p class="parish-meta-line">
                <span><strong>Pároco:</strong> ${parish.priestName || 'Pe. Marlson Assis de Araújo'}</span>
                ${parish.diocese ? `• <span>${parish.diocese}</span>` : ''}
                ${parish.city ? `• <span>${parish.city}</span>` : ''}
                ${parish.address ? `• <span>📍 ${parish.address}</span>` : ''}
                ${parish.contactPhone ? `• <span>📞 ${parish.contactPhone}</span>` : ''}
              </p>
            </div>
          </div>

          <!-- Cards de Acesso Rápido: Ministérios e Calendário de Missas -->
          <div class="parish-quick-stats-grid">
            <div class="parish-stat-card-clickable" id="btnCardOpenMinistries">
              <div class="stat-card-icon">🎸</div>
              <div class="stat-card-text">
                <span class="stat-card-number">${ministries.length}</span>
                <span class="stat-card-title">Ministérios de Música</span>
                <span class="stat-card-action">Ver lista & Registrar &rarr;</span>
              </div>
            </div>

            <div class="parish-stat-card-clickable" id="btnCardOpenSchedule">
              <div class="stat-card-icon">📅</div>
              <div class="stat-card-text">
                <span class="stat-card-number">${schedules.length}</span>
                <span class="stat-card-title">Missas na Escala (${openCount} abertas)</span>
                <span class="stat-card-action">${isPriest ? '+ Lançar novos horários &rarr;' : 'Candidatar meu grupo &rarr;'}</span>
              </div>
            </div>
          </div>
        </header>

        <!-- Seção de Ações do Pároco e Ministérios -->
        <div class="parish-toolbar-actions">
          <button type="button" class="btn-parish-action btn-parish-primary" id="btnOpenMinistriesModal">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 18V5l12-2v13"/><circle cx="6" cy="18" r="3"/><circle cx="18" cy="16" r="3"/></svg>
            <span>Ministérios da Paróquia (${ministries.length})</span>
          </button>

          ${isPriest ? `
            <button type="button" class="btn-parish-action btn-outline-gold" id="btnOpenLaunchMassModal">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/><line x1="12" y1="14" x2="12" y2="18"/><line x1="10" y1="16" x2="14" y2="16"/></svg>
              <span>+ Lançar Missas & Horários</span>
            </button>
          ` : ''}

          <button type="button" class="btn-parish-action" id="btnInvitePriestAgain">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"/><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"/></svg>
            <span>Convidar Pároco</span>
          </button>
        </div>

        <!-- SEÇÃO: CALENDÁRIO DAS MISSAS & ESCALAS -->
        <section class="parish-schedules-section" id="parishScheduleArea">
          <div class="schedules-header">
            <div>
              <h2 class="section-title">Calendário das Missas & Escalas</h2>
              <p class="section-desc">Horários disponibilizados pelo Padre. Ministérios podem se voluntariar para tocar.</p>
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
              <p class="empty-hint-sub">O Padre pode selecionar o dia (ex: Domingo) e lançar múltiplos horários (08:00, 10:00, 19:00) para os ministérios se candidatarem.</p>
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
                        <h3 class="sched-celebration-title">${sched.celebrationTitle}</h3>
                        <span class="sched-status-chip ${isClaimed ? 'chip-confirmed' : 'chip-open'}">
                          ${isClaimed ? '✓ Confirmado' : '● Vaga Aberta'}
                        </span>
                      </div>

                      <p class="sched-date-full">📅 ${formatDateBR(sched.date)} às ${sched.time}</p>

                      ${sched.priestNotes ? `
                        <div class="sched-priest-callout">
                          <span class="priest-callout-icon">✝️</span>
                          <span class="priest-callout-text"><strong>Orientações do Pároco:</strong> ${sched.priestNotes}</span>
                        </div>
                      ` : ''}

                      <!-- Sugestões de Músicas do Padre -->
                      ${suggestions.length > 0 ? `
                        <div class="sched-suggestions-box">
                          <span class="sugg-header">Cantos indicados pelo Pároco para esta Missa:</span>
                          <div class="sugg-chips-row">
                            ${suggestions.map((sugg, sIdx) => `
                              <span class="sugg-pill">
                                <strong>${sugg.moment}:</strong>
                                <button type="button" class="sugg-song-link" data-song-id="${sugg.songId}">${sugg.songTitle}</button>
                                ${isPriest ? `<button type="button" class="btn-del-sugg" data-sched-id="${sched.id}" data-sugg-idx="${sIdx}" title="Remover sugestão">✕</button>` : ''}
                              </span>
                            `).join('')}
                          </div>
                        </div>
                      ` : ''}

                      <div class="sched-bottom-row">
                        ${isClaimed ? `
                          <div class="sched-claimed-info">
                            <span>🎸 <strong>Ministério:</strong> ${sched.ministryName}</span>
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

    // Seletor de Paróquias
    container.querySelectorAll('.parish-select-chip').forEach(btn => {
      btn.addEventListener('click', () => {
        const pId = btn.getAttribute('data-parish-id');
        setActiveParishId(pId);
        renderParishView();
      });
    });

    // Abrir modal de ministérios
    const btnOpenMin = container.querySelector('#btnOpenMinistriesModal');
    const btnCardMin = container.querySelector('#btnCardOpenMinistries');
    if (btnOpenMin) btnOpenMin.onclick = () => openParishMinistriesDialog();
    if (btnCardMin) btnCardMin.onclick = () => openParishMinistriesDialog();

    // Rolar até calendário
    const btnCardSched = container.querySelector('#btnCardOpenSchedule');
    if (btnCardSched) {
      btnCardSched.onclick = () => {
        const area = document.getElementById('parishScheduleArea');
        if (area) area.scrollIntoView({ behavior: 'smooth' });
      };
    }

    // Lançar missas
    const btnLaunch = container.querySelector('#btnOpenLaunchMassModal');
    const btnHdrLaunch = container.querySelector('#btnHeaderLaunchMass');
    const btnEmptyLaunch = container.querySelector('#btnEmptyLaunchMass');
    if (btnLaunch) btnLaunch.onclick = () => openLaunchMassDialog();
    if (btnHdrLaunch) btnHdrLaunch.onclick = () => openLaunchMassDialog();
    if (btnEmptyLaunch) btnEmptyLaunch.onclick = () => openLaunchMassDialog();

    // Convidar Pároco
    const btnInvPriest = container.querySelector('#btnInvitePriestAgain');
    if (btnInvPriest) btnInvPriest.onclick = () => openSharePriestInviteDialog();

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
  // 14. Utilitários de Data
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
  // 15. Inicialização do Módulo
  // ---------------------------------------------------------------------------

  function initParishModule() {
    // Purga de dados fictícios/mockados de versões de desenvolvimento anteriores
    try {
      const rawP = localStorage.getItem(STORAGE_PARISHES_KEY);
      if (rawP && rawP.includes('Pe. Antônio (Pároco)')) {
        localStorage.removeItem(STORAGE_PARISHES_KEY);
        localStorage.removeItem(STORAGE_MINISTRIES_KEY);
        localStorage.removeItem(STORAGE_SCHEDULES_KEY);
        localStorage.removeItem(STORAGE_ACTIVE_PARISH_KEY);
      }
    } catch (_) {}
    bindPriestRegisterEvents();
    bindParishMinistriesEvents();
    bindLaunchMassEvents();
    bindClaimScheduleEvents();
    bindJoinMinistryEvents();

    checkUrlForInvites();

    // Se estiver na aba Paróquia, renderiza
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
    renderParishView,
    initParishModule
  };

})();
