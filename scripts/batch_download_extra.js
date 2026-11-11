const fs = require('fs');
const { scrapeSong } = require('./cifraclub_scraper');

// Additional mappings
const extraMap = {
  'te-agradeco-pe-marcelo-rossi': 'kleber-lucas/te-agradeco/',
  'restaura-nossa-casa-dunga-cancao-nova': 'dunga/restauracao/',
  'nada-te-perturbe-santa-teresa-davila': 'padre-jonas/nada-te-pertube/',
  'aleluia-alvaro-e-daniel': 'alvaro-daniel/aleluia/',
  'o-que-e-que-eu-sou-sem-jesus-pe-alessandro-campos': 'padre-alessandro-campos/o-que-e-que-eu-sou-sem-jesus/'
};

async function run() {
  for (const [id, url] of Object.entries(extraMap)) {
    const res = await scrapeSong(url);
    if (res) {
      fs.writeFileSync(`scripts/cifraclub_cache/${id}.txt`, res, 'utf8');
      console.log(`[OK] Saved ${id} from ${url}`);
    } else {
      console.log(`[FAIL] ${id} from ${url}`);
    }
  }
}

run();
