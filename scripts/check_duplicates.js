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
console.log('Total songs across 4 files:', all.length);

// Check duplicate IDs
const idCounts = {};
all.forEach(s => {
  idCounts[s.id] = (idCounts[s.id] || 0) + 1;
});
const dupIds = Object.keys(idCounts).filter(id => idCounts[id] > 1);
console.log('Duplicate IDs:', dupIds);

// Check duplicate Titles (case and accent normalized)
function norm(str) {
  return (str || '').toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '').trim();
}
const titleMap = {};
all.forEach((s, idx) => {
  const key = norm(s.title);
  if (!titleMap[key]) titleMap[key] = [];
  titleMap[key].push({ id: s.id, artist: s.artist, title: s.title, fileIndex: idx < ord.length ? 'ord' : idx < ord.length + ent.length ? 'ent' : idx < ord.length + ent.length + ofe.length ? 'ofe' : 'ado' });
});

const dupTitles = Object.keys(titleMap).filter(k => titleMap[k].length > 1);
console.log('Duplicate titles count:', dupTitles.length);
dupTitles.forEach(k => {
  console.log(`Title "${k}":`, titleMap[k]);
});
