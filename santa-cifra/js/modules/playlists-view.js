/**
 * SANTA CIFRA — Gerenciamento de Pastas, Repertórios e Favoritos
 */
window.SantaCifra = window.SantaCifra || {};

window.SantaCifra.initPlaylists = function initPlaylists() {
  const { state } = window.SantaCifra;
  const defaultPlaylists = [
    {
      id: 'favorites',
      name: 'Favoritas',
      isSystem: true,
      description: 'Cifras salvas para acesso rápido.',
      songIds: [
        'o-pao-da-vida-a-comunhao',
        'oracao-pela-familia-pe-zezinho',
        'noites-traicoeiras-pe-marcelo-rossi',
        'a-ele-a-gloria-eugenio-jorge',
        'santo-senhor-deus-do-universo',
        'alma-de-cristo-santificai-me'
      ]
    },
    {
      id: 'missa-domingo',
      name: 'Missa Dominical',
      isSystem: false,
      description: 'Sequência completa da Entrada ao Canto Final.',
      songIds: [
        'toda-a-terra-te-exalta',
        'senhor-que-viestes-salvar',
        'gloria-a-deus-nas-alturas-simplificado-do',
        'o-senhor-e-meu-pastor-salmo-23',
        'aleluia-como-o-pai-me-amou',
        'sabes-senhor-pe-zezinho',
        'santo-senhor-deus-do-universo',
        'cordeiro-de-deus-missal',
        'o-pao-da-vida-a-comunhao',
        'alma-de-cristo-santificai-me',
        'maria-de-nazare-pe-zezinho'
      ]
    },
    {
      id: 'especial-padre-zezinho',
      name: 'Padre Zezinho',
      isSystem: false,
      description: 'Repertório clássico de Padre Zezinho, scj.',
      songIds: [
        'oracao-pela-familia-pe-zezinho',
        'maria-de-nazare-pe-zezinho',
        'utopia-pe-zezinho',
        'amar-como-jesus-amou-pe-zezinho',
        'um-certo-galileu-pe-zezinho',
        'estou-pensando-em-deus-pe-zezinho',
        'nova-geracao-pe-zezinho',
        'minha-vida-tem-sentido-pe-zezinho',
        'sabes-senhor-pe-zezinho',
        'vocacao-se-ouvires-a-voz-do-vento-pe-zezinho',
        'mae-do-ceu-morena-pe-zezinho',
        'rosto-de-cristo-como-sao-belos-pe-zezinho'
      ]
    },
    {
      id: 'especial-padre-marcelo-rossi',
      name: 'Padre Marcelo Rossi',
      isSystem: false,
      description: 'Clássicos de celebração e louvor.',
      songIds: [
        'noites-traicoeiras-pe-marcelo-rossi',
        'erguei-as-maos-pe-marcelo-rossi',
        'anjos-de-deus-pe-marcelo-rossi',
        'basta-querer-pe-marcelo-rossi',
        'quero-te-dar-a-paz-pe-marcelo-rossi',
        'sonda-me-pe-marcelo-rossi',
        'forca-e-vitoria-pe-marcelo-rossi',
        'a-minha-vida-e-do-mestre-pe-marcelo-rossi',
        'derrama-o-teu-amor-aqui-pe-marcelo-rossi',
        'tudo-e-do-pai-pe-marcelo-rossi',
        'maria-da-minha-infancia-pe-marcelo-rossi',
        'eu-navegarei-pe-marcelo-rossi'
      ]
    },
    {
      id: 'adoracao-louvor-comunidades',
      name: 'Adoração e Comunidades',
      isSystem: false,
      description: 'Canção Nova, Shalom, Vida Reluz, Anjos de Resgate e Frei Gilson.',
      songIds: [
        'a-ele-a-gloria-eugenio-jorge',
        'so-por-ti-jesus-eugenio-jorge',
        'ninguem-te-ama-como-eu-martin-valverde',
        'sacramento-da-comunhao-diacono-nelsinho-correa',
        'diante-do-rei-vida-reluz',
        'tao-sublime-sacramento-tradicional',
        'chuva-de-graca-eliana-ribeiro',
        'amigos-pela-fe-anjos-de-resgate',
        'oferta-de-amor-venho-senhor-minha-vida-oferecer',
        'yeshua-colo-de-deus-comunidade',
        'acalma-minha-tempestade-frei-gilson',
        'minha-essencia-thiago-brado'
      ]
    },
    {
      id: 'iniciantes-violao',
      name: 'Repertório de 3 e 4 Acordes',
      isSystem: false,
      description: 'Cifras diretas sem pestana.',
      songIds: [
        'amar-como-jesus-amou-pe-zezinho',
        'anjos-de-deus-pe-marcelo-rossi',
        'erguei-as-maos-pe-marcelo-rossi',
        'vem-louvar-hoje-e-tempo-de-louvar-a-deus',
        'o-povo-de-deus-no-deserto-andava',
        'senhor-tende-piedade-de-nos-simples',
        'gloria-a-deus-nas-alturas-simplificado-do',
        'aleluia-a-minha-alma-abrirei',
        'santo-dos-anjos-ze-vicente',
        'cordeiro-de-deus-em-re-maior-simples',
        'dai-nos-a-bencao-o-mae-querida'
      ]
    },
    {
      id: 'missa-quaresma',
      name: 'Quaresma, Ramos e Semana Santa',
      isSystem: false,
      description: 'Quarta-Feira de Cinzas, Domingo de Ramos, Quinta-Feira Santa (Lava-Pés) e Sexta-Feira da Paixão.',
      songIds: [
        'hosana-ao-filho-de-davi-domingo-de-ramos-cnbb',
        'os-filhos-dos-hebreus-procissao-de-ramos',
        'meu-deus-meu-deus-por-que-me-abandonastes-salmo-ramos',
        'pecador-agora-e-tempo-quaresma-cnbb',
        'escuta-senhor-a-voz-do-teu-povo-attende-domine',
        'mudai-o-vosso-coracao-imposicao-das-cinzas',
        'nos-nos-gloriamos-na-cruz-quinta-feira-santa',
        'eu-vos-dou-um-novo-mandamento-lava-pes',
        'onde-ha-caridade-e-amor-ubi-caritas-quinta-santa',
        'meu-povo-que-te-fiz-eu-improperios-sexta-santa',
        'fiel-madeiro-da-santa-cruz-crux-fidelis-sexta-santa'
      ]
    },
    {
      id: 'pascoa-pentecostes-solenidades',
      name: 'Páscoa, Pentecostes, Natal e Solenidades',
      isSystem: false,
      description: 'Vigília Pascal, Domingo de Páscoa, Pentecostes, Corpus Christi, Natal, Aparecida e Cristo Rei.',
      songIds: [
        'exulte-de-alegria-proclamacao-da-pascoa-exsultet',
        'cristo-ressuscitou-aleluia-sequencia-pascal',
        'este-e-o-dia-que-o-senhor-fez-para-nos-pascoa',
        'vinde-espirito-santo-sequencia-de-pentecostes',
        'bendito-seja-deus-pai-santissima-trindade',
        'louva-siao-o-salvador-lauda-sion-corpus-christi',
        'como-o-sol-nasce-da-aurora-advento-cnbb',
        'nasceu-nos-hoje-um-menino-natal-missa-noite',
        'hoje-nasceu-para-nos-o-salvador-salmo-natal',
        'dai-nos-a-bencao-o-mae-querida-aparecida',
        'jesus-cristo-ontem-hoje-e-sempre-cristo-rei',
        'alegrai-vos-sempre-no-senhor-todos-os-santos',
        'dai-lhes-senhor-o-descanso-eterno-finados'
      ]
    },
    {
      id: 'fraternidades-e-comunidades',
      name: 'Fraternidades e Comunidades',
      isSystem: false,
      description: 'São João Paulo II, Toca de Assis, O Caminho, Arca de Maria, Aliança de Misericórdia, Hesed e Campanhas da Fraternidade.',
      songIds: [
        'sopra-em-nos-fraternidade-sao-joao-paulo-ii',
        'leao-de-juda-fraternidade-sao-joao-paulo-ii',
        'tudo-passa-so-deus-nao-passa-fsjpii',
        'sacramento-de-amor-toca-de-assis',
        'adorador-por-excelencia-toca-de-assis',
        'nos-pobres-te-encontrei-fraternidade-o-caminho',
        'totus-tuus-maria-fraternidade-arca-de-maria',
        'ruah-sopro-de-deus-alianca-de-misericordia',
        'mao-no-arado-comunidade-recado',
        'fidelidade-comunidade-pantokrator',
        'alegra-te-cheia-de-graca-obra-de-maria',
        'exercito-de-sao-miguel-instituto-hesed',
        'hino-campanha-da-fraternidade-2025-ecologia-integral',
        'hino-campanha-da-fraternidade-2024-amizade-social',
        'hino-campanha-da-fraternidade-2023-fome'
      ]
    },
    {
      id: 'walmir-alencar-e-cantores',
      name: 'Walmir Alencar e Intérpretes',
      isSystem: false,
      description: 'Walmir Alencar, Vida Reluz, Adoração e Vida, Tony Allysson, Diego Fernandes, Davidson Silva, Ir. Ana Paula e mais.',
      songIds: [
        'diante-do-rei-vida-reluz',
        'perfeito-e-quem-te-criou-vida-reluz',
        'como-es-lindo-vida-reluz',
        'o-ceu-se-abre-ministerio-adoracao-e-vida',
        'abraco-de-pai-walmir-alencar',
        'em-teu-altar-adoracao-e-vida',
        'hoje-livre-sou-adoracao-e-vida',
        'celebra-a-vitoria-walmir-alencar-vida-reluz',
        'sublime-walmir-alencar-adoracao-e-vida',
        'deus-imenso-walmir-alencar-vida-reluz',
        'invade-minh-alma-walmir-alencar-vida-reluz',
        'obra-nova-cristo-quer-fazer-vida-reluz',
        'soberano-poderoso-deus-tony-allysson',
        'amar-te-mais-davidson-silva',
        'pertinho-de-ti-irma-ana-paula'
      ]
    }
  ];

  if (window.SantaCifra.auth && typeof window.SantaCifra.auth.loadPlaylistsForActiveUser === 'function') {
    state.playlists = window.SantaCifra.auth.loadPlaylistsForActiveUser();
  } else {
    const saved = localStorage.getItem('santa_cifra_playlists_v4');
    if (saved) {
      try {
        state.playlists = JSON.parse(saved);
      } catch (_) {
        state.playlists = defaultPlaylists;
      }
    } else {
      state.playlists = defaultPlaylists;
      window.SantaCifra.savePlaylists();
    }
  }
  window.SantaCifra.updatePlaylistsCounter();
};

