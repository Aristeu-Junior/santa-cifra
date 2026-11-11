const fs = require('fs');
const vm = require('vm');

const content = fs.readFileSync('santa-cifra/js/catalog/catalog-adoracao-comunidades.js', 'utf8');
const sandbox = { window: {} };
vm.createContext(sandbox);
vm.runInContext(content, sandbox);

const songs = sandbox.window.SongsCatalogAdoracaoComunidades || [];

console.log(`Auditing ${songs.length} popular songs...`);

const report = [];

songs.forEach((s, idx) => {
  const cifra = s.cifra || '';
  const lines = cifra.split('\n');
  const introMatch = cifra.match(/\[Intro\]([^\n]+)/i);
  const intro = introMatch ? introMatch[1].trim() : '';

  // Generic 4-chord loops
  const isGenericProg = /^(G\s+D\s+Em\s+C|C\s+G\s+Am\s+F|D\s+A\s+Bm\s+G|E\s+B\s+C#m\s+A|A\s+E\s+F#m\s+D)$/i.test(intro.replace(/\s+/g, ' '));
  
  // Generic / invented lyrics
  const isGenericLyric = cifra.includes('Respondendo ao Teu chamado') || 
                         cifra.includes('Senhor, aqui estou!') || 
                         cifra.includes('1. Eu vou, deixando tudo') ||
                         cifra.includes('Mesmo sem saber para onde ir');

  // Suspicious duplicate verses or placeholders
  const isSuspicious = isGenericProg || isGenericLyric || lines.length < 8;

  report.push({
    idx,
    id: s.id,
    title: s.title,
    composer: s.composer,
    key: s.originalKey,
    intro,
    linesCount: lines.length,
    isSuspicious,
    reason: [
      isGenericProg ? 'GENERIC_PROG' : null,
      isGenericLyric ? 'GENERIC_LYRIC' : null,
      lines.length < 8 ? 'SHORT' : null
    ].filter(Boolean).join('; ')
  });
});

const flagged = report.filter(r => r.isSuspicious);
console.log(`Found ${flagged.length} songs flagged for review.`);

fs.writeFileSync('scripts/audit_report.json', JSON.stringify({ flagged, all: report }, null, 2));
console.log('Saved to scripts/audit_report.json');

// Group flagged by composer
const byComp = {};
flagged.forEach(f => {
  byComp[f.composer] = (byComp[f.composer] || 0) + 1;
});
console.log('Flagged by composer:', byComp);
