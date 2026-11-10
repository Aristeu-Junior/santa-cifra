/**
 * SANTA CIFRA — Ponto de Entrada Modular (Bootstrapper)
 * Coordena os módulos em js/modules/:
 * - icons.js (Ícones SVG)
 * - state.js (Estado central, DOM e roteamento de abas)
 * - catalog-view.js (Destaques, busca e filtros)
 * - playlists-view.js (Pastas, repertórios e favoritos)
 * - song-viewer.js (Leitor de cifra, transposição, diagramas e metrônomo)
 * - ota-updater.js (Auto-atualização OTA para APK Android e PWA)
 */

document.addEventListener('DOMContentLoaded', () => {
  // Fallback para light-dismiss em <dialog closedby="any">
  if (!('closedBy' in HTMLDialogElement.prototype)) {
    const outside = (e, dialog) => {
      const r = dialog.getBoundingClientRect();
      return e.clientX < r.left || e.clientX > r.right || e.clientY < r.top || e.clientY > r.bottom;
    };
    for (const dialog of document.querySelectorAll('dialog[closedby="any"]')) {
      let pressedOutside = false;
      dialog.addEventListener('pointerdown', (e) => { pressedOutside = outside(e, dialog); });
      dialog.addEventListener('pointerup', (e) => { if (pressedOutside && outside(e, dialog)) dialog.close(); });
    }
  }

  const dom = window.SantaCifra.initDOM();
  const { state } = window.SantaCifra;

  window.SantaCifra.initCatalog();
  window.SantaCifra.initPlaylists();
  window.SantaCifra.bindHistory();

  function syncThemeIcons() {
    const isDark = document.body.classList.contains('dark-mode');
    if (dom.themeIconMoon && dom.themeIconSun) {
      dom.themeIconMoon.style.display = isDark ? 'none' : 'block';
      dom.themeIconSun.style.display = isDark ? 'block' : 'none';
    }
  }

  // Tema salvo pelo usuário; sem escolha salva, segue o tema do aparelho.
  const savedTheme = localStorage.getItem('santa_cifra_theme');
  const prefersDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;
  if (savedTheme === 'dark' || (!savedTheme && prefersDark)) {
    document.body.classList.add('dark-mode');
  }
  const themeMeta = document.querySelector('meta[name="theme-color"]');
  const syncThemeColor = () => {
    if (themeMeta) themeMeta.content = document.body.classList.contains('dark-mode') ? '#0e1013' : '#f3f4f6';
  };
  syncThemeIcons();
  syncThemeColor();

  // Navegação Superior
  dom.tabHomeBtn.addEventListener('click', () => {
    state.activeQueuePlaylistId = null;
    window.SantaCifra.switchTab('home');
    window.scrollTo({ top: 0 });
  });

  dom.tabPlaylistsBtn.addEventListener('click', () => {
    state.activeQueuePlaylistId = null;
    window.SantaCifra.switchTab('playlists');
  });

  dom.logoArea.addEventListener('click', () => {
    state.activeQueuePlaylistId = null;
    window.SantaCifra.switchTab('home');
  });

  // Inicializa os módulos de interface
  if (window.SantaCifra.auth && window.SantaCifra.auth.bindAuthEvents) {
    window.SantaCifra.auth.bindAuthEvents();
  }
  window.SantaCifra.bindCatalogEvents();
  window.SantaCifra.bindArtistsEvents();
  window.SantaCifra.bindPlaylistsEvents();
  window.SantaCifra.bindSongViewerEvents();

  // Modal de Nova Cifra & Tema
  dom.btnOpenNewSong.addEventListener('click', () => dom.newSongDialog.showModal());

  dom.formNewSong.addEventListener('submit', (e) => {
    e.preventDefault();
    const newSong = {
      id: 'custom-' + Date.now(),
      title: document.getElementById('newTitle').value.trim(),
      composer: document.getElementById('newComposer').value.trim() || 'Tradicional',
      liturgicalMoment: document.getElementById('newMoment').value,
      liturgicalSeason: document.getElementById('newSeason').value,
      originalKey: document.getElementById('newKey').value || 'C',
      bpm: 80,
      timeSignature: '4/4',
      rhythmName: 'Balada',
      rhythmPattern: '↓ ↓ ↑ ↑ ↓ ↑',
      isMostUsed: true,
      isSimple: true,
      chordCount: 4,
      youtubeUrl: 'https://www.youtube.com',
      cifra: document.getElementById('newCifraText').value.trim()
    };

    const saved = localStorage.getItem('santa_cifra_custom_songs');
    const customList = saved ? JSON.parse(saved) : [];
    customList.push(newSong);
    localStorage.setItem('santa_cifra_custom_songs', JSON.stringify(customList));

    window.SantaCifra.initCatalog();
    window.SantaCifra.populateArtistOptGroup();
    dom.formNewSong.reset();
    dom.newSongDialog.close();
    window.SantaCifra.openSongView(newSong);
  });

  dom.btnToggleTheme.addEventListener('click', () => {
    document.body.classList.toggle('dark-mode');
    const isDark = document.body.classList.contains('dark-mode');
    localStorage.setItem('santa_cifra_theme', isDark ? 'dark' : 'light');
    syncThemeIcons();
    syncThemeColor();
  });

  // Renderização Inicial e Auto-Atualizador OTA
  window.SantaCifra.renderHeroShowcase();
  window.SantaCifra.renderCatalog();
  window.SantaCifra.initOTAUpdater();
});
