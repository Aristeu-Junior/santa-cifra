const https = require('https');
const fs = require('fs');

const options = {
  hostname: 'www.cifraclub.com.br',
  path: '/comunidade-catolica-shalom/kyrie-eleison/',
  headers: {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
    'Accept-Language': 'pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7'
  }
};

https.get(options, (res) => {
  let data = '';
  res.on('data', chunk => data += chunk);
  res.on('end', () => {
    const preMatch = data.match(/<pre>([\s\S]*?)<\/pre>/i);
    if (preMatch) {
      const text = preMatch[1]
        .replace(/<[^>]+>/g, '')
        .replace(/&quot;/g, '"')
        .replace(/&amp;/g, '&')
        .replace(/&#39;/g, "'")
        .replace(/&lt;/g, '<')
        .replace(/&gt;/g, '>');
      fs.writeFileSync('scripts/cifraclub_cache/kyrie-eleison-shalom.txt', text, 'utf8');
      console.log('Saved! Length:', text.length);
      console.log(text.slice(0, 800));
    } else {
      console.log('Pre not found, status:', res.statusCode);
    }
  });
}).on('error', err => console.error(err));
