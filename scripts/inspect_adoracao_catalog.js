const fs = require('fs');

global.window = {};
eval(fs.readFileSync('C:/Users/Aristeu Junior/.gemini/antigravity-cli/scratch/musica-liturgica-catolica/santa-cifra/js/catalog/catalog-adoracao-comunidades.js', 'utf8'));
const list = global.window.SongsCatalogAdoracaoComunidades || [];

console.log('Total in catalog-adoracao-comunidades:', list.length);

// Count by artists
const byArtist = {};
list.forEach(s => {
  byArtist[s.composer] = (byArtist[s.composer] || 0) + 1;
});
console.log('Top artists:');
Object.entries(byArtist).sort((a,b) => b[1] - a[1]).slice(0, 20).forEach(([a, c]) => console.log(`  ${a}: ${c}`));

// Let's print out the first 10 song titles and their intros/chords
console.log('\nSample songs:');
list.slice(0, 5).forEach(s => {
  console.log(`[${s.id}] "${s.title}" (${s.composer}) - Tom: ${s.originalKey}`);
  console.log(s.cifra.substring(0, 150));
  console.log('---');
});
