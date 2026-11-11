const fs = require('fs');

function checkFile(path) {
  const content = fs.readFileSync(path, 'utf8');
  const matches = [...content.matchAll(/"id":\s*"([^"]+)"/g)].map(m => m[1]);
  return matches.filter(id => id.includes('incendeia'));
}

console.log('Ordinario:', checkFile('santa-cifra/js/catalog/catalog-ordinario-salmos.js'));
console.log('EntradaFinal:', checkFile('santa-cifra/js/catalog/catalog-entrada-final.js'));
console.log('Ofertorio:', checkFile('santa-cifra/js/catalog/catalog-ofertorio-comunhao.js'));
console.log('Adoracao:', checkFile('santa-cifra/js/catalog/catalog-adoracao-comunidades.js'));