window.SantaCifra.savePlaylists = function savePlaylists() {
  const { state } = window.SantaCifra;
  if (window.SantaCifra.auth && typeof window.SantaCifra.auth.savePlaylistsForActiveUser === 'function') {
    state.playlists = window.SantaCifra.auth.savePlaylistsForActiveUser(state.playlists);
  } else {
    localStorage.setItem('santa_cifra_playlists_v4', JSON.stringify(state.playlists));
  }
  window.SantaCifra.updatePlaylistsCounter();
};

window.SantaCifra.updatePlaylistsCounter = function updatePlaylistsCounter() {
  const { state } = window.SantaCifra;
  const el = document.getElementById('totalPlaylistsCounter');
  if (el) el.textContent = state.playlists.length;
};

window.SantaCifra.isSongFavorited = function isSongFavorited(songId) {
  const { state } = window.SantaCifra;
  const favFolder = state.playlists.find(p => p.id === 'favorites');
  return favFolder ? favFolder.songIds.includes(songId) : false;
};

window.SantaCifra.toggleFavoriteSong = function toggleFavoriteSong(songId) {
  const { state, auth } = window.SantaCifra;
  const user = auth && auth.getCurrentUser ? auth.getCurrentUser() : null;
  if (!user) {
    if (auth && auth.openAuthDialog) {
      auth.openAuthDialog('login', 'Faça login ou crie sua conta para salvar suas músicas favoritas.');
    }
    return;
  }
  const favFolder = state.playlists.find(p => p.id === 'favorites');
  if (!favFolder) return;
  const idx = favFolder.songIds.indexOf(songId);
  if (idx === -1) {
    favFolder.songIds.push(songId);
  } else {
    favFolder.songIds.splice(idx, 1);
  }
  window.SantaCifra.savePlaylists();
  window.SantaCifra.renderCatalog();
  window.SantaCifra.renderHeroShowcase();
  if (state.activeTab === 'playlists') window.SantaCifra.renderPlaylistsView();
  if (state.activeTab === 'artists') window.SantaCifra.renderArtistsView();
  if (state.currentSong && state.currentSong.id === songId && window.SantaCifra.updateFavoriteButtonState) {
    window.SantaCifra.updateFavoriteButtonState();
  }
};

