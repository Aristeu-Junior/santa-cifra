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

  const saved = localStorage.getItem('santa_cifra_playlists_v4');
  if (saved) {
    state.playlists = JSON.parse(saved);
  } else {
    state.playlists = defaultPlaylists;
    window.SantaCifra.savePlaylists();
  }
  window.SantaCifra.updatePlaylistsCounter();
};

window.SantaCifra.savePlaylists = function savePlaylists() {
  const { state } = window.SantaCifra;
  localStorage.setItem('santa_cifra_playlists_v4', JSON.stringify(state.playlists));
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
  const { state } = window.SantaCifra;
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
  if (state.currentSong && state.currentSong.id === songId && window.SantaCifra.updateFavoriteButtonState) {
    window.SantaCifra.updateFavoriteButtonState();
  }
};

window.SantaCifra.renderPlaylistsView = function renderPlaylistsView() {
  const { state, dom, ICONS } = window.SantaCifra;
  dom.foldersList.innerHTML = '';

  state.playlists.forEach(folder => {
    const li = document.createElement('li');
    li.className = 'folder-item' + (folder.id === state.selectedPlaylistId ? ' active' : '');
    li.innerHTML = `
      <div class="folder-item-left">
        ${folder.id === 'favorites' ? ICONS.heartOutline : ICONS.folder}
        <span class="folder-item-name">${folder.name}</span>
      </div>
      <span class="folder-item-count">${folder.songIds.length}</span>
    `;
    li.addEventListener('click', () => {
      state.selectedPlaylistId = folder.id;
      window.SantaCifra.renderPlaylistsView();
    });
    dom.foldersList.appendChild(li);
  });

  const currentFolder = state.playlists.find(p => p.id === state.selectedPlaylistId) || state.playlists[0];
  if (!currentFolder) return;

  const folderSongs = currentFolder.songIds
    .map(id => state.songs.find(s => s.id === id))
    .filter(Boolean);

  dom.playlistDetailPanel.innerHTML = `
    <div class="playlist-banner">
      <div>
        <h3>${currentFolder.name}</h3>
        <p>${currentFolder.description || 'Pasta de repertório'}</p>
      </div>
      <div class="playlist-banner-actions">
        ${folderSongs.length > 0 ? `
          <button type="button" class="icon-tool-btn active" id="btnPlayFolderSequence" title="Tocar na sequência">
            ${ICONS.play}
            <span>Abrir sequência</span>
          </button>
        ` : ''}
        ${!currentFolder.isSystem ? `
          <button type="button" class="icon-tool-btn" id="btnDeleteFolder" title="Excluir pasta" aria-label="Excluir pasta">
            ${ICONS.trash}
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
      state.playlists = state.playlists.filter(p => p.id !== currentFolder.id);
      state.selectedPlaylistId = 'favorites';
      window.SantaCifra.savePlaylists();
      window.SantaCifra.renderPlaylistsView();
    });
  }

  const tracksContainer = document.getElementById('playlistTracksContainer');
  if (folderSongs.length === 0) {
    tracksContainer.innerHTML = `
      <div style="padding: 28px 12px; text-align: center; color: var(--text-muted); font-size: 0.85rem;">
        Nenhuma música adicionada a esta pasta.
      </div>
    `;
    return;
  }

  folderSongs.forEach((song, idx) => {
    const row = document.createElement('div');
    row.className = 'track-row';
    row.innerHTML = `
      <div class="track-num">${idx + 1}</div>
      <div class="song-row-main" style="cursor:pointer;">
        <div class="song-row-title">${song.title}</div>
        <div class="song-row-sub">${song.liturgicalMoment} &middot; Tom ${song.originalKey}</div>
      </div>
      <div class="song-row-actions">
        <button type="button" class="row-icon-btn btn-up" ${idx === 0 ? 'disabled' : ''} title="Mover para cima" aria-label="Subir">${ICONS.up}</button>
        <button type="button" class="row-icon-btn btn-down" ${idx === folderSongs.length - 1 ? 'disabled' : ''} title="Mover para baixo" aria-label="Descer">${ICONS.down}</button>
        <button type="button" class="row-icon-btn btn-rem" title="Remover da pasta" aria-label="Remover">${ICONS.trash}</button>
      </div>
    `;

    row.querySelector('.song-row-main').addEventListener('click', () => {
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
  const { state, dom } = window.SantaCifra;
  state.songIdToSaveInFolder = song.id;
  dom.addToFolderSongSubtitle.textContent = song.title;
  dom.folderCheckboxesContainer.innerHTML = '';

  state.playlists.forEach(folder => {
    const checked = folder.songIds.includes(song.id);
    const label = document.createElement('label');
    label.style.cssText = 'display:flex; align-items:center; justify-content:space-between; padding:8px 10px; border:1px solid var(--border-color); border-radius:6px; cursor:pointer; font-size:0.85rem;';
    label.innerHTML = `
      <span>${folder.name}</span>
      <input type="checkbox" ${checked ? 'checked' : ''} data-folder-id="${folder.id}">
    `;
    label.querySelector('input').addEventListener('change', (e) => {
      const isChecked = e.target.checked;
      const idx = folder.songIds.indexOf(song.id);
      if (isChecked && idx === -1) folder.songIds.push(song.id);
      if (!isChecked && idx !== -1) folder.songIds.splice(idx, 1);
      window.SantaCifra.savePlaylists();
      window.SantaCifra.renderCatalog();
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
    const name = dom.quickFolderNameInput.value.trim();
    if (!name || !state.songIdToSaveInFolder) return;
    const newFolder = {
      id: 'folder-' + Date.now(),
      name,
      isSystem: false,
      description: 'Pasta personalizada',
      songIds: [state.songIdToSaveInFolder]
    };
    state.playlists.push(newFolder);
    window.SantaCifra.savePlaylists();
    const targetSong = state.songs.find(s => s.id === state.songIdToSaveInFolder);
    if (targetSong) window.SantaCifra.openAddToFolderDialog(targetSong);
  });

  dom.btnOpenNewFolder.addEventListener('click', () => dom.newFolderDialog.showModal());
  dom.btnCancelNewFolder.addEventListener('click', () => dom.newFolderDialog.close());

  dom.formNewFolder.addEventListener('submit', (e) => {
    e.preventDefault();
    const name = document.getElementById('folderNameInput').value.trim();
    const desc = document.getElementById('folderDescInput').value.trim();
    if (!name) return;
    const newFolder = {
      id: 'folder-' + Date.now(),
      name,
      isSystem: false,
      description: desc || 'Pasta personalizada',
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
