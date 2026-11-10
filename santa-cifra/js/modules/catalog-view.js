/**
 * SANTA CIFRA — Catálogo, Destaques, Busca e Filtros
 */
window.SantaCifra = window.SantaCifra || {};

window.SantaCifra.renderHeroShowcase = function renderHeroShowcase() {
  const { state, dom, esc } = window.SantaCifra;
  if (state.searchQuery.length > 0) {
    dom.heroShowcase.style.display = 'none';
    return;
  }
  dom.heroShowcase.style.display = 'block';
  dom.heroQuickGrid.innerHTML = '';

  let list = [];
  if (state.heroMode === 'mostUsed') {
    list = state.songs.filter(s => s.isMostUsed).slice(0, 8);
  } else {
    list = state.songs.filter(s => s.isSimple).sort((a, b) => (a.chordCount || 4) - (b.chordCount || 4)).slice(0, 8);
  }

  list.forEach(song => {
    const mini = document.createElement('button');
    mini.type = 'button';
    mini.className = 'hero-mini-card';
    const coverUrl = window.SantaCifra.getSongCoverUrl(song);
    mini.innerHTML = `
      <div class="hero-mini-cover" aria-hidden="true">
        <img class="hero-cover-img" src="${coverUrl}" alt="" loading="lazy" onerror="this.onerror=null;this.src='assets/artists/default-cover.jpg'">
        <span class="hero-cover-key" title="Tom original: ${esc(song.originalKey)}">${esc(song.originalKey)}</span>
      </div>
      <span class="hero-mini-info">
        <span class="hero-mini-title">${esc(song.title)}</span>
        <span class="hero-mini-sub">${esc(song.liturgicalMoment)} &middot; Tom ${esc(song.originalKey)} &middot; ${song.chordCount || 4} acordes</span>
      </span>
    `;
    mini.addEventListener('click', () => {
      state.activeQueuePlaylistId = null;
      window.SantaCifra.openSongView(song);
    });
    dom.heroQuickGrid.appendChild(mini);
  });
};

