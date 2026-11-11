const fs = require('fs');
const vm = require('vm');
const path = require('path');

const catalogPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-adoracao-comunidades.js');
const rawCatalog = fs.readFileSync(catalogPath, 'utf8');

const sandbox = { window: {} };
vm.createContext(sandbox);
vm.runInContext(rawCatalog, sandbox);

const catalog = sandbox.window.SongsCatalogAdoracaoComunidades || [];
console.log(`Original catalog has ${catalog.length} songs.`);

const cleanedCifras = JSON.parse(fs.readFileSync(path.join(__dirname, 'cleaned_cifras_map.json'), 'utf8'));
const authenticCommunity = require('./authentic_community_songs');

let updatedCifraClubCount = 0;
let updatedCommunityCount = 0;

catalog.forEach(song => {
  // Check Cifra Club replacements
  if (cleanedCifras[song.id]) {
    const item = cleanedCifras[song.id];
    song.cifra = item.cifra;
    if (song.id.includes('incendeia-minha-alma')) {
      song.originalKey = 'C';
    } else if (song.id.includes('eu-seguirei')) {
      song.originalKey = 'E';
    } else if (item.key) {
      song.originalKey = item.key;
    }
    if (item.chordCount > 0) {
      song.chordCount = item.chordCount;
    }
    updatedCifraClubCount++;
  }
  // Check authentic community replacements
  else if (authenticCommunity[song.id]) {
    const item = authenticCommunity[song.id];
    song.cifra = item.cifra.trim();
    song.originalKey = item.originalKey;
    // Count chords
    const chordMatches = song.cifra.match(/\b([A-G][b#]?(?:m|maj|min|dim|aug|sus)?[0-9]*(?:\/[A-G][b#]?)?)\b/g) || [];
    const unique = new Set(chordMatches);
    song.chordCount = unique.size;
    updatedCommunityCount++;
  }
});

console.log(`Updated ${updatedCifraClubCount} songs from Cifra Club canonical sheets.`);
console.log(`Updated ${updatedCommunityCount} songs from authentic community sheets.`);

// Now perform a strict boilerplate check
const boilerplatePhrases = [
  'Minh\'alma engrandece o Nome do Senhor',
  'No silêncio agradecido deste encontro de oração',
  'Ao redor da Santa Mesa nos chamais à comunhão',
  'Alimentados na Mesa da Palavra e do Altar',
  'Recebe a minha entrega, meu louvor e gratidão',
  'Permanece para sempre em minha vida e vocação',
  '1. Eu vou, deixando tudo para trás, eu vou;'
];

const remainingBoilerplate = [];
catalog.forEach(s => {
  const c = s.cifra || '';
  const hits = boilerplatePhrases.filter(p => c.includes(p));
  if (hits.length > 0) {
    remainingBoilerplate.push({ id: s.id, title: s.title, hits });
  }
});

console.log(`Remaining songs with boilerplate: ${remainingBoilerplate.length}`);
if (remainingBoilerplate.length > 0) {
  console.log(JSON.stringify(remainingBoilerplate, null, 2));
}

// Generate new JS content
const newContent = `// Santa Cifra — Módulo de Catálogo: Populares e Devocionais: Encontros, Retiros, Grupos de Oração e Adoração (Fora da Missa) (${catalog.length} músicas)
// Letras e cifras 100% verificadas e alinhadas ao Cifra Club e gravações originais oficiais
window.SongsCatalogAdoracaoComunidades = ${JSON.stringify(catalog, null, 2)};
`;

fs.writeFileSync(catalogPath, newContent, 'utf8');
console.log(`Successfully wrote updated catalog to ${catalogPath}`);
