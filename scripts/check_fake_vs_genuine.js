const fs = require('fs');

const files = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

const fakeList = [];
const justList = [];

files.forEach(f => {
  const content = fs.readFileSync(f, 'utf8');
  const fn = new Function('return ' + (content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/)[1]));
  const songs = fn();
  songs.forEach(song => {
    const cifra = song.cifra || '';
    const hasFakeCifra = /1\.\s+(Mais do que|Canto ao mundo|Um dia de cada|Não podemos calar|Espírito Santo|Senhor, Tu conheces|Rasgo o meu|Reunidos como|No silêncio do|Finalmente, irmãos|Senhor, eu sei|Dá-me um novo|Quero Te bendizer|Toma minha vida|Vem transformar|Diante de tantas|Tiro as sandálias|Quando o frio|Fonte inesgotável|Não quero ficar|Olho para trás|Não vos conformeis|Quem poderá medir)/.test(cifra);
    const hasFakeJust = song.liturgicalAnalysis && song.liturgicalAnalysis.justification && song.liturgicalAnalysis.justification.includes('Quatro acordes em');

    if (hasFakeCifra) {
      fakeList.push({ file: f, id: song.id, title: song.title, composer: song.composer, key: song.originalKey });
    } else if (hasFakeJust) {
      justList.push({ file: f, id: song.id, title: song.title, composer: song.composer, key: song.originalKey });
    }
  });
});

console.log('REAL SONGS NEEDING CHORDS/LYRICS OVERHAUL (Fake Cifra):', fakeList.length);
fakeList.forEach(s => console.log(`- ${s.id} | ${s.title} (${s.composer}) [${s.key}]`));

console.log('\nSONGS WITH GENUINE CIFRA BUT OLD JUSTIFICATION:', justList.length);
justList.forEach(s => console.log(`- ${s.id} | ${s.title} (${s.composer})`));