window.SantaCifra.matchesArtistFilter = function matchesArtistFilter(song, af) {
  if (!af || af === 'all') return true;
  const comp = (song.composer || '').toLowerCase();
  if (af === 'Walmir Alencar') return comp.includes('walmir') || comp.includes('vida reluz') || comp.includes('adoração e vida');
  if (af === 'Fraternidades') {
    return comp.includes('fraternidade') || comp.includes('toca de assis') || comp.includes('o caminho') ||
      comp.includes('arca de maria') || comp.includes('aliança de misericórdia') || comp.includes('recado') ||
      comp.includes('pantokrator') || comp.includes('obra de maria') || comp.includes('doce mãe') ||
      comp.includes('sementes do verbo') || comp.includes('palavra viva') || comp.includes('mar a dentro') ||
      comp.includes('emanuel') || comp.includes('maria de nazaré') || comp.includes('hesed');
  }
  if (af === 'Campanha da Fraternidade') return comp.includes('campanha da fraternidade');
  if (af === 'Padre Zezinho') return comp.includes('zezinho');
  if (af === 'Padre Marcelo Rossi') return comp.includes('marcelo rossi');
  if (af === 'Canção Nova') {
    return comp.includes('canção nova') || comp.includes('jonas abib') || comp.includes('eugênio') ||
      comp.includes('eliana') || comp.includes('dunga') || comp.includes('nelsinho') ||
      comp.includes('salette') || comp.includes('todeschini') || comp.includes('pitter') ||
      comp.includes('stenio') || comp.includes('amor e adoração') || comp.includes('thiago tomé') ||
      comp.includes('rogerinha') || comp.includes('ricardo sá');
  }
  if (af === 'Shalom') {
    return comp.includes('shalom') || comp.includes('suely') || comp.includes('davidson') ||
      comp.includes('guilherme pontes') || comp.includes('osterno') || comp.includes('morel');
  }
  if (af === 'Frei Gilson') {
    return comp.includes('frei gilson') || comp.includes('colo de deus') ||
      comp.includes('thiago brado') || comp.includes('flávio vitor') || comp.includes('mayara');
  }
  if (af === 'Anjos') {
    return comp.includes('anjos de resgate') || comp.includes('dalvimar') || comp.includes('rosa de saron') ||
      comp.includes('celina') || comp.includes('adriana') || comp.includes('ziza') || comp.includes('martin valverde') ||
      comp.includes('banda dom') || comp.includes('dominus');
  }
  if (af === 'Padres e Religiosos') {
    return comp.includes('padre') || comp.includes('pe.') || comp.includes('frei') ||
      comp.includes('irmã') || comp.includes('ir.') || comp.includes('monsenhor') || comp.includes('diácono');
  }
  if (af === 'Cantores Católicos') {
    return comp.includes('tony allysson') || comp.includes('diego fernandes') || comp.includes('davidson') ||
      comp.includes('ana gabriela') || comp.includes('laura salvador') || comp.includes('juninho') ||
      comp.includes('olívia') || comp.includes('banda') || comp.includes('ceremonya') ||
      comp.includes('nádia') || comp.includes('luciana') || comp.includes('eros') ||
      comp.includes('álvaro') || comp.includes('italo') || comp.includes('yuri') ||
      comp.includes('laércio') || comp.includes('danilo') || comp.includes('flávio') ||
      comp.includes('thiago brado') || comp.includes('rosa de saron');
  }
  if (af === 'CNBB') {
    return comp.includes('cnbb') || comp.includes('lecionário') || comp.includes('missal') ||
      comp.includes('weber') || comp.includes('kolling') || comp.includes('fabreti') ||
      comp.includes('waldeci') || comp.includes('zé vicente') || comp.includes('tradicional') ||
      comp.includes('gregoriano') || comp.includes('taizé') || comp.includes('eurivaldo') ||
      comp.includes('cândido') || comp.includes('custódia') || comp.includes('celerino') ||
      comp.includes('palestrina') || comp.includes('catequese');
  }
  if (af.startsWith('exact:')) {
    return comp.includes(af.slice(6).toLowerCase());
  }
  return true;
};

window.SantaCifra.updateRepertoireDivisionCounters = function updateRepertoireDivisionCounters() {
  const { state, dom } = window.SantaCifra;
  const total = state.songs.length;
  const litCount = state.songs.filter(s => (s.repertoireType || 'liturgica') === 'liturgica').length;
  const popCount = state.songs.filter(s => s.repertoireType === 'popular').length;

  if (dom.countRepAll) dom.countRepAll.textContent = String(total);
  if (dom.countRepLiturgica) dom.countRepLiturgica.textContent = String(litCount);
  if (dom.countRepPopular) dom.countRepPopular.textContent = String(popCount);

  // A regra litúrgica só aparece quando o usuário escolhe um dos dois tipos.
  if (dom.repertoireRuleBanner && dom.repertoireRuleText) {
    dom.repertoireRuleBanner.classList.remove('banner-liturgica', 'banner-popular');
    if (state.activeRepertoireTypeFilter === 'liturgica') {
      dom.repertoireRuleBanner.hidden = false;
      dom.repertoireRuleBanner.classList.add('banner-liturgica');
      dom.repertoireRuleText.innerHTML =
        '<strong>Músicas litúrgicas, aprovadas para a Santa Missa (IGMR e CNBB).</strong> Cantos fiéis ao Missal Romano e ao Lecionário, recomendados por padres e liturgistas para os ritos da Missa.';
    } else if (state.activeRepertoireTypeFilter === 'popular') {
      dom.repertoireRuleBanner.hidden = false;
      dom.repertoireRuleBanner.classList.add('banner-popular');
      dom.repertoireRuleText.innerHTML =
        '<strong>Músicas populares e devocionais, para fora da Missa.</strong> Indicadas para grupos de oração, encontros, retiros, shows e adoração livre. Segundo as normas litúrgicas (IGMR e Estudos 43 e 79 da CNBB), não devem substituir os cantos rituais da Santa Missa.';
    } else {
      dom.repertoireRuleBanner.hidden = true;
      dom.repertoireRuleText.textContent = '';
    }
  }
};

