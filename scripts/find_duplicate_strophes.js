const fs = require('fs');

const catalogFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

const phraseMap = {};

catalogFiles.forEach(f => {
  const songs = (new Function('return ' + fs.readFileSync(f, 'utf8').match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/)[1]))();
  songs.forEach(s => {
    const lines = (s.cifra || '').split('\n');
    lines.forEach(l => {
      const clean = l.trim();
      // look for lines with more than 20 chars that are lyrics (not section headers, not tabs)
      if (clean.length > 25 && !clean.startsWith('[') && !clean.startsWith('E|') && !clean.startsWith('B|') && !clean.startsWith('G|') && !clean.startsWith('D|') && !clean.startsWith('A|') && !clean.startsWith('(intro') && !/^[A-G][b#]?[m\d\w\/]*(\s+[A-G][b#]?[m\d\w\/]*)*$/.test(clean)) {
        if (!phraseMap[clean]) phraseMap[clean] = [];
        phraseMap[clean].push({ file: f.split('/').pop(), songId: s.id, songTitle: s.title });
      }
    });
  });
});

console.log('=== FRASES REPETIDAS EM MÚLTIPLAS MÚSICAS ===');
const duplicates = Object.keys(phraseMap).filter(p => phraseMap[p].length > 1);
duplicates.forEach(phrase => {
  // deduplicate by songId
  const uniqueSongs = [];
  const seen = new Set();
  phraseMap[phrase].forEach(item => {
    if (!seen.has(item.songId)) {
      seen.add(item.songId);
      uniqueSongs.push(item);
    }
  });

  if (uniqueSongs.length > 1) {
    console.log(`\nFrase: "${phrase}" (aparece em ${uniqueSongs.length} músicas):`);
    uniqueSongs.forEach(u => console.log(`  - [${u.file}] ${u.songId} (${u.songTitle})`));
  }
});
