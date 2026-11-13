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

  // Trechos do campo composer que descrevem a origem bíblica/litúrgica do texto ou créditos genéricos, não um artista.
  const NOT_AN_ARTIST = /^(salmo|sl\b|isa[ií]as|mateus|marcos|lucas|jo[aã]o\b|1\s*jo[aã]o|apocalipse|ef[eé]sios|filipenses|romanos|g[eê]nesis|[eê]xodo|c[aâ]ntico\b|melodia|f[oó]rmula|meditativo|lit[uú]rgico$|liturgia\b|popular lit[uú]rgico|solenidade|texto oficial|repert[oó]rio|vers[aã]o|adapta[cç][aã]o|letra|m[uú]sica:|padre$|adora[cç][aã]o$|comunh[aã]o$|ofert[oó]rio$|devocional$|ora[cç][aã]o\b|sequ[eê]ncia\b|ant[ií]fona\b|hino\b|hin[aá]rio (de|do|da|eucar[ií]stico|mariano|paroquial|popular|tradicional)|tradi[cç][aã]o\b|tradicional\b|comunh[aã]o e salmo$|jmj$|rog[eé]rio$|j[uú]lio$)/i;

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
    'Silvio Milanez': 'Padre Sílvio Milanez',
    'Padre Silvio Milanez': 'Padre Sílvio Milanez',
    'Lúcio Floro': 'Padre Lúcio Floro',
    'Padre Antonio Maria': 'Padre Antônio Maria',
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
    'Marcelinho': 'Anjos de Resgate',
    'Colo de Deus': 'Comunidade Colo de Deus',
    'Comunidade Católica Colo de Deus': 'Comunidade Colo de Deus',
    'Adoração e Vida': 'Ministério Adoração e Vida',
    'Amor e Adoração': 'Ministério Amor e Adoração',
    'Toca de Assis': 'Fraternidade Toca de Assis',
    'Obra de Maria': 'Comunidade Obra de Maria',
    'Doce Mãe de Deus': 'Comunidade Doce Mãe de Deus',
    'Comunidade Católica Doce Mãe de Deus': 'Comunidade Doce Mãe de Deus',
    'Aliança de Misericórdia': 'Comunidade Aliança de Misericórdia',
    'Comunidade Católica Aliança de Misericórdia': 'Comunidade Aliança de Misericórdia',
    'Comunidade Católica Recado': 'Comunidade Recado',
    'Recado': 'Comunidade Recado',
    'Missão Maria de Nazaré': 'Comunidade Missão Maria de Nazaré',
    'Comunidade Católica Missão Maria de Nazaré': 'Comunidade Missão Maria de Nazaré',
    'Ceremonya': 'Banda Ceremonya',
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
      .trim()
      .replace(/^(Int[eé]rprete|M[uú]sica|Letra|Melodia|Voz|Arranjo|Adapta[cç][aã]o):\s*/i, '')
      .replace(/\([^)]*\)/g, ' ')
      .replace(/,\s*(scj|svd|ofm|cmc|cm|sj|fsp|ep|sdb|cssr|o\.\s*de\s*m\.?)\.?\s*$/i, '')
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
    if (/^Hin[aá]rio Lit[uú]rgico\b/i.test(name)) {
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
    ['thiago brado', 'thiago-brado'],
    ['brado', 'thiago-brado'],
    ['dominus', 'banda-dominus'],
    ['banda dom', 'banda-dom'],
    ['arcanjos', 'banda-arkanjos'],
    ['arkanjos', 'banda-arkanjos'],
    ['danilo casemiro', 'danilo-casemiro'],
    ['casemiro', 'casemiro-v-nogueira'],
    ['cassimiro', 'juninho-cassimiro'],
    ['gilson celerino', 'gilson-celerino'],
    ['gilson', 'frei-gilson'],
    ['som do monte', 'frei-gilson'],
    ['colo de deus', 'colo-de-deus'],
    ['kelly patricia', 'irma-kelly-patricia'],
    ['hesed', 'irma-kelly-patricia'],
    ['fabio de melo', 'padre-fabio-de-melo'],
    ['celina', 'celina-borges'],
    ['adriana', 'adriana-arydes'],
    ['tony allysson', 'tony-allysson'],
    ['diego fernandes', 'diego-fernandes'],
    ['davidson', 'davidson-silva'],
    ['dunga', 'dunga'],
    ['manzotti', 'padre-reginaldo-manzotti'],
    ['antonio maria', 'padre-antonio-maria'],
    ['joaozinho', 'padre-joaozinho'],
    ['kolling', 'irma-miria-kolling'],
    ['miria', 'irma-miria-kolling'],
    ['ze vicente', 'ze-vicente'],
    ['ziza', 'ziza-fernandes'],
    ['walmir', 'walmir-alencar'],
    ['vida reluz', 'vida-reluz'],
    ['adoracao e vida', 'adoracao-e-vida'],
    ['amor e adoracao', 'amor-e-adoracao'],
    ['anjos de resgate', 'anjos-de-resgate'],
    ['shalom', 'comunidade-shalom'],
    ['cancao nova', 'cancao-nova'],
    ['eliana ribeiro', 'eliana-ribeiro'],
    ['nelsinho', 'nelsinho-correa'],
    ['eugenio', 'eugenio-jorge'],
    ['suely', 'suely-facanha'],
    ['catequese', 'catequese-catolica'],
    ['campanha da fraternidade', 'campanha-da-fraternidade'],
    ['toca de assis', 'fraternidade-toca-de-assis'],
    ['joao paulo ii', 'fraternidade-sjpii'],
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
    ['alianca', 'alianca-de-misericordia'],
    ['ana gabriela', 'ana-gabriela'],
    ['ana paula', 'irma-ana-paula'],
    ['fabreti', 'frei-fabreti'],
    ['turra', 'frei-luiz-turra'],
    ['farias', 'waldeci-farias'],
    ['tomas', 'sao-tomas-de-aquino'],
    ['adhemar', 'adhemar-de-campos'],
    ['alvaro e daniel', 'alvaro-e-daniel'],
    ['ceremonya', 'banda-ceremonya'],
    ['romanos', 'banda-romanos'],
    ['gregoriano', 'canto-gregoriano'],
    ['carlos papae', 'carlos-papae'],
    ['cesareo', 'cesareo-gabarain'],
    ['gabarain', 'cesareo-gabarain'],
    ['doce mae de deus', 'comunidade-doce-mae-de-deus'],
    ['mar a dentro', 'comunidade-mar-a-dentro'],
    ['obra de maria', 'comunidade-obra-de-maria'],
    ['palavra viva', 'comunidade-palavra-viva'],
    ['pantokrator', 'comunidade-pantokrator'],
    ['sementes do verbo', 'comunidade-sementes-do-verbo'],
    ['palestrina', 'coral-palestrina'],
    ['dalvimar', 'dalvimar-gallo'],
    ['discipulos de emaus', 'discipulos-de-emaus'],
    ['carlos alberto navarro', 'dom-carlos-alberto-navarro'],
    ['navarro', 'dom-carlos-alberto-navarro'],
    ['elizeu gomes', 'elizeu-gomes'],
    ['emanuel stenio', 'emanuel-stenio'],
    ['eurivaldo', 'eurivaldo-silva-ferreira'],
    ['familia franciscana', 'familia-franciscana'],
    ['fatima souza', 'fatima-souza'],
    ['flavio vitor', 'flavio-vitor-jr'],
    ['franz gruber', 'franz-gruber'],
    ['arca de maria', 'fraternidade-arca-de-maria'],
    ['casa de maria', 'fraternidade-casa-de-maria'],
    ['o caminho', 'fraternidade-o-caminho'],
    ['frederico cruz', 'frederico-cruz'],
    ['decio pacheco', 'frei-decio-pacheco'],
    ['telles ramon', 'frei-telles-ramon'],
    ['frei wilson', 'frei-wilson'],
    ['guilherme de sa', 'guilherme-de-sa'],
    ['guilherme kerr', 'guilherme-kerr'],
    ['guilherme pontes', 'guilherme-pontes'],
    ['gustavo osterno', 'gustavo-osterno'],
    ['custodia cardoso', 'irma-custodia-cardoso'],
    ['ines de jesus', 'irma-ines-de-jesus'],
    ['maria raquel', 'irma-maria-raquel'],
    ['zelia garcia', 'irma-zelia-garcia'],
    ['italo villar', 'italo-villar'],
    ['jorge guedes', 'jorge-guedes'],
    ['jose acacio', 'jose-acacio-santana'],
    ['karen lafferty', 'karen-lafferty'],
    ['kleber lucas', 'kleber-lucas'],
    ['laercio oliveira', 'laercio-oliveira'],
    ['laura salvador', 'laura-salvador'],
    ['leo rabello', 'leo-rabello'],
    ['luciana antunes', 'luciana-antunes'],
    ['espinosa', 'm-espinosa'],
    ['todeschini', 'marcio-todeschini'],
    ['marco frisina', 'marco-frisina'],
    ['mammoli', 'marco-mammoli'],
    ['maria do rosario', 'maria-do-rosario'],
    ['mayara marques', 'mayara-marques'],
    ['koinonya', 'ministerio-koinonya'],
    ['maria de nazare', 'missao-maria-de-nazare'],
    ['mensagem brasil', 'missao-mensagem-brasil'],
    ['mundo novo', 'missao-mundo-novo'],
    ['movimento ejc', 'movimento-ejc'],
    ['nadia santolli', 'nadia-santolli'],
    ['nelson monteiro', 'nelson-monteiro-da-mota'],
    ['nicodemos', 'nicodemos-costa'],
    ['olivia ferreira', 'olivia-ferreira'],
    ['zandona', 'padre-adriano-zandona'],
    ['chrystian shankar', 'padre-chrystian-shankar'],
    ['cleidimar', 'padre-cleidimar'],
    ['delton filho', 'padre-delton-filho'],
    ['evaldo cesar', 'padre-evaldo-cesar'],
    ['dal pozzo', 'padre-ezequiel-dal-pozzo'],
    ['hewaldo', 'padre-hewaldo-trevisan'],
    ['irala', 'padre-irala'],
    ['joao carlos', 'padre-joao-carlos'],
    ['jose candido', 'padre-jose-candido'],
    ['joseph mohr', 'padre-joseph-mohr'],
    ['juarez de castro', 'padre-juarez-de-castro'],
    ['lindberg', 'padre-lindberg-pires'],
    ['lucas de paula', 'padre-lucas-de-paula'],
    ['lucien deiss', 'padre-lucien-deiss'],
    ['marcos rogerio', 'padre-marcos-rogerio'],
    ['ney brasil', 'padre-ney-brasil'],
    ['rodrigo natal', 'padre-rodrigo-natal'],
    ['milanez', 'padre-silvio-milanez'],
    ['wallison', 'padre-wallison-rodrigues'],
    ['inocencio', 'papa-inocencio-iii'],
    ['pitter di laura', 'pitter-di-laura'],
    ['quatro por um', 'quatro-por-um'],
    ['rabano mauro', 'rabano-mauro'],
    ['rafael morel', 'rafael-morel'],
    ['raquel carpenter', 'raquel-carpenter'],
    ['regis danese', 'regis-danese'],
    ['ricardo sa', 'ricardo-sa'],
    ['malvezzi', 'roberto-malvezzi'],
    ['rogerinha', 'rogerinha-moreira'],
    ['salette', 'salette-ferreira'],
    ['teresa d', 'santa-teresa-davila'],
    ['santa teresa', 'santa-teresa-davila'],
    ['ambrosio', 'santo-ambrosio-agostinho'],
    ['inacio de loyola', 'santo-inacio-de-loyola'],
    ['thiago tome', 'thiago-tome'],
    ['venancio fortunato', 'venancio-fortunato'],
    ['wipo', 'wipo-de-borgonha'],
    ['yuri costa', 'yuri-costa'],
    ['cnbb', 'hinario-liturgico-cnbb'],
    ['hinario', 'hinario-liturgico-cnbb'],
    ['liturgic', 'hinario-liturgico-cnbb'],
    ['tradicional', 'hinario-liturgico-cnbb']
  ];

  function foldKey(str) {
    return String(str || '')
      .normalize('NFD')
      .replace(/[\u0300-\u036f]/g, '')
      .toLowerCase();
  }

  /**
   * Ordena as músicas de um artista da mais famosa para a menos famosa.
   * 1) as listadas em SC.ARTIST_HITS (artist-hits.js), na ordem da lista;
   * 2) as demais, por SC.getSongPopularityScore (mais usadas, super hits, nota litúrgica);
   * 3) empate: ordem original do catálogo.
   */
  SC.sortArtistSongsByFame = function sortArtistSongsByFame(name, songs) {
    const hits = (SC.ARTIST_HITS && SC.ARTIST_HITS[name]) || [];
    const scoreFn = SC.getSongPopularityScore || (() => 0);
    const rankOf = (song) => {
      const t = foldKey(song.title);
      for (let i = 0; i < hits.length; i++) {
        if (t.includes(hits[i])) return i;
      }
      return hits.length;
    };
    return songs
      .map((song, idx) => ({ song, idx, rank: rankOf(song), score: scoreFn(song) }))
      .sort((a, b) => (a.rank - b.rank) || (b.score - a.score) || (a.idx - b.idx))
      .map(x => x.song);
  };

  function findArtistSlug(text) {
    const raw = foldKey(text);
    for (let i = 0; i < ARTIST_KEYWORD_MAP.length; i++) {
      if (raw.includes(ARTIST_KEYWORD_MAP[i][0])) {
        return ARTIST_KEYWORD_MAP[i][1];
      }
    }
    return '';
  }

  SC.getArtistCoverUrl = function getArtistCoverUrl(name) {
    const slug = findArtistSlug(name);
    return slug ? `assets/artists/${slug}.jpg` : 'assets/artists/default-cover.jpg';
  };

  SC.getSongCoverUrl = function getSongCoverUrl(song) {
    if (!song) return 'assets/artists/default-cover.jpg';
    const slug = findArtistSlug(song.composer);
    if (slug) return `assets/artists/${slug}.jpg`;
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
    state.artistSongSort = 'fame';
    SC.switchTab('artists', { history: 'push' });
    window.scrollTo({ top: 0 });
  };

  SC.renderArtistsView = function renderArtistsView() {
    const { state, dom, esc } = SC;
    const showingDetail = Boolean(state.selectedArtist);
    dom.artistsIndexView.hidden = showingDetail;
    dom.artistDetailView.hidden = !showingDetail;

    if (showingDetail) {
      const artistSongs = SC.getArtistSongs(state.selectedArtist).slice();
      const songs = state.artistSongSort === 'alpha'
        ? artistSongs.sort((a, b) => a.title.localeCompare(b.title, 'pt-BR'))
        : SC.sortArtistSongsByFame(state.selectedArtist, artistSongs);
      dom.artistSongSortFame.classList.toggle('active', state.artistSongSort !== 'alpha');
      dom.artistSongSortAlpha.classList.toggle('active', state.artistSongSort === 'alpha');
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

    const setSongSort = (mode) => {
      state.artistSongSort = mode;
      SC.renderArtistsView();
    };
    dom.artistSongSortFame.addEventListener('click', () => setSongSort('fame'));
    dom.artistSongSortAlpha.addEventListener('click', () => setSongSort('alpha'));

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