/** Linha de música reutilizada no catálogo e na página do artista. */
window.SantaCifra.createSongRow = function createSongRow(song) {
  const { state, ICONS, esc } = window.SantaCifra;
  const isFav = window.SantaCifra.isSongFavorited(song.id);
  const isLit = (song.repertoireType || 'liturgica') === 'liturgica';
  const repBadgeHtml = isLit
    ? '<span class="rep-badge rep-badge-liturgica" title="Aprovada para os ritos da Santa Missa (IGMR / CNBB)">Para a Missa</span>'
    : '<span class="rep-badge rep-badge-popular" title="Música popular ou devocional, para encontros, retiros e grupos de oração">Fora da Missa</span>';

  const composer = window.SantaCifra.composerHtml(song);
  const coverUrl = window.SantaCifra.getSongCoverUrl(song);
  const row = document.createElement('div');
  row.className = 'song-row';
  row.tabIndex = 0;
  row.setAttribute('role', 'link');
  row.setAttribute('aria-label', `Abrir cifra de ${song.title}`);
  row.innerHTML = `
    <div class="song-cover" aria-hidden="true">
      <img class="song-cover-img" src="${coverUrl}" alt="" loading="lazy" onerror="this.onerror=null;this.src='assets/artists/default-cover.jpg'">
      <span class="song-cover-key" title="Tom original: ${esc(song.originalKey)}">${esc(song.originalKey)}</span>
    </div>
    <div class="song-row-main">
      <div class="song-row-title">${esc(song.title)}</div>
      <div class="song-row-sub">
        ${composer ? `<span class="song-row-composer">${composer}</span>` : ''}
      </div>
      <div class="song-row-sub">
        <span>${esc(song.liturgicalMoment)}</span>
        <span class="sub-sep" aria-hidden="true">&middot;</span>
        <span>Tom ${esc(song.originalKey)}</span>
        <span class="sub-sep" aria-hidden="true">&middot;</span>
        ${repBadgeHtml}
      </div>
    </div>
    <div class="song-row-actions">
      <button type="button" class="row-icon-btn btn-fav ${isFav ? 'is-fav' : ''}" title="${isFav ? 'Remover das favoritas' : 'Favoritar'}" aria-label="${isFav ? 'Remover das favoritas' : 'Favoritar'}" aria-pressed="${isFav}">
        ${isFav ? ICONS.heartFilled : ICONS.heartOutline}
      </button>
      <button type="button" class="row-icon-btn btn-folder" title="Salvar em pasta" aria-label="Salvar em pasta">
        ${ICONS.folderPlus}
      </button>
    </div>
  `;

  const open = () => {
    state.activeQueuePlaylistId = null;
    window.SantaCifra.openSongView(song);
  };

  row.addEventListener('click', (e) => {
    if (e.target.closest('.artist-link')) return;
    if (e.target.closest('.btn-fav')) {
      e.stopPropagation();
      window.SantaCifra.toggleFavoriteSong(song.id);
      return;
    }
    if (e.target.closest('.btn-folder')) {
      e.stopPropagation();
      window.SantaCifra.openAddToFolderDialog(song);
      return;
    }
    open();
  });

  row.addEventListener('keydown', (e) => {
    if (e.target !== row) return;
    if (e.key === 'Enter' || e.key === ' ') {
      e.preventDefault();
      open();
    }
  });

  return row;
};

window.SantaCifra.countActiveFilters = function countActiveFilters() {
  const { state } = window.SantaCifra;
  let extra = 0;
  if (state.activeSpecialDayFilter !== 'all') extra++;
  if (state.activeSeasonFilter !== 'all') extra++;
  if (state.activeArtistFilter !== 'all') extra++;
  if (state.onlySimpleFilter) extra++;
  let total = extra;
  if (state.activeRepertoireTypeFilter !== 'all') total++;
  if (state.activeMomentFilter !== 'all') total++;
  return { extra, total };
};

