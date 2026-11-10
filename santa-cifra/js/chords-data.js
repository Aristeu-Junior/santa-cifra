/**
 * Dicionário e Gerador de Diagramas SVG de Acordes Multi-Instrumentos
 * Suporta: Violão, Teclado/Piano, Ukulele e Cavaquinho
 */

const CHORD_DIAGRAMS = {
  // VIOLÃO (6 cordas: E A D G B E)
  // Formato: frets [6ª à 1ª corda], -1 = x (abafada), 0 = o (solta), 1..n = traste. barre: casa da pestana
  guitar: {
    'C':   { frets: [-1, 3, 2, 0, 1, 0], fingers: [0, 3, 2, 0, 1, 0] },
    'C7':  { frets: [-1, 3, 2, 3, 1, 0], fingers: [0, 3, 2, 4, 1, 0] },
    'C9':  { frets: [-1, 3, 2, 0, 3, 3], fingers: [0, 2, 1, 0, 3, 4] },
    'C7+': { frets: [-1, 3, 2, 0, 0, 0], fingers: [0, 3, 2, 0, 0, 0] },
    'Cm':  { frets: [-1, 3, 5, 5, 4, 3], fingers: [0, 1, 3, 4, 2, 1], barre: 3 },
    'Cm7': { frets: [-1, 3, 5, 3, 4, 3], fingers: [0, 1, 3, 1, 2, 1], barre: 3 },
    
    'D':   { frets: [-1, -1, 0, 2, 3, 2], fingers: [0, 0, 0, 1, 3, 2] },
    'D7':  { frets: [-1, -1, 0, 2, 1, 2], fingers: [0, 0, 0, 2, 1, 3] },
    'D7+': { frets: [-1, -1, 0, 2, 2, 2], fingers: [0, 0, 0, 1, 1, 1], barre: 2 },
    'D9':  { frets: [-1, -1, 0, 2, 3, 0], fingers: [0, 0, 0, 1, 2, 0] },
    'Dm':  { frets: [-1, -1, 0, 2, 3, 1], fingers: [0, 0, 0, 2, 3, 1] },
    'Dm7': { frets: [-1, -1, 0, 2, 1, 1], fingers: [0, 0, 0, 2, 1, 1], barre: 1 },
    'D/F#':{ frets: [2, 0, 0, 2, 3, 2], fingers: [1, 0, 0, 2, 4, 3] },

    'E':   { frets: [0, 2, 2, 1, 0, 0], fingers: [0, 2, 3, 1, 0, 0] },
    'E7':  { frets: [0, 2, 0, 1, 0, 0], fingers: [0, 2, 0, 1, 0, 0] },
    'Em':  { frets: [0, 2, 2, 0, 0, 0], fingers: [0, 1, 2, 0, 0, 0] },
    'Em7': { frets: [0, 2, 0, 0, 0, 0], fingers: [0, 1, 0, 0, 0, 0] },

    'F':   { frets: [1, 3, 3, 2, 1, 1], fingers: [1, 3, 4, 2, 1, 1], barre: 1 },
    'F7':  { frets: [1, 3, 1, 2, 1, 1], fingers: [1, 3, 1, 2, 1, 1], barre: 1 },
    'F7+': { frets: [-1, -1, 3, 2, 1, 0], fingers: [0, 0, 3, 2, 1, 0] },
    'F#':  { frets: [2, 4, 4, 3, 2, 2], fingers: [1, 3, 4, 2, 1, 1], barre: 2 },
    'F#7': { frets: [2, 4, 2, 3, 2, 2], fingers: [1, 3, 1, 2, 1, 1], barre: 2 },
    'F#m': { frets: [2, 4, 4, 2, 2, 2], fingers: [1, 3, 4, 1, 1, 1], barre: 2 },
    'F#m7':{ frets: [2, 4, 2, 2, 2, 2], fingers: [1, 3, 1, 1, 1, 1], barre: 2 },

    'G':   { frets: [3, 2, 0, 0, 0, 3], fingers: [2, 1, 0, 0, 0, 3] },
    'G7':  { frets: [3, 2, 0, 0, 0, 1], fingers: [3, 2, 0, 0, 0, 1] },
    'G7+': { frets: [3, -1, 0, 0, 0, 2], fingers: [2, 0, 0, 0, 0, 1] },
    'Gm':  { frets: [3, 5, 5, 3, 3, 3], fingers: [1, 3, 4, 1, 1, 1], barre: 3 },
    'G/B': { frets: [-1, 2, 0, 0, 3, 3], fingers: [0, 1, 0, 0, 3, 4] },

    'A':   { frets: [-1, 0, 2, 2, 2, 0], fingers: [0, 0, 1, 2, 3, 0] },
    'A7':  { frets: [-1, 0, 2, 0, 2, 0], fingers: [0, 0, 1, 0, 2, 0] },
    'A7+': { frets: [-1, 0, 2, 1, 2, 0], fingers: [0, 0, 2, 1, 3, 0] },
    'Am':  { frets: [-1, 0, 2, 2, 1, 0], fingers: [0, 0, 2, 3, 1, 0] },
    'Am7': { frets: [-1, 0, 2, 0, 1, 0], fingers: [0, 0, 2, 0, 1, 0] },
    'A/C#':{ frets: [-1, 4, 2, 2, 2, -1], fingers: [0, 3, 1, 1, 1, 0] },

    'B':   { frets: [-1, 2, 4, 4, 4, 2], fingers: [0, 1, 2, 3, 4, 1], barre: 2 },
    'B7':  { frets: [-1, 2, 1, 2, 0, 2], fingers: [0, 2, 1, 3, 0, 4] },
    'Bm':  { frets: [-1, 2, 4, 4, 3, 2], fingers: [0, 1, 3, 4, 2, 1], barre: 2 },
    'Bm7': { frets: [-1, 2, 4, 2, 3, 2], fingers: [0, 1, 3, 1, 2, 1], barre: 2 },

    'Bb':  { frets: [-1, 1, 3, 3, 3, 1], fingers: [0, 1, 2, 3, 4, 1], barre: 1 },
    'Bb7': { frets: [-1, 1, 3, 1, 3, 1], fingers: [0, 1, 3, 1, 4, 1], barre: 1 }
  },

  // UKULELE (4 cordas: G C E A)
  ukulele: {
    'C':   { frets: [0, 0, 0, 3] },
    'C7':  { frets: [0, 0, 0, 1] },
    'Cm':  { frets: [0, 3, 3, 3] },
    'D':   { frets: [2, 2, 2, 0] },
    'D7':  { frets: [2, 0, 2, 0] },
    'Dm':  { frets: [2, 2, 1, 0] },
    'E':   { frets: [4, 4, 4, 2] },
    'E7':  { frets: [1, 2, 0, 2] },
    'Em':  { frets: [0, 4, 3, 2] },
    'F':   { frets: [2, 0, 1, 0] },
    'F#m': { frets: [2, 1, 2, 0] },
    'G':   { frets: [0, 2, 3, 2] },
    'G7':  { frets: [0, 2, 1, 2] },
    'Gm':  { frets: [0, 2, 3, 1] },
    'A':   { frets: [2, 1, 0, 0] },
    'A7':  { frets: [0, 1, 0, 0] },
    'Am':  { frets: [2, 0, 0, 0] },
    'B':   { frets: [4, 3, 2, 2] },
    'B7':  { frets: [2, 3, 2, 2] },
    'Bm':  { frets: [4, 2, 2, 2] },
    'Bb':  { frets: [3, 2, 1, 1] }
  },

  // CAVAQUINHO (4 cordas: D G B D)
  cavaquinho: {
    'C':   { frets: [2, 0, 1, 2] },
    'C7':  { frets: [2, 3, 1, 2] },
    'Cm':  { frets: [1, 0, 1, 1] },
    'D':   { frets: [0, 2, 3, 0] },
    'D7':  { frets: [0, 2, 1, 0] },
    'Dm':  { frets: [0, 2, 3, 3] },
    'E':   { frets: [2, 1, 0, 2] },
    'E7':  { frets: [2, 1, 3, 2] },
    'Em':  { frets: [2, 0, 0, 2] },
    'F':   { frets: [3, 2, 1, 3] },
    'F#m': { frets: [4, 2, 2, 4] },
    'G':   { frets: [0, 0, 0, 0] },
    'G7':  { frets: [0, 0, 0, 3] },
    'Gm':  { frets: [0, 3, 3, 0] },
    'A':   { frets: [2, 2, 2, 2] },
    'A7':  { frets: [2, 0, 2, 2] },
    'Am':  { frets: [2, 2, 1, 2] },
    'B':   { frets: [4, 4, 4, 4] },
    'B7':  { frets: [1, 2, 0, 1] },
    'Bm':  { frets: [0, 4, 3, 0] },
    'Bb':  { frets: [3, 3, 3, 3] }
  },

  // TECLADO / PIANO (Notas ativas da tríade / tétrade)
  keyboard: {
    'C':   ['C', 'E', 'G'],
    'C7':  ['C', 'E', 'G', 'A#'],
    'C9':  ['C', 'D', 'E', 'G'],
    'C7+': ['C', 'E', 'G', 'B'],
    'Cm':  ['C', 'D#', 'G'],
    'Cm7': ['C', 'D#', 'G', 'A#'],
    'D':   ['D', 'F#', 'A'],
    'D7':  ['D', 'F#', 'A', 'C'],
    'D7+': ['D', 'F#', 'A', 'C#'],
    'Dm':  ['D', 'F', 'A'],
    'Dm7': ['D', 'F', 'A', 'C'],
    'D/F#':['F#', 'D', 'A'],
    'E':   ['E', 'G#', 'B'],
    'E7':  ['E', 'G#', 'B', 'D'],
    'Em':  ['E', 'G', 'B'],
    'Em7': ['E', 'G', 'B', 'D'],
    'F':   ['F', 'A', 'C'],
    'F7':  ['F', 'A', 'C', 'D#'],
    'F7+': ['F', 'A', 'C', 'E'],
    'F#':  ['F#', 'A#', 'C#'],
    'F#7': ['F#', 'A#', 'C#', 'E'],
    'F#m': ['F#', 'A', 'C#'],
    'F#m7':['F#', 'A', 'C#', 'E'],
    'G':   ['G', 'B', 'D'],
    'G7':  ['G', 'B', 'D', 'F'],
    'G7+': ['G', 'B', 'D', 'F#'],
    'Gm':  ['G', 'A#', 'D'],
    'G/B': ['B', 'G', 'D'],
    'A':   ['A', 'C#', 'E'],
    'A7':  ['A', 'C#', 'E', 'G'],
    'A7+': ['A', 'C#', 'E', 'G#'],
    'Am':  ['A', 'C', 'E'],
    'Am7': ['A', 'C', 'E', 'G'],
    'A/C#':['C#', 'A', 'E'],
    'B':   ['B', 'D#', 'F#'],
    'B7':  ['B', 'D#', 'F#', 'A'],
    'Bm':  ['B', 'D', 'F#'],
    'Bm7': ['B', 'D', 'F#', 'A'],
    'Bb':  ['A#', 'D', 'F'],
    'Bb7': ['A#', 'D', 'F', 'G#']
  }
};

