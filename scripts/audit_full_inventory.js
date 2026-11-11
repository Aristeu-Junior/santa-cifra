const fs = require('fs');
const vm = require('vm');

const content = fs.readFileSync('santa-cifra/js/catalog/catalog-adoracao-comunidades.js', 'utf8');
const sandbox = { window: {} };
vm.createContext(sandbox);
vm.runInContext(content, sandbox);
const songs = sandbox.window.SongsCatalogAdoracaoComunidades || [];

const suspiciousSnippets = [
  'Ao redor da Santa Mesa',
  'No silêncio agradecido',
  'Alimentados na Mesa',
  'Minh\'alma engrandece o Nome',
  'O Deus que fez o céu e a terra',
  'Recebe a minha entrega',
  'Permanece para sempre em minha vida',
  'Respondendo ao Teu chamado',
  '1. Eu vou, deixando tudo para trás',
  'Traz fogo do céu neste lugar!',
  'Em Tuas mãos seguro estou, Senhor!'
];

const inventory = songs.map((s, idx) => {
  const c = s.cifra || '';
  const lines = c.split('\n').filter(l => l.trim().length > 0);
  const introMatch = c.match(/\[Intro\]([^\n]+)/i);
  const intro = introMatch ? introMatch[1].trim() : '';

  const isGenericProg = /^(G\s+D\s+Em\s+C|C\s+G\s+Am\s+F|D\s+A\s+Bm\s+G|E\s+B\s+C#m\s+A|A\s+E\s+F#m\s+D)$/i.test(intro.replace(/\s+/g, ' '));
  const snippetHits = suspiciousSnippets.filter(snip => c.includes(snip));

  let status = 'CLEAN';
  if (snippetHits.length > 0) {
    status = 'BOILERPLATE_LYRICS';
  } else if (isGenericProg && lines.length < 20) {
    status = 'GENERIC_CHORDS';
  }

  return {
    idx,
    id: s.id,
    title: s.title,
    composer: s.composer,
    originalKey: s.originalKey,
    intro,
    linesCount: lines.length,
    status,
    snippetHits
  };
});

fs.writeFileSync('scripts/popular_catalog_audit_status.json', JSON.stringify(inventory, null, 2));

const byStatus = {};
inventory.forEach(i => {
  byStatus[i.status] = (byStatus[i.status] || 0) + 1;
});

console.log('Catalog Audit Summary:');
console.log(byStatus);
