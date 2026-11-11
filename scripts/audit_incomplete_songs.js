const fs = require('fs');
const vm = require('vm');

const files = [
  { path: 'santa-cifra/js/catalog/catalog-ordinario-salmos.js', name: 'Ordinario', var: 'SongsCatalogOrdinario' },
  { path: 'santa-cifra/js/catalog/catalog-entrada-final.js', name: 'Entrada/Final', var: 'SongsCatalogEntradaFinal' },
  { path: 'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js', name: 'Ofertorio/Comunhao', var: 'SongsCatalogOfertorioComunhao' },
  { path: 'santa-cifra/js/catalog/catalog-adoracao-comunidades.js', name: 'Adoracao/Comunidades', var: 'SongsCatalogAdoracaoComunidades' }
];

const auditResults = [];

files.forEach(({ path, name, var: varName }) => {
  const content = fs.readFileSync(path, 'utf8');
  const sandbox = { window: {} };
  vm.createContext(sandbox);
  vm.runInContext(content, sandbox);
  const songs = sandbox.window[varName] || [];

  songs.forEach((s, idx) => {
    const cifra = s.cifra || '';
    const lines = cifra.split('\n').filter(l => l.trim().length > 0);
    const numberedVerses = cifra.match(/\b\d+\.\s+/g) || [];
    
    // Check if it's potentially incomplete
    const isVeryShort = lines.length < 24;
    const isSingleVerse = numberedVerses.length === 1;
    const isTwoVersesOnly = numberedVerses.length === 2 && lines.length < 30;

    const isTargetArtist = /(Zezinho|Jonas Abib|Canção Nova|Marcelo Rossi|Dunga|Walmir|Colo de Deus|Frei Gilson)/i.test(s.composer);

    if ((isVeryShort || isSingleVerse || isTwoVersesOnly) && isTargetArtist) {
      auditResults.push({
        file: name,
        varName,
        idx,
        id: s.id,
        title: s.title,
        composer: s.composer,
        linesCount: lines.length,
        numberedVerses: numberedVerses.map(v => v.trim()),
        cifraPreview: lines.slice(0, 6).join(' / ')
      });
    }
  });
});

fs.writeFileSync('scripts/incomplete_songs_report.json', JSON.stringify(auditResults, null, 2), 'utf8');
console.log(`Found ${auditResults.length} target artist songs flagged as potentially incomplete.`);

// Group by composer
const byComp = {};
auditResults.forEach(a => {
  const c = a.composer;
  byComp[c] = (byComp[c] || 0) + 1;
});
console.log('Flagged by Composer:');
console.log(byComp);
