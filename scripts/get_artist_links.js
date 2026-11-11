async function getLinks(slug) {
  const r = await fetch(`https://www.cifraclub.com.br/${slug}/`, { headers: { 'User-Agent': 'Mozilla/5.0' } });
  const t = await r.text();
  const reg = new RegExp(`href="/${slug}/([^"/]+)/"`, 'g');
  const links = [];
  let m;
  while ((m = reg.exec(t)) !== null) {
    links.push(m[1]);
  }
  console.log(`${slug} songs (${links.length}):`, [...new Set(links)]);
}

getLinks('padre-jonas');