window.SantaCifra.renderPlaylistsView = function renderPlaylistsView() {
  const { state, dom, ICONS, esc, auth } = window.SantaCifra;

  const statusBar = document.getElementById('accountStatusBar');
  if (statusBar) {
    const user = auth && auth.getCurrentUser ? auth.getCurrentUser() : null;
    if (user) {
      const initials = user.name
        .split(' ')
        .filter(Boolean)
        .slice(0, 2)
        .map(p => p[0].toUpperCase())
        .join('');
      statusBar.innerHTML = `
        <div class="account-card logged-in">
          <div class="account-info">
            <span class="account-avatar">${esc(initials)}</span>
            <div class="account-texts">
              <span class="account-name">Conectado como <strong>${esc(user.name)}</strong></span>
              <span class="account-email">${esc(user.email)}${user.parish ? ` &middot; ${esc(user.parish)}` : ''}</span>
            </div>
          </div>
          <button type="button" class="btn-account-logout" id="btnPastasLogout" title="Encerrar sessão nesta conta">
            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"/><polyline points="16 17 21 12 16 7"/><line x1="21" y1="12" x2="9" y2="12"/></svg>
            <span>Sair da Conta</span>
          </button>
        </div>
      `;
      const btnLogout = document.getElementById('btnPastasLogout');
      if (btnLogout) {
        btnLogout.addEventListener('click', () => {
          auth.logout();
        });
      }
    } else {
      statusBar.innerHTML = `
        <div class="account-card logged-out">
          <div class="account-info">
            <span class="account-avatar-anon">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
            </span>
            <div class="account-texts">
              <span class="account-name">Faça login para salvar suas músicas e pastas</span>
              <span class="account-email">Acesse seu repertório em qualquer celular ou computador</span>
            </div>
          </div>
          <button type="button" class="btn-account-login" id="btnPastasLogin">
            <span>Entrar / Cadastrar</span>
          </button>
        </div>
      `;
      const btnLogin = document.getElementById('btnPastasLogin');
      if (btnLogin) {
        btnLogin.addEventListener('click', () => {
          auth.openAuthDialog('login');
        });
      }
    }
  }

  dom.foldersList.innerHTML = '';

  state.playlists.forEach(folder => {
    const isActive = folder.id === state.selectedPlaylistId;
    const li = document.createElement('li');
    const btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'folder-item' + (isActive ? ' active' : '');
    if (isActive) btn.setAttribute('aria-current', 'true');
    btn.innerHTML = `
      <span class="folder-item-left">
        ${folder.id === 'favorites' ? ICONS.heartOutline : ICONS.folder}
        <span class="folder-item-name">${esc(folder.name)}</span>
      </span>
      <span class="folder-item-count">${folder.songIds.length}</span>
    `;
    btn.addEventListener('click', () => {
      state.selectedPlaylistId = folder.id;
      window.SantaCifra.renderPlaylistsView();
    });
    li.appendChild(btn);
    dom.foldersList.appendChild(li);
  });

  const currentFolder = state.playlists.find(p => p.id === state.selectedPlaylistId) || state.playlists[0];
  if (!currentFolder) return;

  const folderSongs = currentFolder.songIds
    .map(id => state.songs.find(s => s.id === id))
    .filter(Boolean);

  dom.playlistDetailPanel.innerHTML = `
    <div class="playlist-banner">
      <div class="playlist-banner-text">
        <h3>${esc(currentFolder.name)}</h3>
        <p>${esc(currentFolder.description || 'Pasta de repertório')} &middot; ${folderSongs.length} ${folderSongs.length === 1 ? 'música' : 'músicas'}</p>
      </div>
      <div class="playlist-banner-actions">
        ${folderSongs.length > 0 ? `
          <button type="button" class="btn-primary-solid" id="btnPlayFolderSequence">
            ${ICONS.play}
            <span>Tocar em sequência</span>
          </button>
        ` : ''}
        ${!currentFolder.isSystem ? `
          <button type="button" class="btn-outline" id="btnDeleteFolder">
            ${ICONS.trash}
            <span>Excluir</span>
          </button>
        ` : ''}
      </div>
    </div>
    <div id="playlistTracksContainer"></div>
  `;

  const btnPlaySeq = document.getElementById('btnPlayFolderSequence');
  if (btnPlaySeq && folderSongs.length > 0) {
    btnPlaySeq.addEventListener('click', () => {
      state.activeQueuePlaylistId = currentFolder.id;
      state.activeQueueIndex = 0;
      window.SantaCifra.openSongView(folderSongs[0]);
    });
  }

  const btnDelFolder = document.getElementById('btnDeleteFolder');
  if (btnDelFolder) {
    btnDelFolder.addEventListener('click', () => {
      // Dois toques para excluir: evita apagar uma pasta por engano.
      if (btnDelFolder.dataset.armed !== '1') {
        btnDelFolder.dataset.armed = '1';
        btnDelFolder.querySelector('span').textContent = 'Confirmar exclusão';
        btnDelFolder.classList.add('active');
        setTimeout(() => {
          if (!btnDelFolder.isConnected) return;
          btnDelFolder.dataset.armed = '';
          btnDelFolder.querySelector('span').textContent = 'Excluir';
          btnDelFolder.classList.remove('active');
        }, 4000);
        return;
      }
      state.playlists = state.playlists.filter(p => p.id !== currentFolder.id);
      state.selectedPlaylistId = 'favorites';
      window.SantaCifra.savePlaylists();
      window.SantaCifra.renderPlaylistsView();
    });
  }

  const tracksContainer = document.getElementById('playlistTracksContainer');
  if (folderSongs.length === 0) {
    tracksContainer.innerHTML = `
      <div class="empty-state">
        <span>Esta pasta ainda está vazia. Abra uma cifra e toque em "Salvar em pasta".</span>
        <button type="button" class="btn-outline" id="btnEmptyFolderBrowse">Ver cifras</button>
      </div>
    `;
    document.getElementById('btnEmptyFolderBrowse').addEventListener('click', () => window.SantaCifra.switchTab('home'));
    return;
  }

  folderSongs.forEach((song, idx) => {
    const row = document.createElement('div');
    row.className = 'track-row';
    const coverUrl = window.SantaCifra.getSongCoverUrl ? window.SantaCifra.getSongCoverUrl(song) : 'assets/artists/default-cover.jpg';
    row.innerHTML = `
      <button type="button" class="track-open">
        <span class="track-num">${idx + 1}</span>
        <div class="song-cover track-cover" aria-hidden="true">
          <img class="song-cover-img" src="${coverUrl}" alt="" loading="lazy" onerror="this.onerror=null;this.src='assets/artists/default-cover.jpg'">
          <span class="song-cover-key" title="Tom original: ${esc(song.originalKey)}">${esc(song.originalKey)}</span>
        </div>
        <span class="song-row-main">
          <span class="song-row-title">${esc(song.title)}</span>
          <span class="song-row-sub">${esc(song.liturgicalMoment)} &middot; Tom ${esc(song.originalKey)}</span>
        </span>
      </button>
      <div class="song-row-actions">
        <button type="button" class="row-icon-btn btn-up" ${idx === 0 ? 'disabled' : ''} title="Mover para cima" aria-label="Mover ${esc(song.title)} para cima">${ICONS.up}</button>
        <button type="button" class="row-icon-btn btn-down" ${idx === folderSongs.length - 1 ? 'disabled' : ''} title="Mover para baixo" aria-label="Mover ${esc(song.title)} para baixo">${ICONS.down}</button>
        <button type="button" class="row-icon-btn btn-rem" title="Remover da pasta" aria-label="Remover ${esc(song.title)} da pasta">${ICONS.trash}</button>
      </div>
    `;

    row.querySelector('.track-open').addEventListener('click', () => {
      state.activeQueuePlaylistId = currentFolder.id;
      state.activeQueueIndex = idx;
      window.SantaCifra.openSongView(song);
    });

    row.querySelector('.btn-up').addEventListener('click', () => {
      if (idx === 0) return;
      const arr = currentFolder.songIds;
      [arr[idx - 1], arr[idx]] = [arr[idx], arr[idx - 1]];
      window.SantaCifra.savePlaylists();
      window.SantaCifra.renderPlaylistsView();
    });

    row.querySelector('.btn-down').addEventListener('click', () => {
      if (idx >= folderSongs.length - 1) return;
      const arr = currentFolder.songIds;
      [arr[idx + 1], arr[idx]] = [arr[idx], arr[idx + 1]];
      window.SantaCifra.savePlaylists();
      window.SantaCifra.renderPlaylistsView();
    });

    row.querySelector('.btn-rem').addEventListener('click', () => {
      currentFolder.songIds.splice(idx, 1);
      window.SantaCifra.savePlaylists();
      window.SantaCifra.renderPlaylistsView();
    });

    tracksContainer.appendChild(row);
  });
};

