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

console.log('=== SONGS BY MONSENHOR JONAS ABIB ===');
const jonas = all.filter(s => {
  const t = (s.artist || '') + ' ' + (s.composer || '') + ' ' + s.title + ' ' + s.id;
  return t.toLowerCase().includes('jonas');
});
jonas.forEach(s => {
  console.log(`- ${s.title} (${s.id}) | Len: ${s.cifra.length} | Lines: ${s.cifra.split('\n').length}`);
});

console.log('\n=== SONGS BY PADRE ZEZINHO ===');
const zezinho = all.filter(s => {
  const t = (s.artist || '') + ' ' + (s.composer || '') + ' ' + s.title + ' ' + s.id;
  return t.toLowerCase().includes('zezinho');
});
console.log(`Total Padre Zezinho: ${zezinho.length}`);
zezinho.forEach(s => {
  const hasInjected = s.cifra.includes('Mistério da fé divina') ||
                      s.cifra.includes('Nossos passos peregrinos') ||
                      s.cifra.includes('Recebei, ó Pai bendito') ||
                      s.cifra.includes('Apresentamos no altar');
  if (hasInjected || s.cifra.length < 500) {
    console.log(`  * [NEEDS ATTENTION] ${s.title} (${s.id}) | Len: ${s.cifra.length} | Injected: ${hasInjected}`);
  }
});
