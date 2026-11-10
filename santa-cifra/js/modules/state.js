/**
 * SANTA CIFRA — Estado Central, Registro de DOM e Navegação entre telas
 */
window.SantaCifra = window.SantaCifra || {};

window.SantaCifra.state = {
  songs: [],
  playlists: [],
  selectedPlaylistId: 'missa-domingo',

  activeQueuePlaylistId: null,
  activeQueueIndex: 0,

  currentSong: null,
  currentSemitones: 0,
  simplifyChords: false,
  selectedInstrument: 'guitar',
  fontSize: window.matchMedia('(max-width: 480px)').matches ? 13 : 15,

  activeTab: 'home',
  historyDepth: 0,
  heroMode: 'mostUsed',
  activeRepertoireTypeFilter: 'all',
  activeSpecialDayFilter: 'all',
  activeMomentFilter: 'all',
  activeSeasonFilter: 'all',
  activeArtistFilter: 'all',
  onlySimpleFilter: false,
  searchQuery: '',

  artists: [],
  selectedArtist: null,
  artistSort: 'count',
  artistQuery: '',

  songIdToSaveInFolder: null,

  isScrolling: false,
  scrollSpeed: 1,
  scrollIntervalId: null,
  isMetronomeActive: false
};

/** Escapa texto antes de inserir em innerHTML (cifras personalizadas vêm do usuário). */
window.SantaCifra.esc = function esc(value) {
  return String(value == null ? '' : value)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;');
};

