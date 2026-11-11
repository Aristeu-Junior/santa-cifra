const fs = require('fs');

const report = JSON.parse(fs.readFileSync('scripts/template_songs_report.json', 'utf8'));

const templatePatterns = [
  'Nossos passos peregrinos vêm buscar a Tua paz',
  'Vós que viestes chamar os pecadores',
  'Vossa Palavra, Senhor, é lâmpada para os meus pés',
  'Abri o nosso coração ao Santo Evangelho da paz',
  'Apresentamos no altar o pão e o vinho do amor',
  'Recebei, ó Pai bendito, nossa humilde oblação',
  'Mistério da fé divina que nos une em um só Corpo'
];

report.forEach(r => {
  const sections = r.cifra.split(/\n\s*\n/);
  const cleanedSections = sections.filter(sec => {
    return !templatePatterns.some(p => sec.includes(p));
  });
  console.log(`[${r.id}] before: ${sections.length} sections (${r.cifra.length} chars) -> after: ${cleanedSections.length} sections`);
});
