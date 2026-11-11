const fs = require('fs');
const songs = JSON.parse(fs.readFileSync('santa-cifra/data/songs.json', 'utf8'));
const matches = songs.filter(s => s.id && s.id.includes('kyrie'));
matches.forEach(s => {
  console.log('ID:', s.id, 'Title:', s.title);
  console.log(s.cifra.slice(0, 300));
  console.log('----------------------------------------------------');
});
