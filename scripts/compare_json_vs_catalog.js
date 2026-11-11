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

const catalogSongs = [...ord, ...ent, ...ofe, ...ado];
const jsonSongs = JSON.parse(fs.readFileSync('santa-cifra/data/songs.json', 'utf8'));

console.log('Catalog count:', catalogSongs.length);
console.log('JSON count:', jsonSongs.length);

const catalogMap = new Map(catalogSongs.map(s => [s.id, s]));
const jsonMap = new Map(jsonSongs.map(s => [s.id, s]));

let missingInJson = [];
let missingInCatalog = [];
let differentCifras = [];

catalogSongs.forEach(s => {
  if (!jsonMap.has(s.id)) {
    missingInJson.push(s.id);
  } else {
    const js = jsonMap.get(s.id);
    if (s.cifra.trim() !== js.cifra.trim()) {
      differentCifras.push({
        id: s.id,
        title: s.title,
        catalogLen: s.cifra.length,
        jsonLen: js.cifra.length
      });
    }
  }
});

jsonSongs.forEach(s => {
  if (!catalogMap.has(s.id)) {
    missingInCatalog.push(s.id);
  }
});

console.log('Missing in JSON:', missingInJson.length, missingInJson);
console.log('Missing in Catalog:', missingInCatalog.length, missingInCatalog);
console.log('Different Cifras count:', differentCifras.length);
console.log('First 20 different cifras:');
differentCifras.slice(0, 20).forEach(d => {
  console.log(`  - ${d.title} (${d.id}): Catalog ${d.catalogLen} chars vs JSON ${d.jsonLen} chars`);
});