window.SantaCifra.openAddToFolderDialog = function openAddToFolderDialog(song) {
  const { state, dom, auth } = window.SantaCifra;
  const user = auth && auth.getCurrentUser ? auth.getCurrentUser() : null;
  if (!user) {
    if (auth && auth.openAuthDialog) {
      auth.openAuthDialog('login', 'Faça login ou crie sua conta para organizar músicas em pastas.');
    }
    return;
  }

  state.songIdToSaveInFolder = song.id;
  dom.addToFolderSongSubtitle.textContent = song.title;
  dom.folderCheckboxesContainer.innerHTML = '';

  state.playlists.forEach(folder => {
    const checked = folder.songIds.includes(song.id);
    const label = document.createElement('label');
    label.className = 'folder-check';
    label.innerHTML = `
      <input type="checkbox" ${checked ? 'checked' : ''} data-folder-id="${window.SantaCifra.esc(folder.id)}">
      <span>${window.SantaCifra.esc(folder.name)}</span>
    `;
    label.querySelector('input').addEventListener('change', (e) => {
      const isChecked = e.target.checked;
      const idx = folder.songIds.indexOf(song.id);
      if (isChecked && idx === -1) folder.songIds.push(song.id);
      if (!isChecked && idx !== -1) folder.songIds.splice(idx, 1);
      window.SantaCifra.savePlaylists();
      window.SantaCifra.renderCatalog();
      if (state.activeTab === 'artists') window.SantaCifra.renderArtistsView();
      if (state.currentSong && state.currentSong.id === song.id && window.SantaCifra.updateFavoriteButtonState) {
        window.SantaCifra.updateFavoriteButtonState();
      }
    });
    dom.folderCheckboxesContainer.appendChild(label);
  });

  dom.quickFolderNameInput.value = '';
  dom.addToFolderDialog.showModal();
};

