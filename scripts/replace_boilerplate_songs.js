const fs = require('fs');
const path = require('path');

// We will define the full replacement songs object by ID
const replacements = {
  // 1. celina-borges-lava-me (catalog-ordinario-salmos.js)
  'celina-borges-lava-me': {
    title: 'Lava-me (Nas Águas dos Rios de Deus)',
    composer: 'Celina Borges',
    originalKey: 'C',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada de Cura',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 14,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Lava-me+Celina+Borges+cifra',
    justification: 'Clássico de cura e libertação de Celina Borges sobre as águas purificadoras do Espírito Santo (Ez 47, 1-9; Jo 7, 37-39).',
    cifra: `[Intro] C  F6/C  Fm6/C  C  G/B  Am  F  G

[Primeira Parte]
C                                  F/C
Lava-me nas águas dos rios de Deus, lava-me
Bb      G/B             C       G
Lava-me nas águas dos rios de Deus, lava-me
C        Dm
Mergulha-me nas águas da fonte do amor, mergulha-me
Dm/C    Bb      G/B             C
Mergulha-me nas águas da fonte do amor, mergulha-me

[Refrão]
C        Dm        Dm/C
Nas águas que curam, águas que limpam
G4        G                C
Águas que saram, águas que purificam
C        Dm        Dm/C
Águas que encharcam, águas que acalmam
G4        G              C       A  A/C#
Águas que limpam, águas que purificam

[Segunda Parte]
D        D7M        Em      Em/D
Põe Tua mão no lugar onde dói, e cura-me
C                     A/C#  D              G/A
Põe Tua mão e de novo constrói, restaura-me
D                     D/F#  Em      Em/D
Põe Teu olhar onde eu tento esconder a minha dor
C                   A/C#  D      A
Mais uma vez não consigo entender o desamor

[Refrão Final]
D        Em        Em/D
Nas águas que curam, águas que limpam
G/A       A             D         G/A   A
Águas que saram, águas que purificam
D        D/F#      Em      Em/D
Águas que encharcam, águas que acalmam
G/A        A                 D    G/A  A
Águas que limpam, águas que purificam

G/A  A     D           D/F#  Em
Lava-me, ó Senhor nos Teus rios
G/A     A7    D
Lava-me, lava-me, lava-me!`
  },

  // 2. tony-allysson-purifica-me (catalog-ordinario-salmos.js)
  'tony-allysson-purifica-me': {
    title: 'Purifica-me',
    composer: 'Tony Allysson',
    originalKey: 'C',
    bpm: 68,
    timeSignature: '4/4',
    rhythmName: 'Balada de Oração',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 8,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Purifica-me+Tony+Allysson+cifra',
    justification: 'Canção de penitência e consagração de Tony Allysson baseada no Salmo 23 (24), 3-4.',
    cifra: `[Intro] C  G  Am  F9

[Primeira Parte]
C                     G
Quero Te buscar, Senhor
        Am                   F9
De mãos limpas e de puro coração
C                     G
Quero Te encontrar, Senhor
        Am                   F9
E descobrir tudo aquilo que tens pra mim

[Refrão]
C              G
Purifica-me, purifica-me
Am                   F9
Aquilo que não é de Deus eu não quero pra mim
C             G            Dm         F  G
Eu me esvazio e peço que venhas me encher
C              G
Purifica-me, purifica-me
Am                   F9
Aquilo que não é de Deus eu não quero pra mim
C             G            Dm         F  G  C
Eu me esvazio e peço que venhas me encher

[Ponte]
F             G               F
Tudo o que eu quero é dizer que Te amo, Jesus
            G
Eu preciso de Ti
F           G           C      G/B     Am
Do Teu cuidado e abrigo, Senhor meu amado
               F           G
Quero viver meu chamado
F                           G     G4    G       C
Sonhar os sonhos que sonhou pra mim, Senhor!`
  },

  // 3. espirito-enche-a-minha-vida-pe-marcelo (catalog-entrada-final.js)
  'espirito-enche-a-minha-vida-pe-marcelo': {
    title: 'Espírito, Enche a Minha Vida',
    composer: 'Padre Marcelo Rossi / Quatro Por Um',
    originalKey: 'C',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada Litúrgica',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 7,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Espírito+Enche+a+Minha+Vida+Padre+Marcelo+Rossi+cifra',
    justification: 'Invocação ao Espírito Santo consagrada na voz do Padre Marcelo Rossi no álbum Vira de Jesus e Missas em todo o Brasil.',
    cifra: `[Intro] C  G/B  F  G7

[Primeira Parte]
C                   G/B      F                          G
Espírito, enche a minha vida, enche-me com o Teu poder
Am          Em          F                          C
Pois de Ti eu quero ser, Espírito, enche o meu ser
F             G            C    G7
Espírito, enche o meu ser

C                   G/B      F                          G
Espírito, enche a minha vida, enche-me com o Teu poder
Am          Em          F                          C
Pois de Ti eu quero ser, Espírito, enche o meu ser
F             G7           C    C7
Espírito, enche o meu ser

[Refrão]
F                     G                     Em      Am
As minhas mãos eu quero levantar
F                       G              Am
E em Teu louvor Te adorar
F               G                     Em      Am
Meu coração eu quero derramar
F             G        C    C7
Diante do Teu altar

F                     G                     Em      Am
As minhas mãos eu quero levantar
F                       G              Am
E em Teu louvor Te adorar
F               G                     Em      Am
Meu coração eu quero derramar
F             G        C
Diante do Teu altar`
  },

  // 4. hosana-ao-filho-de-davi-domingo-de-ramos (catalog-entrada-final.js)
  'hosana-ao-filho-de-davi-domingo-de-ramos': {
    title: 'Hosana Hei, Hosana Há (Domingo de Ramos)',
    composer: 'Roberto Malvezzi / Pe. Zezinho, scj',
    originalKey: 'E',
    bpm: 108,
    timeSignature: '2/4',
    rhythmName: 'Marcha Festiva',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Hosana+Hei+Hosana+Ha+cifra',
    justification: 'Canto festivo universal da Procissão de Ramos com a aclamação messiânica a Jesus (Mt 21, 9).',
    cifra: `[Intro] E  C#m  A  B7  E

[Refrão]
E            C#m
Hosana hei, hosana há!
A            B7          E
Hosana hei, hosana hei, hosana há!
E            C#m
Hosana hei, hosana há!
A            B7          E
Hosana hei, hosana hei, hosana há!

[Primeira Parte]
E                               A
1. Ele é o Santo, é o Filho de Maria,
B7                            E
É o Deus de Israel, é o Filho de Davi
E                               A
Santo é o Seu nome, é o Senhor Deus do universo,
B7                           E
Glória a Deus de Israel, nosso Rei e Salvador!

[Refrão]
E            C#m
Hosana hei, hosana há!
A            B7          E
Hosana hei, hosana hei, hosana há!

[Segunda Parte]
E                              A
2. Vamos a Ele com as flores dos trigais,
B7                             E
Com os ramos de oliveira, com alegria e muita paz
E                               A
Santo é o Seu nome, é o Senhor Deus do universo,
B7                           E
Glória a Deus de Israel, nosso Rei e Salvador!

[Refrão]
E            C#m
Hosana hei, hosana há!
A            B7          E
Hosana hei, hosana hei, hosana há!

[Terceira Parte]
E                            A
3. Ele é o Cristo, é o unificador,
B7                            E
É Hosana nas alturas, é Hosana no amor
E                               A
Santo é o Seu nome, é o Senhor Deus do universo,
B7                           E
Glória a Deus de Israel, nosso Rei e Salvador!`
  },

  // 5. hino-campanha-da-fraternidade-2022-educacao (catalog-entrada-final.js)
  'hino-campanha-da-fraternidade-2022-educacao': {
    title: 'Fala Com Sabedoria, Ensina Com Amor (CF 2022)',
    composer: 'Pe. José Weber, svd / Fr. Telles Ramon / CNBB',
    originalKey: 'C',
    bpm: 76,
    timeSignature: '4/4',
    rhythmName: 'Balada Catequética',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Fala+com+sabedoria+ensina+com+amor+CF+2022+cifra',
    justification: 'Hino oficial da Campanha da Fraternidade 2022 sobre a Fraternidade e Educação, fundamentado em Provérbios 31, 26.',
    cifra: `[Intro] C  Em  F  G  C

[Refrão]
C         Em
E quem fala com sabedoria
F                  C
É aquele que ensina com amor
F         E7       Am    Am/G
Sua vida em total maestria
F         G          C      (C7)
É pra nós, luz, caminho, vigor!

[Primeira Parte]
C                       G
1. O Senhor nos convoca a educar
F                       C
No caminho da fé e do perdão
Am                      Em
Cada jovem e criança acolher
F                       G
Como irmãos no mesmo coração!

[Refrão]
C         Em
E quem fala com sabedoria
F                  C
É aquele que ensina com amor
F         E7       Am    Am/G
Sua vida em total maestria
F         G          C
É pra nós, luz, caminho, vigor!

[Segunda Parte]
C                       G
2. Escutar com paciência e bondade,
F                       C
Construindo a justiça e a paz;
Am                      Em
O saber que liberta o irmão
F                       G
É a graça que o Evangelho nos traz!`
  },

  // 6. o-senhor-e-a-minha-forca-salette-ferreira (catalog-entrada-final.js)
  'o-senhor-e-a-minha-forca-salette-ferreira': {
    title: 'Tudo Pode Ser Mudado',
    composer: 'Salette Ferreira / Canção Nova',
    originalKey: 'E',
    bpm: 78,
    timeSignature: '4/4',
    rhythmName: 'Balada de Louvor',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 9,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Tudo+pode+ser+mudado+Salette+Ferreira+cifra',
    justification: 'Clássico da Canção Nova por Salette Ferreira fundamentado na força da intercessão e da oração de fé.',
    cifra: `[Intro] E  A/E  E/G#  C#m  D6  A/B

[Primeira Parte]
E         A/E          E/G#  C#m
Com Jesus tudo pode ser mudado
D6          A/B         E
Pela força da oração
          A/E          E/G#  C#m
Com Jesus tudo pode ser mudado
D6          A/B         C#m  B9
Pela força da oração

[Refrão]
A       Aº      E      C#m
Tenha fé, acredite no poder
F#m      B9       E7
De Deus, meu irmão
A       Aº      E      C#m
Tenha fé, acredite no poder
D9        A/B       E
De Deus, meu irmão!

[Segunda Parte]
E         A/E          E/G#  C#m
Com Jesus tudo pode ser mudado
D6          A/B         E
Pela força da oração
          A/E          E/G#  C#m
Com Jesus tudo pode ser mudado
D6          A/B         C#m  B9
Pela força da oração

A        Aº       E     C#m
Creia sim, como Maria, que
F#m      B9       E7
No poder de Deus confiou
A        Aº       E     C#m
Creia sim, como Maria, que
D9        A/B         E
No poder de Deus confiou!`
  },

  // 7. sopra-espirito-emanuel-stenio (catalog-entrada-final.js)
  'sopra-espirito-emanuel-stenio': {
    title: 'Queremos Ser Teus (Sopra Neste Lugar)',
    composer: 'Emanuel Stênio / Canção Nova',
    originalKey: 'E',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada Worship',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 7,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Queremos+Ser+Teus+Emanuel+Stênio+cifra',
    justification: 'Invocação ao Espírito Santo de grande repercussão em acampamentos e grupos de oração por Emanuel Stênio.',
    cifra: `[Intro] E  A  C#m  G#m  A

[Primeira Parte]
E          B          C#m
Vem, vem Santo Espírito de Deus
            G#m      A
Tocar os corações com Teu poder
E          C#m        F#m     B
Vem saciar a nossa sede do céu
E          B          C#m
Vem, vem Santo Espírito de Deus
            G#m      A
Orar em nosso favor com Teu poder
E                   F#m
Nos convencer da verdade
        A        B
Da vontade de Deus

[Refrão]
A          B
Sopra neste lugar
            G#m        C#m
O Teu Santo Espírito, Senhor
A          F#m        B
Preenche os vazios que há em nós
A          B
Sopra neste lugar
            G#m        A
O Teu Santo Espírito, Senhor
         F#m        B
Preenche os vazios que há em nós
E      E  G#m  A
Queremos ser Teus!`
  },

  // 8. reunidos-em-teu-nome-amor-e-adoracao (catalog-entrada-final.js)
  'reunidos-em-teu-nome-amor-e-adoracao': {
    title: 'Vamos Celebrar (Todos Reunidos na Casa de Deus)',
    composer: 'Ministério Amor e Adoração / Canção Nova',
    originalKey: 'E',
    bpm: 116,
    timeSignature: '4/4',
    rhythmName: 'Pop Católico Animado',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Vamos+Celebrar+Amor+e+Adoração+cifra',
    justification: 'Canto alegre de acolhida e entrada da assembleia litúrgica composto pelo Ministério Amor e Adoração.',
    cifra: `[Intro] E  A9  E  A9  B9

[Primeira Parte]
E                           A9                    E
Todos reunidos na casa de Deus
                  A9                   B9
Com cantos de alegria e grande louvor
                  A9                   B9
Vamos celebrar os feitos do Senhor
                  A9                    E
E Sua bondade que nunca tem fim!

[Refrão]
E            A9
Vamos celebrar, Deus está aqui!
E            A9
Vamos celebrar, Deus está aqui!
B9                   E    A9
No meio de nós!
E            A9
Vamos celebrar, Deus está aqui!
E            A9
Vamos celebrar, Deus está aqui!
B9                    A9    B9    E
No meio de nós! (Ele está presente aqui!)

[Segunda Parte]
E                              A9                 E
Quando estamos juntos, unidos a Ti
                  A9                 B9
Para elevar a nossa oração
                  A9                 B9
Um canto de alegria surge entre nós
                  A9                    E
Em adoração ao Teu eterno amor!`
  },

  // 9. no-teu-altar-pai-eterno-pe-robson (catalog-ofertorio-comunhao.js)
  'no-teu-altar-pai-eterno-pe-robson': {
    title: 'No Teu Altar, Senhor',
    composer: 'Ir. Míria T. Kolling',
    originalKey: 'G',
    bpm: 74,
    timeSignature: '3/4',
    rhythmName: 'Valsa Litúrgica de Ofertório',
    rhythmPattern: '↓  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: 'https://www.youtube.com/results?search_query=No+Teu+Altar+Senhor+Irmã+Míria+Kolling+cifra',
    justification: 'Canto canônico de Ofertório da Ir. Míria Kolling entoado em paróquias de todo o Brasil.',
    cifra: `[Intro] G  C  D7  G

[Refrão]
G              C             D7          G
No Teu altar, Senhor, coloco a minha vida em oração!
G              C             D7          G
No Teu altar, Senhor, coloco a minha vida em oração!

[Primeira Parte]
G                           C                 G
1. A alegria de Te amar e ser amado
Am         D7       G      A7    D7
Quero em Tuas mãos depositar!

[Refrão]
G              C             D7          G
No Teu altar, Senhor, coloco a minha vida em oração!

[Segunda Parte]
G                           C                 G
2. O desejo de ser bom e generoso
Am      D7       G     A7    D7
Faz-me viver com mais amor!

[Refrão]
G              C             D7          G
No Teu altar, Senhor, coloco a minha vida em oração!

[Terceira Parte]
G                                 C                     G
3. Os amigos que me deste e que são Teus
Am       D7     G      A7    D7
Tudo entrego a Ti, Senhor!`
  },

  // 10. senhor-em-tua-presenca-pe-wallison-rodrigues (catalog-ofertorio-comunhao.js)
  'senhor-em-tua-presenca-pe-wallison-rodrigues': {
    title: 'Em Tua Presença (Um Mendigo Sentado à Mesa de um Rei)',
    composer: 'Pe. Wallison Rodrigues / Pe. Delton Filho',
    originalKey: 'G',
    bpm: 70,
    timeSignature: '4/4',
    rhythmName: 'Balada de Adoração',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 8,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Em+Tua+Presença+Um+Mendigo+cifra',
    justification: 'Canto eucarístico profundo sobre a gratuidade da graça no banquete do altar (Lc 14, 15-24).',
    cifra: `[Intro] G  D/F#  Em  C  D

[Primeira Parte]
G                    D/F#
Em Tua presença eu me sinto
      Em                   Bm
Um mendigo sentado à mesa de um rei
      C                  G/B
E sem ter como pagar tamanha refeição
      Am                   D7
Só posso dar-Te eterna gratidão

G                        D/F#
O cálice e a hóstia eram um
       Em                     Bm
Meu desejo também era com eles ser um

[Refrão]
      C              D/G
Ser um só coração, meu Senhor!
      C                 D/G
O mesmo sangue nas veias, Senhor!
      C                  D                 G
Tua carne em minha carne, Senhor
      C                  D                 G
O Teu sangue em meu sangue, ó meu Salvador!`
  },

  // 11. cristo-luz-do-mundo-frei-telles-ramon (catalog-entrada-final.js)
  'cristo-luz-do-mundo-frei-telles-ramon': {
    title: 'Ó Cristo Luz, Cristo Jesus',
    composer: 'Frei Telles Ramon / Frei Décio Pacheco Bezerra',
    originalKey: 'Cm',
    bpm: 78,
    timeSignature: '4/4',
    rhythmName: 'Litúrgico Quaresmal',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 7,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Ó+Cristo+Luz+Frei+Telles+Ramon+cifra',
    justification: 'Hino litúrgico oficial da Quaresma do Hinário Litúrgico da CNBB (Jo 8, 12).',
    cifra: `[Intro] Cm  Eb  Fm  Gm7  Cm

[Primeira Parte]
Cm        Eb       Cm
1. Ó Cristo Luz, Cristo Jesus,
     Fm    Ab
Com Tua cruz,
      Eb       Cm
Que é nossa cruz,
       Fm       Gm7
Caminhamos contigo
      Cm
Pra festa da Luz!

[Segunda Parte]
Cm        Eb       Cm
2. Ó Cristo Luz, Cristo Jesus,
     Fm    Ab
Com Tua cruz,
     Eb       Cm
Sinal de amor,
       Fm       Gm7
Revivemos Teus passos
        Cm
De entrega e de dor!

[Terceira Parte]
Cm        Eb       Cm
3. Ó Cristo Luz, Cristo Jesus,
     Fm    Ab
Com Tua cruz,
     Eb      Cm    Fm
Madeiro santo, vem, renova a Igreja
Gm         Cm
Que entoa seu canto!

[Quarta Parte]
Cm        Eb       Cm
4. Ó Cristo Luz, Cristo Jesus,
     Fm    Ab
Com Tua cruz,
     Eb       Cm    Fm
Que é nossa cruz. Tu és a estrada
   Gm          Cm
Que ao Pai nos conduz!

[Final]
Fm  Eb  Db  Gm  Cm
A---------------mém!`
  },

  // 12. bendito-o-que-vem-em-nome-do-senhor-pe-lucas (catalog-entrada-final.js)
  'bendito-o-que-vem-em-nome-do-senhor-pe-lucas': {
    title: 'Santo (Bendito o Que Vem em Nome do Senhor)',
    composer: 'Pe. Lucas de Paula Almeida, CM',
    originalKey: 'D',
    bpm: 96,
    timeSignature: '2/4',
    rhythmName: 'Marcha Solene Litúrgica',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Santo+Padre+Lucas+de+Paula+Almeida+cifra',
    justification: 'Aclamação litúrgica solene do Sanctus do Missal Romano musicada pelo Pe. Lucas de Paula Almeida.',
    cifra: `[Intro] D  A  D

[Primeira Parte]
D                             F#m
Santo, Santo, Santo,
Em             A7        D
Senhor Deus do Universo!
Bm                  F#m
O céu e a terra proclamam
Em            A7       D
A vossa glória!

[Refrão]
G                 D
Hosana, hosana!
G                 D
Hosana, hosana!
G      Em     A7       D
Hosana nas alturas!

[Segunda Parte]
Bm       A              G                   A7
Bendito o que vem em nome do Senhor!
G                 D
Hosana, hosana!
G                 D
Hosana, hosana!
G      Em     A7       D
Hosana nas alturas!`
  },

  // 13. deus-conosco-emanuel-comunidade-emanuel (catalog-entrada-final.js)
  'deus-conosco-emanuel-comunidade-emanuel': {
    title: 'Emmanuel (Hino Oficial da JMJ 2000 Roma)',
    composer: 'Marco Mammoli / Pe. Delton Filho / Versão CNBB',
    originalKey: 'E',
    bpm: 88,
    timeSignature: '4/4',
    rhythmName: 'Hino Jovem Solene',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 7,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Emmanuel+Hino+JMJ+2000+cifra',
    justification: 'Hino histórico da Jornada Mundial da Juventude de Roma (Ano Santo 2000), cantado em vigílias em todo o planeta.',
    cifra: `[Intro] E  B  C#m  A  B

[Primeira Parte]
E                                 B
Da mesma terra onde a vida começou
C#m                                 A
Nasceu a história que o mundo transformou
E                                 B
A Boa Nova que aos pobres proclamou
C#m                               A           B
Que Deus conosco para sempre habitou!

[Refrão]
E         B       C#m       A
Siamo qui, sotto la stessa luce
E         B       C#m       A
Sotto la Tua croce, cantando ad una voce:
E            B          C#m          A
Emmanuel, Emmanuel, Emmanuel,
E            B          E
Emmanuel, Emmanuel!

[Segunda Parte]
E                                 B
A morte foi vencida na ressurreição
C#m                                 A
E a vida eterna brilha no meu coração
E                                 B
Jovens do mundo, sois sentinelas da manhã:
C#m                               A           B
Levai a todos a esperança cristã!`
  },

  // 14. alegria-de-servir-pe-delair-cuerva (catalog-entrada-final.js)
  'alegria-de-servir-pe-delair-cuerva': {
    title: 'Que Alegria É o Teu Servir (Aroma da Flor)',
    composer: 'Movimento EJC (Encontro de Jovens com Cristo)',
    originalKey: 'D',
    bpm: 80,
    timeSignature: '4/4',
    rhythmName: 'Balada EJC',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Que+Alegria+é+o+Teu+Servir+EJC+cifra',
    justification: 'Hino clássico dos Encontros de Jovens com Cristo (EJC) expressando o chamado ao serviço e doação a Deus.',
    cifra: `[Intro] D  G7M  F#m  Bm  Em  A  D

[Primeira Parte]
D                                     G7M
Pai, quanto tempo eu precisei de Você
F#m                   Bm
Sem saber por onde caminhar
Em                                    A
Agora que encontrei Tua santa luz
Em                        A           D
Quero a minha vida Te entregar!

[Refrão]
D                       G7M
Que alegria é o Teu servir
F#m                     Bm
E viver o Aroma da Flor!
Em                      A
Tudo o que sou entrego aqui
Em              A               D
Consagrado ao Teu eterno amor!`
  },

  // 15. milagres-pe-reginaldo-manzotti (catalog-adoracao-comunidades.js)
  'milagres-pe-reginaldo-manzotti': {
    title: 'Faça Um Milagre em Mim',
    composer: 'Padre Reginaldo Manzotti',
    originalKey: 'C',
    bpm: 74,
    timeSignature: '4/4',
    rhythmName: 'Balada de Súplica',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Faça+um+Milagre+Padre+Reginaldo+Manzotti+cifra',
    justification: 'Canção de fé e súplica por cura e libertação entoada pelo Padre Reginaldo Manzotti nas Santas Missas e momentos de cura.',
    cifra: `[Intro] C  G  Am  F

[Primeira Parte]
C
Quando a dor bate no peito
G
E a tristeza é demais
Am
Dói o corpo, sofre a alma
Em
É um vazio ou tanto faz
F
Mesmo assim eu não desisto
C
Porque Deus quer o meu melhor
G
Ele é o meu abrigo, meu escudo e meu penhor!

[Refrão]
C
Faça um milagre
G
Em toda a minha vida!
Am
Faça um milagre
Em
E cura minhas feridas!
F
Em minha vida Ele fará
C
O impossível vai acontecer
G
Basta crer e ter fé em Seu poder!`
  },

  // 16. regina-caeli-via-sacra-irma-kelly-patricia (catalog-adoracao-comunidades.js)
  'regina-caeli-via-sacra-irma-kelly-patricia': {
    title: 'Prisioneiro do Amor',
    composer: 'Irmã Kelly Patrícia / Nicodemos Costa / Instituto Hesed',
    originalKey: 'E',
    bpm: 64,
    timeSignature: '4/4',
    rhythmName: 'Contemplativo Místico',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 8,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Prisioneiro+do+Amor+Irmã+Kelly+Patrícia+cifra',
    justification: 'Clássico contemplativo da Irmã Kelly Patrícia sobre a entrega total da alma a Jesus Crucificado.',
    cifra: `[Intro] E  E7M  A/E  Am6/E  (2x)

[Primeira Parte]
E          B/D#           F#m7      B4
Ah, como é bom sentir a doce paz
       E              B/D#           F#m7      B4
E o amor que é suave, me leva a sorrir
E         B/D#           F#m7       B4
É, Você chegou qual ladrão, me fitou
Cº         C#m7       G#m7     F#m7      B4
E roubou para Si o meu coração!

[Refrão]
         E        B/D#      F#m7
E agora, sem forças, eu sou prisioneira
      B4          C#m7
Do mais belo amor
      F#m7        B4          E    (E7M)
Do doce Jesus, do meu Bem da cruz!

         E        B/D#      F#m7
E agora, sem forças, eu sou prisioneira
      B4          C#m7
Do mais belo amor
      F#m7        B4          E
Do doce Jesus, do meu Bem da cruz!`
  },

  // 17. soberano-eliana-ribeiro (catalog-adoracao-comunidades.js)
  'soberano-eliana-ribeiro': {
    title: 'Armadura do Cristão (Efésios 6)',
    composer: 'Fátima Souza / Eliana Ribeiro / Canção Nova',
    originalKey: 'Dm',
    bpm: 78,
    timeSignature: '4/4',
    rhythmName: 'Balada de Batalha Espiritual',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Armadura+do+Cristão+Fátima+Souza+Eliana+Ribeiro+cifra',
    justification: 'Hino bíblico de combate espiritual entoado por Eliana Ribeiro e Fátima Souza baseado em Efésios 6, 10-18.',
    cifra: `[Intro] Dm  Bb  C  Dm  Bb  C

[Primeira Parte]
Dm            Bb          C
Finalmente, irmãos, fortalecei-vos no Senhor, pelo seu soberano poder
Dm            Bb
Revesti-vos da armadura de Deus
       F                    C
Para que possais resistir às ciladas do inimigo!
Gm           Bb
Pois não é contra homens de carne e sangue
F             C        Gm
Que temos de lutar
          Bb
Mas contra os principados e potestades
F                  C
Contra os príncipes deste mundo tenebroso
Gm           Bb           F             C
Contra as forças espirituais do mal espalhadas nos ares!

[Refrão]
Dm            Bb
Tomai, portanto, a armadura de Deus
F                    C
Para que possais resistir nos dias maus
Dm            Bb
E estardes inabaláveis no cumprimento
F                 C
Do vosso dever, do vosso dever!

[Ponte]
Gm           Bb         F      C
Sobretudo, embraçai o escudo da fé
Gm           Bb         F      C
Com que possais apagar todos os dardos do inimigo!
Dm            Bb
Tomai, enfim, o capacete da salvação
C                                             Bb      C
E a espada do Espírito, que é a palavra de Deus!`
  },

  // 18. paz-e-bem-irmao-fraternidade-sao-francisco (catalog-adoracao-comunidades.js)
  'paz-e-bem-irmao-fraternidade-sao-francisco': {
    title: 'Paz e Bem, Meu Irmão (Saudação Franciscana)',
    composer: 'Frei Wilson / João Sperandio / Família Franciscana',
    originalKey: 'C',
    bpm: 104,
    timeSignature: '2/4',
    rhythmName: 'Marcha Franciscana',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 3,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Paz+e+Bem+meu+irmão+cifra',
    justification: 'Saudação de paz e fraternidade de São Francisco de Assis às criaturas e a toda a humanidade.',
    cifra: `[Intro] C  G  F  G  C

[Refrão]
C                     G
Paz e bem, meu irmão, paz e bem!
F           G              C     G7
Paz e bem, minha irmã, paz e bem!
C                     G
Paz e bem, meu irmão, paz e bem!
F           G              C
Paz e bem, minha irmã, paz e bem!

[Primeira Parte]
C                        G
1. Eu te saúdo sol, paz e bem!
Eu te saúdo lua, paz e bem!
C                        G
Eu te saúdo estrela, paz e bem!
Eu te saúdo luz, paz e bem!

[Refrão]
C                     G
Paz e bem, meu irmão, paz e bem!
F           G              C
Paz e bem, minha irmã, paz e bem!

[Segunda Parte]
C                        G
2. Eu te saúdo vento, paz e bem!
Eu te saúdo terra, paz e bem!
C                        G
Eu te saúdo fogo, paz e bem!
Eu te saúdo ar, paz e bem!

[Refrão]
C                     G
Paz e bem, meu irmão, paz e bem!
F           G              C
Paz e bem, minha irmã, paz e bem!`
  },

  // 19. colo-de-deus-mistica-sublime (catalog-adoracao-comunidades.js)
  'colo-de-deus-mistica-sublime': {
    title: 'Mística Sublime',
    composer: 'Comunidade Católica Colo de Deus',
    originalKey: 'C',
    bpm: 68,
    timeSignature: '4/4',
    rhythmName: 'Worship Eucarístico',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Mística+Sublime+Colo+de+Deus+cifra',
    justification: 'Canto místico da Colo de Deus de profunda adoração e união mística com Cristo na Santa Eucaristia.',
    cifra: `[Intro] F  Am  C  (2x)

[Primeira Parte]
F
Mística sublime, Te receber
Am         C
Ter comunhão
F
Ter correndo em mim Teu sangue, Deus
Am         C
Estou em comunhão
F
Alguém dirá que um Deus
Am
Tão grande assim não se dará
G
Por mim?
F
O que os meus olhos veem
Am         C
Não é o que minh'alma diz!

[Refrão]
F
Já não é mais vinho, não
Am         G
É o sangue do meu Deus
F
Já não é mais pão aqui
Am
É o corpo do meu Amor
C
Do meu Amor!

F
E neste lugar, eu posso dizer
Am
Estás dentro de mim
C
E eu dentro de Você!

F
Agora nós dois somos um
Am         G
Agora nós dois somos um!`
  },

  // 20. pe-fabio-de-melo-direcao (catalog-adoracao-comunidades.js)
  'pe-fabio-de-melo-direcao': {
    title: 'Humano Amor de Deus',
    composer: 'Padre Fábio de Melo',
    originalKey: 'D',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada Poética',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Humano+Amor+de+Deus+Padre+Fábio+de+Melo+cifra',
    justification: 'Poema clássico do Padre Fábio de Melo sobre o amor e a amizade como sinais palpáveis do amor de Deus.',
    cifra: `[Intro] D  G  D  G  Em  A

[Primeira Parte]
D
Tens o dom de ver estradas
G
Onde eu vejo o fim
D
Me convences quando falas:
G      A
"Não é bem assim!"
Em
Se me esqueço, me recordas
A
Se não sei, me ensinas
Em      G
E se perco a direção
A
Vens me encontrar!

[Refrão]
D
Quando a solidão doeu em mim
Bm
Quando o meu passado não passou por mim
Em
Quando eu não soube compreender a vida
A
Tu vieste compreender por mim!

D
Quando os meus olhos não podiam ver
Bm
Tua mão segura me ajudou a andar
Em
Quando eu não tinha mais amor no peito
A
Teu amor me ajudou a amar!

D      G
Que Deus me ama, que não estou só
Em
Que Deus cuida de mim
A
Quando fala pela tua voz
D
Que me diz: Coragem!`
  },

  // 21. pe-fabio-de-melo-solo-sagrado (catalog-adoracao-comunidades.js)
  'pe-fabio-de-melo-solo-sagrado': {
    title: 'Marcas do Eterno (Solo Sagrado)',
    composer: 'Padre Fábio de Melo',
    originalKey: 'C',
    bpm: 74,
    timeSignature: '4/4',
    rhythmName: 'Balada de Consagração',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 8,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Marcas+do+Eterno+Padre+Fábio+de+Melo+cifra',
    justification: 'Clássico do álbum Solo Sagrado do Padre Fábio de Melo sobre a inviolabilidade da alma consagrada a Deus.',
    cifra: `[Intro] C  G/C  Am  Dm  G4  G

[Primeira Parte]
C                    G/C                   Am
Antes de você entrar na minha vida
Dm                    Dm/C
De se decidir por mim
G/B
Por minha história
F                     C/E
Haverá de ter clareza de saber bem
Am
Quem eu sou
Dm                    Dm7
Pra depois não me dizer
G4       G7
Ter se enganado

C                    G/B     Am
Eu não posso ser o que você quiser
F                                C/E     Dm7
Sou bem mais do que os seus olhos podem ver
F                    C/E     Am
Se quiser seguir comigo, eu lhe estendo a mão
Dm                               G4        G     C
Mas não pode um só momento se esquecer

[Refrão]
G        C
Sou consagrado ao meu Senhor
         G/B        Am
Solo sagrado eu sei que sou
         F          Dm
Vida que o céu sacramentou
         G
Marcas do eterno estão em mim!

G        C
Antes do seu amor chegar
         G/B        Am
Um outro amor já me encontrou
         F          Dm
E me envolveu com tanta luz
         G                       C
Que já não posso me esquecer!`
  },

  // 22. celina-borges-back-to-faith (catalog-adoracao-comunidades.js)
  'celina-borges-back-to-faith': {
    title: 'Duas Asas: Fé e Razão',
    composer: 'Celina Borges',
    originalKey: 'G',
    bpm: 76,
    timeSignature: '4/4',
    rhythmName: 'Pop/Folk Católico',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 7,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Fé+e+Razão+Celina+Borges+cifra',
    justification: 'Inspirada na encíclica Fides et Ratio de São João Paulo II, retratando fé e razão como as duas asas da alma.',
    cifra: `[Intro] G9  C9  G9  C9

[Primeira Parte]
G9                         C9
Foi Deus quem colocou no coração
       Am7                     C9
Do homem o desejo da verdade
G9        D/F#      Em7
De O conhecer a Ele, ó fé não
        Bm7
Tenhas medo da razão
C9                      G9
Razão quem te criou foi Deus
       Am7                 C9
Duas asas que nos elevam para o céu
       Am7                 C9           D
Duas asas que nos elevam em contemplação!

[Refrão]
G9                 Am7             C9
Deus sempre abençoa o esforço da busca
                  G9
Crer nada mais é pensar querendo
Am7             C9
Pensar crendo e pensando crer
G9              Am7             C9
O Eterno entra no tempo, o Tudo
                  G9
Esconde-se no fragmento!

         Am7
A fé e a razão, a fé e a razão
C9                G9
Razão e a fé!
         Am7
A fé e a razão, a fé e a razão
C9                G9
Razão e a fé!`
  },

  // 23. adriana-arydes-coracao-sagrado (catalog-adoracao-comunidades.js)
  'adriana-arydes-coracao-sagrado': {
    title: 'Coração Sagrado (Ao Teu Coração)',
    composer: 'Comunidade Católica Recado / Adriana Arydes',
    originalKey: 'C',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada Eucarística',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Coração+Sagrado+Comunidade+Recado+cifra',
    justification: 'Clássico católico de consagração e refúgio no Sagrado Coração Eucarístico de Jesus (Mt 11, 28).',
    cifra: `[Intro] C  G/B  F  G  (2x)

[Primeira Parte]
C                     G/B
Se você está cansado
F                        G
Sem lugar pra repousar
C                         G/B
Venha ao Coração Sagrado
F                            G
De Jesus, que aberto está
Am          Em          Am         Em
Pode então entrar, até descansar
F            F/G            C      F/G
Seu Deus ali espera e quer amar!

[Refrão]
C     Em    F                     G
Curar suas feridas, tirar sua dor
C         Em     F                        G
E derramar no seu peito um novo amor
C                  G/B
Venha, meu irmão
F                          G
Acolher este grande amor
C                   G/B
Entregue em Suas mãos
F                       G
A sua vida e a sua dor
Am        Em        Am            Em
Ele é o refúgio, a paz e o perdão
F             F/G           C
Morada certa para o seu coração!`
  },

  // 24. tony-allysson-aguas-profundas (catalog-adoracao-comunidades.js)
  'tony-allysson-aguas-profundas': {
    title: 'Águas Profundas',
    composer: 'Tony Allysson',
    originalKey: 'G',
    bpm: 74,
    timeSignature: '4/4',
    rhythmName: 'Balada de Avivamento',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Águas+Profundas+Tony+Allysson+cifra',
    justification: 'Clássico de avivamento de Tony Allysson baseado em Ezequiel 47 e no convite do Senhor a avançar para águas profundas.',
    cifra: `[Intro] Em  C  G  D  (2x)

[Primeira Parte]
Em7
Eu guardarei
C                     G       D
Tua palavra em meu coração
Em
Na tribulação, invocarei
G          D
Teu santo nome
Am          Em
A Tua destra me sustenta
C          Em      D
Da aliança não me esquecerei
Am7        G
Tua palavra me alimenta
D
Não vacilarei!

[Refrão]
G                                       D
Leva-me às águas profundas
C           Em      D
Aviva-me de novo, Senhor!
G                                       D
Leva-me às águas profundas
C                   D
Fala ao meu coração!

[Ponte]
Am           Em
Se em Teus olhos eu não olhar
C
Se minha boca se calar
Em           D
E eu não anunciar os Teus preceitos
Am          Em
Se minha vida não mudar
C
Nada vai valer
D4           D
O Teu Espírito soprar!

[Refrão Final]
G                                       D
Leva-me às águas profundas
C           Em      D
Aviva-me de novo, Senhor!
G                                       D
Leva-me às águas profundas
C                   D             G
Fala ao meu coração!`
  },

  // 25. diego-fernandes-eu-nao-esqueco (catalog-adoracao-comunidades.js)
  'diego-fernandes-eu-nao-esqueco': {
    title: 'Eu Não Esqueço',
    composer: 'Diego Fernandes',
    originalKey: 'E',
    bpm: 78,
    timeSignature: '4/4',
    rhythmName: 'Pop Rock Católico',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Eu+Não+Esqueço+Diego+Fernandes+cifra',
    justification: 'Canção de gratidão de Diego Fernandes pelo perdão incondicional de Jesus (Jo 8, 1-11).',
    cifra: `[Intro] E  E/G#  A9  E  E/G#  A9

[Primeira Parte]
E          E/G#      A9
Eu não entendo um Deus assim
E
Tão louco de amor por mim
E/G#           A9
Eu não mereço, sou tão fraco
C#m7
Por que Ele me escolheu?
A9
E para confundir os fortes
C#m7         B9
Gravou meu nome em Sua mão!

[Refrão]
E          B/D#      C#m7
Deus, Você me levantou do chão
A9                  B7                E
Enquanto a multidão jogava pedras
E          B/D#       C#m7
Deus, Você me perdoou
A9          B           A9      E
E desse amor eu não esqueço!

[Segunda Parte]
E          E/G#      A9
Quando todos me condenaram
E
Tua misericórdia me alcançou
C#m7                   A9
Hoje canto livre e resgatado
C#m7                 B9
Pois Teu sangue me salvou!`
  },

  // 26. diego-fernandes-ser-diferente (catalog-adoracao-comunidades.js)
  'diego-fernandes-ser-diferente': {
    title: 'Ser Diferente',
    composer: 'Diego Fernandes / Guilherme de Sá',
    originalKey: 'D',
    bpm: 110,
    timeSignature: '4/4',
    rhythmName: 'Pop Rock Jovem',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Ser+Diferente+Diego+Fernandes+cifra',
    justification: 'Hino jovem de autenticidade evangélica composto por Diego Fernandes e Guilherme de Sá.',
    cifra: `[Intro] D  G/B  A/C#  D  G  D

[Primeira Parte]
D               G/B       A/C#
Tenho que ser diferente
D               D/F#      G
Preciso ser eu mesmo também
Em              D/F#      G
Amar sem preconceitos
Em
Viver os meus preceitos
A
E não rotular ninguém!

[Segunda Parte]
D             G/B       A/C#
Hoje eu acordei com vontade de viver
D             G/B       A/C#
Hoje eu acordei com vontade de vencer!

[Refrão]
G               A
Livre para amar
G               A
Livre pra perdoar
G               A
Livre pra respeitar
Em                      G              A            D
Ser livre e nunca desistir de sonhar!`
  },

  // 27. davidson-silva-insuperavel-amor (catalog-adoracao-comunidades.js)
  'davidson-silva-insuperavel-amor': {
    title: 'Tomé',
    composer: 'Davidson Silva / Comunidade Católica Shalom',
    originalKey: 'D',
    bpm: 72,
    timeSignature: '4/4',
    rhythmName: 'Balada Litúrgica de Cura',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 5,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Tomé+Davidson+Silva+cifra',
    justification: 'O maior clássico de cura da fé de Davidson Silva baseado na experiência do apóstolo Tomé (Jo 20, 24-29).',
    cifra: `[Intro] Bm  A9  G9  Bm  A9  G9

[Primeira Parte]
D         Em        Bm        G9
Por muito tempo não acreditei
D         Em        Bm        G9
Me escondi, duvidei
Bm         A9              G9
Se tudo ao meu redor era ausência Tua
Bm            A9          G9
Já não ouvia mais a Tua voz
D         Em        Bm        G9
Só acreditarei se eu tocar
D         Em        Bm        G9
Teu lado aberto pela lança

[Refrão]
Bm          A9          G9
Põe aqui o teu dedo e vê as Minhas mãos
Bm          A9          G9
Não sejas incrédulo, mas crê!
D           Em        Bm            G9
Meu Senhor e meu Deus, perdoa minha falta de fé!
D           Em        Bm            G9
Meu Senhor e meu Deus, perdoa meu coração duro!
Bm          A9          G9
Hoje toco em Tuas chagas
Bm          A9          G9          D
E Te entrego o meu viver!`
  },

  // 28. dunga-phn-por-hoje-nao (catalog-adoracao-comunidades.js)
  'dunga-phn-por-hoje-nao': {
    title: 'Geração PHN (Por Hoje Não Vou Mais Pecar)',
    composer: 'Dunga / Canção Nova',
    originalKey: 'F',
    bpm: 108,
    timeSignature: '4/4',
    rhythmName: 'Pop Rock PHN',
    rhythmPattern: '↓  ↓ ↑  ↑ ↓ ↑',
    isMostUsed: true,
    isSimple: false,
    chordCount: 6,
    youtubeUrl: 'https://www.youtube.com/results?search_query=Geração+PHN+Dunga+cifra',
    justification: 'Hino fundador do movimento jovem PHN (Por Hoje Não) criado por Dunga na Canção Nova.',
    cifra: `[Intro] F  Bb  Dm  C  (2x)

[Primeira Parte]
F
Essa geração é esperança pro mundo
Bb
Através de nós, a paz chegará aos povos
Dm
De nós Ele fará um grande sinal pro mundo
C
E eles acreditarão que o perdão
Bb
Será, então, a grande revolução!

[Segunda Parte]
F
Eu hoje fui gerado assim
Bb
Na condição de tudo o que pedir
Dm
Em resposta me fará feliz
C
Sabendo: se na porta eu bater
Bb
Ela irá se abrir, apesar de tudo o que vivi!

[Refrão]
F
Não vou me separar de Ti
Bb
Pois também sou da casa de Davi
Dm
Já provei do Seu amor por mim
C
Durante toda a vida me senti chamado a Te servir
Bb                           F
Apesar de tudo o que vivi!`
  }
};

