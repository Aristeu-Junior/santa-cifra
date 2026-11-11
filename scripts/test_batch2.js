const { scrapeSong } = require('./cifraclub_scraper');

async function testList() {
  const list = [
    'cnbb/hino-da-campanha-da-fraternidade-2020/',
    'cnbb/hino-da-campanha-da-fraternidade-2023/',
    'cnbb/hino-da-campanha-da-fraternidade-2024/',
    'cnbb/hino-da-campanha-da-fraternidade-2025/',
    'cnbb/hino-da-campanha-da-fraternidade-2015/',
    'musicas-catolicas/de-maos-estendida/',
    'cnbb/onde-o-amor-e-a-caridade/',
    'walmir-alencar/simplesmente-amar/',
    'laura-souguellis/santo-espirito/',
    'padre-zezinho/cantiga-por-francisco/',
    'musicas-catolicas/sabes-senhor/'
  ];
  for (const s of list) {
    const r = await scrapeSong(s);
    console.log(s, r ? `OK (${r.length} chars)` : 'NOT FOUND');
  }
}

testList();
