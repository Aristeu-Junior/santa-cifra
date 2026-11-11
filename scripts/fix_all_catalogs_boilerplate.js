const fs = require('fs');
const path = require('path');
const vm = require('vm');

const baseDir = path.join(__dirname, '../santa-cifra/js/catalog');

// 1. Fix catalog-ofertorio-comunhao.js
{
  const filePath = path.join(baseDir, 'catalog-ofertorio-comunhao.js');
  const content = fs.readFileSync(filePath, 'utf8');
  const sandbox = { window: {} };
  vm.createContext(sandbox);
  vm.runInContext(content, sandbox);
  const songs = sandbox.window.SongsCatalogOfertorioComunhao || [];

  const cleanedCifras = JSON.parse(fs.readFileSync(path.join(__dirname, 'cleaned_cifras_map.json'), 'utf8'));

  songs.forEach(song => {
    // If it's Incendeia Minha Alma, update with exact Cifra Club version
    if (song.id.includes('incendeia-minha-alma')) {
      const peFabio = cleanedCifras['pe-fabio-de-melo-incendeia-minha-alma'];
      if (peFabio) {
        song.cifra = peFabio.cifra;
        song.originalKey = 'C';
        song.chordCount = peFabio.chordCount;
      }
    }

    // Clean boilerplate strophes from liturgical songs
    let c = song.cifra || '';
    if (c.includes('Ao redor da Santa Mesa') || c.includes('Minh\'alma engrandece') || c.includes('No silêncio agradecido')) {
      // Split by section or strophes and filter out boilerplate
      const strophes = c.split(/\n\s*\n/);
      const filtered = strophes.filter(s => {
        return !s.includes('Ao redor da Santa Mesa') &&
               !s.includes('Minh\'alma engrandece') &&
               !s.includes('No silêncio agradecido') &&
               !s.includes('Alimentados na Mesa') &&
               !s.includes('Recebe a minha entrega') &&
               !s.includes('Permanece para sempre');
      });
      song.cifra = filtered.join('\n\n');
    }
  });

  const newContent = `// Santa Cifra — Módulo de Catálogo: Litúrgicas: Ofertório e Comunhão (${songs.length} músicas)
window.SongsCatalogOfertorioComunhao = ${JSON.stringify(songs, null, 2)};
`;
  fs.writeFileSync(filePath, newContent, 'utf8');
  console.log(`Updated catalog-ofertorio-comunhao.js (${songs.length} songs)`);
}

// 2. Fix catalog-entrada-final.js
{
  const filePath = path.join(baseDir, 'catalog-entrada-final.js');
  const content = fs.readFileSync(filePath, 'utf8');
  const sandbox = { window: {} };
  vm.createContext(sandbox);
  vm.runInContext(content, sandbox);
  const songs = sandbox.window.SongsCatalogEntradaFinal || [];

  // Special authentic verses for Pelas Estradas da Vida
  songs.forEach(song => {
    if (song.id === 'pelas-estradas-da-vida-santa-maria-vem') {
      song.cifra = `[Intro] C  G  Am  F  G7  C

[Primeira Parte]
   C                        G
1. Pelas estradas da vida, nunca sozinho estás;
   Am                       F           G7
Contigo pelo caminho, Santa Maria vai!

[Refrão]
   C      Em         F      C
Ó vem conosco, vem caminhar,
   Dm     G7       C
Santa Maria vem!
   C      Em         F      C
Ó vem conosco, vem caminhar,
   Dm     G7       C
Santa Maria vem!

[Segunda Parte]
   C                        G
2. Mesmo que digam os homens que nada podes mudar,
   Am                       F           G7
Luta por um mundo novo de unidade e paz!

[Terceira Parte]
   C                        G
3. Se pelo mundo os homens sem trégua brigam sem fim,
   Am                       F           G7
Não fiques desanimado: Cristo é a nossa paz!

[Quarta Parte]
   C                        G
4. Se parecer tua vida inútil caminhar,
   Am                       F           G7
Lembra que outros te seguem: não deves vacilar!`;
      song.originalKey = 'C';
      song.chordCount = 6;
      return;
    }

    // Clean boilerplate strophes from other songs
    let c = song.cifra || '';
    if (c.includes('Alimentados na Mesa') || c.includes('Ao redor da Santa Mesa') || c.includes('Minh\'alma engrandece') || c.includes('No silêncio agradecido')) {
      const strophes = c.split(/\n\s*\n/);
      const filtered = strophes.filter(s => {
        return !s.includes('Alimentados na Mesa') &&
               !s.includes('Ao redor da Santa Mesa') &&
               !s.includes('Minh\'alma engrandece') &&
               !s.includes('No silêncio agradecido') &&
               !s.includes('Recebe a minha entrega') &&
               !s.includes('Permanece para sempre');
      });
      song.cifra = filtered.join('\n\n');
    }
  });

  const newContent = `// Santa Cifra — Módulo de Catálogo: Litúrgicas: Entrada e Final (${songs.length} músicas)
window.SongsCatalogEntradaFinal = ${JSON.stringify(songs, null, 2)};
`;
  fs.writeFileSync(filePath, newContent, 'utf8');
  console.log(`Updated catalog-entrada-final.js (${songs.length} songs)`);
}

// 3. Fix catalog-ordinario-salmos.js
{
  const filePath = path.join(baseDir, 'catalog-ordinario-salmos.js');
  const content = fs.readFileSync(filePath, 'utf8');
  const sandbox = { window: {} };
  vm.createContext(sandbox);
  vm.runInContext(content, sandbox);
  const songs = sandbox.window.SongsCatalogOrdinario || [];

  songs.forEach(song => {
    let c = song.cifra || '';
    if (c.includes('Minh\'alma engrandece') || c.includes('No silêncio agradecido') || c.includes('Ao redor da Santa Mesa') || c.includes('Alimentados na Mesa')) {
      const strophes = c.split(/\n\s*\n/);
      const filtered = strophes.filter(s => {
        return !s.includes('Minh\'alma engrandece') &&
               !s.includes('No silêncio agradecido') &&
               !s.includes('Ao redor da Santa Mesa') &&
               !s.includes('Alimentados na Mesa') &&
               !s.includes('Recebe a minha entrega') &&
               !s.includes('Permanece para sempre');
      });
      song.cifra = filtered.join('\n\n');
    }
  });

  const newContent = `// Santa Cifra — Módulo de Catálogo: Litúrgicas: Ordinário da Missa e Salmos (${songs.length} músicas)
window.SongsCatalogOrdinario = ${JSON.stringify(songs, null, 2)};
`;
  fs.writeFileSync(filePath, newContent, 'utf8');
  console.log(`Updated catalog-ordinario-salmos.js (${songs.length} songs)`);
}
