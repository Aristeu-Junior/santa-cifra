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

const phrases = [
  'Vossa Palavra, Senhor, é lâmpada para os meus pés',
  'Abri o nosso coração ao Santo Evangelho da paz',
  'Mistério da fé divina que nos une',
  'Reconhecemos ó Pai Santo',
  'Reconhecemos, ó Pai Santo',
  'Reconhecemos, ó Pai santo',
  'Espírito Santo, vinde falar em mim',
  'Penhor da vida futura e do nosso eterno conforto'
];

phrases.forEach(phrase => {
  const matches = all.filter(s => s.cifra.includes(phrase));
  console.log(`\n=== Phrase: "${phrase}" (${matches.length} matches) ===`);
  matches.forEach(m => {
    console.log(`  - ${m.title} (${m.id})`);
  });
});
