const fs = require('fs');
const path = require('path');

const ROOT = path.resolve(__dirname, '..');
const SONGS_JSON = path.join(ROOT, 'santa-cifra', 'data', 'songs.json');
const CATALOG_DIR = path.join(ROOT, 'santa-cifra', 'js', 'catalog');
const PROTECTED_ID = 'pe-fabio-de-melo-incendeia-minha-alma';

function analyzeMusicalTempo(song) {
  const title = (song.title || '').toLowerCase();
  const moment = (song.liturgicalMoment || '').toLowerCase();
  const composer = (song.composer || '').toLowerCase();
  const cifra = song.cifra || '';

  // Time signature detection (valses / 3/4 / 6/8 liturgical hymns)
  let timeSignature = song.timeSignature || '4/4';
  if (/(noite feliz|maria de nazaré|kyrie|pelos prados|senhor que viestes|vinde cristãos|ave maria|ó santa mãe|salve rainha)/i.test(title)) {
    timeSignature = '3/4';
  } else if (/(6\/8|compasso composto)/i.test(cifra)) {
    timeSignature = '6/8';
  }

  // Base BPM by liturgical moment & musical genre
  let bpm = 82;
  if (/(glória|aclamação|entrada|envio|final)/i.test(moment)) {
    bpm = 104;
    if (/(quaresma|cinzas|paixão|sexta|ramos|attende|pecador)/i.test(title + ' ' + (song.liturgicalSeason || ''))) {
      bpm = 74;
    }
  } else if (/(salmo|cordeiro|santo|ato penitencial)/i.test(moment)) {
    bpm = 72;
  } else if (/(ofertório|oferendas)/i.test(moment)) {
    bpm = 78;
  } else if (/(comunhão)/i.test(moment)) {
    bpm = 74;
  } else if (/(louvor|vigília|combate)/i.test(moment)) {
    bpm = 114;
  } else if (/(adoração|oração|meditação|cura|misericórdia)/i.test(moment)) {
    bpm = 68;
  }

  // Genre / artist / title refinements
  if (/(rosa de saron|banda dom|anjos de resgate|colo de deus|flávio vitor|dunga|banda dominus)/i.test(composer)) {
    if (/(acústico|silêncio|adoração|oração|lágrima|calma)/i.test(title)) bpm = Math.min(bpm, 76);
    else bpm = Math.max(bpm, 96);
  }
  if (/(taizé|gregoriano|palestrina|frisina)/i.test(composer)) {
    bpm = 66;
  }
  if (/(aleluia|ressuscitou|hosana|celebra|festa|exult|vinde|glória|alegria|baião|xote)/i.test(title)) {
    bpm = Math.max(bpm, 108);
  }
  if (/(silêncio|paz|noite feliz|oração|deserto|chaga|cruz|humilde|servo|joelhos|entrega)/i.test(title)) {
    bpm = Math.min(bpm, 72);
  }

  // Adjust slightly by chord-to-lyric density (fast harmonic rhythm vs sustained ballads)
  const lines = cifra.split('\n').filter(l => l.trim().length > 0);
  const chordTokens = (cifra.match(/\b[A-G][#b]?(?:m|maj|min|dim|aug|sus|add)?[0-9]*(?:\/[A-G][#b]?)?\b/g) || []).length;
  const density = lines.length ? chordTokens / lines.length : 1;
  if (density > 2.2) bpm = Math.min(132, bpm + 6);
  else if (density < 0.8) bpm = Math.max(60, bpm - 4);

  return { bpm: Math.round(bpm), timeSignature };
}

const songs = JSON.parse(fs.readFileSync(SONGS_JSON, 'utf8'));
let updated = 0;
for (const s of songs) {
  if (s.id === PROTECTED_ID) continue;
  const { bpm, timeSignature } = analyzeMusicalTempo(s);
  if (s.bpm !== bpm || s.timeSignature !== timeSignature) {
    s.bpm = bpm;
    s.timeSignature = timeSignature;
    updated++;
  }
}

fs.writeFileSync(SONGS_JSON, JSON.stringify(songs, null, 2) + '\n', 'utf8');
const byId = new Map(songs.map(s => [s.id, s]));

for (const f of fs.readdirSync(CATALOG_DIR).filter(x => x.endsWith('.js'))) {
  const p = path.join(CATALOG_DIR, f);
  const raw = fs.readFileSync(p, 'utf8');
  const m = raw.match(/^([\s\S]*?window\.\w+\s*=\s*)(\[[\s\S]*\])(\s*;?\s*)$/);
  if (!m) continue;
  const arr = JSON.parse(m[2]).map(item => byId.get(item.id) || item);
  fs.writeFileSync(p, m[1] + JSON.stringify(arr, null, 2) + m[3], 'utf8');
}

console.log(`Analyzed musical tempo & time signature across ${songs.length} songs (${updated} calibrated).`);
