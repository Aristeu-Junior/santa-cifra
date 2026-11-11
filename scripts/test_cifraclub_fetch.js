async function testFetch(url) {
  try {
    const res = await fetch(url, {
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
      }
    });
    console.log(url, 'Status:', res.status);
    if (res.ok) {
      const html = await res.text();
      const preMatch = html.match(/<pre>([\s\S]*?)<\/pre>/i);
      if (preMatch) {
        console.log('Found <pre> length:', preMatch[1].length);
        console.log(preMatch[1].replace(/<[^>]+>/g, '').slice(0, 300));
      } else {
        console.log('No pre tag found, html snippet:', html.slice(0, 200));
      }
    }
  } catch (e) {
    console.error('Error:', e.message);
  }
}

testFetch('https://www.cifraclub.com.br/comunidade-catolica-shalom/estrangeiro-aqui/');
testFetch('https://www.cifraclub.com.br/comunidade-catolica-shalom/fogo-abrasador/');
