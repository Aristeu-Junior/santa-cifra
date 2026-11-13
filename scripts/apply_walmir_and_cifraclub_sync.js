const fs = require('fs');
const path = require('path');

const ROOT = path.resolve(__dirname, '..');
const CACHE_DIR = path.join(__dirname, 'cifraclub_cache');
const SONGS_JSON = path.join(ROOT, 'santa-cifra', 'data', 'songs.json');
const ADORACAO_JS = path.join(ROOT, 'santa-cifra', 'js', 'catalog', 'catalog-adoracao-comunidades.js');
const CATALOG_DIR = path.join(ROOT, 'santa-cifra', 'js', 'catalog');
const PROTECTED_ID = 'pe-fabio-de-melo-incendeia-minha-alma';

function norm(s) {
  return String(s || '')
    .toLowerCase()
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim();
}

function estimateBpm(cifra, title) {
  const t = (title || '').toLowerCase();
  if (/(glória|alegria|celebra|festa|exult|ressusc|viva)/i.test(t)) return 112;
  if (/(santo|cordeiro|salmo|silêncio|adora|espírito|oração|misericórdia)/i.test(t)) return 72;
  return 84;
}

const songs = JSON.parse(fs.readFileSync(SONGS_JSON, 'utf8'));
const byId = new Map(songs.map(s => [s.id, s]));

// Index cache files by artistSlug__songSlug and by normalized (artist + title)
const cacheFiles = fs.readdirSync(CACHE_DIR).filter(f => f.endsWith('.json'));
const cacheByArtistTitle = new Map();
const walmirEntries = [];
const amorEntries = [];

for (const f of cacheFiles) {
  const data = JSON.parse(fs.readFileSync(path.join(CACHE_DIR, f), 'utf8'));
  const key = norm(data.artistName) + '::' + norm(data.title);
  cacheByArtistTitle.set(key, data);
  if (data.artistSlug === 'walmir-alencar') walmirEntries.push(data);
  if (data.artistSlug === 'amor-e-adoracao') amorEntries.push(data);
}

// 1. Update existing songs where Cifra Club cache has a match (including Amor e Adoração + any other artist)
let syncedCifras = 0;
for (const song of songs) {
  if (song.id === PROTECTED_ID) continue;
  const composers = String(song.composer || '').split('/').map(c => norm(c.trim())).filter(Boolean);
  const titleNorm = norm(song.title).replace(/\s*\([^)]*\)\s*/g, '').trim();
  const fullTitleNorm = norm(song.title);

  let matchedCache = null;
  for (const c of composers) {
    matchedCache = cacheByArtistTitle.get(c + '::' + fullTitleNorm) || cacheByArtistTitle.get(c + '::' + titleNorm);
    if (matchedCache) break;
  }

  // Special check for Ministerio Amor e Adoracao / Walmir Alencar
  if (!matchedCache && /amor e adora/i.test(song.composer || '')) {
    matchedCache = amorEntries.find(e => norm(e.title) === fullTitleNorm || norm(e.title) === titleNorm || fullTitleNorm.includes(norm(e.title)));
  }

  if (matchedCache && matchedCache.cifra && matchedCache.cifra !== song.cifra) {
    song.cifra = matchedCache.cifra;
    if (matchedCache.originalKey) song.originalKey = matchedCache.originalKey;
    syncedCifras++;
  }
}

// Remove duplicate "Vamos Celebrar" if both reunidos-em-teu-nome-amor-e-adoracao and amor-e-adoracao-vamos-celebrar exist
const hasNewVamosCelebrar = byId.has('amor-e-adoracao-vamos-celebrar');
let removedDuplicates = 0;
const dedupedSongs = songs.filter(s => {
  if (hasNewVamosCelebrar && s.id === 'reunidos-em-teu-nome-amor-e-adoracao') {
    removedDuplicates++;
    return false;
  }
  return true;
});

// 2. Add missing Walmir Alencar songs
const existingWalmirTitles = new Set(
  dedupedSongs
    .filter(s => /walmir alencar/i.test(s.composer || ''))
    .map(s => norm(s.title).replace(/\s*\([^)]*\)\s*/g, '').trim())
);

const addedWalmir = [];
for (const entry of walmirEntries) {
  const id = `walmir-alencar-${entry.songSlug}`;
  const tNorm = norm(entry.title).replace(/\s*\([^)]*\)\s*/g, '').trim();
  if (byId.has(id) || existingWalmirTitles.has(tNorm)) continue;

  const newSong = {
    id,
    title: entry.title,
    composer: 'Walmir Alencar',
    liturgicalMoment: 'Adoração',
    liturgicalSeason: 'Qualquer',
    originalKey: entry.originalKey || 'C',
    bpm: estimateBpm(entry.cifra, entry.title),
    timeSignature: '4/4',
    isMostUsed: false,
    specialDay: null,
    repertoireType: 'popular',
    liturgicalAnalysis: 'Fora da Missa: canto católico de adoração e espiritualidade (Walmir Alencar).',
    cifra: entry.cifra
  };
  dedupedSongs.push(newSong);
  addedWalmir.push(newSong);
  existingWalmirTitles.add(tNorm);
}

fs.writeFileSync(SONGS_JSON, JSON.stringify(dedupedSongs, null, 2) + '\n', 'utf8');

// 3. Sync updates & removals into the 4 JS catalog files, and append new Walmir songs into catalog-adoracao-comunidades.js
const finalById = new Map(dedupedSongs.map(s => [s.id, s]));
for (const f of fs.readdirSync(CATALOG_DIR).filter(x => x.endsWith('.js'))) {
  const p = path.join(CATALOG_DIR, f);
  const raw = fs.readFileSync(p, 'utf8');
  const m = raw.match(/^([\s\S]*?window\.\w+\s*=\s*)(\[[\s\S]*\])(\s*;?\s*)$/);
  if (!m) continue;
  let arr = JSON.parse(m[2]);
  arr = arr.filter(item => finalById.has(item.id)).map(item => finalById.get(item.id));
  if (p === ADORACAO_JS && addedWalmir.length) {
    const existingJsIds = new Set(arr.map(x => x.id));
    for (const ns of addedWalmir) {
      if (!existingJsIds.has(ns.id)) arr.push(ns);
    }
  }
  fs.writeFileSync(p, m[1] + JSON.stringify(arr, null, 2) + m[3], 'utf8');
}

console.log(`Synced existing cifras from Cifra Club cache: ${syncedCifras}`);
console.log(`Removed duplicate Amor e Adoracao entries: ${removedDuplicates}`);
console.log(`Added new Walmir Alencar songs: ${addedWalmir.length}`);
for (const s of addedWalmir) console.log('  +', s.id, '|', s.title);
console.log(`New total songs: ${dedupedSongs.length}`);
