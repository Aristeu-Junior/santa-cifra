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
  // Detecta modo Web App instalado (PWA / iOS Tela de Início) e iOS para ajuste de safe-area
  const isStandalone = window.navigator.standalone === true ||
    (window.matchMedia && window.matchMedia('(display-mode: standalone)').matches);
  if (isStandalone) {
    document.documentElement.classList.add('is-standalone');
  }
  if (/iPad|iPhone|iPod/.test(navigator.userAgent || '')) {
    document.documentElement.classList.add('is-ios');
  }

  // Suporte global a teclado virtual móvel (iOS / Android) para todos os diálogos
  function setupVisualViewport() {
    if (!window.visualViewport) return;
    const sync = () => {
      const vv = window.visualViewport;
      const keyboardHeight = Math.max(0, window.innerHeight - vv.height);
      document.documentElement.style.setProperty('--keyboard-inset', `${keyboardHeight}px`);
      document.documentElement.style.setProperty('--visual-viewport-h', `${vv.height}px`);

      const active = document.activeElement;
      if (active && (active.tagName === 'INPUT' || active.tagName === 'TEXTAREA' || active.tagName === 'SELECT')) {
        const dialog = active.closest('dialog[open]');
        if (dialog) {
          setTimeout(() => {
            active.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
          }, 60);
        }
      }
    };
    window.visualViewport.addEventListener('resize', sync);
    window.visualViewport.addEventListener('scroll', sync);
    sync();
  }
  setupVisualViewport();

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
    if (themeMeta) themeMeta.content = document.body.classList.contains('dark-mode') ? '#000000' : '#E9E9E9';
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

  if (dom.tabParishBtn) {
    dom.tabParishBtn.addEventListener('click', () => {
      state.activeQueuePlaylistId = null;
      window.SantaCifra.switchTab('parish');
      window.scrollTo({ top: 0 });
    });
  }

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
  if (window.SantaCifra.bindCalendarEvents) {
    window.SantaCifra.bindCalendarEvents();
  }
  if (window.SantaCifra.parish && window.SantaCifra.parish.initParishModule) {
    window.SantaCifra.parish.initParishModule();
  }
  window.SantaCifra.bindSongViewerEvents();

  // Modal de Nova Cifra & Tema
  if (dom.btnOpenNewSong) {
    dom.btnOpenNewSong.addEventListener('click', () => dom.newSongDialog.showModal());
  }

  dom.formNewSong.addEventListener('submit', (e) => {
    e.preventDefault();
    const sec = window.SantaCifra.security;
    const hpEl = document.getElementById('hpNewSong');
    let validated;
    try {
      validated = sec ? sec.validateSongInput({
        title: document.getElementById('newTitle').value,
        composer: document.getElementById('newComposer').value,
        moment: document.getElementById('newMoment').value,
        season: document.getElementById('newSeason').value,
        key: document.getElementById('newKey').value,
        cifra: document.getElementById('newCifraText').value,
        honeypot: hpEl ? hpEl.value : ''
      }) : {
        title: document.getElementById('newTitle').value.trim(),
        composer: document.getElementById('newComposer').value.trim() || 'Tradicional',
        liturgicalMoment: document.getElementById('newMoment').value,
        liturgicalSeason: document.getElementById('newSeason').value,
        originalKey: document.getElementById('newKey').value || 'C',
        cifra: document.getElementById('newCifraText').value.trim()
      };
    } catch (err) {
      alert(err.message || 'Dados inválidos na cifra.');
      return;
    }

    const newSong = {
      id: 'custom-' + Date.now(),
      title: validated.title,
      composer: validated.composer,
      liturgicalMoment: validated.liturgicalMoment,
      liturgicalSeason: validated.liturgicalSeason,
      originalKey: validated.originalKey,
      bpm: 80,
      timeSignature: '4/4',
      rhythmName: 'Balada',
      rhythmPattern: '↓ ↓ ↑ ↑ ↓ ↑',
      isMostUsed: true,
      isSimple: true,
      chordCount: 4,
      youtubeUrl: 'https://www.youtube.com',
      cifra: validated.cifra
    };

    const saved = localStorage.getItem('santa_cifra_custom_songs');
    const parseFn = (sec && sec.safeJsonParse) ? sec.safeJsonParse : JSON.parse;
    const customList = saved ? (parseFn(saved, []) || []) : [];
    const maxSongs = (sec && sec.MAX_CUSTOM_SONGS) ? sec.MAX_CUSTOM_SONGS : 200;
    if (customList.length >= maxSongs) {
      customList.shift();
    }
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