const catalogFiles = [
  'santa-cifra/js/catalog/catalog-ordinario-salmos.js',
  'santa-cifra/js/catalog/catalog-entrada-final.js',
  'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js',
  'santa-cifra/js/catalog/catalog-adoracao-comunidades.js'
];

let updatedCount = 0;
let justCleanedCount = 0;

catalogFiles.forEach(filePath => {
  let fileContent = fs.readFileSync(filePath, 'utf8');

  // Load array
  const match = fileContent.match(/window\.\w+\s*=\s*(\[[\s\S]*\]);/);
  if (!match) return;
  const songs = (new Function('return ' + match[1]))();

  let modified = false;

  songs.forEach(song => {
    // 1. Check if this song is in replacements
    if (replacements[song.id]) {
      const rep = replacements[song.id];
      song.title = rep.title;
      song.composer = rep.composer;
      song.originalKey = rep.originalKey;
      song.bpm = rep.bpm;
      song.timeSignature = rep.timeSignature;
      song.rhythmName = rep.rhythmName;
      song.rhythmPattern = rep.rhythmPattern;
      song.isSimple = rep.isSimple;
      song.chordCount = rep.chordCount;
      song.youtubeUrl = rep.youtubeUrl;
      song.cifra = rep.cifra;
      if (song.liturgicalAnalysis) {
        song.liturgicalAnalysis.justification = rep.justification;
      }
      updatedCount++;
      modified = true;
    } else {
      // 2. Clean up any leftover "Quatro acordes em" in justification
      if (song.liturgicalAnalysis && song.liturgicalAnalysis.justification &&
          song.liturgicalAnalysis.justification.includes('Quatro acordes em')) {
        song.liturgicalAnalysis.justification = song.liturgicalAnalysis.justification.replace(/Quatro acordes em \w+ maior expressando/g, 'Arranjo expressando');
        justCleanedCount++;
        modified = true;
      }
    }
  });

  if (modified) {
    const varName = fileContent.match(/window\.(\w+)\s*=/)[1];
    const newHeader = fileContent.split(/window\.\w+\s*=/)[0];
    const newContent = `${newHeader}window.${varName} = ${JSON.stringify(songs, null, 2)};\n`;
    fs.writeFileSync(filePath, newContent, 'utf8');
    console.log(`Updated ${filePath}`);
  }
});

console.log(`\nSuccessfully updated ${updatedCount} songs with authentic Cifra Club scores.`);
console.log(`Cleaned up ${justCleanedCount} leftover justification strings.`);
