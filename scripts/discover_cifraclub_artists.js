const fs = require('fs');
const path = require('path');
const vm = require('vm');

function loadAppData() {
  const ctx = {
    window: { SantaCifra: { dom: {}, state: { activeTab: 'catalog', songs: [] }, esc: s => String(s) }, location: { hash: '' } },
    document: { getElementById: () => null, querySelectorAll: () => [], createElement: () => ({}) },
    console
  };
  vm.createContext(ctx);
  for (const f of [
    'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
    'santa-cifra/js/catalog/catalog-entrada-final.js',
    'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
    'santa-cifra/js/catalog/catalog-adoracao-comunidades.js',
    'santa-cifra/js/modules/artists-view.js'
  ]) {
    vm.runInContext(fs.readFileSync(f, 'utf8'), ctx);
  }
  const SC = ctx.window.SantaCifra;
  SC.state.songs = Object.keys(ctx.window)
    .filter(k => k.startsWith('SongsCatalog'))
    .flatMap(k => ctx.window[k] || []);
  SC.buildArtistIndex();
  return { SC, songs: SC.state.songs, artists: SC.state.artists };
}

function norm(s) {
  return String(s || '')
    .toLowerCase()
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .replace(/\bpe\.?\s+/g, 'padre ')
    .replace(/\bir\.?\s+/g, 'irma ')
    .replace(/[^a-z0-9\s]/g, ' ')
    .replace(/\s+/g, ' ')
    .trim();
}

const SLUG_OVERRIDES = {
  'Frei Gilson': 'frei-gilson',
  'Padre Fábio de Melo': 'pe-fabio-de-melo',
  'Irmã Miria T. Kolling': 'irma-miria-therezinha-kolling',
  'Padre Joãozinho': 'pe-joaozinho',
  'Padre Zeca': 'padre-zeca',
  'Padre Antônio Maria': 'padre-antonio-maria',
  'Padre Reginaldo Manzotti': 'padre-reginaldo-manzotti',
  'Padre Reginaldo Veloso': 'reginaldo-veloso',
  'Padre Juarez de Castro': 'padre-juarez-de-castro',
  'Padre Ezequiel Dal Pozzo': 'padre-ezequiel-dal-pozzo',
  'Padre Alessandro Campos': 'padre-alessandro-campos',
  'Padre Marcelo Rossi': 'padre-marcelo-rossi',
  'Padre Chrystian Shankar': 'padre-chrystian-shankar',
  'Padre Hewaldo Trevisan': 'padre-hewaldo-trevisan',
  'Padre João Carlos': 'padre-joao-carlos',
  'Padre Adriano Zandoná': 'padre-adriano-zandona',
  'Padre Rodrigo Natal': 'padre-rodrigo-natal',
  'Padre Delton Filho': 'pe-delton-filho',
  'Padre Wallison Rodrigues': 'wallison-rodrigues',
  'Padre Cleidimar': 'padre-cleidimar-moreira',
  'Comunidade Aliança de Misericórdia': 'alianca-de-misericordia',
  'Comunidade Católica Shalom': 'comunidade-catolica-shalom',
  'Comunidade Católica Colo de Deus': 'colo-de-deus',
  'Comunidade Católica Pantokrator': 'comunidade-catolica-pantokrator',
  'Comunidade Católica Palavra Viva': 'comunidade-catolica-palavra-viva',
  'Comunidade Católica Mar a Dentro': 'comunidade-catolica-mar-a-dentro',
  'Comunidade Católica Sementes do Verbo': 'comunidade-catolica-sementes-do-verbo',
  'Comunidade Obra de Maria': 'obra-de-maria',
  'Comunidade Doce Mãe de Deus': 'comunidade-doce-mae-de-deus',
  'Comunidade Missão Maria de Nazaré': 'comunidade-catolica-missao-maria-de-nazare',
  'Comunidade Recado': 'comunidade-recado',
  'Comunidade de Taizé': 'taize',
  'Ministério Adoração e Vida': 'ministerio-adoracao-vida',
  'Ministério Amor e Adoração': 'amor-e-adoracao',
  'Ministério Koinonya': 'ministerio-koinonya-de-louvor',
  'Ministério Missão Mensagem Brasil': 'mensagem-brasil',
  'Banda Ceremonya': 'ceremonya',
  'Fraternidade Toca de Assis': 'toca-de-assis',
  'Fraternidade São João Paulo II': 'fraternidade-sao-joao-paulo-ii',
  'Fraternidade O Caminho': 'fraternidade-caminho',
  'Fraternidade Arca de Maria': 'fraternidade-arca-de-maria',
  'Fraternidade Casa de Maria': 'casa-de-maria',
  'Irmã Miria T. Kolling': 'irma-miria-t-kolling',
  'Irmã Kelly Patrícia': 'kelly-patricia',
  'Irmã Ana Paula': 'irma-ana-paula',
  'Irmã Maria Raquel': 'irma-maria-raquel',
  'Diácono Nelsinho Corrêa': 'nelsinho-correa',
  'Som do Monte': 'som-do-monte',
  'Dom Carlos Alberto Navarro': 'dom-carlos-alberto-navarro',
  'Campanha da Fraternidade (CNBB)': 'campanha-da-fraternidade',
  'Hinário Litúrgico CNBB': 'cnbb'
};

