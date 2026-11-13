const fs = require('fs');
const path = require('path');

const CACHE_DIR = path.join(__dirname, 'cifraclub_cache');
const SONGS_JSON = path.join(__dirname, '..', 'santa-cifra', 'data', 'songs.json');
const PROTECTED_ID = 'pe-fabio-de-melo-incendeia-minha-alma';

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
    if (/^\s*[eEADGBeb]?\|[-0-9hbp\/\\~xX()\s|]+\|?\s*$/.test(line)) continue;
    line = line.replace(/\s+$/g, '');
    out.push(line);
  }
  return out.join('\n').replace(/\n{3,}/g, '\n\n').trim();
}

async function fetchWithBackoff(url, maxRetries = 4) {
  for (let attempt = 0; attempt <= maxRetries; attempt++) {
    try {
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36' }
      });
      if (res.status === 429 || res.status === 403) {
        const waitMs = (attempt + 1) * 15000;
        console.log(`  [${res.status}] Rate-limited on ${url}, waiting ${waitMs / 1000}s...`);
        await sleep(waitMs);
        continue;
      }
      return res;
    } catch {
      await sleep(2500);
    }
  }
  return null;
}

function extractSongFromHtml(html) {
  let start = html.indexOf('<pre class="_crVx"');
  if (start === -1) start = html.indexOf('<pre');
  if (start === -1) return null;
  const end = html.indexOf('</pre>', start);
  if (end === -1) return null;
  const preHtml = html.slice(start, end + 6);

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

async function listArtistSongSlugs(artistSlug) {
  const url = `https://www.cifraclub.com.br/${artistSlug}/`;
  const res = await fetchWithBackoff(url);
  if (!res || !res.ok) {
    console.log(`Failed to fetch artist page ${url}: ${res && res.status}`);
    return [];
  }
  const html = await res.text();
  const re = new RegExp(`href="/${artistSlug}/([a-z0-9-]+)/"`, 'gi');
  const slugs = new Set();
  let m;
  while ((m = re.exec(html)) !== null) {
    const s = m[1];
    if (!/^(letra|videos|fotos|discografia|cifras|imprimir|videoaula|simplificada|tablatura)/.test(s)) {
      slugs.add(s);
    }
  }
  return Array.from(slugs);
}

async function fetchArtistCatalog(artistSlug, artistName, forceRefresh = false) {
  const slugs = await listArtistSongSlugs(artistSlug);
  console.log(`\n=== ${artistName} (${artistSlug}): ${slugs.length} songs found on Cifra Club ===`);
  let fetched = 0, cached = 0, failed = 0;
  for (const songSlug of slugs) {
    const cacheFile = path.join(CACHE_DIR, `${artistSlug}__${songSlug}.json`);
    if (!forceRefresh && fs.existsSync(cacheFile)) {
      cached++;
      continue;
    }
    const url = `https://www.cifraclub.com.br/${artistSlug}/${songSlug}/`;
    const res = await fetchWithBackoff(url);
    if (!res || !res.ok) {
      failed++;
      continue;
    }
    const html = await res.text();
    const parsed = extractSongFromHtml(html);
    if (!parsed) {
      failed++;
      continue;
    }
    const payload = {
      artistSlug,
      artistName,
      songSlug,
      url,
      title: parsed.title || songSlug,
      originalKey: parsed.originalKey || 'C',
      cifra: parsed.cifra
    };
    fs.writeFileSync(cacheFile, JSON.stringify(payload, null, 2), 'utf8');
    fetched++;
    await sleep(350);
  }
  console.log(`  Done ${artistSlug}: fetched=${fetched}, cached=${cached}, failed=${failed}`);
  return slugs;
}

(async () => {
  await fetchArtistCatalog('walmir-alencar', 'Walmir Alencar', false);
  await fetchArtistCatalog('amor-e-adoracao', 'Ministério Amor e Adoração', true);
})();
