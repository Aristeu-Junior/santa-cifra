const fs = require('fs');
const path = require('path');
const { scrapeSong } = require('./cifraclub_scraper');

const cacheDir = path.join(__dirname, 'cifraclub_cache');

const batch3 = [
  { file: 'toca-de-assis-sacramento-de-amor.txt', url: 'fraternidade-toca-de-assis/sacramento-de-amor/' },
  { file: 'toca-de-assis-adorador-por-excelencia.txt', url: 'fraternidade-toca-de-assis/adorador-por-excelencia/' },
  { file: 'juninho-cassimiro-teu-amor-me-sustentara.txt', url: 'juninho-cassimiro/teu-amor-me-sustentara/' },
  { file: 'pitter-di-laura-a-vitoria-e-nossa.txt', url: 'pitter-di-laura/a-vitoria-e-nossa/' },
  { file: 'thiago-tome-tu-es-meu-tudo.txt', url: 'thiago-tome/senhor-tu-es-meu-tudo/' },
  { file: 'rogerinha-moreira-coracao-adorador.txt', url: 'rogerinha-moreira/coracao-adorador/' },
  { file: 'banda-dom-tudo-e-possivel.txt', url: 'banda-dom/tudo-e-possivel/' },
  { file: 'banda-dominus-nao-ha-limites.txt', url: 'banda-dominus/nao-ha-limites/' },
  { file: 'banda-ceremonya-tua-graca-me-basta.txt', url: 'ceremonya/tua-graca-me-basta/' },
  { file: 'eros-biondini-mundo-novo.txt', url: 'eros-biondini/mundo-novo/' },
  { file: 'italo-villar-tua-graca-me-alcancou.txt', url: 'italo-villar/tua-graca-me-alcancou/' },
  { file: 'flavio-vitor-jr-fogo-alto.txt', url: 'flavio-vitor-jr/fogo-alto/' },
  { file: 'koinonya-oferta-de-amor.txt', url: 'comunidade-koinonya/oferta-de-amor/' },
  { file: 'missionario-shalom-estrangeiro-aqui.txt', url: 'missionario-shalom/estrangeiro-aqui/' },
  { file: 'frei-fabreti-pelos-prados-e-campinas.txt', url: 'musicas-catolicas/pelos-prados-e-campinas/' },
  { file: 'catolicas-com-minha-mae-estarei.txt', url: 'catolicas/com-minha-mae-estarei/' },
  { file: 'catolicas-adeste-fideles.txt', url: 'catolicas/adeste-fideles/' },
  { file: 'catolicas-cristaos-vinde-todos.txt', url: 'catolicas/cristaos-vinde-todos/' },
  { file: 'catolicas-o-senhor-ressurgiu-aleluia.txt', url: 'catolicas/o-senhor-ressurgiu-aleluia/' },
  { file: 'pe-antonio-maria-sonda-me-usa-me.txt', url: 'padre-antonio-maria/sonda-me-usa-me/' }
];

async function run() {
  for (const item of batch3) {
    const dest = path.join(cacheDir, item.file);
    if (fs.existsSync(dest) && fs.statSync(dest).size > 200) continue;
    const text = await scrapeSong(item.url);
    if (text && text.length > 100) {
      fs.writeFileSync(dest, text, 'utf8');
      console.log(`SAVED [${item.file}] (${text.length} chars)`);
    } else {
      console.log(`FAILED [${item.file}] (${item.url})`);
    }
  }
}

run();
