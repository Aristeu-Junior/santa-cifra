const { scrapeSong } = require('./cifraclub_scraper');

async function searchCifra(term) {
  try {
    const res = await fetch(`https://studiosol-cifraclub-api.solr.internal/search?q=${encodeURIComponent(term)}`); // or standard cifraclub search
  } catch (e) {}
}

async function testSlugs() {
  const slugs = [
    'cancao-nova/o-senhor-e-rei/',
    'cancao-nova/que-santidade-de-vida/',
    'cancao-nova/nao-da-mais-pra-voltar/',
    'cancao-nova/eu-e-minha-casa-serviremos-ao-senhor/',
    'cancao-nova/juras-de-amor/',
    'cancao-nova/inunda-meu-ser/',
    'padre-zezinho/sabes-senhor/',
    'padre-zezinho/cantiga-por-sao-francisco/',
    'padre-zezinho/deus-e-amor/',
    'padre-zezinho/amar-e-doar-se/'
  ];
  for (const s of slugs) {
    const r = await scrapeSong(s);
    console.log(s, r ? `OK (${r.length} chars)` : 'NOT FOUND');
  }
}

testSlugs();
