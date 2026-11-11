const fs = require('fs');

const catalogFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

let count = 0;
catalogFiles.forEach(f => {
  const songs = (new Function('return ' + fs.readFileSync(f, 'utf8').match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/)[1]))();
  songs.forEach(s => {
    (s.cifra || '').split('\n').forEach((l, idx) => {
      if (/ {25,}/.test(l)) {
        count++;
        if (count <= 15) {
          console.log(`${s.id} L${idx + 1} (len ${l.length}): "${l}"`);
        }
      }
    });
  });
});
console.log('Total remaining lines with >25 spaces:', count);
