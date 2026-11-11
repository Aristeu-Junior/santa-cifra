const fs = require('fs');

const catalogFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

let tightened = 0;

function tightenChordLine(line) {
  // If tab line or section label, skip
  if (line.startsWith('E|') || line.startsWith('B|') || line.startsWith('G|') ||
      line.startsWith('D|') || line.startsWith('A|') || line.startsWith('[') ||
      line.startsWith('(intro') || line.startsWith('Parte')) {
    return line;
  }

  // If line contains gaps of 20 or more spaces
  if (/ {20,}/.test(line)) {
    // Only tighten if the line consists mostly of chords / spaces
    const cleanTokens = line.trim().split(/\s+/);
    // If every token looks like a chord or section label or Roman numeral or digit
    const isChordish = cleanTokens.every(tok => /^[A-G][b#]?[m\d\w\/\(\)\+\-º°]*$/.test(tok) || /^\d+\.?$/.test(tok) || /^\[.*\]$/.test(tok));
    if (isChordish) {
      // Replace any run of > 16 spaces with 14 spaces
      const newLine = line.replace(/ {17,}/g, '              ');
      if (newLine !== line) {
        tightened++;
        return newLine;
      }
    }
  }

  return line;
}

catalogFiles.forEach(f => {
  const content = fs.readFileSync(f, 'utf8');
  const match = content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/);
  if (!match) return;
  const songs = (new Function('return ' + match[1]))();

  songs.forEach(s => {
    if (s.cifra) {
      const lines = s.cifra.split('\n');
      s.cifra = lines.map(tightenChordLine).join('\n');
    }
  });

  const varName = content.match(/window\.(\w+)\s*=/)[1];
  const header = content.split(/window\.\w+\s*=/)[0];
  fs.writeFileSync(f, `${header}window.${varName} = ${JSON.stringify(songs, null, 2)};\n`, 'utf8');
  console.log(`Tightened chord spacing in ${f}`);
});

console.log(`Total tightened lines: ${tightened}`);
