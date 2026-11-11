const fs = require('fs');
const songs = JSON.parse(fs.readFileSync('santa-cifra/data/songs.json', 'utf8'));
const matches = songs.filter(s => s.id && s.id.includes('incendeia'));
matches.forEach(s => {
  console.log('ID:', s.id, 'Title:', s.title, 'Artist:', s.artist, 'Tom:', s.tom);
  console.log('Cifra snippet:\n', s.cifra.slice(0, 200));
  console.log('----------------------------------------------------');
});