/**
 * Renderiza o diagrama SVG de um acorde para o Violão (Guitar)
 */
function renderGuitarSVG(chordName) {
  const cleanName = chordName.split('/')[0];
  const info = CHORD_DIAGRAMS.guitar[chordName] || CHORD_DIAGRAMS.guitar[cleanName] || { frets: [-1, 0, 0, 0, 0, 0] };
  
  const width = 110;
  const height = 135;
  const topMargin = 30;
  const sideMargin = 15;
  const stringSpacing = (width - 2 * sideMargin) / 5;
  const fretSpacing = (height - topMargin - 15) / 5;

  let svg = `<svg width="${width}" height="${height}" viewBox="0 0 ${width} ${height}" class="chord-svg guitar-svg">`;
  
  // Nome do acorde
  svg += `<text x="${width/2}" y="18" text-anchor="middle" font-family="Georgia, serif" font-size="14" font-weight="bold" fill="#8b0000">${chordName}</text>`;

  // Pestana superior ou traste
  svg += `<rect x="${sideMargin}" y="${topMargin}" width="${width - 2 * sideMargin}" height="3" fill="#333" />`;

  // Linhas verticais (cordas)
  for (let i = 0; i < 6; i++) {
    const x = sideMargin + i * stringSpacing;
    svg += `<line x1="${x}" y1="${topMargin}" x2="${x}" y2="${topMargin + 5 * fretSpacing}" stroke="#666" stroke-width="1.2" />`;
  }

  // Linhas horizontais (trastes)
  for (let i = 1; i <= 5; i++) {
    const y = topMargin + i * fretSpacing;
    svg += `<line x1="${sideMargin}" y1="${y}" x2="${width - sideMargin}" y2="${y}" stroke="#999" stroke-width="1" />`;
  }

  // Marcadores de cordas soltas / abafadas / trastes
  info.frets.forEach((fret, i) => {
    const x = sideMargin + i * stringSpacing;
    if (fret === -1) {
      svg += `<text x="${x}" y="${topMargin - 5}" text-anchor="middle" font-size="11" fill="#777" font-weight="bold">×</text>`;
    } else if (fret === 0) {
      svg += `<circle cx="${x}" cy="${topMargin - 8}" r="3.5" fill="none" stroke="#555" stroke-width="1.2" />`;
    } else if (fret > 0) {
      const y = topMargin + (fret - 0.5) * fretSpacing;
      svg += `<circle cx="${x}" cy="${y}" r="5" fill="#8b0000" />`;
    }
  });

  svg += `</svg>`;
  return svg;
}

