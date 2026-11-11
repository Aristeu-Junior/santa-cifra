const fs = require('fs');
const { scrapeSong } = require('./cifraclub_scraper');

global.window = {};

function loadCatalog(file, varName) {
  const content = fs.readFileSync(file, 'utf8');
  eval(content);
  return global.window[varName.replace('window.', '')];
}

async function run() {
  console.log('Loading current catalogs...');
  const ord = loadCatalog('santa-cifra/js/catalog/catalog-ordinario-salmos.js', 'window.SongsCatalogOrdinario');
  const ent = loadCatalog('santa-cifra/js/catalog/catalog-entrada-final.js', 'window.SongsCatalogEntradaFinal');
  const ofe = loadCatalog('santa-cifra/js/catalog/catalog-ofertorio-comunhao.js', 'window.SongsCatalogOfertorioComunhao');
  const ado = loadCatalog('santa-cifra/js/catalog/catalog-adoracao-comunidades.js', 'window.SongsCatalogAdoracaoComunidades');

  console.log(`Initial counts: ord=${ord.length}, ent=${ent.length}, ofe=${ofe.length}, ado=${ado.length}, total=${ord.length + ent.length + ofe.length + ado.length}`);

  // 1. Fetch exact Cifra Club scores for key songs
  const directScrapes = {
    'estrangeiro-aqui-comunidade-shalom': 'comunidade-catolica-shalom/estrangeiro-aqui/',
    'fogo-abrasador-comunidade-shalom': 'comunidade-catolica-shalom/fogo-abrasador/',
    'ziza-fernandes-fogo-suave': 'ziza-fernandes/fogo-suave/',
    'cantiga-por-sao-francisco-pe-zezinho': 'padre-zezinho/cantiga-por-francisco/',
    'sabes-senhor-pe-zezinho': 'catolicas/sabes-senhor/',
    'de-maos-estendidas-ofertamos-waldeci-farias': 'catolicas/de-maos-estendida/',
    'ofertas-singelas-pao-e-vinho': 'catolicas/ofertas-singelas/',
    'da-cepa-brotou-a-rama': 'catolicas/da-cepa-brotou-a-rama/',
    'da-cepa-brotou-a-rama-advento-natal': 'catolicas/da-cepa-brotou-a-rama/',
    'hino-campanha-da-fraternidade-2015-eu-vim-para-servir': 'cnbb/hino-da-campanha-da-fraternidade-2015/',
    'hino-campanha-da-fraternidade-2020-vida-dom-e-compromisso': 'cnbb/hino-da-campanha-da-fraternidade-2020/',
    'hino-campanha-da-fraternidade-2023-fome': 'cnbb/hino-da-campanha-da-fraternidade-2023/',
    'hino-campanha-da-fraternidade-2024-amizade-social': 'cnbb/hino-da-campanha-da-fraternidade-2024/',
    'hino-campanha-da-fraternidade-2025-ecologia-integral': 'cnbb/hino-da-campanha-da-fraternidade-2025/',
    'onde-ha-caridade-e-amor-ubi-caritas-lava-pes': 'cnbb/onde-o-amor-e-a-caridade/',
    'simplesmente-amar-nadia-santolli': 'walmir-alencar/simplesmente-amar/',
    'santo-espirito-es-bem-vindo-aqui-pe-marcelo': 'laura-souguellis/santo-espirito/',
    'mons-jonas-abib-inunda-meu-ser': 'padre-jonas/inunda-meu-ser/',
    'mons-jonas-abib-juras-de-amor': 'padre-jonas/juras-de-amor/',
    'mons-jonas-abib-que-santidade-de-vida': 'padre-jonas/que-santidade-de-vida/',
    'mons-jonas-abib-nao-da-mais-pra-voltar': 'padre-jonas/nao-da-mais-pra-voltar/',
    'mons-jonas-abib-vigia-esperando-a-aurora': 'padre-jonas/vigia-esperando-aurora/'
  };

  const scrapedData = {};
  for (const [id, slug] of Object.entries(directScrapes)) {
    console.log(`Scraping ${id} -> ${slug}...`);
    const cifra = await scrapeSong(slug);
    if (cifra) {
      scrapedData[id] = cifra;
      console.log(`  -> SUCCESS (${cifra.length} chars)`);
    } else {
      console.log(`  -> FAILED for ${slug}`);
    }
  }

  // Template patterns to remove
  const templatePatterns = [
    'Nossos passos peregrinos vêm buscar a Tua paz',
    'Vós que viestes chamar os pecadores',
    'Vossa Palavra, Senhor, é lâmpada para os meus pés',
    'Abri o nosso coração ao Santo Evangelho da paz',
    'Apresentamos no altar o pão e o vinho do amor',
    'Recebei, ó Pai bendito, nossa humilde oblação',
    'Mistério da fé divina que nos une em um só Corpo',
    'Reconhecemos ó Pai Santo',
    'Reconhecemos, ó Pai Santo',
    'Reconhecemos, ó Pai santo',
    'Espírito Santo, vinde falar em mim',
    'Vinde transformar, vem incendiar: traz fogo do céu neste lugar'
  ];

  function cleanSongCifra(s) {
    if (scrapedData[s.id]) {
      s.cifra = scrapedData[s.id];
      return;
    }
    // If not scraped, remove any section containing template patterns
    const sections = s.cifra.split(/\n\s*\n/);
    const cleaned = sections.filter(sec => {
      return !templatePatterns.some(p => sec.includes(p));
    });
    s.cifra = cleaned.join('\n\n');
  }

  // IDs to remove (redundant duplicates)
  const removeIds = new Set([
    'kyrie-eleison-como-a-ovelha-perdida-shalom', // duplicate of kyrie-eleison-shalom
    'gloria-a-deus-nos-altos-ceus', // duplicate of pe-joaozinho-gloria-a-deus-nos-altos-ceus
    'salmo-33-provai-e-vede-quao-suave-e-o-senhor', // duplicate of provai-e-vede-quao-suave-salmo-33
    'este-e-o-dia-que-o-senhor-fez-para-nos-salmo-117', // duplicate of este-e-o-dia-que-o-senhor-fez-salmo-117
    'sonda-me-senhor-salmo-138', // duplicate of sonda-me-pe-marcelo-rossi
    'maria-de-nazare', // duplicate of maria-de-nazare-pe-zezinho
    'cantar-a-beleza-da-vida-hinario-cnbb', // duplicate of cantar-a-beleza-da-vida
    'deus-e-dez-pe-marcelo-rossi', // duplicate of banda-dom-deus-e-dez
    'ir-miria-kolling-reunidos-aqui', // duplicate of reunidos-aqui-pe-marcelo-rossi
    'incendeia-minha-alma-padre-fabio-cancao-nova', // duplicate of pe-fabio-de-melo-incendeia-minha-alma
    'os-graos-que-formam-a-espiga', // duplicate of os-graos-que-formam-a-espiga-ofertorio
    'um-coracao-para-amar', // duplicate of um-coracao-para-amar-ofertorio
    'fogo-suave-ziza-fernandes', // duplicate of ziza-fernandes-fogo-suave
    'tao-sublime-sacramento', // duplicate of tao-sublime-sacramento-tradicional
    'pe-fabio-de-melo-Deus-cuida-de-mim', // duplicate of deus-cuida-de-mim-pe-fabio-de-melo
    'frei-gilson-eu-te-levantarei', // duplicate of eu-te-levantarei-frei-gilson
    'frei-gilson-deixa-deus-sonhar-em-ti', // duplicate of deixa-deus-sonhar-em-ti-frei-gilson
    'pe-reginaldo-manzotti-a-tempestade-vai-passar', // duplicate of a-tempestade-vai-passar-pe-reginaldo-manzotti
    'adriana-arydes-humano-amor-de-deus', // duplicate of humano-amor-de-deus-adriana-arydes
    'cura-senhor-onde-doi-pe-marcelo-rossi' // duplicate of pe-antonio-maria-cura-senhor-onde-doi
  ]);

  // Specific song metadata fixes
  function fixSongMetadata(s) {
    if (s.id === 'pe-fabio-de-melo-direcao') {
      s.title = 'Direção';
    }
    if (s.id === 'davidson-silva-insuperavel-amor') {
      s.title = 'Insuperável Amor';
    }
    if (s.id === 'kyrie-eleison-shalom') {
      s.title = 'Kyrie Eleison (Como a Ovelha Perdida)';
      s.originalKey = 'G';
      s.tom = 'G';
    }
    if (s.id === 'pe-fabio-de-melo-incendeia-minha-alma') {
      s.originalKey = 'C';
      s.tom = 'C';
    }
  }

  // Tighten spacing on any cifra line
  function normalizeSpacing(cifra) {
    const lines = cifra.split('\n');
    const normalized = lines.map(line => {
      if (/^[EADGBe]\s*\|/.test(line.trim())) return line; // preserve tabs
      if (/^[A-G][b#]?(m|maj|min|dim|aug|sus|\d|\/|\+|\-)*(\s+[A-G][b#]?(m|maj|min|dim|aug|sus|\d|\/|\+|\-)*)*$/.test(line.trim())) {
        // Chord line: reduce consecutive spaces > 12 to 8-10
        return line.replace(/\s{13,}/g, '         ');
      }
      return line.replace(/\s{20,}/g, '          ');
    });
    return normalized.join('\n');
  }

  function processCatalog(catalog) {
    const filtered = catalog.filter(s => !removeIds.has(s.id));
    filtered.forEach(s => {
      cleanSongCifra(s);
      fixSongMetadata(s);
      s.cifra = normalizeSpacing(s.cifra);
    });
    return filtered;
  }

  const newOrd = processCatalog(ord);
  const newEnt = processCatalog(ent);
  const newOfe = processCatalog(ofe);
  const newAdo = processCatalog(ado);

  console.log(`Cleaned counts: ord=${newOrd.length}, ent=${newEnt.length}, ofe=${newOfe.length}, ado=${newAdo.length}, total=${newOrd.length + newEnt.length + newOfe.length + newAdo.length}`);

  // Write back to js/catalog/*.js
  fs.writeFileSync('santa-cifra/js/catalog/catalog-ordinario-salmos.js', 'window.SongsCatalogOrdinario = ' + JSON.stringify(newOrd, null, 2) + ';\n');
  fs.writeFileSync('santa-cifra/js/catalog/catalog-entrada-final.js', 'window.SongsCatalogEntradaFinal = ' + JSON.stringify(newEnt, null, 2) + ';\n');
  fs.writeFileSync('santa-cifra/js/catalog/catalog-ofertorio-comunhao.js', 'window.SongsCatalogOfertorioComunhao = ' + JSON.stringify(newOfe, null, 2) + ';\n');
  fs.writeFileSync('santa-cifra/js/catalog/catalog-adoracao-comunidades.js', 'window.SongsCatalogAdoracaoComunidades = ' + JSON.stringify(newAdo, null, 2) + ';\n');

  // Build combined catalog for data/songs.json
  const combined = [...newOrd, ...newEnt, ...newOfe, ...newAdo];
  fs.writeFileSync('santa-cifra/data/songs.json', JSON.stringify(combined, null, 2) + '\n');
  console.log(`Generated santa-cifra/data/songs.json with ${combined.length} clean authentic songs!`);
}

run().catch(console.error);
