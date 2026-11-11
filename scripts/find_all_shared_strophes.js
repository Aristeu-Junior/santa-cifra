const fs = require('fs');
global.window = {};

function loadCatalog(file, varName) {
  const content = fs.readFileSync(file, 'utf8');
  eval(content);
  return global.window[varName.replace('window.', '')];
}

const ord = loadCatalog('santa-cifra/js/catalog/catalog-ordinario-salmos.js', 'window.SongsCatalogOrdinario');
const ent = loadCatalog('santa-cifra/js/catalog/catalog-entrada-final.js', 'window.SongsCatalogEntradaFinal');
const ofe = loadCatalog('santa-cifra/js/catalog/catalog-ofertorio-comunhao.js', 'window.SongsCatalogOfertorioComunhao');
const ado = loadCatalog('santa-cifra/js/catalog/catalog-adoracao-comunidades.js', 'window.SongsCatalogAdoracaoComunidades');

const all = [...ord, ...ent, ...ofe, ...ado];

const stanzaMap = {};

all.forEach(s => {
  // Extract paragraphs / sections
  const paragraphs = s.cifra.split(/\n\s*\n/);
  paragraphs.forEach(p => {
    // clean chords and get only text lines
    const textLines = p.split('\n')
      .map(l => l.trim())
      .filter(l => l && !l.startsWith('[') && !/^[A-G][b#]?(m|maj|min|dim|aug|sus|\d|\/|\+|\-)*(\s+[A-G][b#]?(m|maj|min|dim|aug|sus|\d|\/|\+|\-)*)*$/.test(l))
      .filter(l => l.length > 15);
    
    if (textLines.length >= 2) {
      const stanzaKey = textLines.slice(0, 2).join(' | ').toLowerCase().replace(/[.,!?;:()]/g, '').replace(/\s+/g, ' ');
      if (!stanzaMap[stanzaKey]) stanzaMap[stanzaKey] = [];
      stanzaMap[stanzaKey].push({ id: s.id, title: s.title, text: textLines.slice(0, 2).join('\n') });
    }
  });
});

console.log('=== DUPLICATE STROPHE AUDIT ===');
const repeated = Object.keys(stanzaMap).filter(k => stanzaMap[k].length > 1);
console.log('Total repeated strophe signatures:', repeated.length);

repeated.forEach(k => {
  const songs = stanzaMap[k];
  // Ignore exact duplicates of the same song if title is identical
  const uniqueTitles = new Set(songs.map(x => x.title.toLowerCase()));
  if (uniqueTitles.size > 1) {
    console.log(`\nStrophe found in MULTIPLE DIFFERENT songs (${songs.length} occurrences):`);
    console.log(`Text:\n${songs[0].text}`);
    console.log(`Songs:`);
    songs.forEach(x => console.log(`  - ${x.title} (${x.id})`));
  }
});