/**
 * Renderiza o diagrama SVG de um acorde para o Teclado/Piano
 */
function renderKeyboardSVG(chordName) {
  const cleanName = chordName.split('/')[0];
  const activeNotes = CHORD_DIAGRAMS.keyboard[chordName] || CHORD_DIAGRAMS.keyboard[cleanName] || ['C', 'E', 'G'];

  const width = 160;
  const height = 90;
  const whiteKeyWidth = width / 14; // 2 oitavas (14 teclas brancas)
  const whiteKeyHeight = 65;
  const blackKeyWidth = whiteKeyWidth * 0.65;
  const blackKeyHeight = 40;

  let svg = `<svg width="${width}" height="${height}" viewBox="0 0 ${width} ${height}" class="chord-svg keyboard-svg">`;
  svg += `<text x="${width/2}" y="14" text-anchor="middle" font-family="Georgia, serif" font-size="12" font-weight="bold" fill="#8b0000">${chordName} (Teclado)</text>`;

  const whiteNotes = ['C', 'D', 'E', 'F', 'G', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'A', 'B'];
  const blackNotesPos = [
    { note: 'C#', pos: 0 }, { note: 'D#', pos: 1 },
    { note: 'F#', pos: 3 }, { note: 'G#', pos: 4 }, { note: 'A#', pos: 5 },
    { note: 'C#', pos: 7 }, { note: 'D#', pos: 8 },
    { note: 'F#', pos: 10 }, { note: 'G#', pos: 11 }, { note: 'A#', pos: 12 }
  ];

  // Teclas Brancas
  for (let i = 0; i < 14; i++) {
    const x = i * whiteKeyWidth;
    const note = whiteNotes[i];
    const isPlayed = activeNotes.includes(note);
    const fill = isPlayed ? '#f9e8e8' : '#ffffff';

    svg += `<rect x="${x}" y="20" width="${whiteKeyWidth}" height="${whiteKeyHeight}" fill="${fill}" stroke="#333" stroke-width="1" rx="1" />`;
    if (isPlayed) {
      svg += `<circle cx="${x + whiteKeyWidth/2}" cy="${20 + whiteKeyHeight - 12}" r="3.5" fill="#8b0000" />`;
    }
  }

  // Teclas Pretas
  blackNotesPos.forEach(({ note, pos }) => {
    const x = (pos + 1) * whiteKeyWidth - (blackKeyWidth / 2);
    const isPlayed = activeNotes.includes(note);
    const fill = isPlayed ? '#8b0000' : '#222222';

    svg += `<rect x="${x}" y="20" width="${blackKeyWidth}" height="${blackKeyHeight}" fill="${fill}" stroke="#111" stroke-width="0.8" rx="1" />`;
    if (isPlayed) {
      svg += `<circle cx="${x + blackKeyWidth/2}" cy="${20 + blackKeyHeight - 8}" r="2.5" fill="#ffffff" />`;
    }
  });

  svg += `</svg>`;
  return svg;
}

