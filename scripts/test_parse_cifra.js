const fs = require('fs');

async function testFetch() {
  const res = await fetch('https://www.cifraclub.com.br/padre-fabio-de-melo/incendeia-minha-alma/', {
    headers: { 'User-Agent': 'Mozilla/5.0' }
  });
  const html = await res.text();
  
  // Find where the chord sheet is
  const preMatch = html.match(/<pre>([\s\S]*?)<\/pre>/i) || html.match(/class="cifra_cnt[^"]*"[\s\S]*?>([\s\S]*?)<\/div>/i);
  if (preMatch) {
    console.log("Matched pre/cnt!");
    // strip tags but keep text
    const text = preMatch[1].replace(/<b>(.*?)<\/b>/g, '$1').replace(/<[^>]+>/g, '');
    console.log(text.slice(0, 1500));
  } else {
    // search for words
    const idx = html.indexOf('Espírito Santo, vinde');
    console.log("indexOf 'Espírito Santo':", idx);
    if (idx !== -1) {
      console.log(html.slice(idx - 200, idx + 800));
    }
  }
}

testFetch().catch(console.error);
