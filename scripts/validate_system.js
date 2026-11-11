const fs = require('fs');

const jsFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js',
  'santa-cifra/js/modules/song-viewer.js',
  'santa-cifra/js/modules/state.js'
];

let ok = true;
jsFiles.forEach(file => {
  try {
    const code = fs.readFileSync(file, 'utf8');
    new Function('window = {}; ' + code);
    console.log(`[PASS] ${file}`);
  } catch (err) {
    console.error(`[FAIL] ${file}: ${err.message}`);
    ok = false;
  }
});

if (ok) {
  console.log('\nALL CATALOGS AND MODULES COMPILE AND EVALUATE CLEANLY!');
} else {
  process.exit(1);
}