/**
 * Renderiza o diagrama SVG de um acorde para Ukulele ou Cavaquinho (4 cordas)
 */
function render4StringSVG(chordName, instrument = 'ukulele') {
  const dict = CHORD_DIAGRAMS[instrument] || CHORD_DIAGRAMS.ukulele;
  const cleanName = chordName.split('/')[0];
  const info = dict[chordName] || dict[cleanName] || { frets: [0, 0, 0, 0] };

  const width = 90;
  const height = 120;
  const topMargin = 26;
  const sideMargin = 15;
  const stringSpacing = (width - 2 * sideMargin) / 3;
  const fretSpacing = (height - topMargin - 15) / 4;

  let svg = `<svg width="${width}" height="${height}" viewBox="0 0 ${width} ${height}" class="chord-svg ${instrument}-svg">`;
  svg += `<text x="${width/2}" y="15" text-anchor="middle" font-family="Georgia, serif" font-size="12" font-weight="bold" fill="#8b0000">${chordName}</text>`;

  // Pestana
  svg += `<rect x="${sideMargin}" y="${topMargin}" width="${width - 2 * sideMargin}" height="2.5" fill="#333" />`;

  // 4 cordas
  for (let i = 0; i < 4; i++) {
    const x = sideMargin + i * stringSpacing;
    svg += `<line x1="${x}" y1="${topMargin}" x2="${x}" y2="${topMargin + 4 * fretSpacing}" stroke="#666" stroke-width="1.2" />`;
  }

  // Trastes
  for (let i = 1; i <= 4; i++) {
    const y = topMargin + i * fretSpacing;
    svg += `<line x1="${sideMargin}" y1="${y}" x2="${width - sideMargin}" y2="${y}" stroke="#aaa" stroke-width="1" />`;
  }

  // Pontos
  info.frets.forEach((fret, i) => {
    const x = sideMargin + i * stringSpacing;
    if (fret === 0) {
      svg += `<circle cx="${x}" cy="${topMargin - 6}" r="3" fill="none" stroke="#555" stroke-width="1.2" />`;
    } else if (fret > 0) {
      const y = topMargin + (fret - 0.5) * fretSpacing;
      svg += `<circle cx="${x}" cy="${y}" r="4.5" fill="#8b0000" />`;
    }
  });

  svg += `</svg>`;
  return svg;
}

/**
 * Função unificada para gerar o SVG no instrumento selecionado
 */
function getChordSVG(chordName, instrument = 'guitar') {
  if (instrument === 'keyboard') {
    return renderKeyboardSVG(chordName);
  } else if (instrument === 'ukulele' || instrument === 'cavaquinho') {
    return render4StringSVG(chordName, instrument);
  } else {
    return renderGuitarSVG(chordName);
  }
}

window.ChordsData = {
  CHORD_DIAGRAMS,
  getChordSVG,
  renderInstrumentSVG: getChordSVG,
  renderGuitarSVG,
  renderKeyboardSVG,
  render4StringSVG
};
