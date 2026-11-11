const fs = require('fs');

const files = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

files.forEach(f => {
  const content = fs.readFileSync(f, 'utf8');
  const fn = new Function('return ' + (content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/)[1]));
  const songs = fn();
  songs.forEach(song => {
    const cifra = song.cifra || '';
    if (cifra.includes('1. Mais do que palavras bonitas') ||
        cifra.includes('1. Canto ao mundo a alegria') ||
        cifra.includes('1. Um dia de cada vez eu decido') ||
        cifra.includes('1. Não podemos calar o que vimos') ||
        cifra.includes('1. Espírito Santo, vinde falar em mim!') ||
        (song.liturgicalAnalysis && song.liturgicalAnalysis.justification && song.liturgicalAnalysis.justification.includes('Quatro acordes em'))) {
      console.log(`[${f.split('/').pop()}] ${song.id} | ${song.title} | ${song.composer}`);
    }
  });
});
