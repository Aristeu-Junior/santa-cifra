const fs = require('fs');

const catalogFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

let totalAdjustedLines = 0;

function normalizeCifraText(cifra) {
  const lines = cifra.split('\n');
  const newLines = [];

  for (let i = 0; i < lines.length; i++) {
    let line = lines[i];
    const nextLine = lines[i + 1] || '';

    // If it's a tab line or section line, keep as-is
    if (line.startsWith('E|') || line.startsWith('B|') || line.startsWith('G|') ||
        line.startsWith('D|') || line.startsWith('A|') || line.startsWith('[') ||
        line.startsWith('(intro')) {
      newLines.push(line);
      continue;
    }

    // Check if line has chords with excessive spaces (> 16 consecutive spaces)
    // and line length > 38
    if (line.length > 38 && / {16,}/.test(line)) {
      // Find tokens and their indices
      const tokens = [];
      const tokenRegex = /\S+/g;
      let m;
      while ((m = tokenRegex.exec(line)) !== null) {
        tokens.push({ text: m[0], index: m.index });
      }

      // If this line looks like a chord line (typically 2-4 chords separated by large space gulfs)
      if (tokens.length >= 2) {
        let rebuild = '';
        let lastIndex = 0;
        let adjusted = false;

        for (let t = 0; t < tokens.length; t++) {
          const tok = tokens[t];
          if (t === 0) {
            // keep leading spaces
            rebuild += ' '.repeat(tok.index) + tok.text;
            lastIndex = rebuild.length;
          } else {
            const origGap = tok.index - tokens[t - 1].index - tokens[t - 1].text.length;
            let targetGap = origGap;

            // If gap is excessive (> 16) and line is pushing chords past column 36
            if (origGap > 16) {
              // If there's a next lyric line, see where the next phrase starts
              if (nextLine && nextLine.trim().length > 0) {
                // target roughly the middle or second half of the lyric, but capped at col 32
                const lyricLen = nextLine.length;
                const idealCol = Math.min(32, Math.max(lastIndex + 4, Math.floor(lyricLen * (t / tokens.length))));
                targetGap = Math.max(3, idealCol - lastIndex);
              } else {
                targetGap = Math.min(12, origGap);
              }
              adjusted = true;
            }
            rebuild += ' '.repeat(targetGap) + tok.text;
            lastIndex = rebuild.length;
          }
        }

        if (adjusted) {
          totalAdjustedLines++;
          newLines.push(rebuild);
          continue;
        }
      }
    }

    newLines.push(line);
  }

  return newLines.join('\n');
}

catalogFiles.forEach(f => {
  const content = fs.readFileSync(f, 'utf8');
  const match = content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/);
  if (!match) return;
  const songs = (new Function('return ' + match[1]))();

  songs.forEach(s => {
    if (s.cifra) {
      s.cifra = normalizeCifraText(s.cifra);
    }
  });

  const varName = content.match(/window\.(\w+)\s*=/)[1];
  const header = content.split(/window\.\w+\s*=/)[0];
  fs.writeFileSync(f, `${header}window.${varName} = ${JSON.stringify(songs, null, 2)};\n`, 'utf8');
  console.log(`Normalized spacing in ${f}`);
});

console.log(`Total adjusted lines across all catalogs: ${totalAdjustedLines}`);
