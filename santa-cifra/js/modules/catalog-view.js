/**
 * SANTA CIFRA — Catálogo, Destaques (Hero Showcase), Busca e Filtros
 */
window.SantaCifra = window.SantaCifra || {};

window.SantaCifra.renderHeroShowcase = function renderHeroShowcase() {
  const { state, dom } = window.SantaCifra;
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
    const mini = document.createElement('div');
    mini.className = 'hero-mini-card';
    mini.innerHTML = `
      <div class="hero-mini-info">
        <div class="hero-mini-title">${song.title}</div>
        <div class="hero-mini-sub">${song.liturgicalMoment} &middot; ${song.chordCount || 4} acordes</div>
      </div>
      <div class="hero-mini-key">${song.originalKey}</div>
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
      comp.includes('celina') || comp.includes('adriana') || comp.includes('ziza') || comp.includes('martin valverde');
  }
  if (af === 'Padres e Religiosos') {
    return comp.includes('padre') || comp.includes('pe.') || comp.includes('frei') ||
      comp.includes('irmã') || comp.includes('ir.');
  }
  if (af === 'Cantores Católicos') {
    return comp.includes('tony allysson') || comp.includes('diego fernandes') || comp.includes('davidson') ||
      comp.includes('ana gabriela') || comp.includes('laura salvador') || comp.includes('juninho') ||
      comp.includes('olívia') || comp.includes('banda') || comp.includes('ceremonya') ||
      comp.includes('nádia') || comp.includes('luciana') || comp.includes('eros') ||
      comp.includes('álvaro') || comp.includes('italo') || comp.includes('yuri') ||
      comp.includes('laércio') || comp.includes('danilo') || comp.includes('flávio');
  }
  if (af === 'CNBB') {
    return comp.includes('cnbb') || comp.includes('lecionário') || comp.includes('missal') ||
      comp.includes('weber') || comp.includes('kolling') || comp.includes('fabreti') ||
      comp.includes('waldeci') || comp.includes('zé vicente') || comp.includes('tradicional') ||
      comp.includes('gregoriano') || comp.includes('taizé') || comp.includes('eurivaldo') ||
      comp.includes('cândido') || comp.includes('custódia') || comp.includes('celerino') || comp.includes('palestrina');
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

  if (dom.repertoireRuleBanner && dom.repertoireRuleText) {
    dom.repertoireRuleBanner.classList.remove('banner-liturgica', 'banner-popular');
    if (state.activeRepertoireTypeFilter === 'liturgica') {
      dom.repertoireRuleBanner.classList.add('banner-liturgica');
      dom.repertoireRuleText.innerHTML =
        '<strong>Músicas Litúrgicas (Aprovadas para a Santa Missa — IGMR e CNBB):</strong> Cantos fiéis ao Missal Romano e ao Lecionário, recomendados por padres e liturgistas para os ritos da Missa.';
    } else if (state.activeRepertoireTypeFilter === 'popular') {
      dom.repertoireRuleBanner.classList.add('banner-popular');
      dom.repertoireRuleText.innerHTML =
        '<strong>Músicas Populares e Devocionais (Fora da Missa):</strong> Indicadas para Grupos de Oração, Encontros, Retiros, Shows e Adoração livre. Segundo as normas litúrgicas (IGMR / Estudos 43 e 79 da CNBB), não devem substituir os cantos rituais da Santa Missa.';
    } else {
      dom.repertoireRuleText.innerHTML =
        '<strong>Ordem e Integridade Litúrgica:</strong> Todas as cifras possuem identificação clara entre <strong>Litúrgica · Missa</strong> (uso ritual na Missa) e <strong>Popular · Fora da Missa</strong> (encontros, grupos de oração e retiros), além dos temas de cada solenidade.';
    }
  }
};

window.SantaCifra.renderCatalog = function renderCatalog() {
  const { state, dom, ICONS } = window.SantaCifra;
  dom.songsGrid.innerHTML = '';
  window.SantaCifra.updateRepertoireDivisionCounters();

  const filtered = state.songs.filter(song => {
    const repType = song.repertoireType || 'liturgica';
    const specDay = song.specialDay || 'Missa Dominical (Tempo Comum)';

    if (state.activeRepertoireTypeFilter !== 'all' && repType !== state.activeRepertoireTypeFilter) return false;
    if (state.activeSpecialDayFilter !== 'all' && specDay !== state.activeSpecialDayFilter) return false;
    if (state.activeMomentFilter !== 'all' && song.liturgicalMoment !== state.activeMomentFilter) return false;
    if (state.activeSeasonFilter !== 'all' && song.liturgicalSeason !== state.activeSeasonFilter && song.liturgicalSeason !== 'Qualquer') return false;
    if (state.onlySimpleFilter && !song.isSimple) return false;
    if (!window.SantaCifra.matchesArtistFilter(song, state.activeArtistFilter)) return false;

    if (state.searchQuery) {
      const q = state.searchQuery.toLowerCase();
      const matchTitle = song.title.toLowerCase().includes(q);
      const matchComp = song.composer.toLowerCase().includes(q);
      const matchMom = song.liturgicalMoment.toLowerCase().includes(q);
      const matchDay = specDay.toLowerCase().includes(q);
      const matchCifra = song.cifra.toLowerCase().includes(q);
      if (!matchTitle && !matchComp && !matchMom && !matchDay && !matchCifra) return false;
    }
    return true;
  });

  const typeLabel = state.activeRepertoireTypeFilter === 'liturgica'
    ? 'músicas litúrgicas (Missa)'
    : state.activeRepertoireTypeFilter === 'popular'
      ? 'músicas populares (fora da Missa)'
      : 'músicas';

  dom.catalogResultsTitle.textContent = state.searchQuery
    ? `${filtered.length} resultados para "${state.searchQuery}"`
    : state.activeSpecialDayFilter !== 'all'
      ? `${filtered.length} ${typeLabel} • ${state.activeSpecialDayFilter}`
      : `${filtered.length} ${typeLabel}`;

  if (filtered.length === 0) {
    dom.songsGrid.innerHTML = `
      <div style="padding: 36px 20px; text-align: center; color: var(--text-muted); font-size: 0.9rem;">
        Nenhuma cifra encontrada para esta combinação de filtros. Clique em "Todo o Acervo" ou "Todos os Dias" para limpar.
      </div>
    `;
    return;
  }

  filtered.forEach(song => {
    const isFav = window.SantaCifra.isSongFavorited(song.id);
    const repType = song.repertoireType || 'liturgica';
    const isLit = repType === 'liturgica';
    const repBadgeHtml = isLit
      ? `<span class="rep-badge rep-badge-liturgica" title="Aprovada para os ritos da Santa Missa (IGMR / CNBB)">Litúrgica · Missa</span>`
      : `<span class="rep-badge rep-badge-popular" title="Música Popular / Devocional para Encontros, Retiros e Grupos de Oração (Fora da Missa)">Popular · Fora da Missa</span>`;

    const specDay = song.specialDay || '';
    const dayTagHtml = specDay && specDay !== 'Missa Dominical (Tempo Comum)' && specDay !== 'Encontros, Retiros e Grupo de Oração'
      ? `<span class="special-day-tag">${specDay}</span>`
      : '';

    const row = document.createElement('div');
    row.className = 'song-row';
    row.innerHTML = `
      <div class="song-row-main">
        <div class="song-row-title">
          <span>${song.title}</span>
          ${repBadgeHtml}
          ${dayTagHtml}
        </div>
        <div class="song-row-sub">
          <span>${song.composer} &middot; ${song.chordCount || 4} acordes</span>
          ${specDay ? `<span>&middot; ${specDay}</span>` : ''}
        </div>
      </div>
      <span class="song-row-moment">${song.liturgicalMoment}</span>
      <span class="song-row-key" title="Tom original">${song.originalKey}</span>
      <div class="song-row-actions">
        <button type="button" class="row-icon-btn btn-fav ${isFav ? 'is-fav' : ''}" title="${isFav ? 'Remover dos favoritos' : 'Favoritar'}" aria-label="Favoritar">
          ${isFav ? ICONS.heartFilled : ICONS.heartOutline}
        </button>
        <button type="button" class="row-icon-btn btn-folder" title="Salvar em pasta" aria-label="Salvar em pasta">
          ${ICONS.folderPlus}
        </button>
      </div>
    `;

    row.addEventListener('click', (e) => {
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
      state.activeQueuePlaylistId = null;
      window.SantaCifra.openSongView(song);
    });

    dom.songsGrid.appendChild(row);
  });
};

window.SantaCifra.populateArtistOptGroup = function populateArtistOptGroup() {
  const { state, dom } = window.SantaCifra;
  if (!dom.artistFilterSelect) return;
  const existingOptGroup = dom.artistFilterSelect.querySelector('optgroup');
  if (existingOptGroup) existingOptGroup.remove();

  const artistSet = new Set();
  state.songs.forEach(s => {
    (s.composer || '').split('/').forEach(part => {
      const clean = part.replace(/, scj|, cmc|, O\. de M\./gi, '').trim();
      if (clean && clean.length > 2) artistSet.add(clean);
    });
  });
  const sortedArtists = Array.from(artistSet).sort((a, b) => a.localeCompare(b, 'pt-BR'));
  const optGroup = document.createElement('optgroup');
  optGroup.label = 'Todos os Intérpretes e Fraternidades (A–Z)';
  sortedArtists.forEach(artist => {
    const opt = document.createElement('option');
    opt.value = 'exact:' + artist;
    opt.textContent = artist;
    optGroup.appendChild(opt);
  });
  dom.artistFilterSelect.appendChild(optGroup);
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

  dom.searchInput.addEventListener('input', (e) => {
    state.searchQuery = e.target.value.trim();
    dom.btnClearSearch.style.display = state.searchQuery ? 'inline-flex' : 'none';
    if (state.activeTab !== 'home') window.SantaCifra.switchTab('home');
    else {
      window.SantaCifra.renderHeroShowcase();
      window.SantaCifra.renderCatalog();
    }
  });

  dom.btnClearSearch.addEventListener('click', () => {
    dom.searchInput.value = '';
    state.searchQuery = '';
    dom.btnClearSearch.style.display = 'none';
    window.SantaCifra.renderHeroShowcase();
    window.SantaCifra.renderCatalog();
  });

  if (dom.btnOnlySimpleToggle) {
    dom.btnOnlySimpleToggle.addEventListener('click', () => {
      state.onlySimpleFilter = !state.onlySimpleFilter;
      dom.btnOnlySimpleToggle.setAttribute('aria-pressed', String(state.onlySimpleFilter));
      dom.chkOnlySimple.checked = state.onlySimpleFilter;
      window.SantaCifra.renderCatalog();
    });
  }

  window.SantaCifra.populateArtistOptGroup();
  if (dom.artistFilterSelect) {
    dom.artistFilterSelect.addEventListener('change', (e) => {
      state.activeArtistFilter = e.target.value;
      window.SantaCifra.renderCatalog();
    });
  }

  dom.seasonFilterSelect.addEventListener('change', (e) => {
    state.activeSeasonFilter = e.target.value;
    window.SantaCifra.renderCatalog();
  });

  if (dom.repertoireTypeGrid) {
    dom.repertoireTypeGrid.addEventListener('click', (e) => {
      const card = e.target.closest('.rep-type-card');
      if (!card) return;
      dom.repertoireTypeGrid.querySelectorAll('.rep-type-card').forEach(c => {
        c.classList.remove('active');
        c.setAttribute('aria-selected', 'false');
      });
      card.classList.add('active');
      card.setAttribute('aria-selected', 'true');
      state.activeRepertoireTypeFilter = card.getAttribute('data-reptype') || 'all';
      window.SantaCifra.renderCatalog();
    });
  }

  if (dom.specialDaysStrip) {
    dom.specialDaysStrip.addEventListener('click', (e) => {
      const chip = e.target.closest('.day-theme-chip');
      if (!chip) return;
      dom.specialDaysStrip.querySelectorAll('.day-theme-chip').forEach(c => c.classList.remove('active'));
      chip.classList.add('active');
      state.activeSpecialDayFilter = chip.getAttribute('data-day') || 'all';
      window.SantaCifra.renderCatalog();
    });
  }

  dom.pillsContainer.addEventListener('click', (e) => {
    const pill = e.target.closest('.pill-filter');
    if (!pill) return;
    dom.pillsContainer.querySelectorAll('.pill-filter').forEach(p => p.classList.remove('active'));
    pill.classList.add('active');
    state.activeMomentFilter = pill.getAttribute('data-moment');
    window.SantaCifra.renderCatalog();
  });
};
