const fs = require('fs');
const report = JSON.parse(fs.readFileSync('scripts/template_songs_report.json', 'utf8'));

const byFile = {};
const byPattern = {};
report.forEach(r => {
  byFile[r.file] = (byFile[r.file] || 0) + 1;
  byPattern[r.pattern] = (byPattern[r.pattern] || 0) + 1;
});

console.log('By File:', byFile);
console.log('By Pattern:', byPattern);

// Check if these songs have their original strophes before the injected strophe
report.forEach(r => {
  const parts = r.cifra.split('\n\n');
  const sections = parts.map(p => p.trim()).filter(Boolean);
  const injectedSection = sections.find(s => s.includes(r.pattern));
  console.log(`- [${r.file}] ${r.title} (${r.id})`);
  console.log(`  Sections count: ${sections.length}`);
  console.log(`  Injected section header: ${injectedSection ? injectedSection.split('\n')[0] : 'none'}`);
});