window.SantaCifra.clearAllFilters = function clearAllFilters() {
  const { state, dom } = window.SantaCifra;
  state.activeRepertoireTypeFilter = 'all';
  state.activeSpecialDayFilter = 'all';
  state.activeMomentFilter = 'all';
  state.activeSeasonFilter = 'all';
  state.activeArtistFilter = 'all';
  state.onlySimpleFilter = false;
  state.searchQuery = '';

  dom.searchInput.value = '';
  dom.btnClearSearch.style.display = 'none';
  dom.specialDaySelect.value = 'all';
  dom.seasonFilterSelect.value = 'all';
  dom.artistFilterSelect.value = 'all';
  dom.btnOnlySimpleToggle.setAttribute('aria-pressed', 'false');
  dom.chkOnlySimple.checked = false;
  dom.repertoireTypeGrid.querySelectorAll('.rep-type-card').forEach(c => {
    const on = c.getAttribute('data-reptype') === 'all';
    c.classList.toggle('active', on);
    c.setAttribute('aria-pressed', String(on));
  });
  dom.pillsContainer.querySelectorAll('.pill-filter').forEach(p => {
    p.classList.toggle('active', p.getAttribute('data-moment') === 'all');
  });

  window.SantaCifra.renderHeroShowcase();
  window.SantaCifra.renderCatalog();
};

window.SantaCifra.renderCatalog = function renderCatalog() {
  const { state, dom, esc } = window.SantaCifra;
  dom.songsGrid.innerHTML = '';
  window.SantaCifra.updateRepertoireDivisionCounters();

  const q = state.searchQuery.toLowerCase();
  const filtered = state.songs.filter(song => {
    const repType = song.repertoireType || 'liturgica';
    const specDay = song.specialDay || 'Missa Dominical (Tempo Comum)';

    if (state.activeRepertoireTypeFilter !== 'all' && repType !== state.activeRepertoireTypeFilter) return false;
    if (state.activeSpecialDayFilter !== 'all' && specDay !== state.activeSpecialDayFilter) return false;
    if (state.activeMomentFilter !== 'all' && song.liturgicalMoment !== state.activeMomentFilter) return false;
    if (state.activeSeasonFilter !== 'all' && song.liturgicalSeason !== state.activeSeasonFilter && song.liturgicalSeason !== 'Qualquer') return false;
    if (state.onlySimpleFilter && !song.isSimple) return false;
    if (!window.SantaCifra.matchesArtistFilter(song, state.activeArtistFilter)) return false;

    if (q) {
      const haystack = [song.title, song.composer, song.liturgicalMoment, specDay, song.cifra]
        .map(v => String(v || '').toLowerCase());
      if (!haystack.some(v => v.includes(q))) return false;
    }
    return true;
  });

  const n = filtered.length;
  const noun = n === 1 ? 'música' : 'músicas';
  dom.catalogResultsTitle.textContent = state.searchQuery
    ? `${n} ${n === 1 ? 'resultado' : 'resultados'} para "${state.searchQuery}"`
    : `${n} ${noun}`;

  const { extra, total } = window.SantaCifra.countActiveFilters();
  dom.filtersCount.hidden = extra === 0;
  dom.filtersCount.textContent = String(extra);
  dom.btnClearFilters.hidden = total === 0 && !state.searchQuery;

  if (n === 0) {
    dom.songsGrid.innerHTML = `
      <div class="empty-state">
        <span>Nenhuma cifra encontrada${state.searchQuery ? ` para "${esc(state.searchQuery)}"` : ' com esses filtros'}.</span>
        <button type="button" class="btn-outline" id="btnEmptyClear">Limpar busca e filtros</button>
      </div>
    `;
    document.getElementById('btnEmptyClear').addEventListener('click', window.SantaCifra.clearAllFilters);
    return;
  }

  const frag = document.createDocumentFragment();
  filtered.forEach(song => frag.appendChild(window.SantaCifra.createSongRow(song)));
  dom.songsGrid.appendChild(frag);
};

