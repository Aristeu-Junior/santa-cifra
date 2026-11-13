const fs = require('fs');
const path = require('path');
const vm = require('vm');

const cacheDir = path.join(__dirname, 'cifraclub_cache');
if (!fs.existsSync(cacheDir)) fs.mkdirSync(cacheDir, { recursive: true });

const sleep = ms => new Promise(r => setTimeout(r, ms));

function norm(s) {
  return String(s || '')
    .toLowerCase()
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim();
}

function decodeEntities(str) {
  return String(str || '')
    .replace(/&#(\d+);/g, (_, n) => String.fromCharCode(Number(n)))
    .replace(/&#x([0-9a-f]+);/gi, (_, h) => String.fromCharCode(parseInt(h, 16)))
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&#39;|&apos;/g, "'")
    .replace(/&nbsp;/g, ' ');
}

function cleanTablaturesAndFormat(raw) {
  const lines = String(raw || '').replace(/\r\n/g, '\n').split('\n');
  const out = [];
  for (let line of lines) {
    // Remover linhas de tablatura (ex: E|---, B|---, e|--3--5--, |---)
    if (/^\s*[eEADGBeb]?\|[-0-9hbp\/\\~xX()\s|]+\|?\s*$/.test(line)) continue;
    line = line.replace(/\s+$/g, '');
    out.push(line);
  }
  return out.join('\n').replace(/\n{3,}/g, '\n\n').trim();
}

async function fetchWithBackoff(url, maxRetries = 5) {
  for (let attempt = 0; attempt <= maxRetries; attempt++) {
    try {
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36' }
      });
      if (res.status === 429 || res.status === 403) {
        const waitMs = (attempt + 1) * 25000;
        console.log(`  [${res.status}] Rate-limited on ${url}, waiting ${waitMs / 1000}s...`);
        await sleep(waitMs);
        continue;
      }
      return res;
    } catch {
      await sleep(3000);
    }
  }
  return null;
}

function loadExistingTitles() {
  const ctx = { window: {} };
  vm.createContext(ctx);
  for (const f of [
    'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
    'santa-cifra/js/catalog/catalog-entrada-final.js',
    'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
    'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
  ]) {
    vm.runInContext(fs.readFileSync(f, 'utf8'), ctx);
  }
  const songs = Object.keys(ctx.window)
    .filter(k => k.startsWith('SongsCatalog'))
    .flatMap(k => ctx.window[k] || []);
  return new Set(songs.map(s => norm(s.title)));
}

function extractSongFromHtml(html) {
  let preHtml = '';
  let start = html.indexOf('<pre class="_crVx"');
  if (start === -1) start = html.indexOf('<pre');
  if (start === -1) return null;
  const end = html.indexOf('</pre>', start);
  if (end === -1) return null;
  preHtml = html.slice(start, end + 6);

  let text = preHtml.replace(/<b[^>]*>([^<]+)<\/b>/g, '$1');
  text = text.replace(/<div[^>]*>/g, '').replace(/<\/div>/g, '\n').replace(/<br\s*\/?>/g, '\n').replace(/<[^>]+>/g, '');
  text = cleanTablaturesAndFormat(decodeEntities(text));
  if (!text || text.split('\n').length < 4) return null;

  let title = '';
  const h1m = html.match(/<h1[^>]*class="[^"]*t1[^"]*"[^>]*>([\s\S]*?)<\/h1>/i) || html.match(/<h1[^>]*>([\s\S]*?)<\/h1>/i);
  if (h1m) title = decodeEntities(h1m[1].replace(/<[^>]+>/g, '')).trim();

  let originalKey = '';
  const tomM = html.match(/id="cifra_tom"[\s\S]*?<a[^>]*>([A-G][#b]?m?)<\/a>/i) || html.match(/Tom:\s*<a[^>]*>([A-G][#b]?m?)<\/a>/i);
  if (tomM) originalKey = tomM[1].trim();

  return { title, originalKey, cifra: text };
}

async function main() {
  const discPath = path.join(__dirname, 'cifraclub_discovery.json');
  const disc = JSON.parse(fs.readFileSync(discPath, 'utf8'));

  // Retry Padre Reginaldo Manzotti if he was unmatched due to 429
  const manzottiIdx = disc.unmatched.findIndex(u => u.name === 'Padre Reginaldo Manzotti');
  if (manzottiIdx !== -1) {
    const res = await fetchWithBackoff('https://www.cifraclub.com/padre-reginaldo-manzotti/musicas.html');
    if (res && res.ok) {
      const html = await res.text();
      const re = /href="(\/padre-reginaldo-manzotti\/([a-z0-9-]+)\/)"/g;
      const seen = new Set();
      const songs = [];
      let m;
      while ((m = re.exec(html)) !== null) {
        if (/^(fotos|videos|discografia|noticias|musicas|albuns|cifras|letras)$/.test(m[2])) continue;
        if (seen.has(m[1])) continue;
        seen.add(m[1]);
        songs.push({ path: m[1], songSlug: m[2] });
      }
      if (songs.length > 0) {
        disc.matched.push({ name: 'Padre Reginaldo Manzotti', currentCount: 7, slug: 'padre-reginaldo-manzotti', songs });
        disc.unmatched.splice(manzottiIdx, 1);
        fs.writeFileSync(discPath, JSON.stringify(disc, null, 2));
        console.log(`Recovered Padre Reginaldo Manzotti: ${songs.length} songs.`);
      }
    }
  }

  const existingTitles = loadExistingTitles();
  const queue = [];
  for (const artist of disc.matched) {
    for (const s of artist.songs) {
      const slugTitle = norm(s.songSlug.replace(/-/g, ' '));
      if (existingTitles.has(slugTitle)) continue;
      if (s.songSlug === 'incendeia-minha-alma') continue; // blindagem absoluta
      const cacheFile = path.join(cacheDir, `${artist.slug}__${s.songSlug}.json`);
      if (fs.existsSync(cacheFile)) continue;
      queue.push({ artistName: artist.name, artistSlug: artist.slug, path: s.path, songSlug: s.songSlug, cacheFile });
    }
  }

  console.log(`Total new songs to fetch: ${queue.length}`);
  let done = 0;
  let saved = 0;
  let failed = 0;

  for (const item of queue) {
    done++;
    const url = `https://www.cifraclub.com${item.path}`;
    const res = await fetchWithBackoff(url);
    if (!res || !res.ok) {
      failed++;
      fs.writeFileSync(item.cacheFile, JSON.stringify({ ...item, skipped: true, status: res ? res.status : 0 }));
    } else {
      const html = await res.text();
      const parsed = extractSongFromHtml(html);
      if (!parsed) {
        failed++;
        fs.writeFileSync(item.cacheFile, JSON.stringify({ ...item, skipped: true, reason: 'no_cifra' }));
      } else {
        saved++;
        fs.writeFileSync(item.cacheFile, JSON.stringify({
          artistName: item.artistName,
          artistSlug: item.artistSlug,
          songSlug: item.songSlug,
          path: item.path,
          title: parsed.title || item.songSlug.replace(/-/g, ' '),
          originalKey: parsed.originalKey || '',
          cifra: parsed.cifra
        }, null, 2));
      }
    }
    if (done % 50 === 0 || done === queue.length) {
      console.log(`Progress: ${done}/${queue.length} | saved: ${saved} | skipped/fail: ${failed}`);
    }
    await sleep(650);
  }
  console.log(`Fetch complete! Saved: ${saved}, Skipped/Failed: ${failed}`);
}

main();