window.SantaCifra.bindPlaylistsEvents = function bindPlaylistsEvents() {
  const { state, dom } = window.SantaCifra;

  dom.btnQuickCreateFolder.addEventListener('click', () => {
    const rawName = dom.quickFolderNameInput.value;
    if (!rawName || !rawName.trim() || !state.songIdToSaveInFolder) return;
    const sec = window.SantaCifra.security;
    let validated;
    try {
      validated = sec
        ? sec.validateFolderInput({ name: rawName, description: 'Pasta personalizada', honeypot: '' })
        : { name: rawName.trim().slice(0, 60), description: 'Pasta personalizada' };
    } catch (_) {
      return;
    }
    const maxFolders = (sec && sec.MAX_USER_FOLDERS) ? sec.MAX_USER_FOLDERS : 100;
    if (state.playlists.length >= maxFolders) return;

    const newFolder = {
      id: 'folder-' + Date.now(),
      name: validated.name,
      isSystem: false,
      description: validated.description,
      songIds: [state.songIdToSaveInFolder]
    };
    state.playlists.push(newFolder);
    window.SantaCifra.savePlaylists();
    const targetSong = state.songs.find(s => s.id === state.songIdToSaveInFolder);
    if (targetSong) window.SantaCifra.openAddToFolderDialog(targetSong);
  });

  dom.btnOpenNewFolder.addEventListener('click', () => {
    const auth = window.SantaCifra.auth;
    const user = auth && auth.getCurrentUser ? auth.getCurrentUser() : null;
    if (!user) {
      if (auth && auth.openAuthDialog) {
        auth.openAuthDialog('login', 'Faça login ou crie sua conta para criar novas pastas de repertório.');
      }
      return;
    }
    dom.newFolderDialog.showModal();
  });
  dom.btnCancelNewFolder.addEventListener('click', () => dom.newFolderDialog.close());

  dom.formNewFolder.addEventListener('submit', (e) => {
    e.preventDefault();
    const rawName = document.getElementById('folderNameInput').value;
    const rawDesc = document.getElementById('folderDescInput').value;
    const hpEl = document.getElementById('hpNewFolder');
    const sec = window.SantaCifra.security;
    let validated;
    try {
      validated = sec
        ? sec.validateFolderInput({
            name: rawName,
            description: rawDesc,
            honeypot: hpEl ? hpEl.value : ''
          })
        : { name: rawName.trim().slice(0, 60), description: rawDesc.trim().slice(0, 120) || 'Pasta personalizada' };
    } catch (_) {
      return;
    }
    const maxFolders = (sec && sec.MAX_USER_FOLDERS) ? sec.MAX_USER_FOLDERS : 100;
    if (state.playlists.length >= maxFolders) return;

    const newFolder = {
      id: 'folder-' + Date.now(),
      name: validated.name,
      isSystem: false,
      description: validated.description,
      songIds: []
    };
    state.playlists.push(newFolder);
    state.selectedPlaylistId = newFolder.id;
    window.SantaCifra.savePlaylists();
    dom.formNewFolder.reset();
    dom.newFolderDialog.close();
    window.SantaCifra.renderPlaylistsView();
  });
};
