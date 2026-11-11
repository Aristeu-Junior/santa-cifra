const fs = require('fs');

async function scrapeSong(path) {
  const url = path.startsWith('http') ? path : `https://www.cifraclub.com.br/${path.replace(/^\//, '')}`;
  try {
    const res = await fetch(url, { headers: { 'User-Agent': 'Mozilla/5.0' } });
    if (!res.ok) {
      console.log(`HTTP ${res.status} for ${url}`);
      return null;
    }
    const html = await res.text();
    const start = html.indexOf('<pre class="_crVx"');
    if (start === -1) {
      console.log(`Could not find <pre class="_crVx" in ${url}`);
      return null;
    }
    const end = html.indexOf('</pre>', start);
    const preHtml = html.slice(start, end + 6);
    let text = preHtml.replace(/<b[^>]*>([^<]+)<\/b>/g, '$1');
    text = text.replace(/<div[^>]*>/g, '').replace(/<\/div>/g, '\n').replace(/<br\s*\/?>/g, '\n').replace(/<[^>]+>/g, '');
    // decode entities
    text = text.replace(/&#(\d+);/g, (_, n) => String.fromCharCode(n));
    text = text.replace(/&amp;/g, '&').replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/&quot;/g, '"').replace(/&#39;/g, "'");
    return text.trim();
  } catch (e) {
    console.error(`Error fetching ${url}:`, e.message);
    return null;
  }
}

async function main() {
  const target = process.argv[2] || 'ministerio-excelsis/incendeia-minha-alma/';
  const result = await scrapeSong(target);
  if (result) {
    console.log(`=== RESULT FOR ${target} ===`);
    console.log(result);
  }
}

if (require.main === module) {
  main();
}

module.exports = { scrapeSong };
