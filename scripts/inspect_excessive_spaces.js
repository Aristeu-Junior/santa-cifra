const fs = require('fs');

const catalogFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

let examples = [];

catalogFiles.forEach(f => {
  const songs = (new Function('return ' + fs.readFileSync(f, 'utf8').match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/)[1]))();
  songs.forEach(s => {
    const lines = (s.cifra || '').split('\n');
    lines.forEach((l, i) => {
      if (/ {25,}/.test(l)) {
        examples.push({
          songId: s.id,
          songTitle: s.title,
          lineNum: i + 1,
          chordLine: l,
          nextLine: lines[i + 1] || ''
        });
      }
    });
  });
});

console.log(`Total lines with >25 spaces: ${examples.length}`);
console.log('Sample of 10 lines:');
examples.slice(0, 10).forEach(ex => {
  console.log(`[${ex.songId}] L${ex.lineNum}:`);
  console.log(`CHORD: "${ex.chordLine}"`);
  console.log(`LYRIC: "${ex.nextLine}"`);
  console.log('---');
});
