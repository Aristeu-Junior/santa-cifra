const fs = require('fs');
global.window = {};

function loadCatalog(file, varName) {
  const content = fs.readFileSync(file, 'utf8');
  eval(content);
  return global.window[varName.replace('window.', '')];
}

const ord = loadCatalog('santa-cifra/js/catalog/catalog-ordinario-salmos.js', 'window.SongsCatalogOrdinario');
const ent = loadCatalog('santa-cifra/js/catalog/catalog-entrada-final.js', 'window.SongsCatalogEntradaFinal');
const ofe = loadCatalog('santa-cifra/js/catalog/catalog-ofertorio-comunhao.js', 'window.SongsCatalogOfertorioComunhao');
const ado = loadCatalog('santa-cifra/js/catalog/catalog-adoracao-comunidades.js', 'window.SongsCatalogAdoracaoComunidades');

const all = [...ord, ...ent, ...ofe, ...ado];

console.log('=== AUDIT RESULTS FOR 4 CATALOGS ===');
console.log('Total songs:', all.length);

// 1. Check known boilerplate phrases
const boilerplatePhrases = [
  'Espírito Santo, vinde falar em mim',
  'Reconhecemos ó Pai Santo',
  'Reconhecemos, ó Pai Santo',
  'Reconhecemos, ó Pai santo',
  'Mistério da fé divina que nos une',
  'Penhor da vida futura e do nosso eterno conforto',
  'Repartindo com os pobres o Pão da fraternidade',
  'Vinde transformar, vem incendiar: traz fogo do céu neste lugar'
];

let bpMatches = [];
all.forEach(s => {
  for (const phrase of boilerplatePhrases) {
    if (s.cifra.includes(phrase)) {
      bpMatches.push({ id: s.id, title: s.title, phrase });
      break;
    }
  }
});
console.log(`Boilerplate phrase matches: ${bpMatches.length}`, bpMatches);

// 2. Check songs by key artists: Padre Zezinho, Jonas Abib, Frei Gilson, Shalom, Fábio de Melo
const keyArtists = [
  'Padre Zezinho',
  'Jonas Abib',
  'Monsenhor Jonas Abib',
  'Frei Gilson',
  'Shalom',
  'Fábio de Melo',
  'Marcelo Rossi',
  'Reginaldo Manzotti',
  'Anjos de Resgate',
  'Rosa de Saron',
  'Vida Reluz'
];

keyArtists.forEach(artist => {
  const matching = all.filter(s => {
    const text = (s.artist || '') + ' ' + (s.composer || '') + ' ' + (s.title || '') + ' ' + s.id;
    return text.toLowerCase().includes(artist.toLowerCase().split(' ')[0]);
  });
  console.log(`Artist "${artist}": ${matching.length} songs found`);
});

// 3. Check for suspiciously short songs (< 300 chars)
const shortSongs = all.filter(s => s.cifra.length < 350);
console.log(`Short songs (< 350 chars): ${shortSongs.length}`);
shortSongs.forEach(s => {
  console.log(`  - ${s.title} (${s.id}) [len: ${s.cifra.length}]`);
});

// 4. Check for lines with excessive chord spacing (> 20 spaces)
let wideSpacing = [];
all.forEach(s => {
  const lines = s.cifra.split('\n');
  const wide = lines.filter(l => /\s{20,}/.test(l));
  if (wide.length > 0) {
    wideSpacing.push({ id: s.id, title: s.title, count: wide.length, sample: wide[0] });
  }
});
console.log(`Songs with > 20 consecutive spaces: ${wideSpacing.length}`);
wideSpacing.slice(0, 10).forEach(w => {
  console.log(`  - ${w.title} (${w.id}): ${w.count} lines, e.g. "${w.sample.trim()}"`);
});
