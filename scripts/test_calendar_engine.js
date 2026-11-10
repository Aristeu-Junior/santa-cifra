const fs = require('fs');

global.window = {};
global.document = {
  createElement: () => ({ setAttribute: () => {}, addEventListener: () => {} })
};

const cat1 = fs.readFileSync('C:/Users/Aristeu Junior/.gemini/antigravity-cli/scratch/musica-liturgica-catolica/santa-cifra/js/catalog/catalog-ordinario-salmos.js', 'utf8');
const cat2 = fs.readFileSync('C:/Users/Aristeu Junior/.gemini/antigravity-cli/scratch/musica-liturgica-catolica/santa-cifra/js/catalog/catalog-entrada-final.js', 'utf8');
const cat3 = fs.readFileSync('C:/Users/Aristeu Junior/.gemini/antigravity-cli/scratch/musica-liturgica-catolica/santa-cifra/js/catalog/catalog-ofertorio-comunhao.js', 'utf8');
const cat4 = fs.readFileSync('C:/Users/Aristeu Junior/.gemini/antigravity-cli/scratch/musica-liturgica-catolica/santa-cifra/js/catalog/catalog-adoracao-comunidades.js', 'utf8');

eval(cat1);
eval(cat2);
eval(cat3);
eval(cat4);

global.window.SongsCatalog = [].concat(
  global.window.SongsCatalogOrdinario || [],
  global.window.SongsCatalogEntradaFinal || [],
  global.window.SongsCatalogOfertorioComunhao || [],
  global.window.SongsCatalogAdoracaoComunidades || []
);

console.log('Total catalog songs loaded in test:', global.window.SongsCatalog.length);
const catalogIds = new Set(global.window.SongsCatalog.map(s => s.id));

const calCode = fs.readFileSync('C:/Users/Aristeu Junior/.gemini/antigravity-cli/scratch/musica-liturgica-catolica/santa-cifra/js/modules/liturgical-calendar.js', 'utf8');
eval(calCode);

const SC = global.window.SantaCifra;

// Test São Martinho (11 de Novembro de 2026)
const d1 = new Date(2026, 10, 11);
const info1 = SC.getLiturgicalDayInfo(d1);
console.log('\n--- 11/11/2026: São Martinho ---');
console.log('Celebração:', info1.celebration);
console.log('Cor:', info1.color, `(${info1.colorName})`);
console.log('Grau:', info1.rank);
console.log('1ª Leitura:', info1.readings.firstReading.ref, '-', info1.readings.firstReading.theme);
console.log('Evangelho:', info1.readings.gospel.ref, '-', info1.readings.gospel.theme);
console.log('Músicas sugeridas:');
for (const s of info1.suggestions) {
  const exists = catalogIds.has(s.songId);
  console.log(`  [${s.moment}] ${s.title} (${s.composer}) -> ID: ${s.songId} [Existe no catalogo: ${exists}]`);
  if (!exists) throw new Error(`Song ID ${s.songId} not found in catalog!`);
}

// Test Santa Cecília (22 de Novembro de 2026)
const d2 = new Date(2026, 10, 22);
const info2 = SC.getLiturgicalDayInfo(d2);
console.log('\n--- 22/11/2026: Cristo Rei / Santa Cecília ---');
console.log('Celebração:', info2.celebration);
console.log('Cor:', info2.color, `(${info2.colorName})`);

// Test Nossa Senhora Aparecida (12 de Outubro de 2026)
const d3 = new Date(2026, 9, 12);
const info3 = SC.getLiturgicalDayInfo(d3);
console.log('\n--- 12/10/2026: Nossa Senhora Aparecida ---');
console.log('Celebração:', info3.celebration);
console.log('Cor:', info3.color, `(${info3.colorName})`);
for (const s of info3.suggestions) {
  const exists = catalogIds.has(s.songId);
  console.log(`  [${s.moment}] ${s.title} -> ${s.songId} [Existe: ${exists}]`);
  if (!exists) throw new Error(`Song ID ${s.songId} not found in catalog!`);
}

// Test Quaresma (10 de Março de 2026)
const d4 = new Date(2026, 2, 10);
const info4 = SC.getLiturgicalDayInfo(d4);
console.log('\n--- 10/03/2026: Quaresma ---');
console.log('Celebração:', info4.celebration);
console.log('Cor:', info4.color, `(${info4.colorName})`);
for (const s of info4.suggestions) {
  const exists = catalogIds.has(s.songId);
  console.log(`  [${s.moment}] ${s.title} -> ${s.songId} [Existe: ${exists}]`);
  if (!exists) throw new Error(`Song ID ${s.songId} not found in catalog!`);
}

console.log('\nALL LITURGICAL CALENDAR TESTS PASSED PERFECTLY!');
