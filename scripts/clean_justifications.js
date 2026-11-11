const fs = require('fs');

const catalogFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

catalogFiles.forEach(f => {
  let content = fs.readFileSync(f, 'utf8');
  const match = content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/);
  if (!match) return;
  const songs = (new Function('return ' + match[1]))();

  let modified = false;
  songs.forEach(s => {
    if (s.liturgicalAnalysis && s.liturgicalAnalysis.justification) {
      if (s.liturgicalAnalysis.justification.includes('Quatro acordes em')) {
        s.liturgicalAnalysis.justification = s.liturgicalAnalysis.justification
          .replace(/Quatro acordes em [^,]+ \(([^)]+)\)/g, 'Harmonia com os acordes $1')
          .replace(/Quatro acordes em [^.]+ para/g, 'Arranjo litúrgico para')
          .replace(/Quatro acordes em [^.]+ cantando/g, 'Arranjo entoando')
          .replace(/Quatro acordes em [^.]+ na voz de/g, 'Canção consagrada na voz de')
          .replace(/Quatro acordes em [^.]+ celebrando/g, 'Canção celebrando')
          .replace(/Quatro acordes em [^.]+ proclamando/g, 'Canção proclamando')
          .replace(/Quatro acordes em [^.]+ invocando/g, 'Oração invocando')
          .replace(/Quatro acordes em [^.]+ inspirados/g, 'Canto inspirado')
          .replace(/Quatro acordes em [^.]+ baseados/g, 'Canto bíblico baseado')
          .replace(/Quatro acordes em [^.]+ sobre/g, 'Canção sobre')
          .replace(/Quatro acordes em [^.]+ anunciando/g, 'Canção anunciando')
          .replace(/Quatro acordes em [^.]+/g, 'Arranjo litúrgico');
        modified = true;
      }
    }
  });

  if (modified) {
    const varName = content.match(/window\.(\w+)\s*=/)[1];
    const newHeader = content.split(/window\.\w+\s*=/)[0];
    const newContent = `${newHeader}window.${varName} = ${JSON.stringify(songs, null, 2)};\n`;
    fs.writeFileSync(f, newContent, 'utf8');
    console.log(`Cleaned justifications in ${f}`);
  }
});
