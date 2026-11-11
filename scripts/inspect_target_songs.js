const fs = require('fs');

global.window = {};
['ordinario-salmos', 'entrada-final', 'ofertorio-comunhao', 'adoracao-comunidades'].forEach(name => {
  const p = 'C:/Users/Aristeu Junior/.gemini/antigravity-cli/scratch/musica-liturgica-catolica/santa-cifra/js/catalog/catalog-' + name + '.js';
  eval(fs.readFileSync(p, 'utf8'));
});

const all = [].concat(
  global.window.SongsCatalogOrdinario || [],
  global.window.SongsCatalogEntradaFinal || [],
  global.window.SongsCatalogOfertorioComunhao || [],
  global.window.SongsCatalogAdoracaoComunidades || []
);

const targets = all.filter(s => s.id.includes('seguirei') || s.id.includes('incendeia') || s.title.toLowerCase().includes('seguirei') || s.title.toLowerCase().includes('incendeia'));

targets.forEach(s => {
  console.log(`\n=================== ID: ${s.id} | TITLE: ${s.title} | COMPOSER: ${s.composer} | KEY: ${s.originalKey} ===================`);
  console.log(s.cifra.substring(0, 500));
});
