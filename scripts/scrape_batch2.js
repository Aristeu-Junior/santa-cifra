const fs = require('fs');
const path = require('path');
const { scrapeSong } = require('./cifraclub_scraper');

const cacheDir = path.join(__dirname, 'cifraclub_cache');

const batch2 = [
  { file: 'padre-zezinho-pelo-irmao.txt', url: 'padre-zezinho/senhor-tende-piedade-e-perdoai-a-nossa-culpa/' },
  { file: 'padre-zezinho-aleluia-alguem.txt', url: 'padre-zezinho/aleluia-alguem-do-povo-exclama/' },
  { file: 'padre-zezinho-palavra-de-salvacao.txt', url: 'padre-zezinho/palavra-de-salvacao/' },
  { file: 'padre-zezinho-fala-senhor.txt', url: 'padre-zezinho/fala-senhor/' },
  { file: 'padre-zezinho-gloria-a-deus-na-imensidao.txt', url: 'padre-zezinho/gloria-a-deus-na-imensidao/' },
  { file: 'padre-zezinho-cantico-de-maria.txt', url: 'padre-zezinho/cantico-de-maria/' },
  { file: 'padre-zezinho-oracao-da-noite.txt', url: 'padre-zezinho/oracao-da-noite/' },
  { file: 'padre-zezinho-sabes-senhor.txt', url: 'padre-zezinho/sabes-senhor/' },
  { file: 'padre-zezinho-cantiga-sao-francisco.txt', url: 'padre-zezinho/cantiga-por-sao-francisco/' },
  { file: 'padre-zezinho-amar-e-doar-se.txt', url: 'padre-zezinho/amar-e-doar-se/' },
  { file: 'padre-zezinho-deus-e-amor.txt', url: 'padre-zezinho/deus-e-amor/' },
  { file: 'padre-zezinho-obrigado-senhor.txt', url: 'padre-zezinho/obrigado-senhor-porque-es-meu-amigo/' },
  { file: 'padre-zezinho-teu-sol-vai-brilhar.txt', url: 'padre-zezinho/teu-sol-vai-brilhar/' },
  { file: 'padre-zezinho-se-eu-fosse-um-cristal.txt', url: 'padre-zezinho/se-eu-fosse-um-cristal/' },
  { file: 'comunidade-de-taize-o-senhor-e-minha-forca.txt', url: 'taize/o-senhor-e-a-minha-forca/' },
  { file: 'eliana-ribeiro-podes-reinar.txt', url: 'comunidade-koinonya/podes-reinar/' },
  { file: 'vida-reluz-invade-minh-alma.txt', url: 'vida-reluz/invade-minh-alma/' },
  { file: 'adoracao-e-vida-sublime.txt', url: 'ministerio-adoracao-e-vida/sublime/' },
  { file: 'dunga-consagrado-para-amar.txt', url: 'dunga/consagrado-para-amar/' },
  { file: 'dunga-vida-nova.txt', url: 'dunga/vida-nova/' },
  { file: 'dunga-phn.txt', url: 'dunga/por-hoje-nao/' },
  { file: 'celina-borges-diamante.txt', url: 'celina-borges/diamante/' },
  { file: 'adriana-arydes-chave-do-coracao.txt', url: 'adriana-arydes/chave-do-coracao/' },
  { file: 'adriana-arydes-coracao-sagrado.txt', url: 'adriana-arydes/coracao-sagrado/' },
  { file: 'adriana-arydes-nova-manha.txt', url: 'adriana-arydes/nova-manha/' }
];

async function run() {
  for (const item of batch2) {
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