window.SantaCifra.initDOM = function initDOM() {
  const byId = (id) => document.getElementById(id);
  const dom = {
    logoArea: byId('logoArea'),
    tabHomeBtn: byId('tabHomeBtn'),
    tabArtistsBtn: byId('tabArtistsBtn'),
    tabPlaylistsBtn: byId('tabPlaylistsBtn'),

    catalogSection: byId('catalogSection'),
    artistsSection: byId('artistsSection'),
    playlistsSection: byId('playlistsSection'),
    songViewSection: byId('songViewSection'),

    heroShowcase: byId('heroShowcase'),
    heroBtnMostUsed: byId('heroBtnMostUsed'),
    heroBtnSimple: byId('heroBtnSimple'),
    heroQuickGrid: byId('heroQuickGrid'),

    repertoireTypeGrid: byId('repertoireTypeGrid'),
    countRepAll: byId('countRepAll'),
    countRepLiturgica: byId('countRepLiturgica'),
    countRepPopular: byId('countRepPopular'),
    repertoireRuleBanner: byId('repertoireRuleBanner'),
    repertoireRuleText: byId('repertoireRuleText'),
    specialDaySelect: byId('specialDaySelect'),

    searchInput: byId('searchInput'),
    btnClearSearch: byId('btnClearSearch'),
    btnOnlySimpleToggle: byId('btnOnlySimpleToggle'),
    chkOnlySimple: byId('chkOnlySimple'),
    artistFilterSelect: byId('artistFilterSelect'),
    seasonFilterSelect: byId('seasonFilterSelect'),
    pillsContainer: byId('pillsContainer'),
    catalogResultsTitle: byId('catalogResultsTitle'),
    btnToggleFilters: byId('btnToggleFilters'),
    btnClearFilters: byId('btnClearFilters'),
    filtersPanel: byId('filtersPanel'),
    filtersCount: byId('filtersCount'),
    songsGrid: byId('songsGrid'),

    artistsIndexView: byId('artistsIndexView'),
    artistDetailView: byId('artistDetailView'),
    artistsCountText: byId('artistsCountText'),
    artistSortCount: byId('artistSortCount'),
    artistSortAlpha: byId('artistSortAlpha'),
    artistSearchInput: byId('artistSearchInput'),
    artistsGrid: byId('artistsGrid'),
    btnArtistBack: byId('btnArtistBack'),
    artistDetailAvatar: byId('artistDetailAvatar'),
    artistDetailName: byId('artistDetailName'),
    artistDetailCount: byId('artistDetailCount'),
    artistSongsList: byId('artistSongsList'),

    foldersList: byId('foldersList'),
    playlistDetailPanel: byId('playlistDetailPanel'),
    btnOpenNewFolder: byId('btnOpenNewFolder'),

    playlistQueueBar: byId('playlistQueueBar'),
    queueFolderName: byId('queueFolderName'),
    queuePositionText: byId('queuePositionText'),
    btnQueuePrev: byId('btnQueuePrev'),
    btnQueueNext: byId('btnQueueNext'),

    btnBack: byId('btnBack'),
    btnFavoriteCurrentSong: byId('btnFavoriteCurrentSong'),
    btnAddCurrentToFolder: byId('btnAddCurrentToFolder'),
    songTitle: byId('songTitle'),
    songComposer: byId('songComposer'),
    songRepertoireTypeBadge: byId('songRepertoireTypeBadge'),
    songMomentBadge: byId('songMomentBadge'),
    songSpecialDayBadge: byId('songSpecialDayBadge'),
    songSeasonBadge: byId('songSeasonBadge'),
    songNormCallout: byId('songNormCallout'),

    cifraToolbar: byId('cifraToolbar'),
    btnToolbarMore: byId('btnToolbarMore'),
    toolbarMore: byId('toolbarMore'),
    btnToggleSimplify: byId('btnToggleSimplify'),
    currentKeyDisplay: byId('currentKeyDisplay'),
    btnTransposeDown: byId('btnTransposeDown'),
    btnTransposeUp: byId('btnTransposeUp'),
    btnTransposeReset: byId('btnTransposeReset'),
    instrumentSelect: byId('instrumentSelect'),
    btnFontDec: byId('btnFontDec'),
    btnFontInc: byId('btnFontInc'),
    btnPrint: byId('btnPrint'),

    btnAutoScroll: byId('btnAutoScroll'),
    scrollFloatingController: byId('scrollFloatingController'),
    btnFloatingPlay: byId('btnFloatingPlay'),
    btnFloatingSpeed: byId('btnFloatingSpeed'),
    btnFloatingClose: byId('btnFloatingClose'),

    btnMetronome: byId('btnMetronome'),
    bpmDisplay: byId('bpmDisplay'),
    metronomeBeatDots: byId('metronomeBeatDots'),

    chordsTopBar: byId('chordsTopBar'),
    cifraPre: byId('cifraPre'),
    rhythmName: byId('rhythmName'),
    rhythmArrows: byId('rhythmArrows'),
    youtubeLink: byId('youtubeLink'),

    chordDialog: byId('chordDialog'),
    modalChordName: byId('modalChordName'),
    modalGuitarSvg: byId('modalGuitarSvg'),
    modalKeyboardSvg: byId('modalKeyboardSvg'),
    modalUkuleleSvg: byId('modalUkuleleSvg'),
    modalCavacoSvg: byId('modalCavacoSvg'),

    addToFolderDialog: byId('addToFolderDialog'),
    addToFolderSongSubtitle: byId('addToFolderSongSubtitle'),
    folderCheckboxesContainer: byId('folderCheckboxesContainer'),
    quickFolderNameInput: byId('quickFolderNameInput'),
    btnQuickCreateFolder: byId('btnQuickCreateFolder'),

    newFolderDialog: byId('newFolderDialog'),
    formNewFolder: byId('formNewFolder'),
    btnCancelNewFolder: byId('btnCancelNewFolder'),

    newSongDialog: byId('newSongDialog'),
    btnOpenNewSong: byId('btnOpenNewSong'),
    formNewSong: byId('formNewSong'),

    btnToggleTheme: byId('btnToggleTheme'),
    themeIconMoon: byId('themeIconMoon'),
    themeIconSun: byId('themeIconSun')
  };

  window.SantaCifra.dom = dom;
  return dom;
};

window.SantaCifra.initCatalog = function initCatalog() {
  const { state } = window.SantaCifra;
  const sec = window.SantaCifra.security;
  const safeParse = (sec && sec.safeJsonParse) ? sec.safeJsonParse : (raw) => {
    try { return JSON.parse(raw); } catch (_) { return null; }
  };

  const otaCached = localStorage.getItem('santa_cifra_ota_catalog_v2');
  let baseCatalog = window.SongsCatalog || [];
  if (otaCached) {
    const parsedOta = safeParse(otaCached, null);
    if (Array.isArray(parsedOta) && parsedOta.length >= baseCatalog.length) {
      baseCatalog = parsedOta;
    }
  }

  let customSongs = [];
  const savedCustom = localStorage.getItem('santa_cifra_custom_songs');
  if (savedCustom) {
    const parsedCustom = safeParse(savedCustom, []);
    if (Array.isArray(parsedCustom)) {
      customSongs = parsedCustom.filter(s => s && typeof s.id === 'string' && typeof s.title === 'string' && typeof s.cifra === 'string');
    }
  }
  state.songs = [...baseCatalog, ...customSongs];
  if (window.SantaCifra.buildArtistIndex) window.SantaCifra.buildArtistIndex();
};

