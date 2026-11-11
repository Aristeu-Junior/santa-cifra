const fs = require('fs');
const path = require('path');

const cacheDir = path.join(__dirname, 'cifraclub_cache');
const files = fs.readdirSync(cacheDir).filter(f => f.endsWith('.txt'));

function cleanCifraClubSheet(raw) {
  let text = raw;

  // Remove Zero width spaces and strange unicode
  text = text.replace(/[\u200B\u200C\u200D\uFEFF]/g, '');

  // HTML entities
  text = text.replace(/&#x27;/g, "'")
             .replace(/&#39;/g, "'")
             .replace(/&quot;/g, '"')
             .replace(/&amp;/g, '&')
             .replace(/&lt;/g, '<')
             .replace(/&gt;/g, '>');

  // Remove Tab sections and guitar fretboard lines
  text = text.replace(/\[Tab[^\]]*\][\s\S]*?(?=\n\s*\n\s*\[|\n\s*\n\s*[A-ZÀ-Ú]|$)/gi, '');
  text = text.replace(/^[EBGDAe]\|[^\n]*\n?/gm, '');
  text = text.replace(/^Parte \d+ de \d+\s*\n?/gm, '');

  // Split lines and trim right
  let lines = text.split('\n').map(l => l.replace(/\s+$/, ''));

  // Remove consecutive blank lines
  const cleanedLines = [];
  let blankCount = 0;
  for (const line of lines) {
    if (line.trim() === '') {
      blankCount++;
      if (blankCount <= 1) cleanedLines.push('');
    } else {
      blankCount = 0;
      cleanedLines.push(line);
    }
  }

  let result = cleanedLines.join('\n').trim();

  // Normalize chord notations that are identical or simpler for guitar:
  // A2 -> A9, D2 -> D9, G2 -> G9, Gsus -> G4, Asus -> A4, Dsus -> D4, Esus -> E4
  result = result.replace(/\bA2\b/g, 'A9')
                 .replace(/\bD2\b/g, 'D9')
                 .replace(/\bG2\b/g, 'G9')
                 .replace(/\bGsus\b/g, 'G4')
                 .replace(/\bAsus\b/g, 'A4')
                 .replace(/\bDsus\b/g, 'D4')
                 .replace(/\bEsus\b/g, 'E4');

  return result;
}

// Function to extract unique chords and originalKey
function analyzeChords(cifra) {
  const chordRegex = /\b([A-G][b#]?(?:m|maj|min|dim|aug|sus)?[0-9]*(?:\/[A-G][b#]?)?)\b/g;
  const lines = cifra.split('\n');
  const chordLines = [];
  const uniqueChords = new Set();

  for (const line of lines) {
    const trimmed = line.trim();
    if (trimmed.startsWith('[') || trimmed === '') continue;
    // Check if line is primarily chords
    const words = trimmed.split(/\s+/);
    const chordsInLine = trimmed.match(chordRegex) || [];
    if (chordsInLine.length >= words.length * 0.6) {
      chordsInLine.forEach(c => uniqueChords.add(c));
    }
  }

  // Find Intro chord
  const introMatch = cifra.match(/\[Intro\]\s*([A-G][b#]?[^\s\n]*)/i);
  let key = introMatch ? introMatch[1].replace(/[^A-G#b]/g, '') : '';
  if (!key) {
    // fallback to first chord in sheet
    const firstChord = cifra.match(/\b([A-G][b#]?)/);
    key = firstChord ? firstChord[1] : 'C';
  }

  return {
    chordCount: uniqueChords.size,
    key
  };
}

const cleanedMap = {};

files.forEach(f => {
  const id = f.replace('.txt', '');
  const raw = fs.readFileSync(path.join(cacheDir, f), 'utf8');
  const cleaned = cleanCifraClubSheet(raw);
  const analysis = analyzeChords(cleaned);
  cleanedMap[id] = {
    cifra: cleaned,
    chordCount: analysis.chordCount,
    key: analysis.key
  };
});

fs.writeFileSync(path.join(__dirname, 'cleaned_cifras_map.json'), JSON.stringify(cleanedMap, null, 2), 'utf8');
console.log(`Processed and saved ${Object.keys(cleanedMap).length} cleaned Cifra Club songs.`);

// Print Frei Gilson and Pe. Fábio samples
console.log('--- Frei Gilson Sample ---');
console.log(cleanedMap['frei-gilson-eu-seguirei'].cifra.slice(0, 500));
console.log('\n--- Pe. Fabio Sample ---');
console.log(cleanedMap['pe-fabio-de-melo-incendeia-minha-alma'].cifra.slice(0, 500));
