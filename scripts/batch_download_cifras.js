const fs = require('fs');
const path = require('path');
const { scrapeSong } = require('./cifraclub_scraper');

const cacheDir = path.join(__dirname, 'cifraclub_cache');
if (!fs.existsSync(cacheDir)) {
  fs.mkdirSync(cacheDir, { recursive: true });
}

// Master map of Santa Cifra ID -> Cifra Club slug
const masterMap = {
  // Frei Gilson
  'frei-gilson-eu-seguirei': 'frei-gilson/eu-seguirei/',
  'acalma-minha-tempestade-frei-gilson': 'frei-gilson/acalma-minha-tempestade/',
  'tu-es-o-centro-frei-gilson': 'frei-gilson/tu-es-o-centro/',
  'eu-te-levantarei-frei-gilson': 'frei-gilson/eu-te-levantarei/',
  'frei-gilson-eu-te-levantarei': 'frei-gilson/eu-te-levantarei/',
  'deixa-deus-sonhar-em-ti-frei-gilson': 'frei-gilson/deixa-deus-sonhar-em-ti/',
  'frei-gilson-deixa-deus-sonhar-em-ti': 'frei-gilson/deixa-deus-sonhar-em-ti/',
  'frei-gilson-colo-de-mae': 'frei-gilson/colo-de-mae/',
  'frei-gilson-de-ti-preciso': 'frei-gilson/de-ti-preciso/',
  'frei-gilson-vem-queimar-o-nosso-coracao': 'frei-gilson/vem-queimar-o-nosso-coracao/',

  // Pe. Fábio de Melo
  'pe-fabio-de-melo-incendeia-minha-alma': 'pe-fabio-de-melo/incendei-minha-alma/',
  'incendeia-minha-alma-padre-fabio-cancao-nova': 'pe-fabio-de-melo/incendei-minha-alma/',
  'pe-fabio-de-melo-tudo-e-do-pai': 'pe-fabio-de-melo/tudo-do-pai/',
  'tudo-e-do-pai-pe-marcelo-rossi': 'pe-fabio-de-melo/tudo-do-pai/',
  'humano-demais-pe-fabio-de-melo': 'pe-fabio-de-melo/humano-amor-de-deus/',
  'humano-amor-de-deus-adriana-arydes': 'pe-fabio-de-melo/humano-amor-de-deus/',
  'adriana-arydes-humano-amor-de-deus': 'pe-fabio-de-melo/humano-amor-de-deus/',
  'deus-cuida-de-mim-pe-fabio-de-melo': 'pe-fabio-de-melo/deus-cuida-de-mim/',
  'pe-fabio-de-melo-Deus-cuida-de-mim': 'pe-fabio-de-melo/deus-cuida-de-mim/',
  'pe-fabio-de-melo-vida': 'pe-fabio-de-melo/vida/',
  'pe-fabio-de-melo-tudo-posso': 'pe-fabio-de-melo/tudo-posso/',
  'pe-fabio-de-melo-em-tua-presenca': 'pe-fabio-de-melo/em-tua-presenca/',

  // Anjos de Resgate
  'amigos-pela-fe-anjos-de-resgate': 'anjos-de-resgate-musicas/amigos-pela-fe/',
  'mais-que-amigos-anjos-de-resgate': 'anjos-de-resgate-musicas/mais-que-amigos/',
  'estou-aqui-anjos-de-resgate': 'anjos-de-resgate-musicas/estou-aqui/',
  'manda-teus-anjos-anjos-de-resgate': 'anjos-de-resgate-musicas/manda-teus-anjos/',
  'seja-luz-anjos-de-resgate': 'anjos-de-resgate-musicas/seja-luz/',
  'o-ceu-se-abre-ministerio-adoracao-e-vida': 'walmir-alencar/o-ceu-se-abre/',

  // Colo de Deus
  'acaso-nao-sabeis-colo-de-deus': 'comunidade-catolica-colo-de-deus/acaso-nao-sabeis/',
  'yeshua-colo-de-deus-comunidade': 'comunidade-catolica-colo-de-deus/yeshua/',
  'colo-de-deus-queima-de-novo': 'comunidade-catolica-colo-de-deus/queima-de-novo/',
  'colo-de-deus-casa': 'comunidade-catolica-colo-de-deus/casa/',
  'colo-de-deus-desperta': 'comunidade-catolica-colo-de-deus/desperta/',
  'casa-de-maria-mayara-marques-colo-de-deus': 'comunidade-catolica-colo-de-deus/casa-de-maria/',

  // Thiago Brado
  'minha-essencia-thiago-brado': 'thiago-brado/minha-essencia/',
  'verdades-do-tempo-thiago-brado': 'thiago-brado/verdades-do-tempo/',
  'thiago-brado-meu-alvo': 'thiago-brado/meu-alvo/',

  // Walmir Alencar / Adoração e Vida
  'hoje-livre-sou-adoracao-e-vida': 'walmir-alencar/hoje-livre-sou/',
  'abraco-de-pai-walmir-alencar': 'walmir-alencar/abraco-de-pai/',

  // Celina Borges
  'tudo-posso-celina-borges': 'celina-borges/tudo-posso/',
  'nas-asas-do-senhor-celina-borges': 'celina-borges/nas-asas-do-senhor/',
  'celina-borges-nas-asas-do-senhor': 'celina-borges/nas-asas-do-senhor/',
  'derrama-o-teu-amor-aqui-pe-marcelo-rossi': 'celina-borges/derrama-teu-amor-aqui/',

  // Padre Marcelo Rossi
  'noites-traicoeiras-pe-marcelo-rossi': 'pe-marcelo-rossi/noites-traicoeiras/',
  'basta-querer-pe-marcelo-rossi': 'padre-marcelo-rossi/basta-querer/',
  'forca-e-vitoria-pe-marcelo-rossi': 'padre-marcelo-rossi/forca-e-vitoria/',
  'eu-navegarei-pe-marcelo-rossi': 'catolicas/eu-navegarei/',

  // Padre Zezinho
  'oracao-pela-familia-pe-zezinho': 'padre-zezinho/oracao-pela-familia/',
  'maria-de-nazare-pe-zezinho': 'padre-zezinho/maria-de-nazare-/',
  'utopia-pe-zezinho': 'padre-zezinho/utopia/',
  'amar-como-jesus-amou-pe-zezinho': 'padre-zezinho/amar-como-jesus-amou/',
  'um-certo-galileu-pe-zezinho': 'padre-zezinho/um-certo-galileu/',
  'paz-inquieta-paz-de-cristo-pe-zezinho': 'padre-zezinho/paz-inquieta/',
  'aguia-pequena-pe-zezinho': 'padre-zezinho/aguia-pequena/',

  // Tony Allysson
  'soberano-poderoso-deus-tony-allysson': 'catolicas/poderoso-deus/',

  // Shalom / Davidson Silva / Suely Façanha
  'amar-te-mais-davidson-silva': 'davidson-silva/amar-te-mais/',
  'regaco-acolhedor-suely-facanha': 'kelly-patricia/regaco-acolhedor/',
  'belissimo-esposo-comunidade-shalom': 'comunidade-catolica-shalom/belissimo-esposo/',

  // Padre Reginaldo Manzotti
  'a-tempestade-vai-passar-pe-reginaldo-manzotti': 'padre-reginaldo-manzotti/a-tempestade-vai-passar/',
  'pe-reginaldo-manzotti-a-tempestade-vai-passar': 'padre-reginaldo-manzotti/a-tempestade-vai-passar/',

  // Padre Antônio Maria
  'cura-senhor-onde-doi-pe-marcelo-rossi': 'padre-antonio-maria/cura-senhor/',
  'pe-antonio-maria-cura-senhor-onde-doi': 'padre-antonio-maria/cura-senhor/',

  // Adriana Arydes
  'abraço-eterno-chave-do-coracao-adriana-arydes': 'adriana/a-chave-do-coracao/',

  // Eliana Ribeiro
  'chuva-de-graca-eliana-ribeiro': 'eliana-ribeiro/chuva-de-graca-/'
};

async function downloadAll() {
  const entries = Object.entries(masterMap);
  console.log(`Downloading ${entries.length} songs into cache...`);
  let downloaded = 0;
  for (const [id, slug] of entries) {
    const cacheFile = path.join(cacheDir, `${id}.txt`);
    if (fs.existsSync(cacheFile)) {
      downloaded++;
      continue;
    }
    const text = await scrapeSong(slug);
    if (text) {
      fs.writeFileSync(cacheFile, text, 'utf8');
      console.log(`[OK] Saved ${id} from ${slug}`);
      downloaded++;
    } else {
      console.error(`[FAIL] Could not scrape ${id} from ${slug}`);
    }
    // Small delay to be polite
    await new Promise(r => setTimeout(r, 200));
  }
  console.log(`Done! ${downloaded}/${entries.length} cached.`);
}

downloadAll();
