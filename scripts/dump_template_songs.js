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

const templatePatterns = [
  'Nossos passos peregrinos vêm buscar a Tua paz',
  'Vós que viestes chamar os pecadores',
  'Vossa Palavra, Senhor, é lâmpada para os meus pés',
  'Abri o nosso coração ao Santo Evangelho da paz',
  'Apresentamos no altar o pão e o vinho do amor',
  'Recebei, ó Pai bendito, nossa humilde oblação',
  'Mistério da fé divina que nos une em um só Corpo'
];

const report = [];

all.forEach(s => {
  for (const pat of templatePatterns) {
    if (s.cifra.includes(pat)) {
      report.push({
        id: s.id,
        title: s.title,
        artist: s.artist,
        file: ord.some(x => x.id === s.id) ? 'ordinario' :
              ent.some(x => x.id === s.id) ? 'entrada' :
              ofe.some(x => x.id === s.id) ? 'ofertorio' : 'adoracao',
        pattern: pat,
        cifra: s.cifra
      });
      break;
    }
  }
});

fs.writeFileSync('scripts/template_songs_report.json', JSON.stringify(report, null, 2));
console.log(`Saved report with ${report.length} songs.`);