/**
 * Troca a tela visível. Telas: home, artists, playlists, song.
 * opts.history: 'push' empilha uma entrada (botão voltar do celular retorna),
 * 'replace' (padrão) troca a entrada atual, 'none' não mexe no histórico.
 */
window.SantaCifra.switchTab = function switchTab(tabName, opts) {
  const { state, dom } = window.SantaCifra;
  const historyMode = (opts && opts.history) || 'replace';
  if (window.SantaCifra.stopAutoScroll) window.SantaCifra.stopAutoScroll();
  if (window.SantaCifra.stopMetronome) window.SantaCifra.stopMetronome();
  if (dom.scrollFloatingController) dom.scrollFloatingController.style.display = 'none';
  if (window.SantaCifra.closeToolbarMore) window.SantaCifra.closeToolbarMore();

  if (tabName !== 'song') state.activeQueuePlaylistId = null;
  state.activeTab = tabName;
  document.body.dataset.view = tabName;

  dom.tabHomeBtn.classList.toggle('active', tabName === 'home');
  dom.tabArtistsBtn.classList.toggle('active', tabName === 'artists');
  dom.tabPlaylistsBtn.classList.toggle('active', tabName === 'playlists');

  dom.catalogSection.style.display = tabName === 'home' ? 'block' : 'none';
  dom.artistsSection.style.display = tabName === 'artists' ? 'block' : 'none';
  dom.playlistsSection.style.display = tabName === 'playlists' ? 'block' : 'none';
  dom.songViewSection.style.display = tabName === 'song' ? 'block' : 'none';

  if (tabName === 'playlists' && window.SantaCifra.renderPlaylistsView) {
    window.SantaCifra.renderPlaylistsView();
  } else if (tabName === 'artists' && window.SantaCifra.renderArtistsView) {
    window.SantaCifra.renderArtistsView();
  } else if (tabName === 'home') {
    if (window.SantaCifra.renderHeroShowcase) window.SantaCifra.renderHeroShowcase();
    if (window.SantaCifra.renderCatalog) window.SantaCifra.renderCatalog();
  }

  window.SantaCifra.syncHistory(historyMode);
};

/** Guarda a tela atual no histórico do navegador para o botão "voltar" funcionar. */
window.SantaCifra.syncHistory = function syncHistory(mode) {
  const { state } = window.SantaCifra;
  if (mode === 'none' || !window.history || !window.history.pushState) return;
  const entry = {
    tab: state.activeTab,
    songId: state.activeTab === 'song' && state.currentSong ? state.currentSong.id : null,
    artist: state.activeTab === 'artists' ? state.selectedArtist : null,
    queueId: state.activeQueuePlaylistId,
    queueIndex: state.activeQueueIndex
  };
  try {
    if (mode === 'push') {
      window.history.pushState(entry, '');
      state.historyDepth += 1;
    } else {
      window.history.replaceState(entry, '');
    }
  } catch (_) {}
};

/** Volta uma tela; se não houver histórico do app, vai para a tela indicada. */
window.SantaCifra.goBack = function goBack(fallbackTab) {
  const { state } = window.SantaCifra;
  if (state.historyDepth > 0) {
    window.history.back();
    return;
  }
  if (fallbackTab === 'artists') state.selectedArtist = null;
  window.SantaCifra.switchTab(fallbackTab || 'home');
};

window.SantaCifra.bindHistory = function bindHistory() {
  const { state } = window.SantaCifra;
  window.SantaCifra.syncHistory('replace');

  window.addEventListener('popstate', (e) => {
    state.historyDepth = Math.max(0, state.historyDepth - 1);
    document.querySelectorAll('dialog[open]').forEach(d => d.close());
    const entry = e.state || { tab: 'home' };

    if (entry.tab === 'song' && entry.songId) {
      state.activeQueuePlaylistId = entry.queueId || null;
      state.activeQueueIndex = entry.queueIndex || 0;
      window.SantaCifra.openSongView(entry.songId, { history: 'none' });
      return;
    }
    if (entry.tab === 'artists') state.selectedArtist = entry.artist || null;
    window.SantaCifra.switchTab(entry.tab || 'home', { history: 'none' });
  });
};
