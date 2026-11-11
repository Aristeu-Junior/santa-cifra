const fs = require('fs');

global.window = {};
['ordinario-salmos', 'entrada-final', 'ofertorio-comunhao', 'adoracao-comunidades'].forEach(name => {
  const p = 'C:/Users/Aristeu Junior/.gemini/antigravity-cli/scratch/musica-liturgica-catolica/santa-cifra/js/catalog/catalog-' + name + '.js';
  eval(fs.readFileSync(p, 'utf8'));
});

const files = {
  'ordinario-salmos': global.window.SongsCatalogOrdinario || [],
  'entrada-final': global.window.SongsCatalogEntradaFinal || [],
  'ofertorio-comunhao': global.window.SongsCatalogOfertorioComunhao || [],
  'adoracao-comunidades': global.window.SongsCatalogAdoracaoComunidades || []
};

for (const [fname, list] of Object.entries(files)) {
  const pop = list.filter(s => s.repertoireType === 'popular' || s.specialDay === 'Encontros, Retiros e Grupo de Oração');
  console.log(`${fname}: ${list.length} total, ${pop.length} popular/encontros`);
}
