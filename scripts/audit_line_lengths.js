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

console.log('Total songs:', all.length);

let longLinesCount = 0;
let songsWithLongLines = [];

all.forEach(song => {
  const lines = song.cifra.split('\n');
  const maxLen = Math.max(...lines.map(l => l.length));
  const longLines = lines.filter(l => l.length > 55);
  if (longLines.length > 0) {
    longLinesCount += longLines.length;
    songsWithLongLines.push({
      id: song.id,
      title: song.title,
      maxLen,
      longLinesCount: longLines.length,
      sample: longLines[0]
    });
  }
});

console.log(`Songs with lines > 55 chars: ${songsWithLongLines.length}`);
console.log(`Total lines > 55 chars: ${longLinesCount}`);
songsWithLongLines.sort((a, b) => b.maxLen - a.maxLen);
songsWithLongLines.slice(0, 15).forEach(s => {
  console.log(`- [${s.maxLen} cols] ${s.title} (${s.id}) [${s.longLinesCount} long lines]: "${s.sample}"`);
});
