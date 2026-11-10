/**
 * SANTA CIFRA — Estado Central, Registro de DOM, Tema e Navegação
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
  fontSize: 15,

  activeTab: 'home',
  heroMode: 'mostUsed',
  activeRepertoireTypeFilter: 'all',
  activeSpecialDayFilter: 'all',
  activeMomentFilter: 'all',
  activeSeasonFilter: 'all',
  activeArtistFilter: 'all',
  onlySimpleFilter: false,
  searchQuery: '',

  songIdToSaveInFolder: null,

  isScrolling: false,
  scrollSpeed: 1,
  scrollIntervalId: null,
  isMetronomeActive: false
};

window.SantaCifra.initDOM = function initDOM() {
  const dom = {
    logoArea: document.getElementById('logoArea'),
    tabHomeBtn: document.getElementById('tabHomeBtn'),
    tabPlaylistsBtn: document.getElementById('tabPlaylistsBtn'),

    catalogSection: document.getElementById('catalogSection'),
    playlistsSection: document.getElementById('playlistsSection'),
    songViewSection: document.getElementById('songViewSection'),

    heroShowcase: document.getElementById('heroShowcase'),
    heroBtnMostUsed: document.getElementById('heroBtnMostUsed'),
    heroBtnSimple: document.getElementById('heroBtnSimple'),
    heroQuickGrid: document.getElementById('heroQuickGrid'),

    repertoireTypeGrid: document.getElementById('repertoireTypeGrid'),
    countRepAll: document.getElementById('countRepAll'),
    countRepLiturgica: document.getElementById('countRepLiturgica'),
    countRepPopular: document.getElementById('countRepPopular'),
    repertoireRuleBanner: document.getElementById('repertoireRuleBanner'),
    repertoireRuleText: document.getElementById('repertoireRuleText'),
    specialDaysStrip: document.getElementById('specialDaysStrip'),

    searchInput: document.getElementById('searchInput'),
    btnClearSearch: document.getElementById('btnClearSearch'),
    btnOnlySimpleToggle: document.getElementById('btnOnlySimpleToggle'),
    chkOnlySimple: document.getElementById('chkOnlySimple'),
    artistFilterSelect: document.getElementById('artistFilterSelect'),
    seasonFilterSelect: document.getElementById('seasonFilterSelect'),
    pillsContainer: document.getElementById('pillsContainer'),
    catalogResultsTitle: document.getElementById('catalogResultsTitle'),
    songsGrid: document.getElementById('songsGrid'),

    foldersList: document.getElementById('foldersList'),
    playlistDetailPanel: document.getElementById('playlistDetailPanel'),
    btnOpenNewFolder: document.getElementById('btnOpenNewFolder'),

    playlistQueueBar: document.getElementById('playlistQueueBar'),
    queueFolderName: document.getElementById('queueFolderName'),
    queuePositionText: document.getElementById('queuePositionText'),
    btnQueuePrev: document.getElementById('btnQueuePrev'),
    btnQueueNext: document.getElementById('btnQueueNext'),

    btnBack: document.getElementById('btnBack'),
    btnFavoriteCurrentSong: document.getElementById('btnFavoriteCurrentSong'),
    btnAddCurrentToFolder: document.getElementById('btnAddCurrentToFolder'),
    songTitle: document.getElementById('songTitle'),
    songComposer: document.getElementById('songComposer'),
    songRepertoireTypeBadge: document.getElementById('songRepertoireTypeBadge'),
    songMomentBadge: document.getElementById('songMomentBadge'),
    songSpecialDayBadge: document.getElementById('songSpecialDayBadge'),
    songSeasonBadge: document.getElementById('songSeasonBadge'),
    songNormCallout: document.getElementById('songNormCallout'),

    btnToggleSimplify: document.getElementById('btnToggleSimplify'),
    currentKeyDisplay: document.getElementById('currentKeyDisplay'),
    btnTransposeDown: document.getElementById('btnTransposeDown'),
    btnTransposeUp: document.getElementById('btnTransposeUp'),
    btnTransposeReset: document.getElementById('btnTransposeReset'),
    instrumentSelect: document.getElementById('instrumentSelect'),
    btnFontDec: document.getElementById('btnFontDec'),
    btnFontInc: document.getElementById('btnFontInc'),
    btnPrint: document.getElementById('btnPrint'),

    btnAutoScroll: document.getElementById('btnAutoScroll'),
    scrollFloatingController: document.getElementById('scrollFloatingController'),
    btnFloatingPlay: document.getElementById('btnFloatingPlay'),
    btnFloatingSpeed: document.getElementById('btnFloatingSpeed'),
    btnFloatingClose: document.getElementById('btnFloatingClose'),

    btnMetronome: document.getElementById('btnMetronome'),
    bpmDisplay: document.getElementById('bpmDisplay'),
    metronomeBeatDots: document.getElementById('metronomeBeatDots'),

    chordsTopBar: document.getElementById('chordsTopBar'),
    cifraPre: document.getElementById('cifraPre'),
    rhythmName: document.getElementById('rhythmName'),
    rhythmArrows: document.getElementById('rhythmArrows'),
    youtubeLink: document.getElementById('youtubeLink'),

    chordDialog: document.getElementById('chordDialog'),
    modalChordName: document.getElementById('modalChordName'),
    modalGuitarSvg: document.getElementById('modalGuitarSvg'),
    modalKeyboardSvg: document.getElementById('modalKeyboardSvg'),
    modalUkuleleSvg: document.getElementById('modalUkuleleSvg'),
    modalCavacoSvg: document.getElementById('modalCavacoSvg'),

    addToFolderDialog: document.getElementById('addToFolderDialog'),
    addToFolderSongSubtitle: document.getElementById('addToFolderSongSubtitle'),
    folderCheckboxesContainer: document.getElementById('folderCheckboxesContainer'),
    quickFolderNameInput: document.getElementById('quickFolderNameInput'),
    btnQuickCreateFolder: document.getElementById('btnQuickCreateFolder'),

    newFolderDialog: document.getElementById('newFolderDialog'),
    formNewFolder: document.getElementById('formNewFolder'),
    btnCancelNewFolder: document.getElementById('btnCancelNewFolder'),

    newSongDialog: document.getElementById('newSongDialog'),
    btnOpenNewSong: document.getElementById('btnOpenNewSong'),
    formNewSong: document.getElementById('formNewSong'),

    btnToggleTheme: document.getElementById('btnToggleTheme'),
    themeIconMoon: document.getElementById('themeIconMoon'),
    themeIconSun: document.getElementById('themeIconSun')
  };

  window.SantaCifra.dom = dom;
  return dom;
};

window.SantaCifra.initCatalog = function initCatalog() {
  const { state } = window.SantaCifra;
  const otaCached = localStorage.getItem('santa_cifra_ota_catalog_v2');
  let baseCatalog = window.SongsCatalog || [];
  if (otaCached) {
    try {
      const parsedOta = JSON.parse(otaCached);
      if (Array.isArray(parsedOta) && parsedOta.length >= baseCatalog.length) {
        baseCatalog = parsedOta;
      }
    } catch (_) {}
  }

  const savedCustom = localStorage.getItem('santa_cifra_custom_songs');
  const customSongs = savedCustom ? JSON.parse(savedCustom) : [];
  state.songs = [...baseCatalog, ...customSongs];
};

window.SantaCifra.switchTab = function switchTab(tabName) {
  const { state, dom } = window.SantaCifra;
  if (window.SantaCifra.stopAutoScroll) window.SantaCifra.stopAutoScroll();
  if (window.SantaCifra.stopMetronome) window.SantaCifra.stopMetronome();
  state.activeTab = tabName;

  dom.tabHomeBtn.classList.toggle('active', tabName === 'home');
  dom.tabPlaylistsBtn.classList.toggle('active', tabName === 'playlists');

  dom.catalogSection.style.display = tabName === 'home' ? 'block' : 'none';
  dom.playlistsSection.style.display = tabName === 'playlists' ? 'block' : 'none';
  dom.songViewSection.style.display = tabName === 'song' ? 'block' : 'none';

  if (tabName === 'playlists' && window.SantaCifra.renderPlaylistsView) {
    window.SantaCifra.renderPlaylistsView();
  } else if (tabName === 'home') {
    if (window.SantaCifra.renderHeroShowcase) window.SantaCifra.renderHeroShowcase();
    if (window.SantaCifra.renderCatalog) window.SantaCifra.renderCatalog();
  }
};
