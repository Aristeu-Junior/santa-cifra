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

function norm(str) {
  return (str || '').toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '').trim();
}
const titleMap = {};
all.forEach((s) => {
  const key = norm(s.title);
  if (!titleMap[key]) titleMap[key] = [];
  titleMap[key].push(s);
});

const dupTitles = Object.keys(titleMap).filter(k => titleMap[k].length > 1);
dupTitles.forEach(k => {
  console.log(`=== TITLE: ${k} ===`);
  titleMap[k].forEach(s => {
    console.log(`  ID: ${s.id} | Artist: ${s.artist} | Tom: ${s.tom} | Len: ${s.cifra.length} | Lines: ${s.cifra.split('\n').length}`);
    console.log(`  Snippet: ${s.cifra.slice(0, 100).replace(/\n/g, ' ')}...`);
  });
});
