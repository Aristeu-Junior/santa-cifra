const fs = require('fs');

const songsPath = 'santa-cifra/data/songs.json';
const songs = JSON.parse(fs.readFileSync(songsPath, 'utf8'));
const incendeia = songs.find(s => s.id === 'pe-fabio-de-melo-incendeia-minha-alma');
if (incendeia) {
  incendeia.composer = 'Padre Fábio de Melo / Rogério / Júlio / Intérprete: Frei Gilson';
  incendeia.artist = 'Padre Fábio de Melo / Frei Gilson';
}
fs.writeFileSync(songsPath, JSON.stringify(songs, null, 2), 'utf8');

const catPath = 'santa-cifra/js/catalog/catalog-adoracao-comunidades.js';
let content = fs.readFileSync(catPath, 'utf8');
content = content.replace(
  '"composer": "Padre Fábio de Melo / Rogério / Júlio",',
  '"composer": "Padre Fábio de Melo / Rogério / Júlio / Intérprete: Frei Gilson",\n    "artist": "Padre Fábio de Melo / Frei Gilson",'
);
fs.writeFileSync(catPath, content, 'utf8');
console.log('Updated Incendeia Minha Alma metadata for searchability');
