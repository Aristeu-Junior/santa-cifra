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
  'Reunidos como Igreja ao redor do Teu altar',
  'Nossos passos peregrinos vêm buscar a Tua paz',
  'Reconhecemos, ó Pai santo',
  'Reconhecemos ó Pai Santo',
  'Vós que viestes chamar os pecadores',
  'Vossa Palavra, Senhor, é lâmpada para os meus pés',
  'Abri o nosso coração ao Santo Evangelho da paz',
  'Apresentamos no altar o pão e o vinho do amor',
  'Recebei, ó Pai bendito, nossa humilde oblação',
  'Ao redor da Santa Mesa nos chamais à comunhão',
  'Mistério da fé divina que nos une em um só Corpo',
  'Sopro do Espírito Santo que desce do céu com poder',
  'Espírito Santo, vinde falar em mim',
  'Vinde transformar, vem incendiar: traz fogo do céu neste lugar'
];

let affectedSongs = new Map();

templatePatterns.forEach(pattern => {
  all.forEach(s => {
    if (s.cifra.includes(pattern)) {
      if (!affectedSongs.has(s.id)) {
        affectedSongs.set(s.id, { id: s.id, title: s.title, patterns: [] });
      }
      affectedSongs.get(s.id).patterns.push(pattern);
    }
  });
});

console.log(`Total songs affected by enrich_all_cifras templates: ${affectedSongs.size}`);
affectedSongs.forEach((val, id) => {
  console.log(`- ${val.title} (${id}) -> Patterns: ${val.patterns.join('; ')}`);
});
