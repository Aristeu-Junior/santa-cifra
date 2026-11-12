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

  // Trechos do campo composer que descrevem a origem bíblica/litúrgica do texto, não um artista.
  const NOT_AN_ARTIST = /^(salmo|sl\b|isa[ií]as|mateus|marcos|lucas|jo[aã]o\b|1\s*jo[aã]o|apocalipse|ef[eé]sios|filipenses|romanos|g[eê]nesis|[eê]xodo|c[aâ]ntico\b|melodia|f[oó]rmula|meditativo|lit[uú]rgico$|liturgia\b|popular lit[uú]rgico|solenidade|texto oficial|repert[oó]rio|vers[aã]o|adapta[cç][aã]o|letra|m[uú]sica:|padre$|adora[cç][aã]o$|comunh[aã]o$|ofert[oó]rio$|devocional$|ora[cç][aã]o\b|sequ[eê]ncia\b|ant[ií]fona\b|hino\b|hin[aá]rio (de|do|da|eucar[ií]stico|mariano|paroquial|popular|tradicional)|tradi[cç][aã]o\b|tradicional\b)/i;

  const ALIASES = {
    'Padre Jonas Abib': 'Monsenhor Jonas Abib',
    'Jonas Abib': 'Monsenhor Jonas Abib',
    'Reginaldo Veloso': 'Padre Reginaldo Veloso',
    'Lindberg Pires': 'Padre Lindberg Pires',
    'Padre José Cândido da Silva': 'Padre José Cândido',
    'José Cândido': 'Padre José Cândido',
    'José Weber': 'Padre José Weber',
    'Jocy Rodrigues': 'Padre Jocy Rodrigues',
    'Ney Brasil': 'Padre Ney Brasil',
    'Ney Brasil Pereira': 'Padre Ney Brasil',
    'Padre Ney Brasil Pereira': 'Padre Ney Brasil',
    'Silvio Milanez': 'Padre Silvio Milanez',
    'Lúcio Floro': 'Padre Lúcio Floro',
    'Nelsinho Corrêa': 'Diácono Nelsinho Corrêa',
    'Padre Nelsinho Corrêa': 'Diácono Nelsinho Corrêa',
    'Irmã Miria Kolling': 'Irmã Miria T. Kolling',
    'Irmã Míria T. Kolling': 'Irmã Miria T. Kolling',
    'Irmã Míria Kolling': 'Irmã Miria T. Kolling',
    'Miria T. Kolling': 'Irmã Miria T. Kolling',
    'Santo Tomás de Aquino': 'São Tomás de Aquino',
    'São Francisco': 'São Francisco de Assis',
    'Taizé': 'Comunidade de Taizé',
    'Taizé & Liturgia': 'Comunidade de Taizé',
    'Comunidade Canção Nova': 'Canção Nova',
    'Ministério Canção Nova': 'Canção Nova',
    'Comunidade Shalom': 'Comunidade Católica Shalom',
    'Missionário Shalom': 'Comunidade Católica Shalom',
    'Shalom': 'Comunidade Católica Shalom',
    'Banda Arkanjos': 'Banda Arkanjos',
    'Banda Arcanjos': 'Banda Arkanjos',
    'Arkanjos': 'Banda Arkanjos',
    'Arcanjos': 'Banda Arkanjos',
    'Juninho Cassimiro': 'Juninho Cassimiro',
    'Colo de Deus': 'Comunidade Colo de Deus',
    'Adoração e Vida': 'Ministério Adoração e Vida',
    'Amor e Adoração': 'Ministério Amor e Adoração',
    'Toca de Assis': 'Fraternidade Toca de Assis',
    'Obra de Maria': 'Comunidade Obra de Maria',
    'Doce Mãe de Deus': 'Comunidade Doce Mãe de Deus',
    'Catequese': 'Catequese Católica',
    'Pastoral Catequética': 'Catequese Católica',
    'Catequese Infantil': 'Catequese Católica',
    'Hinário Litúrgico': 'Hinário Litúrgico CNBB',
    'Hinário CNBB': 'Hinário Litúrgico CNBB',
    'CNBB': 'Hinário Litúrgico CNBB',
    'Lecionário': 'Lecionário Dominical'
  };

  SC.normalizeArtistName = function normalizeArtistName(raw) {
    let name = String(raw || '')
      .replace(/\([^)]*\)/g, ' ')
      .replace(/,\s*(scj|svd|ofm|cmc|sj|fsp|ep|sdb|cssr|o\.\s*de\s*m\.?)\.?\s*$/i, '')
      .replace(/\s+/g, ' ')
      .trim();
    name = name
      .replace(/^Pe\.?\s+/i, 'Padre ')
      .replace(/^Ir\.?\s+/i, 'Irmã ')
      .replace(/^Fr\.?\s+/i, 'Frei ')
      .replace(/^Mons\.?\s+/i, 'Monsenhor ')
      .replace(/^Di[aá]c\.?\s+/i, 'Diácono ');
    if (/^(CNBB\s*-\s*)?Campanha da Fraternidade\b/i.test(name)) {
      return 'Campanha da Fraternidade (CNBB)';
    }
    if (/^Hin[aá]rio Lit[uú]rgico CNBB\b/i.test(name)) {
      return 'Hinário Litúrgico CNBB';
    }
    if (/^Lecion[aá]rio\b/i.test(name)) {
      return 'Lecionário Dominical';
    }
    if (/^Missal Romano\b/i.test(name)) {
      return 'Missal Romano';
    }
    if (name.length <= 2 || NOT_AN_ARTIST.test(name)) return '';
    return ALIASES[name] || name;
  };

  const ARTIST_KEYWORD_MAP = [
    ['zezinho', 'padre-zezinho'],
    ['marcelo rossi', 'padre-marcelo-rossi'],
    ['jonas abib', 'monsenhor-jonas-abib'],
    ['rosa de saron', 'rosa-de-saron'],
    ['brado', 'thiago-brado'],
    ['banda dom', 'banda-dom'],
    ['arcanjos', 'banda-arcanjos'],
    ['arkanjos', 'banda-arkanjos'],
    ['cassimiro', 'juninho-cassimiro'],
    ['gilson', 'frei-gilson'],
    ['som do monte', 'frei-gilson'],
    ['colo de deus', 'colo-de-deus'],
    ['kelly patrícia', 'irma-kelly-patricia'],
    ['hesed', 'irma-kelly-patricia'],
    ['fábio de melo', 'padre-fabio-de-melo'],
    ['fabio de melo', 'padre-fabio-de-melo'],
    ['celina', 'celina-borges'],
    ['adriana', 'adriana-arydes'],
    ['tony allysson', 'tony-allysson'],
    ['diego fernandes', 'diego-fernandes'],
    ['davidson', 'davidson-silva'],
    ['dunga', 'dunga'],
    ['manzotti', 'padre-reginaldo-manzotti'],
    ['antônio maria', 'padre-antonio-maria'],
    ['antonio maria', 'padre-antonio-maria'],
    ['joãozinho', 'padre-joaozinho'],
    ['joaozinho', 'padre-joaozinho'],
    ['kolling', 'irma-miria-kolling'],
    ['míria', 'irma-miria-kolling'],
    ['miria', 'irma-miria-kolling'],
    ['zé vicente', 'ze-vicente'],
    ['ze vicente', 'ze-vicente'],
    ['ziza', 'ziza-fernandes'],
    ['dominus', 'banda-dominus'],
    ['walmir', 'walmir-alencar'],
    ['vida reluz', 'vida-reluz'],
    ['adoração e vida', 'adoracao-e-vida'],
    ['adoracao e vida', 'adoracao-e-vida'],
    ['anjos de resgate', 'anjos-de-resgate'],
    ['shalom', 'comunidade-shalom'],
    ['canção nova', 'cancao-nova'],
    ['cancao nova', 'cancao-nova'],
    ['eliana ribeiro', 'eliana-ribeiro'],
    ['nelsinho', 'nelsinho-correa'],
    ['eugênio', 'eugenio-jorge'],
    ['eugenio', 'eugenio-jorge'],
    ['suely', 'suely-facanha'],
    ['catequese', 'catequese-catolica'],
    ['campanha da fraternidade', 'campanha-da-fraternidade'],
    ['toca de assis', 'fraternidade-toca-de-assis'],
    ['joão paulo ii', 'fraternidade-sjpii'],
    ['taizé', 'comunidade-taize'],
    ['taize', 'comunidade-taize'],
    ['weber', 'padre-jose-weber'],
    ['lecion', 'lecionario-dominical'],
    ['missal', 'missal-romano'],
    ['veloso', 'padre-reginaldo-veloso'],
    ['zeca', 'padre-zeca'],
    ['alessandro campos', 'padre-alessandro-campos'],
    ['valverde', 'martin-valverde'],
    ['biondini', 'eros-biondini'],
    ['recado', 'comunidade-recado'],
    ['aliança', 'alianca-de-misericordia'],
    ['alianca', 'alianca-de-misericordia'],
    ['ana paula', 'irma-ana-paula'],
    ['fabreti', 'frei-fabreti'],
    ['turra', 'frei-luiz-turra'],
    ['farias', 'waldeci-farias'],
    ['tomás', 'sao-tomas-de-aquino'],
    ['tomas', 'sao-tomas-de-aquino'],
    ['cnbb', 'hinario-liturgico-cnbb'],
    ['hinário', 'hinario-liturgico-cnbb'],
    ['hinario', 'hinario-liturgico-cnbb'],
    ['litúrgic', 'hinario-liturgico-cnbb'],
    ['liturgic', 'hinario-liturgico-cnbb'],
    ['tradicional', 'hinario-liturgico-cnbb']
  ];

  SC.getArtistCoverUrl = function getArtistCoverUrl(name) {
    const raw = String(name || '').toLowerCase();
    for (let i = 0; i < ARTIST_KEYWORD_MAP.length; i++) {
      if (raw.includes(ARTIST_KEYWORD_MAP[i][0])) {
        return `assets/artists/${ARTIST_KEYWORD_MAP[i][1]}.jpg`;
      }
    }
    return 'assets/artists/default-cover.jpg';
  };

  SC.getSongCoverUrl = function getSongCoverUrl(song) {
    if (!song) return 'assets/artists/default-cover.jpg';
    const comp = String(song.composer || '').toLowerCase();
    for (let i = 0; i < ARTIST_KEYWORD_MAP.length; i++) {
      if (comp.includes(ARTIST_KEYWORD_MAP[i][0])) {
        return `assets/artists/${ARTIST_KEYWORD_MAP[i][1]}.jpg`;
      }
    }
    if (song.liturgicalMoment && (song.repertoireType || 'liturgica') === 'liturgica') {
      return 'assets/artists/hinario-liturgico-cnbb.jpg';
    }
    return 'assets/artists/default-cover.jpg';
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
      const coverUrl = SC.getArtistCoverUrl(state.selectedArtist);
      dom.artistDetailAvatar.innerHTML = `
        <img class="artist-avatar-img" src="${coverUrl}" alt="" onerror="this.remove()">
        <span class="artist-avatar-text">${esc(SC.artistInitials(state.selectedArtist))}</span>
      `;
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
      const coverUrl = SC.getArtistCoverUrl(artist.name);
      card.innerHTML = `
        <span class="artist-avatar" aria-hidden="true">
          <img class="artist-avatar-img" src="${coverUrl}" alt="" loading="lazy" onerror="this.remove()">
          <span class="artist-avatar-text">${esc(SC.artistInitials(artist.name))}</span>
        </span>
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
