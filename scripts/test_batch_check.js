const { scrapeSong } = require('./cifraclub_scraper');

const targets = [
  'comunidade-catolica-shalom/fogo-abrasador/',
  'ziza-fernandes/fogo-suave/',
  'padre-marcelo-rossi/reunidos-aqui/',
  'catolicas/ofertas-singelas/',
  'catolicas/da-cepa-brotou-a-rama/',
  'catolicas/de-maos-estendidas-ofertamos/',
  'comunidade-catolica-shalom/eis-me-aqui/',
  'nadia-santolli/simplesmente-amar/',
  'missionario-shalom/todo-teu-senhor/',
  'alianca-de-misericordia/ruah/',
  'fraternidade-o-caminho/nos-pobres-te-encontrei/'
];

async function checkBatch() {
  for (const t of targets) {
    const res = await scrapeSong(t);
    console.log(t, res ? `FOUND (${res.length} chars)` : 'NOT FOUND');
  }
}

checkBatch();