/** Mantido por compatibilidade com o atualizador OTA: recalcula o índice de artistas. */
window.SantaCifra.populateArtistOptGroup = function populateArtistOptGroup() {
  window.SantaCifra.buildArtistIndex();
  if (window.SantaCifra.state.activeTab === 'artists') window.SantaCifra.renderArtistsView();
};

window.SantaCifra.bindCatalogEvents = function bindCatalogEvents() {
  const { state, dom } = window.SantaCifra;

  dom.heroBtnMostUsed.addEventListener('click', () => {
    state.heroMode = 'mostUsed';
    dom.heroBtnMostUsed.classList.add('active');
    dom.heroBtnSimple.classList.remove('active');
    window.SantaCifra.renderHeroShowcase();
  });

  dom.heroBtnSimple.addEventListener('click', () => {
    state.heroMode = 'simple';
    dom.heroBtnSimple.classList.add('active');
    dom.heroBtnMostUsed.classList.remove('active');
    window.SantaCifra.renderHeroShowcase();
  });

  let searchTimer = null;
  dom.searchInput.addEventListener('input', (e) => {
    state.searchQuery = e.target.value.trim();
    dom.btnClearSearch.style.display = state.searchQuery ? 'inline-flex' : 'none';
    clearTimeout(searchTimer);
    searchTimer = setTimeout(() => {
      if (state.activeTab !== 'home') window.SantaCifra.switchTab('home');
      else {
        window.SantaCifra.renderHeroShowcase();
        window.SantaCifra.renderCatalog();
      }
    }, 120);
  });

  dom.btnClearSearch.addEventListener('click', () => {
    dom.searchInput.value = '';
    state.searchQuery = '';
    dom.btnClearSearch.style.display = 'none';
    dom.searchInput.focus();
    window.SantaCifra.renderHeroShowcase();
    window.SantaCifra.renderCatalog();
  });

  dom.btnToggleFilters.addEventListener('click', () => {
    const open = dom.filtersPanel.classList.toggle('open');
    dom.btnToggleFilters.setAttribute('aria-expanded', String(open));
    dom.btnToggleFilters.classList.toggle('active', open);
  });

  dom.btnClearFilters.addEventListener('click', window.SantaCifra.clearAllFilters);

  dom.btnOnlySimpleToggle.addEventListener('click', () => {
    state.onlySimpleFilter = !state.onlySimpleFilter;
    dom.btnOnlySimpleToggle.setAttribute('aria-pressed', String(state.onlySimpleFilter));
    dom.chkOnlySimple.checked = state.onlySimpleFilter;
    window.SantaCifra.renderCatalog();
  });

  dom.artistFilterSelect.addEventListener('change', (e) => {
    state.activeArtistFilter = e.target.value;
    window.SantaCifra.renderCatalog();
  });

  dom.seasonFilterSelect.addEventListener('change', (e) => {
    state.activeSeasonFilter = e.target.value;
    window.SantaCifra.renderCatalog();
  });

  dom.specialDaySelect.addEventListener('change', (e) => {
    state.activeSpecialDayFilter = e.target.value || 'all';
    window.SantaCifra.renderCatalog();
  });

  dom.repertoireTypeGrid.addEventListener('click', (e) => {
    const card = e.target.closest('.rep-type-card');
    if (!card) return;
    dom.repertoireTypeGrid.querySelectorAll('.rep-type-card').forEach(c => {
      c.classList.remove('active');
      c.setAttribute('aria-pressed', 'false');
    });
    card.classList.add('active');
    card.setAttribute('aria-pressed', 'true');
    state.activeRepertoireTypeFilter = card.getAttribute('data-reptype') || 'all';
    window.SantaCifra.renderCatalog();
  });

  dom.pillsContainer.addEventListener('click', (e) => {
    const pill = e.target.closest('.pill-filter');
    if (!pill) return;
    dom.pillsContainer.querySelectorAll('.pill-filter').forEach(p => p.classList.remove('active'));
    pill.classList.add('active');
    state.activeMomentFilter = pill.getAttribute('data-moment');
    window.SantaCifra.renderCatalog();
  });
};
