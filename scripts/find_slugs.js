const https = require('https');

const queries = [
  'site:cifraclub.com.br Seja Engrandecido',
  'site:cifraclub.com.br Celebra a Vitoria',
  'site:cifraclub.com.br Deus e Dez',
  'site:cifraclub.com.br O Vira de Jesus',
  'site:cifraclub.com.br Louvemos ao Senhor',
  'site:cifraclub.com.br Batiza-me Senhor'
];

async function findSlug(q) {
  const url = 'https://html.duckduckgo.com/html/?q=' + encodeURIComponent(q);
  const res = await fetch(url, { headers: { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)' } });
  const html = await res.text();
  const re = /uddg=https%3A%2F%2Fwww\.cifraclub\.com\.br%2F([^&"]+)/g;
  const slugs = [];
  let m;
  while ((m = re.exec(html)) !== null) {
    const slug = decodeURIComponent(m[1]);
    if (!slug.startsWith('busca') && !slug.startsWith('artistas') && !slugs.includes(slug)) {
      slugs.push(slug);
    }
  }
  console.log(q, '=>', slugs.slice(0, 3));
}

async function run() {
  for (const q of queries) {
    await findSlug(q);
  }
}
run();
