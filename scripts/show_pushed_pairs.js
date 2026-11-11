const fs = require('fs');

const songs = (new Function('return ' + fs.readFileSync('santa-cifra/js/catalog/catalog-ordinario-salmos.js', 'utf8').match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/)[1]))();
let shown = 0;
songs.forEach(s => {
  const lines = (s.cifra || '').split('\n');
  lines.forEach((l, idx) => {
    if (l.length > 38 && !l.startsWith('[') && !l.startsWith('E|') && / {18,}/.test(l) && shown < 15) {
      console.log(`SONG: ${s.title} (${s.id})`);
      console.log(`CHORD: "${l}"`);
      console.log(`LYRIC: "${lines[idx+1] || ''}"`);
      console.log('---');
      shown++;
    }
  });
});
