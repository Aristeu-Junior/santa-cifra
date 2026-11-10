/**
 * SANTA CIFRA — Artistas: índice de autores/intérpretes e página de cada artista
 *
 * O campo `composer` de cada música pode trazer vários nomes separados por "/"
 * (ex.: "Pe. Zezinho / Hinário Litúrgico"). Cada nome vira um artista; variações
 * de grafia do mesmo nome são unificadas por normalizeArtistName.
 */
window.SantaCifra = window.SantaCifra || {};

(function () {
  const SC = window.SantaCifra;

  // Trechos do campo composer que descrevem a origem do texto, não um artista.
  const NOT_AN_ARTIST = /^(salmo|sl\b|mateus|marcos|lucas|jo[aã]o \d|melodia|f[oó]rmula|meditativo|lit[uú]rgico$|popular lit[uú]rgico|solenidade|texto oficial|repert[oó]rio|vers[aã]o|adapta[cç][aã]o|letra|m[uú]sica:)/i;

  const ALIASES = {
    'Comunidade Shalom': 'Comunidade Católica Shalom',
    'Hinário Litúrgico': 'Hinário Litúrgico CNBB',
    'Lecionário': 'Lecionário Dominical',
    'Tradicional': 'Tradicional Litúrgico',
    'Colo de Deus': 'Comunidade Colo de Deus',
    'Adoração e Vida': 'Ministério Adoração e Vida'
  };

  SC.normalizeArtistName = function normalizeArtistName(raw) {
    let name = String(raw || '')
      .replace(/\([^)]*\)/g, ' ')
      .replace(/,\s*(scj|svd|ofm|cmc|sj|o\.\s*de\s*m\.?)\.?\s*$/i, '')
      .replace(/\s+/g, ' ')
      .trim();
    name = name
      .replace(/^Pe\.?\s+/i, 'Padre ')
      .replace(/^Ir\.?\s+/i, 'Irmã ')
      .replace(/^Fr\.?\s+/i, 'Frei ')
      .replace(/^Mons\.?\s+/i, 'Monsenhor ');
    if (name.length <= 2 || NOT_AN_ARTIST.test(name)) return '';
    return ALIASES[name] || name;
  };

  /** Nomes de artista (normalizados, sem repetição) de uma música. */
  SC.getSongArtists = function getSongArtists(song) {
    const seen = new Set();
    String(song.composer || '').split('/').forEach(part => {
      const name = SC.normalizeArtistName(part);
      if (name) seen.add(name);
    });
    return Array.from(seen);
  };

  SC.buildArtistIndex = function buildArtistIndex() {
    const { state } = SC;
    const map = new Map();
    state.songs.forEach(song => {
      SC.getSongArtists(song).forEach(name => {
        if (!map.has(name)) map.set(name, []);
        map.get(name).push(song);
      });
    });
    state.artists = Array.from(map, ([name, songs]) => ({ name, songs }));
  };

  SC.getArtistSongs = function getArtistSongs(name) {
    const found = SC.state.artists.find(a => a.name === name);
    return found ? found.songs : [];
  };

  SC.artistInitials = function artistInitials(name) {
    const skip = /^(padre|irmã|frei|monsenhor|comunidade|católica|ministério|fraternidade|banda|de|da|do|dos|das|e)$/i;
    const words = String(name).split(/\s+/).filter(w => w && !skip.test(w));
    const pick = words.length ? words : String(name).split(/\s+/);
    return ((pick[0] || '?')[0] + (pick.length > 1 ? pick[pick.length - 1][0] : '')).toUpperCase();
  };

  /** HTML do campo autor: cada artista reconhecido vira um link para a página dele. */
  SC.composerHtml = function composerHtml(song) {
    const { esc } = SC;
    const parts = String(song.composer || '').split('/').map(p => p.trim()).filter(Boolean);
    if (parts.length === 0) return '';
    return parts.map(part => {
      const name = SC.normalizeArtistName(part);
      if (!name) return `<span>${esc(part)}</span>`;
      return `<button type="button" class="artist-link" data-artist="${esc(name)}" title="Ver todas as músicas de ${esc(name)}">${esc(part)}</button>`;
    }).join('<span class="sub-sep" aria-hidden="true">/</span>');
  };

  SC.openArtist = function openArtist(name) {
    const { state } = SC;
    if (!name) return;
    state.selectedArtist = name;
    SC.switchTab('artists', { history: 'push' });
    window.scrollTo({ top: 0 });
  };

  SC.renderArtistsView = function renderArtistsView() {
    const { state, dom, esc } = SC;
    const showingDetail = Boolean(state.selectedArtist);
    dom.artistsIndexView.hidden = showingDetail;
    dom.artistDetailView.hidden = !showingDetail;

    if (showingDetail) {
      const songs = SC.getArtistSongs(state.selectedArtist)
        .slice()
        .sort((a, b) => a.title.localeCompare(b.title, 'pt-BR'));
      dom.artistDetailAvatar.textContent = SC.artistInitials(state.selectedArtist);
      dom.artistDetailName.textContent = state.selectedArtist;
      dom.artistDetailCount.textContent = songs.length === 1 ? '1 música no acervo' : `${songs.length} músicas no acervo`;
      dom.artistSongsList.innerHTML = '';
      if (songs.length === 0) {
        dom.artistSongsList.innerHTML = '<div class="empty-state">Nenhuma música deste artista no acervo.</div>';
        return;
      }
      const frag = document.createDocumentFragment();
      songs.forEach(song => frag.appendChild(SC.createSongRow(song)));
      dom.artistSongsList.appendChild(frag);
      return;
    }

    const q = state.artistQuery.toLowerCase();
    const list = state.artists
      .filter(a => !q || a.name.toLowerCase().includes(q))
      .sort((a, b) => state.artistSort === 'alpha'
        ? a.name.localeCompare(b.name, 'pt-BR')
        : (b.songs.length - a.songs.length) || a.name.localeCompare(b.name, 'pt-BR'));

    dom.artistsCountText.textContent = `${state.artists.length} autores, intérpretes e comunidades. Toque em um nome para ver todas as músicas.`;
    dom.artistsGrid.innerHTML = '';

    if (list.length === 0) {
      dom.artistsGrid.innerHTML = `<div class="empty-state">Nenhum artista encontrado para "${esc(state.artistQuery)}".</div>`;
      return;
    }

    const frag = document.createDocumentFragment();
    list.forEach(artist => {
      const card = document.createElement('button');
      card.type = 'button';
      card.className = 'artist-card';
      card.dataset.artist = artist.name;
      const n = artist.songs.length;
      card.innerHTML = `
        <span class="artist-avatar" aria-hidden="true">${esc(SC.artistInitials(artist.name))}</span>
        <span class="artist-card-info">
          <span class="artist-card-name">${esc(artist.name)}</span>
          <span class="artist-card-count">${n} ${n === 1 ? 'música' : 'músicas'}</span>
        </span>
        <svg class="artist-card-chevron" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
      `;
      frag.appendChild(card);
    });
    dom.artistsGrid.appendChild(frag);
  };

  SC.bindArtistsEvents = function bindArtistsEvents() {
    const { state, dom } = SC;

    dom.tabArtistsBtn.addEventListener('click', () => {
      state.selectedArtist = null;
      SC.switchTab('artists');
      window.scrollTo({ top: 0 });
    });

    dom.artistsGrid.addEventListener('click', (e) => {
      const card = e.target.closest('.artist-card');
      if (card) SC.openArtist(card.dataset.artist);
    });

    dom.btnArtistBack.addEventListener('click', () => SC.goBack('artists'));

    dom.artistSearchInput.addEventListener('input', (e) => {
      state.artistQuery = e.target.value.trim();
      SC.renderArtistsView();
    });

    const setSort = (mode) => {
      state.artistSort = mode;
      dom.artistSortCount.classList.toggle('active', mode === 'count');
      dom.artistSortAlpha.classList.toggle('active', mode === 'alpha');
      SC.renderArtistsView();
    };
    dom.artistSortCount.addEventListener('click', () => setSort('count'));
    dom.artistSortAlpha.addEventListener('click', () => setSort('alpha'));

    // Qualquer nome de artista clicável no app (listas e leitor) abre a página dele.
    document.addEventListener('click', (e) => {
      const link = e.target.closest('.artist-link');
      if (!link) return;
      e.preventDefault();
      e.stopPropagation();
      SC.openArtist(link.dataset.artist);
    }, true);
  };
})();
