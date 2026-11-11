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

const targetIds = [
  'antes-da-morte-e-ressurreicao',
  'cantiga-por-sao-francisco-pe-zezinho',
  'estrangeiro-aqui-comunidade-shalom',
  'fogo-suave-ziza-fernandes',
  'fiel-madeiro-da-santa-cruz-sexta-feira-santa',
  'deus-e-amor-pe-zezinho',
  'fogo-abrasador-comunidade-shalom',
  'hino-campanha-da-fraternidade-2020-vida-dom-e-compromisso',
  'hino-campanha-da-fraternidade-2015-eu-vim-para-servir',
  'quem-me-tocou-pe-joao-carlos',
  'basta-uma-palavra-luciana-antunes',
  'felizes-os-convidados-para-a-ceia-do-senhor-gilson-celerino',
  'sopro-de-vida-danilo-casemiro',
  'nos-pobres-te-encontrei-fraternidade-o-caminho',
  'ruah-sopro-de-deus-alianca-de-misericordia'
];

targetIds.forEach(id => {
  const s = all.find(x => x.id === id);
  if (s) {
    console.log(`\n================ ID: ${s.id} | Title: ${s.title} ================`);
    console.log(s.cifra);
  }
});
