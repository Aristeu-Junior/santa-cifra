const fs = require('fs');

const ordinaryFile = 'santa-cifra/js/catalog/catalog-ordinario-salmos.js';
let content = fs.readFileSync(ordinaryFile, 'utf8');
const songs = (new Function('return ' + content.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/)[1]))();

const updates = {
  'senhor-tende-piedade-de-nos-simples': {
    title: 'Senhor, Tende Piedade de Nós (Clássico 3 Acordes)',
    composer: 'Tradicional Litúrgico (Missal Romano)',
    originalKey: 'Em',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada Solene',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 3,
    justification: 'Ato Penitencial essencial em apenas 3 acordes (Em, Am, B7) com o texto canônico do Missal Romano.',
    cifra: `[Intro] Em  Am  B7  Em

[Primeira Parte]
Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Senhor, tende piedade de nós!
Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Tende piedade de nós!

[Segunda Parte]
Em                      Am
Cristo, tende piedade de nós!
B7                      Em
Cristo, tende piedade de nós!
Em                      Am
Cristo, tende piedade de nós!
B7                      Em
Tende piedade de nós!

[Terceira Parte]
Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Senhor, tende piedade de nós!
Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Tende piedade de nós!`
  },

  'perdao-senhor-tantos-erros-cometi': {
    title: 'Perdão, Senhor, Tantos Erros Cometi',
    composer: 'Monsenhor Jonas Abib / Canção Nova',
    originalKey: 'C',
    bpm: 68,
    timeSignature: '4/4',
    rhythmName: 'Balada Suave',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓',
    isSimple: true,
    chordCount: 5,
    justification: 'Clássico de arrependimento e contrição composto por Monsenhor Jonas Abib, entoado em celebrações penitenciais e Santas Missas.',
    cifra: `[Intro] C  Am  Dm  G  C

[Primeira Parte]
C                Am          Dm               G
Perdão, Senhor, tantos erros cometi,
Em               Am          Dm       G       C    C7
Perdão, Senhor, tantas vezes me omiti!
F                G           Em               Am
Perdão, Senhor, pelos males que causei,
Dm               G           C        C7
Pelas coisas que falei, pelo irmão que não amei!

[Refrão]
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C      C7
Meu pecado vem lavar com Seu amor!
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C
Meu pecado vem lavar com Seu amor!

[Segunda Parte]
C                Am          Dm               G
Senhor, que Te compadeces de nós, pecadores,
Em               Am          Dm       G       C    C7
Senhor, que nos acolhes em Teus santos braços,
F                G           Em               Am
Tem compaixão de nós, renova a nossa vida,
Dm               G           C        C7
Sustenta os nossos passos no caminho do amor!

[Refrão]
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C      C7
Meu pecado vem lavar com Seu amor!
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C
Meu pecado vem lavar com Seu amor!`
  },

  'eu-confesso-a-deus-e-a-vos-irmaos': {
    title: 'Eu Confesso a Deus e a Vós, Irmãos (Confiteor)',
    composer: 'Missal Romano / Liturgia Católica',
    originalKey: 'C',
    bpm: 70,
    timeSignature: '4/4',
    rhythmName: 'Balada Penitencial',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 5,
    justification: 'Fórmula I do Ato Penitencial (Confiteor / Eu confesso a Deus) segundo as rubricas da IGMR.',
    cifra: `[Intro] C  Am  Dm  G  C

[Primeira Parte]
C            Am          Dm           G
Eu confesso a Deus, Pai Todo-Poderoso,
Em          Am          Dm          G
E a vós, irmãos, que pequei muitas vezes:
F           G           Em          Am
Por pensamentos e palavras, atos e omissões,
Dm          G           C           C7
Por minha culpa, minha tão grande culpa!

[Refrão]
F          G            Em          Am
E peço à Virgem Maria, aos Anjos e Santos,
Dm         G            C           C7
E a vós, irmãos, que rogueis por mim
F          G            Em          Am
A Deus nosso Senhor, a Deus nosso Senhor!
Dm         G            C
Senhor, tende piedade de nós!`
  },

  'tende-piedade-de-nos-senhor-quaresma': {
    title: 'Senhor, Tende Piedade de Nós (Pelo Irmão Que Não Amei)',
    composer: 'Hinário Litúrgico da Quaresma / CNBB',
    originalKey: 'Em',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada Penitencial Quaresmal',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 4,
    justification: 'Ato Penitencial clássico do Tempo da Quaresma oficial do Hinário Litúrgico da CNBB.',
    cifra: `[Intro] Em  Am  B7  Em

[Primeira Parte]
Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Pelo irmão que não amei,
Em                      Am
Pelo mal que pratiquei,
B7                      Em
Pelo bem que recusei:
Am          Em          B7          Em
Senhor, piedade! Senhor, tende piedade!

[Segunda Parte]
Em                      Am
Cristo, tende piedade de nós!
B7                      Em
Pela prece que esqueci,
Em                      Am
Pela fé que não vivi,
B7                      Em
Pelos erros que cometi:
Am          Em          B7          Em
Cristo, piedade! Cristo, tende piedade!

[Terceira Parte]
Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Pelo orgulho e divisão,
Em                      Am
Pela falta de perdão,
B7                      Em
Vem curar meu coração:
Am          Em          B7          Em
Senhor, piedade! Senhor, tende piedade!`
  },

  'filho-de-davi-tony-allysson': {
    title: 'Filho de Davi (Tem Compaixão de Mim)',
    composer: 'Tony Allysson',
    originalKey: 'D',
    bpm: 74,
    timeSignature: '4/4',
    rhythmName: 'Balada de Cura',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: false,
    chordCount: 7,
    justification: 'Canção de súplica e clamor de Tony Allysson baseada no milagre do cego Bartimeu (Mc 10, 46-52).',
    cifra: `[Intro] D  A  Em  A  (2x)

[Primeira Parte]
D                           A
Me contaram que o Senhor ia passar
Em                          A
E que havia uma chance de eu poder enxergar
D                          A
Me disseram que tinhas poder
Em                          A
Pra ressuscitar e fazer o paralítico andar!

[Pré-Refrão]
Bm            F#m            G
Renasceu dentro de mim a fé
A
Que há muito eu já não tinha
Bm            F#m            G
Eu senti meu coração arder
Em                          A
E eu gritei para o Senhor me responder:

[Refrão]
D                     A       Bm
Jesus, Filho de Davi, me cura!
G               D
És o Santo de Israel!
A             Bm
Diante de Ti a tempestade se cala
A               D
Meu Deus honra a minha fé!`
  },

  'entao-volta-diego-fernandes': {
    title: 'Volte ao Primeiro Amor',
    composer: 'Diego Fernandes',
    originalKey: 'Eb',
    bpm: 80,
    timeSignature: '4/4',
    rhythmName: 'Pop Rock Católico',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: false,
    chordCount: 6,
    justification: 'Canção de retorno e reconciliação com o amor de Deus composta por Diego Fernandes baseada em Apocalipse 2, 4.',
    cifra: `[Intro] Eb  Ab  Eb  Ab

[Primeira Parte]
Eb
Eu preciso voltar ao primeiro amor
Ab
E relembrar como o Senhor me resgatou
Eb
Eu preciso voltar ao primeiro amor
Ab
E relembrar como o Senhor me resgatou!

[Pré-Refrão]
Cm                    Bb/D
Os meus dias não são mais os mesmos
Ab                          Bb4  Bb
Me perdi de Ti, vem, vem me encontrar!

[Refrão]
Eb                                    Ab
Seu amor jamais se acabará, o Senhor não se cansa de me amar
Eb                                    Ab
Seu amor jamais se acabará, o Senhor não se cansa de me amar!

[Segunda Parte]
Cm               Bb
Ainda que a mãe me esqueça
Ab                  Eb
E o pior comigo aconteça
Fm           Bb4  Bb
Não vai me deixar jamais!

Eb                   Ab
Ele me ama, Ele me ama
Eb                   Ab
Ele me ama, Ele me ama!`
  },

  'maos-ensanguentadas-de-jesus-pe-cleidimar': {
    title: 'Mãos Ensanguentadas de Jesus',
    composer: 'Maria do Rosário / Pe. Reginaldo Manzotti / Pe. Cleidimar',
    originalKey: 'A',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada de Cura e Libertação',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 6,
    justification: 'Devoção consagrada no Brasil às Santas Chagas e Mãos Ensanguentadas de Nosso Senhor Jesus Cristo.',
    cifra: `[Intro] A9  F#m  Bm  E7  A9  E7

[Primeira Parte]
A9                F#m               Bm
Mãos ensanguentadas de Jesus,
E                 E7          A9      E7
Mãos feridas lá na Cruz
A9           A7            D9
Vem tocar em mim, vem tocar em mim,
Bm            E7
Vem tocar em mim,
D9            E7          A9      E7
Vem, Senhor Jesus!

[Segunda Parte]
A9                F#m             Bm
Mãos que as crianças abençoaram,
E            E7           A9        E7
Mãos que os pães multiplicaram
A9           A7            D9
Vem tocar em mim, vem tocar em mim,
Bm            E7
Vem tocar em mim,
D9            E7          A9
Vem, Senhor Jesus!

[Terceira Parte]
A9                F#m             Bm
Mãos ressuscitadas de Jesus,
E                 E7          A9      E7
Mãos que curam pela Cruz
A9           A7            D9
Vem tocar em mim, vem tocar em mim,
Bm            E7
Vem tocar em mim,
D9            E7          A9
Vem, Senhor Jesus!`
  },

  'kyrie-eleison-senhor-que-viestes-salvar-palestrina': {
    title: 'Senhor, Que Viestes Salvar (Kyrie Solene)',
    composer: 'Coral Palestrina / Missal Romano',
    originalKey: 'Dm',
    bpm: 74,
    timeSignature: '4/4',
    rhythmName: 'Solene Litúrgico',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isSimple: true,
    chordCount: 3,
    justification: 'Invocação III do Ato Penitencial do Missal Romano com aclamações gregas Kyrie e Christe Eleison.',
    cifra: `[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
Dm                      Gm          A7      Dm
Senhor, que viestes salvar os corações arrependidos:
Dm          Gm      A7          Dm
Kyrie eleison! Kyrie eleison!
Dm          Gm      A7          Dm
Kyrie eleison! Kyrie eleison!

[Segunda Parte]
Dm                      Gm          A7      Dm
Cristo, que viestes chamar os pecadores:
Dm          Gm        A7        Dm
Christe eleison! Christe eleison!
Dm          Gm        A7        Dm
Christe eleison! Christe eleison!

[Terceira Parte]
Dm                      Gm          A7      Dm
Senhor, que intercedeis por nós junto do Pai:
Dm          Gm      A7          Dm
Kyrie eleison! Kyrie eleison!
Dm          Gm      A7          Dm
Kyrie eleison! Kyrie eleison!`
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
fs.writeFileSync(ordinaryFile, `${header}window.${varName} = ${JSON.stringify(songs, null, 2)};\n`, 'utf8');
console.log(`Updated ${count} songs in ${ordinaryFile}`);