function isGoodArtistMatch(targetName, candidateTxt) {
  const a = norm(targetName);
  const b = norm(candidateTxt);
  if (!a || !b) return false;
  if (a === b) return true;
  if (b.includes(a) || a.includes(b)) return true;
  const aWords = a.split(' ').filter(w => w.length > 2 && !/^(padre|irma|frei|banda|comunidade|catolica|ministerio|fraternidade|missao|diacono)$/.test(w));
  const bWords = b.split(' ').filter(w => w.length > 2);
  if (!aWords.length) return false;
  const hits = aWords.filter(w => bWords.includes(w));
  return hits.length === aWords.length;
}

const sleep = ms => new Promise(r => setTimeout(r, ms));

async function fetchWithBackoff(url, maxRetries = 4) {
  for (let attempt = 0; attempt <= maxRetries; attempt++) {
    try {
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36' }
      });
      if (res.status === 429 || res.status === 403) {
        const waitMs = (attempt + 1) * 20000;
        console.log(`  [${res.status}] Rate-limited on ${url}, waiting ${waitMs / 1000}s...`);
        await sleep(waitMs);
        continue;
      }
      return res;
    } catch {
      await sleep(3000);
    }
  }
  return null;
}

async function resolveArtistSlug(name) {
  if (SLUG_OVERRIDES[name]) return SLUG_OVERRIDES[name];
  const q = encodeURIComponent(name);
  try {
    const res = await fetchWithBackoff(`https://solr.sscdn.co/cc/sug/?q=${q}`);
    if (!res || !res.ok) return null;
    const text = await res.text();
    const m = text.match(/suggest_callback\(([\s\S]*)\);?\s*$/);
    if (!m) return null;
    const data = JSON.parse(m[1]);
    const docs = (data.response && data.response.docs) || [];
    const artistDoc = docs.find(d => d.t === '1' && d.dns && isGoodArtistMatch(name, d.txt || d.art));
    return artistDoc ? artistDoc.dns : null;
  } catch {
    return null;
  }
}

async function fetchArtistSongs(slug) {
  const url = `https://www.cifraclub.com/${slug}/musicas.html`;
  try {
    const res = await fetchWithBackoff(url);
    if (!res || !res.ok) return [];
    const html = await res.text();
    const re = new RegExp(`href="(\\/${slug}\\/([a-z0-9-]+)\\/)"`, 'g');
    const seen = new Set();
    const out = [];
    let m;
    while ((m = re.exec(html)) !== null) {
      const pathStr = m[1];
      const songSlug = m[2];
      if (/^(fotos|videos|discografia|noticias|musicas|albuns|cifras|letras)$/.test(songSlug)) continue;
      if (seen.has(pathStr)) continue;
      seen.add(pathStr);
      out.push({ path: pathStr, songSlug });
    }
    return out;
  } catch {
    return [];
  }
}

async function main() {
  const { artists } = loadAppData();
  const targets = artists
    .filter(a => a.songs.length < 10)
    .map(a => ({ name: a.name, currentCount: a.songs.length }));
  if (!targets.some(t => t.name === 'Frei Gilson')) {
    const fg = artists.find(a => a.name === 'Frei Gilson');
    targets.unshift({ name: 'Frei Gilson', currentCount: fg ? fg.songs.length : 0 });
  }

  const outPath = path.join(__dirname, 'cifraclub_discovery.json');
  const prevByName = new Map();
  if (fs.existsSync(outPath)) {
    try {
      const prev = JSON.parse(fs.readFileSync(outPath, 'utf8'));
      for (const r of [...(prev.matched || []), ...(prev.unmatched || [])]) {
        if (r && r.name && r.songs && r.songs.length > 0) prevByName.set(r.name, r);
      }
    } catch {}
  }

  console.log(`Discovering Cifra Club pages for ${targets.length} artists (resuming ${prevByName.size} already found)...`);
  const results = [];
  for (const cur of targets) {
    if (prevByName.has(cur.name)) {
      results.push(prevByName.get(cur.name));
      continue;
    }
    const slug = await resolveArtistSlug(cur.name);
    await sleep(600);
    if (!slug) {
      results.push({ ...cur, slug: null, songs: [] });
    } else {
      const list = await fetchArtistSongs(slug);
      results.push({ ...cur, slug, songs: list });
      await sleep(900);
    }
    const matched = results.filter(r => r.slug && r.songs.length > 0);
    const unmatched = results.filter(r => !r.slug || r.songs.length === 0);
    fs.writeFileSync(outPath, JSON.stringify({ generatedAt: new Date().toISOString(), matched, unmatched }, null, 2));
  }

  const matched = results.filter(r => r.slug && r.songs.length > 0);
  const unmatched = results.filter(r => !r.slug || r.songs.length === 0);
  const totalSongsFound = matched.reduce((acc, r) => acc + r.songs.length, 0);
  console.log(`Matched artists with songs: ${matched.length}/${targets.length}`);
  console.log(`Unmatched/empty artists: ${unmatched.length}`);
  console.log(`Total song URLs discovered: ${totalSongsFound}`);
}

main();
