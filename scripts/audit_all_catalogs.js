const fs = require('fs');
const path = require('path');

const catalogFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

function loadCatalog(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  // extract array: window.SongsCatalog... = [ ... ];
  const match = content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);\s*$/m) ||
                content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/);
  if (!match) {
    console.error('Could not match array in', filePath);
    return [];
  }
  try {
    // evaluate via Function
    const fn = new Function('return ' + match[1]);
    return fn();
  } catch (err) {
    console.error('Error evaluating', filePath, err.message);
    return [];
  }
}

console.log('=== AUDITORIA COMPLETA DE MÚSICAS ===\n');

let totalSongs = 0;
const shortSongs = [];
const boilerplateSongs = [];
const excessiveSpacesSongs = [];

catalogFiles.forEach(file => {
  const songs = loadCatalog(file);
  totalSongs += songs.length;
  console.log(`${path.basename(file)}: ${songs.length} músicas`);

  songs.forEach(song => {
    const cifra = song.cifra || '';
    const lines = cifra.split('\n');

    // 1. Short check (< 400 chars or < 12 non-empty lines)
    const nonEmptyLines = lines.filter(l => l.trim().length > 0);
    if (cifra.length < 380 || nonEmptyLines.length < 10) {
      shortSongs.push({
        file: path.basename(file),
        id: song.id,
        title: song.title,
        composer: song.composer,
        len: cifra.length,
        lines: nonEmptyLines.length
      });
    }

    // 2. Check for leftover boilerplate indicators
    if (cifra.includes('1. Mais do que palavras bonitas') ||
        cifra.includes('1. Canto ao mundo a alegria') ||
        cifra.includes('1. Um dia de cada vez eu decido') ||
        cifra.includes('1. Não podemos calar o que vimos') ||
        cifra.includes('1. Espírito Santo, vinde falar em mim!') ||
        (song.liturgicalAnalysis && song.liturgicalAnalysis.justification && song.liturgicalAnalysis.justification.includes('Quatro acordes em'))) {
      boilerplateSongs.push({
        file: path.basename(file),
        id: song.id,
        title: song.title,
        composer: song.composer
      });
    }

    // 3. Excessive chord spacing (> 25 consecutive spaces)
    let maxSpaces = 0;
    lines.forEach(l => {
      const spaceMatch = l.match(/ {25,}/g);
      if (spaceMatch) {
        spaceMatch.forEach(s => {
          if (s.length > maxSpaces) maxSpaces = s.length;
        });
      }
    });
    if (maxSpaces > 25) {
      excessiveSpacesSongs.push({
        file: path.basename(file),
        id: song.id,
        title: song.title,
        maxSpaces
      });
    }
  });
});

console.log(`\nTotal de músicas no sistema: ${totalSongs}`);
console.log(`Músicas curtas / suspeitas (<380 chars): ${shortSongs.length}`);
console.log(`Músicas com resquícios de boilerplate: ${boilerplateSongs.length}`);
console.log(`Músicas com espaçamento de acordes >25 espaços: ${excessiveSpacesSongs.length}`);

console.log('\n--- DETALHES DAS MÚSICAS COM RESQUÍCIO DE BOILERPLATE ---');
console.log(JSON.stringify(boilerplateSongs, null, 2));

console.log('\n--- DETALHES DAS MÚSICAS CURTAS (<380 chars) ---');
console.log(JSON.stringify(shortSongs, null, 2));
