const fs = require('fs');

const file = 'santa-cifra/js/catalog/catalog-adoracao-comunidades.js';
let content = fs.readFileSync(file, 'utf8');
const songs = (new Function('return ' + content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/)[1]))();

const updates = {
  'abraço-eterno-chave-do-coracao-adriana-arydes': {
    title: 'Lindo Céu',
    composer: 'Adriana Arydes',
    originalKey: 'C',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada de Louvor',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 8,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Lindo+Céu+Adriana+Arydes+cifra',
    justification: 'Clássico da música católica por Adriana Arydes contemplando a glória do céu e o Reino de Deus (Ap 21, 1-4).',
    cifra: `[Intro] C  Dm  C  Dm  G

[Primeira Parte]
C            F/A          G/B  C9  G/B
Por sobre as nuvens
Am9          F          C       G
Existe um lindo céu
C            F/A          G/B  C9  G/B
Maravilhoso céu
Am9          F          C       G
Morada dos anjos
C            F/A          G/B  C9  G/B
Por sobre as nuvens
Am9          F          C       G
Existe um trono
C            F/A          G/B  C9  G/B
Cujo Rei está assentado
Am9          F9          C9   G       C
À direita de Deus!

[Refrão]
C      C/E    F9      Dm7  Dm/C  G4  G
Céu, lindo céu!
C            F                    G
É o lugar onde eu quero viver pra sempre!
C      C/E    F9      Dm7  Dm/C  G4  G
Céu, lindo céu!
C            F                    G
É o lugar que meu Deus preparou pra mim!
C      C/E    F9      Dm7  Dm/C  G4  G
Céu, lindo céu!
C            F                    G
Onde com os anjos eu cantarei
F       G          C9
Adorando o Senhor!`
  },

  'regina-caeli-via-sacra-irma-kelly-patricia': {
    title: 'Via Sacra (Senhor, Pela Tua Paixão)',
    composer: 'Irmã Kelly Patrícia / Instituto Hesed',
    originalKey: 'Em',
    bpm: 66,
    timeSignature: '4/4',
    rhythmName: 'Balada Contemplativa',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 7,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Via+Sacra+Irmã+Kelly+Patrícia+cifra',
    justification: 'Canto contemplativo para a Via-Sacra e momentos de adoração à Santa Cruz da Irmã Kelly Patrícia.',
    cifra: `[Intro] Em7  D  C  B4  B7

[Primeira Parte]
Em7         D                  C
Senhor, pela Tua paixão, no abandono da cruz,
B4               B7
Tem piedade de nós!
Em          D
Jesus, pelo sangue jorrado do Teu coração,
C                 B4
Pelo Teu sacrifício, misericórdia!

[Refrão]
Em          C
Deus Santo, Deus Forte,
D4      D       Em
Deus Imortal e de poder!
Am7
Nós Te adoramos, Te bendizemos,
D4      D       Em      Am7    Bm
Te glorificamos, ó Senhor!

[Segunda Parte]
C         D
Deus Pai, Vos ofertamos
C         D
O corpo e o sangue de Cristo,
Em          D
Sua alma e sua divindade
C               B4
Em expiação dos nossos pecados!`
  },

  'davidson-silva-insuperavel-amor': {
    title: 'Amar-Te Mais',
    composer: 'Davidson Silva / Comunidade Católica Shalom',
    originalKey: 'G',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada de Consagração',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Amar-Te+Mais+Davidson+Silva+cifra',
    justification: 'Clássico de entrega e amor esponsal a Jesus Cristo entoado por Davidson Silva (Shalom).',
    cifra: `[Intro] G  D9/F#  Em7  C9

[Primeira Parte]
G            D9/F#        C9
Amar-Te mais que a mim mesmo
G            D9/F#        C9
Amar-Te mais que tudo que há aqui
G            D9/F#        C9
Amar-Te mais que aos mais queridos
Am          D9           C9          G
Amar-Te e dar a vida só por Ti!

[Refrão]
G            D9/F#         C9
Com minhas forças, com minha alma
C9           G           D9/F#        Em7
De todo coração viverei eu só pra Te amar
C9           G
Amar-Te, amar-Te
C9           D9           G
Amar-Te e dar a vida só por Ti!

[Segunda Parte]
G            D9/F#        C9
Amar-Te mais que a mim mesmo
G            D9/F#        C9
Amar-Te mais que tudo que há aqui
G            D9/F#        C9
Amar-Te mais que aos mais queridos
Am          D9           C9          G
Amar-Te e dar a vida só por Ti!`
  },

  'davidson-silva-sinal-do-meu-amor': {
    title: 'Vem, Espírito Santo',
    composer: 'Davidson Silva / Comunidade Católica Shalom',
    originalKey: 'A',
    bpm: 76,
    timeSignature: '4/4',
    rhythmName: 'Balada de Avivamento',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 4,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Vem+Espírito+Santo+Davidson+Silva+cifra',
    justification: 'Invocação ao Espírito Santo com o fogo transformador do amor de Deus por Davidson Silva.',
    cifra: `[Intro] A9  G9  D9

[Primeira Parte]
A9                    G9
Vem, Espírito Santo, com Teu poder
        D9
Com Teu poder, vem!
A9                    G9
Vem, inflama meu ser com fogo transformador
        D9
Que em meu peito arde a chama do amor!

[Refrão]
A9                    G9
Vem, invada minha alma
        D9
Me conduza rumo aos braços de Deus
A9                    G9
Vem e forma e anima o meu coração
        D9
A bater no ritmo do Senhor!

A9                    G9
Vem, Espírito Santo, com Teu poder
        D9              A9
Com Teu poder, vem!`
  }
};

let count = 0;
songs.forEach(s => {
  if (updates[s.id]) {
    const u = updates[s.id];
    s.title = u.title;
    s.composer = u.composer;
    s.originalKey = u.originalKey;
    s.bpm = u.bpm;
    s.timeSignature = u.timeSignature;
    s.rhythmName = u.rhythmName;
    s.rhythmPattern = u.rhythmPattern;
    s.isSimple = u.isSimple;
    s.chordCount = u.chordCount;
    s.cifra = u.cifra;
    if (s.liturgicalAnalysis) {
      s.liturgicalAnalysis.justification = u.justification;
    }
    count++;
  }
});

const varName = content.match(/window\.(\w+)\s*=/)[1];
const header = content.split(/window\.\w+\s*=/)[0];
fs.writeFileSync(file, `${header}window.${varName} = ${JSON.stringify(songs, null, 2)};\n`, 'utf8');
console.log(`Updated ${count} duplicate songs in ${file}`);
