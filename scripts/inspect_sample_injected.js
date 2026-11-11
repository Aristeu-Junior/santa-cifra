const fs = require('fs');
const report = JSON.parse(fs.readFileSync('scripts/template_songs_report.json', 'utf8'));

const samples = [
  'cantiga-por-sao-francisco-pe-zezinho',
  'deus-e-amor-pe-zezinho',
  'estrangeiro-aqui-comunidade-shalom',
  'fogo-abrasador-comunidade-shalom',
  'ofertas-singelas-pao-e-vinho'
];

samples.forEach(id => {
  const r = report.find(x => x.id === id);
  console.log(`\n=================== ${r.title} (${r.id}) ===================`);
  console.log(r.cifra);
});
