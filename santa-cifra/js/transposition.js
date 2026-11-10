/**
 * Motor de Transposição Musical, Simplificação e Manipulação de Acordes
 * Santa Cifra - Plataforma de Cifras Litúrgicas Católicas
 */

const NOTES_SHARP = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B'];
const NOTES_FLAT  = ['C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab', 'A', 'Bb', 'B'];

const ENHARMONIC_MAP = {
  'B#': 'C', 'Cb': 'B', 'E#': 'F', 'Fb': 'E',
  'Db': 'C#', 'Eb': 'D#', 'Gb': 'F#', 'Ab': 'G#', 'Bb': 'A#'
};

const SECTION_KEYWORDS = [
  'intro', 'refrão', 'estrofe', 'estrofes', 'solo', 'ponte', 
  'primeira parte', 'segunda parte', 'refrão final', 'versículo', 
  'interlúdio', 'final', 'coro', 'salmista', 'assembleia'
];

function isSectionMarker(text) {
  const clean = text.replace(/[\[\]]/g, '').trim().toLowerCase();
  return SECTION_KEYWORDS.some(k => clean.startsWith(k));
}

const CHORD_REGEX = /(?:^|(?<=\s|\(|\[))([A-G][b#]?)(m|M|maj|min|dim|aug|sus[24]?|[0-9]+|add[0-9]+|\+|º|°)*(\/([A-G][b#]?))?(?=\s|$|[),\];])/g;

function isValidChord(token) {
  if (!token) return false;
  const clean = token.replace(/[(),\[\]]/g, '').trim();
  if (!clean || isSectionMarker(clean)) return false;
  return /^([A-G][b#]?)(m|M|maj|min|dim|aug|sus[24]?|[0-9]+|add[0-9]+|\+|º|°)*(\/([A-G][b#]?))?$/.test(clean);
}

function normalizeNote(note) {
  if (!note) return '';
  const clean = note.trim();
  if (ENHARMONIC_MAP[clean]) {
    return ENHARMONIC_MAP[clean];
  }
  return clean;
}

function transposeNote(note, semitones, useFlats = false) {
  const norm = normalizeNote(note);
  let idx = NOTES_SHARP.indexOf(norm);
  if (idx === -1) {
    idx = NOTES_FLAT.indexOf(note);
    if (idx === -1) return note;
  }

  let newIdx = (idx + semitones) % 12;
  if (newIdx < 0) newIdx += 12;

  const scale = useFlats ? NOTES_FLAT : NOTES_SHARP;
  return scale[newIdx];
}

function transposeChord(chordText, semitones, preferFlats = false) {
  if (!chordText || semitones === 0) return chordText;
  if (!isValidChord(chordText)) return chordText;

  const match = chordText.match(/^([A-G][b#]?)(.*?)(\/([A-G][b#]?))?$/);
  if (!match) return chordText;

  const root = match[1];
  const suffix = match[2] || '';
  const bass = match[4];

  const newRoot = transposeNote(root, semitones, preferFlats);
  let newBassPart = '';

  if (bass) {
    const newBass = transposeNote(bass, semitones, preferFlats);
    newBassPart = '/' + newBass;
  }

  return newRoot + suffix + newBassPart;
}

/**
 * Simplifica um acorde removendo inversões (/F#), nonas, sétimas maiores e extensões complexas,
 * mantendo apenas Maior, Menor (m) ou Dominante essencial se necessário.
 */
function simplifyChord(chordText) {
  if (!chordText || !isValidChord(chordText)) return chordText;
  const match = chordText.match(/^([A-G][b#]?)(.*?)(\/([A-G][b#]?))?$/);
  if (!match) return chordText;

  const root = match[1];
  const suffix = match[2] || '';

  // Se for menor (m, m7, m9, min), reduz para "m" simples
  if (suffix.startsWith('m') && !suffix.startsWith('maj')) {
    return root + 'm';
  }
  // Caso contrário, reduz para a tríade maior pura
  return root;
}

/**
 * Processa o texto completo da cifra aplicando transposição e/ou simplificação
 */
function processCifraText(fullText, semitones = 0, simplify = false, preferFlats = false) {
  const lines = fullText.split('\n');
  const processedLines = lines.map(line => {
    const trimmed = line.trim();

    if (trimmed.startsWith('[') && trimmed.endsWith(']') && isSectionMarker(trimmed)) {
      return line;
    }

    const transformToken = (chord) => {
      if (!isValidChord(chord)) return chord;
      let res = semitones !== 0 ? transposeChord(chord, semitones, preferFlats) : chord;
      if (simplify) {
        res = simplifyChord(res);
      }
      return res;
    };

    if (trimmed.startsWith('[Intro]')) {
      const prefix = line.substring(0, line.indexOf('[Intro]') + 7);
      const chordsPart = line.substring(line.indexOf('[Intro]') + 7);
      const outChords = chordsPart.replace(CHORD_REGEX, transformToken);
      return prefix + outChords;
    }

    if (line.includes('[') && line.includes(']')) {
      return line.replace(/\[([^\]]+)\]/g, (match, inner) => {
        if (isSectionMarker(inner)) return match;
        if (isValidChord(inner)) {
          return `[${transformToken(inner)}]`;
        }
        return match;
      });
    }

    if (isChordLine(line)) {
      return line.replace(CHORD_REGEX, transformToken);
    }

    return line;
  });

  return processedLines.join('\n');
}

function transposeCifraText(fullText, semitones, preferFlats = false) {
  return processCifraText(fullText, semitones, false, preferFlats);
}

function isChordLine(line) {
  const trimmed = line.trim();
  if (!trimmed) return false;
  if (trimmed.startsWith('[') && trimmed.endsWith(']') && isSectionMarker(trimmed)) return false;
  if (/^\d+\./.test(trimmed)) return false;

  const tokens = trimmed.split(/\s+/).filter(t => t.length > 0);
  if (tokens.length === 0) return false;

  let validChords = 0;
  for (const token of tokens) {
    if (isValidChord(token)) {
      validChords++;
    }
  }

  return (validChords / tokens.length) >= 0.5;
}

function extractUniqueChords(cifraText) {
  const chords = new Set();
  const lines = cifraText.split('\n');

  lines.forEach(line => {
    const trimmed = line.trim();
    if (trimmed.startsWith('[') && trimmed.endsWith(']') && isSectionMarker(trimmed)) {
      return;
    }

    if (trimmed.startsWith('[Intro]')) {
      const rest = line.substring(line.indexOf('[Intro]') + 7);
      const matches = rest.matchAll(CHORD_REGEX);
      for (const m of matches) {
        if (isValidChord(m[0])) chords.add(m[0].trim());
      }
      return;
    }

    if (line.includes('[') && line.includes(']')) {
      const matches = line.matchAll(/\[([^\]]+)\]/g);
      for (const m of matches) {
        if (isValidChord(m[1])) chords.add(m[1].trim());
      }
    } else if (isChordLine(line)) {
      const matches = line.matchAll(CHORD_REGEX);
      for (const m of matches) {
        if (isValidChord(m[0])) chords.add(m[0].trim());
      }
    }
  });

  return Array.from(chords);
}

const TranspositionAPI = {
  transposeChord,
  transposeCifraText,
  processCifraText,
  simplifyChord,
  transposeNote,
  extractUniqueChords,
  isChordLine,
  isValidChord,
  isLikelyChord: isValidChord,
  isSectionMarker,
  NOTES_SHARP,
  NOTES_FLAT
};

window.TranspositionEngine = TranspositionAPI;
window.Transposition = TranspositionAPI;
