# -*- coding: utf-8 -*-
import json
import os

songs = [
  # ================= ENTRADA =================
  {
    "id": "toda-a-terra-te-exalta",
    "title": "Toda a Terra Te Exalta, ó Senhor",
    "composer": "Hinário Litúrgico CNBB",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 92,
    "timeSignature": "4/4",
    "rhythmName": "Marcha Solene",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Toda+a+terra+te+exalta+CNBB",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (CNBB)",
      "score": 96,
      "documentRef": "IGMR 47-48 / Salmo 99",
      "biblicalRef": "Sl 99 (100); Cl 3, 16",
      "justification": "Canto clássico de abertura que reúne o povo de Deus em torno do altar com sobriedade e louvor bíblico."
    },
    "cifra": """[Intro] G  C  D  G

[Refrão]
G           C         D        G
Toda a terra te exalta, ó Senhor!
            C        D         G
Toda a terra te canta um louvor!
            C          D       Em
Tu és nossa força, nossa salvação,
C            G          D        G
Reunidos em torno do teu santo altar!

[Estrofe 1]
G             Em          C       D
1. Vinde todos com cantos de alegria,
G             Em           C      D
Entrai em sua casa com ação de graças!
C              D          G       Em
Ele é o nosso Deus, nosso Salvador,
C              G            D       G
E nós somos o povo do seu pastoreio!"""
  },
  {
    "id": "de-alegria-vibrei-no-senhor",
    "title": "De Alegria Vibrei no Senhor",
    "composer": "Pe. Zezinho / Salmo 121",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 96,
    "timeSignature": "4/4",
    "rhythmName": "Marcha Rancho / Jovem",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=De+alegria+vibrei+no+Senhor+Padre+Zezinho",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Inspiração Salmódica)",
      "score": 98,
      "documentRef": "IGMR 47 / Salmo 121",
      "biblicalRef": "Sl 121 (122), 1-2",
      "justification": "Paráfrase fiel da antífona clássica de entrada 'Laetatus sum' (Que alegria quando me disseram: Vamos à Casa do Senhor)."
    },
    "cifra": """[Intro] D  G  A  D

[Refrão]
D                    G          D
De alegria vibrei no Senhor,
                     E          A
Pois meus passos conduzem ao altar!
G                    D          Bm
Lá no céu os anjos cantam com amor:
Em        A          D
Vamos à Casa do Senhor!

[Estrofes]
D                     G           D
1. Que alegria quando a mim me disseram:
                      A           D
Vamos juntos à Casa do Pai!
G                     D           Bm
Nossos pés já se encontram às portas
Em        A           D
Da Jerusalém celestial!

D                     G           D
2. Para lá sobem todas as tribos,
                      A           D
Para o Nome do Senhor celebrar!
G                     D           Bm
Implorai a paz sobre a Igreja,
Em        A           D
Reunida ao redor deste altar!"""
  },
  {
    "id": "o-povo-de-deus-no-deserto-andava",
    "title": "O Povo de Deus no Deserto Andava",
    "composer": "Tradicional Litúrgico / CNBB",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 94,
    "timeSignature": "4/4",
    "rhythmName": "Toada / Caminhada",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 3,
    "youtubeUrl": "https://www.youtube.com/results?search_query=O+povo+de+Deus+no+deserto+andava+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Apenas 3 Acordes)",
      "score": 94,
      "documentRef": "IGMR 47 / Lumen Gentium 9",
      "biblicalRef": "Êx 16; Hb 11",
      "justification": "Excelente canto processional de entrada para iniciantes (usa apenas D, G, A). Expressa a Igreja peregrina rumo à Pátria celeste."
    },
    "cifra": """[Intro] D  A  D

D                                  A
1. O povo de Deus no deserto andava,
   G                 A             D
Mas à sua frente alguém caminhava.
D                                  A
O povo de Deus era rico de nada,
   G                 A             D    D7
Só tinha a esperança e o pó da estrada.

[Refrão]
   G                               D
Também sou teu povo, Senhor, e estou nessa estrada,
   A                               D    D7
Somente a tua graça me basta e mais nada!
   G                               D
Também sou teu povo, Senhor, e estou nessa estrada,
   A                               D
Somente a tua graça me basta e mais nada!

D                                  A
2. O povo de Deus também vacilava,
   G                 A             D
Às vezes custava a crer no amor.
D                                  A
O povo de Deus, chorando, rezava,
   G                 A             D    D7
Pedia perdão e recomeçava."""
  },
  {
    "id": "senhor-quem-entrara-no-santuario",
    "title": "Senhor, Quem Entrará no Santuário pra Te Louvar",
    "composer": "Tradicional Litúrgico (Salmo 23)",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 88,
    "timeSignature": "4/4",
    "rhythmName": "Balada Simples",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Senhor+quem+entrara+no+santuario+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Baseado no Salmo 23/24)",
      "score": 92,
      "documentRef": "IGMR 47 / Salmo 23, 3-4",
      "biblicalRef": "Sl 23 (24), 3-6",
      "justification": "Um dos cantos de entrada mais fáceis do repertório católico. Retoma literalmente o Salmo 23: 'Quem subirá ao monte do Senhor? Quem tem mãos puras e coração inocente'."
    },
    "cifra": """[Intro] C  F  G  C

C                                   G
1. Senhor, quem entrará no santuário pra te louvar?
   F                  G             C     C7
Senhor, quem entrará no santuário pra te louvar?

[Refrão]
     F                  G
Quem tem as mãos limpas e o coração puro,
     C         Am       Dm          G
Quem não é vaidoso e sabe amar!
     F                  G
Quem tem as mãos limpas e o coração puro,
     C         Am       Dm   G     C
Quem não é vaidoso e sabe amar!

C                                   G
2. Senhor, eu quero entrar no santuário pra te louvar!
   F                  G             C     C7
Senhor, eu quero entrar no santuário pra te louvar!

     F                  G
Ó dá-me mãos limpas e um coração puro,
     C         Am       Dm          G
Arranca a vaidade, ensina-me a amar!
     F                  G
Ó dá-me mãos limpas e um coração puro,
     C         Am       Dm   G     C
Arranca a vaidade, ensina-me a amar!"""
  },
  {
    "id": "eis-o-tempo-de-conversao",
    "title": "Eis o Tempo de Conversão",
    "composer": "Pe. José Weber / CNBB",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Quaresma",
    "originalKey": "D",
    "bpm": 74,
    "timeSignature": "4/4",
    "rhythmName": "Balada Sóbria",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Eis+o+tempo+de+conversao+cifra",
    "liturgicalAnalysis": {
      "status": "Oficial do Hinário Litúrgico da CNBB (Quaresma)",
      "score": 100,
      "documentRef": "IGMR 47 / Hinário Litúrgico CNBB",
      "biblicalRef": "2Cor 6, 2; Jl 2, 12",
      "justification": "Canto oficial por excelência do Tempo da Quaresma no Brasil."
    },
    "cifra": """[Intro] D  Em  A  D

[Refrão]
D        Em       A        D
Eis o tempo de conversão!
A                     D
Eis o dia da salvação!
Bm       G        A           D
Ao Pai voltemos, juntos andemos:
D        Em       A        D
Eis o tempo de conversão!

[Estrofes]
D                            A
1. Os caminhos do Senhor são verdade, são amor:
G              A             D
Dirigi os meus passos, ó Senhor!
D                            A
Vossa palavra é a luz que na estrada me conduz:
G              A             D
Converhei minha vida ao vosso amor!"""
  },
  {
    "id": "o-senhor-ressurgiu-aleluia",
    "title": "O Senhor Ressurgiu, Aleluia!",
    "composer": "Hinário Litúrgico CNBB (Tempo Pascal)",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Páscoa",
    "originalKey": "D",
    "bpm": 98,
    "timeSignature": "4/4",
    "rhythmName": "Marcha Festiva Pascal",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": False,
    "chordCount": 5,
    "youtubeUrl": "https://www.youtube.com/results?search_query=O+Senhor+ressurgiu+aleluia+cifra",
    "liturgicalAnalysis": {
      "status": "Oficial do Hinário da CNBB (Páscoa)",
      "score": 100,
      "documentRef": "IGMR 47 / Tempo Pascal",
      "biblicalRef": "1Cor 5, 7; Ap 5, 12",
      "justification": "Exalta a Ressurreição do Cordeiro Pascal imolado e vitorioso."
    },
    "cifra": """[Intro] D  F#m  G  A  D

[Refrão]
D      F#m      G          D
O Senhor ressurgiu, aleluia, aleluia!
G      Em       A
É o Cordeiro Pascal, aleluia, aleluia!
D      F#m      G          D
Imolado por nós, aleluia, aleluia!
G      Em       F#m    G       A      D
É o Cristo, o Senhor, ele vive e venceu, aleluia!

[Estrofe 1]
Bm              F#m
1. O Cristo, Senhor ressuscitou,
G               A
A nossa esperança realizou:
Bm              F#m
Vencida a morte para sempre,
G               E          A
Triunfa a vida eternamente!"""
  },
  {
    "id": "da-cepa-brotou-a-rama",
    "title": "Da Cepa Brotou a Rama",
    "composer": "Pe. Reginaldo Veloso / CNBB",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Advento",
    "originalKey": "Em",
    "bpm": 82,
    "timeSignature": "4/4",
    "rhythmName": "Baião / Toada Sóbria",
    "rhythmPattern": "↓  ↓ ↑  ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 3,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Da+cepa+brotou+a+rama+cifra",
    "liturgicalAnalysis": {
      "status": "Oficial do Hinário Litúrgico da CNBB (Advento)",
      "score": 100,
      "documentRef": "IGMR 47 / Isaías 11, 1-2",
      "biblicalRef": "Is 11, 1-10",
      "justification": "Profecia messiânica de Isaías cantada com apenas 3 acordes básicos (Em, Am, B7)."
    },
    "cifra": """[Intro] Em  B7  Em

[Refrão]
Em       B7          Em
Da cepa brotou a rama, da rama brotou a flor,
E7               Am     B7               Em
Da flor nasceu Maria, de Maria, o Salvador!

[Estrofe 1]
Am                     Em
1. O Espírito de Deus sobre ele pousará,
B7                     Em
De saber, de entendimento este Espírito será,
Am                     Em
De conselho e fortaleza, de ciência e de temor,
B7                     Em
Achará sua alegria no temor do seu Senhor!"""
  },
  {
    "id": "cristaos-vinde-todos-natal",
    "title": "Cristãos, Vinde Todos (Adeste Fideles)",
    "composer": "Hino Tradicional de Natal",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Natal",
    "originalKey": "G",
    "bpm": 86,
    "timeSignature": "4/4",
    "rhythmName": "Hino Solene",
    "rhythmPattern": "↓   ↓   ↓   ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Cristaos+vinde+todos+cifra",
    "liturgicalAnalysis": {
      "status": "Patrimônio Universal da Igreja (Adeste Fideles)",
      "score": 100,
      "documentRef": "Sacrosanctum Concilium 114 / Natal do Senhor",
      "biblicalRef": "Lc 2, 15",
      "justification": "Tradução oficial em vernáculo do clássico hino latino Adeste Fideles para a Missa do Natal."
    },
    "cifra": """[Intro] G  D  G  C  G  D  G

G              D       G        C     G    D
1. Cristãos, vinde todos, com alegres cantos,
Em     D     C       D     G     D
Oh! Vinde, oh! Vinde até Belém!
G           C      D     Em         D
Vede nascido, vosso Rei eterno:

[Refrão]
G              D          G        C     G    D
Oh! Vinde, adoremos! Oh! Vinde, adoremos!
C       D      G   Em    C      D      G
Oh! Vinde, adoremos o Salvador!"""
  },

  # ================= ATO PENITENCIAL =================
  {
    "id": "senhor-que-viestes-salvar",
    "title": "Senhor, que Viestes Salvar os Corações Arrependidos",
    "composer": "Pe. Zeca / JMJ",
    "liturgicalMoment": "Ato Penitencial",
    "liturgicalSeason": "Qualquer",
    "originalKey": "D",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Balada Lenta Orante",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 5,
    "youtubeUrl": "https://www.youtube.com/watch?v=2Tz8A_oR3n0",
    "liturgicalAnalysis": {
      "status": "Fórmula Oficial III do Missal Romano",
      "score": 100,
      "documentRef": "IGMR 52 / Ordinário da Missa",
      "biblicalRef": "Sl 50; Lc 18, 13",
      "justification": "A música de Ato Penitencial mais cantada nas paróquias do Brasil, com texto 100% fiel ao Missal Romano."
    },
    "cifra": """[Intro] D  A  Bm  G  A  D

D          A       Bm
Senhor que viestes salvar
G               A   D
Os corações arrependidos:
G      Gm     D   Bm   Em   A   D
Piedade, piedade, piedade de nós!
G      Gm     D   Bm   Em   A   D
Piedade, piedade, piedade de nós!

D          A      Bm
Ó Cristo que viestes chamar
G          A     D
Os pecadores humilhados:
G      Gm     D   Bm   Em   A   D
Piedade, piedade, piedade de nós!

D          A       Bm
Senhor que intercedeis por nós
G          A   D
Junto a Deus Pai que nos perdoa:
G      Gm     D   Bm   Em   A   D
Piedade, piedade, piedade de nós!"""
  },
  {
    "id": "senhor-tende-piedade-de-nos-simples",
    "title": "Senhor, Tende Piedade de Nós (Clássico 3 Acordes)",
    "composer": "Missal Romano / Melodia Simples",
    "liturgicalMoment": "Ato Penitencial",
    "liturgicalSeason": "Qualquer",
    "originalKey": "Em",
    "bpm": 66,
    "timeSignature": "4/4",
    "rhythmName": "Dedilhado / Balada Lenta",
    "rhythmPattern": "↓   ↑ ↓   ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 3,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Senhor+tende+piedade+de+nos+missal",
    "liturgicalAnalysis": {
      "status": "Texto Oficial do Kyrie Eleison (Missal Romano)",
      "score": 100,
      "documentRef": "IGMR 52",
      "biblicalRef": "Mt 20, 30",
      "justification": "Fórmula direta e curtíssima do Kyrie, ideal para Missas feriais, Quaresma e iniciantes no violão (apenas Em, Am, B7)."
    },
    "cifra": """[Intro] Em  Am  B7  Em

Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Senhor, tende piedade de nós!

Am                      Em
Cristo, tende piedade de nós!
B7                      Em
Cristo, tende piedade de nós!

Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Senhor, tende piedade de nós!"""
  },
  {
    "id": "kyrie-eleison-shalom",
    "title": "Kyrie Eleison (Como a Ovelha Perdida)",
    "composer": "Comunidade Católica Shalom / JMJ",
    "liturgicalMoment": "Ato Penitencial",
    "liturgicalSeason": "Qualquer",
    "originalKey": "G",
    "bpm": 70,
    "timeSignature": "4/4",
    "rhythmName": "Balada Orante",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Como+a+ovelha+perdida+Kyrie+Shalom",
    "liturgicalAnalysis": {
      "status": "Aprovado com Tropo Bíblico + Kyrie",
      "score": 95,
      "documentRef": "IGMR 52 / Lc 15, 4-7",
      "biblicalRef": "Lc 15, 4; Lc 23, 42",
      "justification": "Integra tropos evangélicos (o Bom Pastor, o Bom Ladrão) seguidos da aclamação tradicional grega Kyrie Eleison / Christe Eleison."
    },
    "cifra": """[Intro] G  D  Em  C  D

G                 D                 Em              C
1. Como a ovelha perdida, pelo pecado ferida,
G                 D                 C               D
Eu te suplico perdão, ó Bom Pastor!

[Refrão]
G      D      Em     C      G      D      C   D
Kyrie eleison! Kyrie eleison! Kyrie eleison!

G                 D                 Em              C
2. Como o ladrão perdoado, encontro o paraíso ao teu lado,
G                 D                 C               D
Lembra-te de mim, pecador, por tua cruz!

G       D       Em      C       G       D       C   D
Christe eleison! Christe eleison! Christe eleison!

G                 D                 Em              C
3. Como a pecadora caída, derramo aos teus pés minha vida,
G                 D                 C               D
Vê as lágrimas do meu coração e salva-me!

G      D      Em     C      G      D      G
Kyrie eleison! Kyrie eleison! Kyrie eleison!"""
  },
  {
    "id": "perdao-senhor-tantos-erros-cometi",
    "title": "Perdão, Senhor, Tantos Erros Cometi",
    "composer": "Pe. Jonas Abib",
    "liturgicalMoment": "Ato Penitencial",
    "liturgicalSeason": "Qualquer",
    "originalKey": "C",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Balada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": False,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Perdao+Senhor+tantos+erros+cometi+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado com Invocação Final de Piedade",
      "score": 88,
      "documentRef": "IGMR 51-52",
      "biblicalRef": "Sl 50",
      "justification": "Clássico bastante simples em Dó maior (C, Am, Dm, G)."
    },
    "cifra": """[Intro] C  Am  Dm  G  C

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
Dm       G        C
Meu pecado vem lavar com seu amor!"""
  },

  # ================= GLÓRIA =================
  {
    "id": "gloria-a-deus-nas-alturas-cnbb",
    "title": "Glória a Deus nas Alturas (Oficial da Liturgia)",
    "composer": "Casemiro V. Nogueira / CNBB",
    "liturgicalMoment": "Glória",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "E",
    "bpm": 88,
    "timeSignature": "4/4",
    "rhythmName": "Marcha Solene / Louvor",
    "rhythmPattern": "↓  ↓  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/watch?v=kYJvY9Vd_G8",
    "liturgicalAnalysis": {
      "status": "Texto Oficial Canônico do Missal Romano",
      "score": 100,
      "documentRef": "IGMR 53 / Sacrosanctum Concilium 112",
      "biblicalRef": "Lc 2, 14; Ap 5, 12",
      "justification": "Texto integral inalterado do Missal Romano. Cumpre perfeitamente a exigência canônica da IGMR 53."
    },
    "cifra": """[Intro] E  B7  E

[Refrão]
    E      B7    F#m
Glória a Deus nas alturas,
       B7       E
Glória a Deus nas alturas!
    E7     A
E paz na terra aos homens
       E     B7    E
por Ele amados.

[Solo / Estrofe 1]
    E               B7
Senhor Deus, Rei dos céus,
    A           E
Deus Pai todo-poderoso:
    A              E
Nós vos louvamos, nós vos bendizemos,
    F#7           B7
Nós vos adoramos, nós vos glorificamos,
    A          B7     E
Nós vos damos graças por vossa imensa glória.

[Solo / Estrofe 2]
    E            B7
Senhor Jesus Cristo, Filho Unigênito,
    A              E
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai.
    A              E
Vós que tirais o pecado do mundo,
    F#7        B7
Tende piedade de nós.
    A              E
Vós que tirais o pecado do mundo,
    F#7           B7
Acolhei a nossa súplica.
    A              E
Vós que estais à direita do Pai,
    B7         E
Tende piedade de nós.

[Solo / Estrofe 3]
    E           B7
Só vós sois o Santo, só vós, o Senhor,
    A              E
Só vós, o Altíssimo, Jesus Cristo,
    A           E
Com o Espírito Santo,
       B7           E
Na glória de Deus Pai. Amém!"""
  },
  {
    "id": "gloria-a-deus-nas-alturas-simplificado-do",
    "title": "Glória a Deus nas Alturas (Fácil Sem Pestana em Dó)",
    "composer": "Hinário Litúrgico CNBB",
    "liturgicalMoment": "Glória",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 90,
    "timeSignature": "4/4",
    "rhythmName": "Balada Festiva",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Gloria+a+Deus+nas+alturas+CNBB+Do+maior",
    "liturgicalAnalysis": {
      "status": "Texto Oficial do Missal (Arranjo Iniciante)",
      "score": 100,
      "documentRef": "IGMR 53",
      "biblicalRef": "Lc 2, 14",
      "justification": "Versão oficial do Hino de Louvor usando apenas C, Am, Dm e G — zero pestanas no violão!"
    },
    "cifra": """[Intro] C  Am  Dm  G  C

[Refrão]
C       Am    Dm   G
Glória a Deus nas alturas!
C       Am    Dm   G
Glória a Deus nas alturas!
C          Em      Am         Dm   G    C
E paz na terra aos homens por Ele amados!

[Estrofe 1]
C                   Am
Senhor Deus, Rei dos céus, Deus Pai todo-poderoso:
Dm                  G
Nós vos louvamos, nós vos bendizemos,
C                   Am
Nós vos adoramos, nós vos glorificamos,
Dm                  G                  C
Nós vos damos graças por vossa imensa glória!

[Estrofe 2]
C                   Am
Senhor Jesus Cristo, Filho Unigênito,
Dm                  G
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai:
C                   Am
Vós que tirais o pecado do mundo, tende piedade de nós!
Dm                  G
Vós que tirais o pecado do mundo, acolhei a nossa súplica!
C                   Am                Dm    G    C
Vós que estais à direita do Pai, tende piedade de nós!

[Estrofe 3]
C                   Am
Só vós sois o Santo, só vós, o Senhor,
Dm                  G
Só vós, o Altíssimo, Jesus Cristo,
C                   Am       Dm   G    C
Com o Espírito Santo, na glória de Deus Pai. Amém!"""
  },
  {
    "id": "gloria-a-deus-nos-altos-ceus",
    "title": "Glória a Deus nos Altos Céus",
    "composer": "Frei Fabreti / Hinário Litúrgico",
    "liturgicalMoment": "Glória",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 92,
    "timeSignature": "3/4",
    "rhythmName": "Valsa Solene (3/4)",
    "rhythmPattern": "↓   ↑ ↓   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Gloria+a+Deus+nos+altos+ceus+cifra",
    "liturgicalAnalysis": {
      "status": "Versão Poética Aprovada pela CNBB",
      "score": 96,
      "documentRef": "IGMR 53 / Hinário CNBB",
      "biblicalRef": "Lc 2, 14",
      "justification": "Tradução poética oficial constante nos hinários da CNBB para o Hino de Louvor."
    },
    "cifra": """[Intro] G  C  D  G

G                         D
1. Glória a Deus nos altos céus,
C          D          G
Paz na terra a seus amados!
G                         D
A vós louvam, Rei celeste,
C          D          G
Os que foram libertados!

[Refrão]
C         D          G     Em
Glória a Deus, lá nos céus,
C         D          G
E paz aos seus. Amém!

G                         D
2. Deus e Pai, nós vos louvamos,
C          D          G
Adoramos, bendizemos;
G                         D
Damos glória ao vosso Nome,
C          D          G
Vossos dons agradecemos!"""
  },

  # ================= SALMO RESPONSORIAL =================
  {
    "id": "o-senhor-e-meu-pastor-salmo-23",
    "title": "O Senhor É Meu Pastor, Nada Me Faltará (Salmo 23)",
    "composer": "Lecionário Dominical / Salmo Responsorial",
    "liturgicalMoment": "Salmo",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 70,
    "timeSignature": "3/4",
    "rhythmName": "Valsa Meditativa",
    "rhythmPattern": "↓   ↑ ↓   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/watch?v=3R6N5_Z2u4U",
    "liturgicalAnalysis": {
      "status": "Palavra de Deus Oficial (Lecionário)",
      "score": 100,
      "documentRef": "IGMR 61 / Lecionário Romano",
      "biblicalRef": "Salmo 22 (23)",
      "justification": "Proclamação orante da Sagrada Escritura. O povo responde cantando o refrão bíblico."
    },
    "cifra": """[Intro] G  Em  C  D  G

[Refrão]
G       Em      C        D
O Senhor é meu pastor, nada me faltará!
G       Em      C   D    G
O Senhor é meu pastor, nada me faltará!

[Estrofe 1]
G                Em
1. O Senhor é meu pastor, nada me falta;
C                Am           D
Em verdes pastagens me faz repousar.
C                D        G       Em
Conduz-me junto às águas refrescantes
C                 Am           D
E restaura as forças da minha alma.

[Estrofe 2]
G                 Em
2. Guia-me pelo caminho do bem,
C                 Am             D
Por causa da honra do seu santo Nome.
C                D            G      Em
Mesmo que eu passe pelo vale tenebroso,
C                 Am           D
Não temo mal algum, estais comigo!"""
  },
  {
    "id": "enviai-o-vosso-espirito-senhor-salmo-103",
    "title": "Enviai o Vosso Espírito, Senhor (Salmo 103)",
    "composer": "Lecionário / Solenidade de Pentecostes",
    "liturgicalMoment": "Salmo",
    "liturgicalSeason": "Páscoa",
    "originalKey": "C",
    "bpm": 72,
    "timeSignature": "4/4",
    "rhythmName": "Balada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Enviai+o+vosso+Espirito+Senhor+Salmo+103",
    "liturgicalAnalysis": {
      "status": "Salmo Oficial do Lecionário (Vigília Pascal e Pentecostes)",
      "score": 100,
      "documentRef": "IGMR 61 / Salmo 103",
      "biblicalRef": "Sl 103 (104), 30",
      "justification": "Refrão salmódico oficial de Pentecostes com 4 acordes abertos (C, Am, F, G)."
    },
    "cifra": """[Intro] C  Am  F  G  C

[Refrão]
C                      Am
Enviai o vosso Espírito, Senhor,
F              G               C
E da terra toda a face renovai!

[Estrofe 1]
Am                     Em
1. Bendize, ó minha alma, ao Senhor!
F                      G
Ó meu Deus e meu Senhor, como sois grande!
Am                     Em
Quão numerosas, ó Senhor, são vossas obras,
F                      G
E que sabedoria em todas elas!"""
  },
  {
    "id": "misericordia-o-senhor-pois-pecamos-salmo-50",
    "title": "Misericórdia, ó Senhor, pois Pecamos (Salmo 50)",
    "composer": "Lecionário Quaresmal",
    "liturgicalMoment": "Salmo",
    "liturgicalSeason": "Quaresma",
    "originalKey": "Em",
    "bpm": 64,
    "timeSignature": "4/4",
    "rhythmName": "Dedilhado Penitencial",
    "rhythmPattern": "P  i  m  a",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 3,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Misericordia+o+Senhor+pois+pecamos+Salmo+50",
    "liturgicalAnalysis": {
      "status": "Salmo Oficial da Quarta-Feira de Cinzas e Quaresma",
      "score": 100,
      "documentRef": "IGMR 61 / Salmo 50",
      "biblicalRef": "Sl 50 (51)",
      "justification": "O Salmo Miserere, cantado com apenas 3 acordes menores/sóbrios (Em, Am, B7)."
    },
    "cifra": """[Intro] Em  Am  B7  Em

[Refrão]
Em             Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!
Em             Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 1]
Em                               Am
1. Tende piedade, ó meu Deus, misericórdia!
B7                               Em
Na imensidão de vosso amor, purificai-me!
Em                               Am
Lavai-me todo inteiro do pecado,
B7                               Em
E apagai completamente a minha culpa!"""
  },

  # ================= ACLAMAÇÃO AO EVANGELHO =================
  {
    "id": "aleluia-como-o-pai-me-amou",
    "title": "Aleluia, Como o Pai Me Amou",
    "composer": "Pe. Zezinho / Hinário Litúrgico",
    "liturgicalMoment": "Aclamação ao Evangelho",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 82,
    "timeSignature": "4/4",
    "rhythmName": "Aclamação Jubilosa",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/watch?v=6rL8P0rS_3M",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Fora da Quaresma)",
      "score": 96,
      "documentRef": "IGMR 62-64 / João 15,9",
      "biblicalRef": "Jo 15, 9-10",
      "justification": "Aclamação evangélica clássica com versículo de São João."
    },
    "cifra": """[Intro] C  G  Am  F  G  C

[Refrão]
C       G     Am      F       G      C
Aleluia, Aleluia! Aleluia, Aleluia!
C       G     Am      F       G      C
Aleluia, Aleluia! Aleluia, Aleluia!

[Versículo]
C           G        Am
Como o Pai me amou, assim eu vos amei:
F           Dm           G
Permanecei no meu amor, permanecei na minha paz!"""
  },
  {
    "id": "aleluia-a-minha-alma-abrirei",
    "title": "Aleluia, a Minha Alma Abrirei",
    "composer": "Tradicional Litúrgico",
    "liturgicalMoment": "Aclamação ao Evangelho",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 76,
    "timeSignature": "4/4",
    "rhythmName": "Balada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Aleluia+a+minha+alma+abrirei+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Super Simples)",
      "score": 92,
      "documentRef": "IGMR 62",
      "biblicalRef": "At 16, 14",
      "justification": "Canto de aclamação mais simples do Brasil (progressão C - Am - Dm - G)."
    },
    "cifra": """[Intro] C  Am  Dm  G  C

C        Am      Dm      G
Aleluia, aleluia, a minh'alma abrirei!
C        Am      Dm      G      C     C7
Aleluia, aleluia, Cristo é meu Rei!

F        G       Em      Am
Aleluia, aleluia, a minh'alma abrirei!
Dm       G       C
Aleluia, aleluia, Cristo é meu Rei!"""
  },
  {
    "id": "buscai-primeiro-o-reino-de-deus",
    "title": "Buscai Primeiro o Reino de Deus (Aleluia)",
    "composer": "Comunidade de Taizé / Mateus 6,33",
    "liturgicalMoment": "Aclamação ao Evangelho",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 74,
    "timeSignature": "4/4",
    "rhythmName": "Dedilhado / Balada",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Buscai+primeiro+o+reino+de+Deus+cifra",
    "liturgicalAnalysis": {
      "status": "Texto Evangélico Literal (Mt 6, 33)",
      "score": 98,
      "documentRef": "IGMR 62 / Mateus 6, 33",
      "biblicalRef": "Mt 6, 33; Mt 4, 4",
      "justification": "Citação literal do Sermão da Montanha seguida do Aleluia meditativo."
    },
    "cifra": """[Intro] C  Em  Am  F  C  G  C

C       Em      Am         Em
1. Buscai primeiro o Reino de Deus
F       C         G
E a sua justiça,
C       Em          Am         Em
E todas as coisas vos serão acrescentadas:
F       C    G    C
Aleluia, Aleluia!

[Refrão]
C    Em   Am   Em   F    C    G
Aleluia, Aleluia, Aleluia,
C    Em   Am   Em   F    G    C
Aleluia, Aleluia!

C       Em         Am         Em
2. Não só de pão o homem viverá,
F       C         G
Mas de toda palavra
C       Em          Am         Em
Que procede da boca de Deus:
F       C    G    C
Aleluia, Aleluia!"""
  },
  {
    "id": "louvor-e-gloria-a-ti-senhor-quaresma",
    "title": "Louvor e Glória a Ti, Senhor (Aclamação da Quaresma)",
    "composer": "Lecionário Romano / CNBB",
    "liturgicalMoment": "Aclamação ao Evangelho",
    "liturgicalSeason": "Quaresma",
    "originalKey": "D",
    "bpm": 72,
    "timeSignature": "4/4",
    "rhythmName": "Marcha Sóbria",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 3,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Louvor+e+gloria+a+ti+Senhor+Cristo+palavra+de+Deus",
    "liturgicalAnalysis": {
      "status": "Fórmula Oficial do Lecionário para a Quaresma",
      "score": 100,
      "documentRef": "IGMR 62b (Quaresma - Sem Aleluia)",
      "biblicalRef": "Jo 6, 68",
      "justification": "Na Quaresma é estritamente proibido cantar o Aleluia. Esta é a aclamação oficial prescrita pela Igreja."
    },
    "cifra": """[Intro] D  G  A  D

[Refrão]
D                 G          D
Louvor e glória a Ti, Senhor,
G                 A          D
Cristo, Palavra, Palavra de Deus!
D                 G          D
Louvor e glória a Ti, Senhor,
G        A        D
Cristo, Palavra de Deus!

[Versículo]
Bm                           F#m
Nem só de pão vive o homem, mas de toda palavra
G                            A
Que sai da boca de Deus!"""
  },

  # ================= OFERTÓRIO =================
  {
    "id": "os-graos-que-formam-a-espiga",
    "title": "Os Grãos que Formam a Espiga",
    "composer": "Frei Luiz Turra",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "F",
    "bpm": 72,
    "timeSignature": "3/4",
    "rhythmName": "Valsa Litúrgica (3/4)",
    "rhythmPattern": "↓   ↑ ↓   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 3,
    "youtubeUrl": "https://www.youtube.com/watch?v=7uC8Wb6e3-I",
    "liturgicalAnalysis": {
      "status": "Aprovado CNBB (Hinário Litúrgico)",
      "score": 98,
      "documentRef": "IGMR 74 / CNBB Estudo 79",
      "biblicalRef": "1Cor 10, 17; Jo 12, 24",
      "justification": "Une a metáfora do trigo que se faz pão à oferta sacrificial da vida dos fiéis pela unidade da Igreja."
    },
    "cifra": """[Intro] F  Gm  C7  F

F                  Gm
1. Os grãos que formam a espiga
   C7            F
se unem pra serem pão
                   Gm
Os homens que são Igreja
   C7            F
se unem pela oblação

[Refrão]
F                  Gm
Diante do altar, Senhor,
   C7             F
entendo minha vocação:
                   Gm
Devo sacrificar a vida
   C7          F
por meu irmão!

F                  Gm
2. O grão caído na terra
   C7            F
só vive se vai morrer
                   Gm
É dando que se recebe,
   C7            F
morrendo se vai viver

F                  Gm
3. O vinho e o pão ofertamos,
   C7            F
são nossa resposta de amor
                   Gm
Pedimos humildemente:
   C7            F
"Aceita-nos, ó Senhor" """
  },
  {
    "id": "sabes-senhor-o-que-temos",
    "title": "Sabes, Senhor, o que Temos É Tão Pouco pra Dar",
    "composer": "Pe. Lindberg Pires",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 70,
    "timeSignature": "6/8",
    "rhythmName": "Balada 6/8 Suave",
    "rhythmPattern": "↓  ↑ ↓ ↑  ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Sabes+Senhor+o+que+temos+e+tao+pouco+pra+dar+cifra",
    "liturgicalAnalysis": {
      "status": "Clássico Litúrgico de Ofertório",
      "score": 95,
      "documentRef": "IGMR 74",
      "biblicalRef": "Mc 12, 42-44; Jo 6, 9",
      "justification": "Canto tradicional de preparação das oferendas com harmonia simples em Ré maior (D, G, A, Bm)."
    },
    "cifra": """[Intro] D  G  A  D

[Refrão]
D              G          A                  D
Sabes, Senhor, o que temos é tão pouco pra dar,
Bm             Em         A                  D
Mas este pouco nós queremos com os irmãos compartilhar!

[Estrofe 1]
G              Em         A                  D
1. Queremos nesta hora, diante dos irmãos,
Bm             Em         A                  D
Comprometer a vida, buscando a união.

[Estrofe 2]
G              Em         A                  D
2. Sabemos que é difícil os bens compartilhar,
Bm             Em         A                  D
Mas com a tua graça, Senhor, queremos dar!"""
  },
  {
    "id": "venho-senhor-minha-vida-oferecer",
    "title": "Venho, Senhor, Minha Vida Oferecer",
    "composer": "Repertório Litúrgico Popular",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Balada Lenta",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 5,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Venho+Senhor+minha+vida+oferecer+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado para Apresentação dos Dons",
      "score": 90,
      "documentRef": "IGMR 74 / Romanos 12, 1",
      "biblicalRef": "Rm 12, 1",
      "justification": "Baseado na exortação de São Paulo em Rm 12,1: 'Oferecei vossos corpos como sacrifício vivo, santo e agradável a Deus'."
    },
    "cifra": """[Intro] G  D  Em  C  D  G

G              D          Em         Bm
Venho, Senhor, minha vida oferecer
C              G          Am         D
Como oferta de amor e sacrifício:
G              D          Em         Bm
Quero minha vida a Ti entregar
C              D          G     G7
Como oferta viva em teu altar!

[Refrão]
C        D          G      Em
Pois pra te adorar foi que eu nasci,
C        D          G      G7
Cumpre em mim o teu querer!
C        D          G      Em
Faça o que está em teu coração,
C        D                 G
E que a cada dia eu queira mais e mais
Am       D          G
Estar ao teu lado, Senhor!"""
  },
  {
    "id": "meu-coracao-e-para-ti-senhor",
    "title": "Meu Coração É para Ti, Senhor (Pão e Vinho)",
    "composer": "Tradicional Litúrgico",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "E",
    "bpm": 74,
    "timeSignature": "4/4",
    "rhythmName": "Balada Simples",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Pao+e+vinho+para+ti+Senhor+meu+coracao+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado (Estrutura Circular de 4 Acordes)",
      "score": 91,
      "documentRef": "IGMR 74",
      "biblicalRef": "Sl 115",
      "justification": "Usa a mesma sequência de 4 acordes do início ao fim, facilitando o canto imediato da assembleia."
    },
    "cifra": """[Intro] E  A  B7  E

E                      A
1. Pão e vinho para Ti, Senhor,
B7                     E
Pão e vinho para Ti, Senhor:
C#m                    F#m
Pão e vinho para Ti, Senhor,
B7                     E     E7
Meu coração é para Ti, Senhor!

[Refrão]
A                      B7
Porque Tu me deste a vida,
G#m                    C#m
Porque Tu me deste o existir,
F#m                    B7
Porque Tu me deste o carinho,
                       E
Me deste o amor!"""
  },
  {
    "id": "bendito-sejais-senhor-deus-do-universo",
    "title": "Bendito Sejais, Senhor Deus do Universo (Bendito e Louvado)",
    "composer": "Missal Romano / Fórmula Litúrgica",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Qualquer",
    "originalKey": "Am",
    "bpm": 76,
    "timeSignature": "4/4",
    "rhythmName": "Toada Litúrgica",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Bendito+sejais+Senhor+Deus+do+universo+pelo+pao+e+vinho",
    "liturgicalAnalysis": {
      "status": "Texto Oficial da Oração de Apresentação dos Dons",
      "score": 100,
      "documentRef": "IGMR 74 / Missal Romano",
      "biblicalRef": "Br 2; Sl 103",
      "justification": "Canta diretamente a bênção litúrgica sobre o pão e o vinho prescrita no Missal Romano."
    },
    "cifra": """[Intro] Am  Dm  E7  Am

Am                     Dm
1. Bendito sejais, Senhor Deus do universo,
G                      C          E7
Pelo pão que recebemos de vossa bondade:
Am                     Dm
Fruto da terra e do trabalho humano,
E7                                Am
Que agora vos apresentamos, e para nós se vai tornar
Dm          E7       Am
O Pão da Vida!

[Refrão]
Dm          G        C        Am
Bendito seja Deus para sempre!
Dm          E7       Am
Bendito seja Deus para sempre!

Am                     Dm
2. Bendito sejais, Senhor Deus do universo,
G                      C          E7
Pelo vinho que recebemos de vossa bondade:
Am                     Dm
Fruto da videira e do trabalho humano,
E7                                Am
Que agora vos apresentamos, e para nós se vai tornar
Dm          E7       Am
O Vinho da Salvação!"""
  },

  # ================= SANTO =================
  {
    "id": "santo-senhor-deus-do-universo",
    "title": "Santo, Santo, Santo, Senhor Deus do Universo",
    "composer": "Melodia Litúrgica Tradicional / Missal Romano",
    "liturgicalMoment": "Santo",
    "liturgicalSeason": "Qualquer",
    "originalKey": "C",
    "bpm": 78,
    "timeSignature": "4/4",
    "rhythmName": "Balada Sagrada",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/watch?v=O_5b7N3oW3U",
    "liturgicalAnalysis": {
      "status": "Texto Bíblico Canônico Inalterado",
      "score": 100,
      "documentRef": "IGMR 79b / Isaías 6,3 / Mateus 21,9",
      "biblicalRef": "Is 6, 3; Sl 117; Mt 21, 9",
      "justification": "Aclamação celestial da Oração Eucarística com o texto exato da Liturgia e apenas 4 acordes simples."
    },
    "cifra": """[Intro] C  Am  Dm  G

[Primeira Parte]
C           Am
Santo, Santo, Santo
Dm              G
Senhor, Deus do universo!
C            Am
O céu e a terra proclamam
F        G
A Vossa glória!

[Refrão]
C    F    C     F     G
Hosana nas alturas, Hosana!
C    F    C     F     G    C
Hosana nas alturas, Hosana!

[Segunda Parte]
C              Am
Bendito aquele que vem
Dm             G
Em nome do Senhor!
C              Am
Bendito aquele que vem
Dm             G
Em nome do Senhor!

[Refrão Final]
C    F    C     F     G
Hosana nas alturas, Hosana!
C    F    C     F     G    C
Hosana nas alturas, Hosana!"""
  },
  {
    "id": "santo-dos-anjos-dm",
    "title": "Santo, Santo, Santo (Em Ré Menor Solene)",
    "composer": "Hinário Litúrgico CNBB",
    "liturgicalMoment": "Santo",
    "liturgicalSeason": "Qualquer",
    "originalKey": "Dm",
    "bpm": 84,
    "timeSignature": "4/4",
    "rhythmName": "Marcha Sóbria",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Santo+Senhor+Deus+do+universo+Re+menor",
    "liturgicalAnalysis": {
      "status": "Texto Oficial do Missal Romano",
      "score": 100,
      "documentRef": "IGMR 79b",
      "biblicalRef": "Is 6, 3; Mt 21, 9",
      "justification": "Melodia solene em tom menor sem pestanas (Dm, Gm, C, A7), muito utilizada em todas as dioceses."
    },
    "cifra": """[Intro] Dm  Gm  A7  Dm

Dm                     Gm
Santo, Santo, Santo, Senhor Deus do universo!
C                      F          A7
O céu e a terra proclamam a vossa glória!

[Refrão]
Dm                     Gm
Hosana nas alturas, hosana!
A7                     Dm
Hosana nas alturas, hosana!

Dm                     Gm
Bendito o que vem em nome do Senhor!
C                      F          A7
Bendito o que vem em nome do Senhor!

Dm                     Gm
Hosana nas alturas, hosana!
A7                     Dm
Hosana nas alturas, hosana!"""
  },
  {
    "id": "santo-solene-em-sol",
    "title": "Santo, Santo, Santo (Fácil em Sol Maior - 3 Acordes)",
    "composer": "Missal Romano / Popular Litúrgico",
    "liturgicalMoment": "Santo",
    "liturgicalSeason": "Qualquer",
    "originalKey": "G",
    "bpm": 80,
    "timeSignature": "4/4",
    "rhythmName": "Balada Simples",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 3,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Santo+Senhor+Deus+do+universo+Sol+maior",
    "liturgicalAnalysis": {
      "status": "Texto Oficial Canônico (Apenas G, C, D)",
      "score": 100,
      "documentRef": "IGMR 79b",
      "biblicalRef": "Is 6, 3",
      "justification": "Arranjo de 3 acordes para o texto integral do Sanctus."
    },
    "cifra": """[Intro] G  C  D  G

G                      C
Santo, Santo, Santo, Senhor Deus do universo!
D                      G
O céu e a terra proclamam a vossa glória!
G           C          D          G
Hosana, hosana, hosana nas alturas!

G                      C
Bendito o que vem em nome do Senhor!
G           C          D          G
Hosana, hosana, hosana nas alturas!"""
  },

  # ================= CORDEIRO DE DEUS =================
  {
    "id": "cordeiro-de-deus-missal",
    "title": "Cordeiro de Deus (Agnus Dei em Ré Maior)",
    "composer": "Texto Oficial do Missal Romano",
    "liturgicalMoment": "Cordeiro de Deus",
    "liturgicalSeason": "Qualquer",
    "originalKey": "D",
    "bpm": 64,
    "timeSignature": "4/4",
    "rhythmName": "Súplica Orante Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/watch?v=y7H_2zYtE_w",
    "liturgicalAnalysis": {
      "status": "Texto Oficial Canônico (Fração do Pão)",
      "score": 100,
      "documentRef": "IGMR 83 / Apocalipse 5,6",
      "biblicalRef": "Jo 1, 29; Ap 5, 6-12",
      "justification": "Acompanha a fração do Pão Consagrado com o texto oficial imutável."
    },
    "cifra": """[Intro] D  G  A  D

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D       Em   A     D
Tende piedade, piedade de nós!

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D       Em   A     D
Tende piedade, piedade de nós!

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D     Em   A     D
Dai-nos a paz, dai-nos a paz!"""
  },
  {
    "id": "cordeiro-de-deus-sol-maior",
    "title": "Cordeiro de Deus (Melodia Suave em Sol Maior)",
    "composer": "CNBB / Comunidade Shalom",
    "liturgicalMoment": "Cordeiro de Deus",
    "liturgicalSeason": "Qualquer",
    "originalKey": "G",
    "bpm": 66,
    "timeSignature": "4/4",
    "rhythmName": "Balada Lenta",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Cordeiro+de+Deus+que+tirais+o+pecado+do+mundo+Sol+maior",
    "liturgicalAnalysis": {
      "status": "Texto Oficial do Missal Romano",
      "score": 100,
      "documentRef": "IGMR 83",
      "biblicalRef": "Jo 1, 29",
      "justification": "Progressão suave (G - Bm/Em - C - D) sem pestanas na versão simplificada."
    },
    "cifra": """[Intro] G  Em  C  D  G

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
Am               C          D              G
Tende piedade, tende piedade de nós!

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
Am               C          D              G
Tende piedade, tende piedade de nós!

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
C                D          C      D       G
Dai-nos a paz, dai-nos a vossa paz!"""
  },

  # ================= COMUNHÃO =================
  {
    "id": "o-pao-da-vida-a-comunhao",
    "title": "O Pão da Vida, a Comunhão",
    "composer": "Pe. José Weber",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 76,
    "timeSignature": "4/4",
    "rhythmName": "Balada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": False,
    "chordCount": 6,
    "youtubeUrl": "https://www.youtube.com/watch?v=FqGgR0b6dPk",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Nota Máxima)",
      "score": 98,
      "documentRef": "IGMR 86-88 / CNBB Estudo 79",
      "biblicalRef": "Jo 6, 35; 1Cor 10, 16-17",
      "justification": "Canto eucarístico por excelência sobre o Pão da Vida e a partilha fraterna."
    },
    "cifra": """[Intro] D  Em  A7  D

[Refrão]
    D       Em    A7    D
O pão da vida, a comunhão
               Em    A7    D
Nos une a Cristo e aos irmãos
    G       D
E nos ensina a abrir as mãos para
    Em    A7    D    D7
partir, repartir o pão
    G       D
E nos ensina a abrir as mãos para
    Em    A7    D
partir, repartir o pão

[Estrofes]
    F#7     Bm    B7
1. Lá no deserto a multidão com fome
    Em
segue o bom pastor
    Bm          F#
Com sede busca a nova palavra: Jesus
    G    A    Bm
tem pena e reparte o pão

    F#7     Bm    B7
2. Na páscoa nova da nova lei, quando
    Em
amou-nos até o fim
    Bm          F#    G
Partiu o pão disse: "isto é meu
    A    Bm    A
corpo por vós doado: tomai, comei!" """
  },
  {
    "id": "vejam-eu-andei-pelas-vilas",
    "title": "Vejam, Eu Andei Pelas Vilas",
    "composer": "Frei Fabreti",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 74,
    "timeSignature": "4/4",
    "rhythmName": "Balada Eucarística",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 5,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Vejam+eu+andei+pelas+vilas+cifra",
    "liturgicalAnalysis": {
      "status": "Clássico da Comunhão Eucarística no Brasil",
      "score": 97,
      "documentRef": "IGMR 86 / Lucas 22, 19",
      "biblicalRef": "Lc 22, 19; Mt 25, 35",
      "justification": "Conecta o gesto eucarístico de Cristo na Ceia à missão de enxergar o Cristo nos pobres e sofredores."
    },
    "cifra": """[Intro] D  A  Bm  G  A  D

D                     A                  Bm
1. Vejam: eu andei pelas vilas, apontei as saídas
        G                 A
Como o Pai me pediu.
D                     A                  Bm
Portas, eu cheguei para abri-las, eu curei as feridas
        G       A         D     D7
Como nunca se viu!

[Refrão]
G                     D                  Bm
Por onde formos também nós que brilhe a tua luz!
Em                    A                  D     D7
Fala, Senhor, na nossa voz, em nossa vida!
G                     D                  Bm
Nosso caminho então conduz, queremos ser assim:
Em                    A                  D
Que o Pão da Vida nos revigore no nosso "sim"!

D                     A                  Bm
2. Vejam: fiz de novo a leitura das raízes da vida
        G                 A
Que meu Pai vê melhor.
D                     A                  Bm
Luzes, acendi com brandura para a ovelha perdida
        G       A         D     D7
Não medi meu suor!"""
  },
  {
    "id": "eu-vim-para-que-todos-tenham-vida",
    "title": "Eu Vim para que Todos Tenham Vida",
    "composer": "Pe. José Weber / CNBB",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "Em",
    "bpm": 72,
    "timeSignature": "4/4",
    "rhythmName": "Toada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Eu+vim+para+que+todos+tenham+vida+cifra",
    "liturgicalAnalysis": {
      "status": "Oficial do Hinário Litúrgico da CNBB",
      "score": 100,
      "documentRef": "IGMR 86 / João 10, 10",
      "biblicalRef": "Jo 10, 10; Jo 6, 51",
      "justification": "Refrão literal de Jo 10,10 com estrofes eucarísticas de São João. Extremamente simples de tocar."
    },
    "cifra": """[Intro] Em  Am  B7  Em

[Refrão]
Em                        Am
Eu vim para que todos tenham vida,
B7                        Em
Que todos tenham vida plenamente!

[Estrofes]
Am                        Em
1. Reconstrói a tua vida em comunhão com teu Senhor,
B7                        Em
Reconstrói a tua vida em comunhão com teu irmão:
Am                        Em
Onde está o teu irmão, eu estou presente nele!

Am                        Em
2. Eu passei fazendo o bem, eu curei todos os males;
B7                        Em
Hoje és minha presença junto a todo sofredor:
Am                        Em
Onde sofre o teu irmão, eu estou sofrendo nele!"""
  },
  {
    "id": "tao-sublime-sacramento",
    "title": "Tão Sublime Sacramento (Tantum Ergo)",
    "composer": "Santo Tomás de Aquino",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Solenidades",
    "originalKey": "D",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Hino Sacro Solene",
    "rhythmPattern": "↓   ↓   ↓   ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Tao+sublime+sacramento+cifra",
    "liturgicalAnalysis": {
      "status": "Tesouro Máximo da Liturgia Eucarística",
      "score": 100,
      "documentRef": "Sacrosanctum Concilium 112 / Missal Romano",
      "biblicalRef": "1Cor 11, 23-26",
      "justification": "Composto pelo Doutor Angélico Santo Tomás de Aquino para a Solenidade de Corpus Christi e Bênção do Santíssimo."
    },
    "cifra": """[Intro] D  G  A  D

D              A          D          G     D    A
1. Tão sublime Sacramento adoremos neste Altar,
D              A          Bm         G     A    D
Pois o Antigo Testamento deu ao Novo seu lugar!
G              D          A          D     G    A
Venha a fé, por suplemento, os sentidos completar!

D              A          D          G     D    A
2. Ao Eterno Pai cantemos e a Jesus, o Salvador,
D              A          Bm         G     A    D
Ao Espírito exaltemos, na Trindade eterno Amor!
G              D          A          D     G    A    D
Ao Deus Uno e Trino demos a alegria do louvor. Amém!"""
  },
  {
    "id": "pelos-prados-e-campinas-verdejantes",
    "title": "Pelos Prados e Campinas Verdejantes",
    "composer": "Frei Fabreti",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 74,
    "timeSignature": "4/4",
    "rhythmName": "Balada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Pelos+prados+e+campinas+verdejantes+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Paráfrase Eucarística do Salmo 23)",
      "score": 96,
      "documentRef": "IGMR 86 / Salmo 22 (23)",
      "biblicalRef": "Sl 22 (23); Jo 10, 11",
      "justification": "Canto de Comunhão muito acessível em Sol Maior (G, Em, C, D) sobre o Bom Pastor que prepara o banquete."
    },
    "cifra": """[Intro] G  Em  C  D  G

G                      Em
1. Pelos prados e campinas verdejantes eu vou,
C          Am          D
É o Senhor que me leva a descansar!
G                      Em
Junto às fontes de águas puras repousantes eu vou,
C          D           G     G7
Minhas forças o Senhor vai animar!

[Refrão]
C                      D              G          Em
Tu és, Senhor, o meu pastor! Por isso nada em minha vida faltará!
C                      D              G
Tu és, Senhor, o meu pastor! Por isso nada em minha vida faltará!

G                      Em
2. Nos caminhos mais seguros junto d'Ele eu vou,
C          Am          D
E pra sempre o seu Nome eu honrarei!
G                      Em
Se eu encontro mil abismos nos caminhos, eu vou:
C          D           G     G7
Segurança sempre tenho em suas mãos!"""
  },
  {
    "id": "eu-quisera-jesus-adorado",
    "title": "Eu Quisera, Jesus Adorado",
    "composer": "Hino Eucarístico Tradicional (Congresso Eucarístico)",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Solenidades",
    "originalKey": "C",
    "bpm": 72,
    "timeSignature": "3/4",
    "rhythmName": "Valsa Sacra (3/4)",
    "rhythmPattern": "↓   ↑ ↓   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Eu+quisera+Jesus+adorado+cifra",
    "liturgicalAnalysis": {
      "status": "Hino Tradicional Eucarístico Brasileiro",
      "score": 94,
      "documentRef": "Musicae Sacrae Disciplina",
      "biblicalRef": "Jo 6, 56",
      "justification": "Poesia clássica de adoração ao Santíssimo Sacramento no altar."
    },
    "cifra": """[Intro] C  G  C

C                                    G
1. Eu quisera, Jesus adorado, teu sacrário de amor rodear
Dm                 G                 C     G
De almas puras, florinhas mimosas, perfumando teu santo Altar!

[Refrão]
C                  F                 G                  C
O desejo de ver-te adorado tanto invade o meu coração,
Am                 Dm                G                  C
Que eu quisera estar noite e dia a teus pés em humilde oração!

C                                    G
2. Pelas almas, as mais pecadoras, eu te peço, Jesus, o perdão;
Dm                 G                 C     G
Dá-lhes todo o amor e carinho, todo o afeto do teu coração!"""
  },

  # ================= AÇÃO DE GRAÇAS / PÓS-COMUNHÃO =================
  {
    "id": "alma-de-cristo-santificai-me",
    "title": "Alma de Cristo, Santificai-me (Anima Christi)",
    "composer": "Santo Inácio de Loyola / Marco Frisina",
    "liturgicalMoment": "Ação de Graças",
    "liturgicalSeason": "Qualquer",
    "originalKey": "D",
    "bpm": 60,
    "timeSignature": "4/4",
    "rhythmName": "Oração Meditativa Íntima",
    "rhythmPattern": "↓   ↑ ↓   ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 5,
    "youtubeUrl": "https://www.youtube.com/watch?v=tA0VpC9E3tU",
    "liturgicalAnalysis": {
      "status": "Oração Tradicional do Missal Romano",
      "score": 100,
      "documentRef": "IGMR 88 / Enchiridion Indulgentiarum",
      "biblicalRef": "Jo 19, 34; Gl 2, 20",
      "justification": "Oração eucarística presente no Missal Romano para a ação de graças após a Sagrada Comunhão."
    },
    "cifra": """[Intro] D  A  Bm  G  D  A  D

D        A       Bm     G
Alma de Cristo, santificai-me.
D        A       Em     A
Corpo de Cristo, salvai-me.
D         A        Bm        G
Sangue de Cristo, inebriai-me.
D       G         A        D
Água do lado de Cristo, lavai-me.

D        A        Bm       G
Paixão de Cristo, confortai-me.
D       A        Em    A
Ó bom Jesus, ouvi-me.
D           A       Bm       G
Dentro de vossas chagas, escondei-me.
D            G          A         D
Não permitais que me separe de vós.

D        A        Bm      G
Do inimigo maligno, defendei-me.
D        A         Em     A
Na hora da minha morte, chamai-me.
D        A         Bm     G
E mandai-me ir para vós,
D             G          A        D
Para que vos louve com os vossos Santos,
G          D        A        D
Pelos séculos dos séculos. Amém!"""
  },
  {
    "id": "sonda-me-senhor-salmo-138",
    "title": "Sonda-me, Senhor, e Me Conhece (Salmo 138)",
    "composer": "Salmo 138 (139) / Meditativo",
    "liturgicalMoment": "Ação de Graças",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 62,
    "timeSignature": "4/4",
    "rhythmName": "Dedilhado Suave",
    "rhythmPattern": "P  i  m  a",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Sonda+me+Senhor+e+me+conhece+Salmo+138",
    "liturgicalAnalysis": {
      "status": "Salmo Bíblico Meditativo",
      "score": 93,
      "documentRef": "IGMR 88 / Salmo 138",
      "biblicalRef": "Sl 138 (139), 1-4.23-24",
      "justification": "Paráfrase meditativa do Salmo 138 para o momento de recolhimento pós-comunhão."
    },
    "cifra": """[Intro] C  Am  Dm  G  C

C                Am             Dm             G
1. Sonda-me, Senhor, e me conhece, quebranta o meu coração!
C                Am             Dm      G      C
Transforma-me conforme a tua Palavra e enche-me até que em mim
F        G       Em      Am     Dm      G      C
Se ache só a Ti, então, usa-me, Senhor, usa-me!

[Refrão]
F                G              Em             Am
Como um farol que brilha à noite, como ponte sobre as águas,
Dm               G              C              C7
Como abrigo no deserto, como flecha que acerta o alvo:
F                G              Em             Am
Eu quero ser usado da maneira que te agrade,
Dm               G              C
Em qualquer hora e em qualquer lugar!"""
  },

  # ================= FINAL / ENVIO & MARIANAS =================
  {
    "id": "a-escolhida-uma-entre-todas",
    "title": "A Escolhida (Uma Entre Todas Foi a Escolhida)",
    "composer": "Pe. Zezinho / Tradicional Mariano",
    "liturgicalMoment": "Final",
    "liturgicalSeason": "Qualquer",
    "originalKey": "D",
    "bpm": 74,
    "timeSignature": "4/4",
    "rhythmName": "Balada Mariana",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Uma+entre+todas+foi+a+escolhida+cifra",
    "liturgicalAnalysis": {
      "status": "Canto Mariano Clássico de Encerramento",
      "score": 96,
      "documentRef": "Lumen Gentium VIII / Canto Final",
      "biblicalRef": "Lc 1, 28-38",
      "justification": "Homenagem filial à Virgem do 'Sim' no encerramento da celebração, tocada com 4 acordes simples (D, A, Bm/Em, G)."
    },
    "cifra": """[Intro] D  A  Bm  G  A  D

D                     A
1. Uma entre todas foi a escolhida:
Bm                    F#m
Foste tu, Maria, a serva preferida!
G                     D
Mãe do meu Senhor, Mãe do meu Salvador!

[Refrão]
D          Bm     G          A
Maria, cheia de graça e consolo,
D          Bm     G          A
Venha caminhar com teu povo:
G          A      D
Nossa Mãe sempre serás!

D                     A
2. Roga pelos pecadores desta terra,
Bm                    F#m
Roga pelo povo que em seu Deus espera!
G                     D
Mãe do meu Senhor, Mãe do meu Salvador!"""
  },
  {
    "id": "maria-de-nazare",
    "title": "Maria de Nazaré",
    "composer": "Pe. Zezinho, scj",
    "liturgicalMoment": "Final",
    "liturgicalSeason": "Qualquer",
    "originalKey": "D",
    "bpm": 76,
    "timeSignature": "3/4",
    "rhythmName": "Valsa (3/4)",
    "rhythmPattern": "↓   ↑ ↓   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Maria+de+Nazare+Padre+Zezinho+cifra",
    "liturgicalAnalysis": {
      "status": "Patrimônio da Música Católica no Brasil",
      "score": 97,
      "documentRef": "Marialis Cultus / Canto Final",
      "biblicalRef": "Lc 1, 26-56; Jo 19, 26-27",
      "justification": "Hino mariano consagrado para encerramento de celebrações e festas de Nossa Senhora."
    },
    "cifra": """[Intro] D  Em  A7  D

D                        Em
1. Maria de Nazaré, Maria me cativou,
A7                       D
Fez mais forte a minha fé e por filho me adotou!
D7                       G
Às vezes eu paro e fico a pensar,
Gm                       D
E sem perceber me vejo a rezar,
Bm                       Em
E meu coração se põe a cantar
A7                       D
Pra Virgem de Nazaré!

D7                       G
Menina que Deus amou e escolheu
Gm                       D
Pra Mãe de Jesus, o Filho de Deus,
Bm                       Em
Maria que o povo inteiro elegeu
A7                       D
Senhora e Mãe do Céu!

[Refrão]
D      Em     A7         D    Bm
Ave Maria, Ave Maria,
       Em     A7         D
Ave Maria, Mãe de Jesus!"""
  },
  {
    "id": "dai-nos-a-bencao-o-mae-querida",
    "title": "Dai-nos a Bênção, ó Mãe Querida (Nossa Senhora Aparecida)",
    "composer": "Hino Tradicional da Padroeira do Brasil",
    "liturgicalMoment": "Final",
    "liturgicalSeason": "Solenidades",
    "originalKey": "C",
    "bpm": 86,
    "timeSignature": "3/4",
    "rhythmName": "Valsa Devocional (3/4)",
    "rhythmPattern": "↓   ↑ ↓   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 3,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Dai+nos+a+bencao+o+Mae+querida+cifra",
    "liturgicalAnalysis": {
      "status": "Hino Popular à Padroeira do Brasil (3 Acordes)",
      "score": 95,
      "documentRef": "Diretório sobre Piedade Popular e Liturgia",
      "biblicalRef": "Lc 1, 48",
      "justification": "Tocado com apenas 3 acordes básicos (C, F, G) no envio das celebrações marianas."
    },
    "cifra": """[Intro] C  F  G  C

[Refrão]
C                        G
Dai-nos a bênção, ó Mãe querida,
F          G             C
Nossa Senhora Aparecida!
C                        G
Dai-nos a bênção, ó Mãe querida,
F          G             C
Nossa Senhora Aparecida!

[Estrofe 1]
C                        G
1. Sob esse manto do azul do céu,
F          G             C
Guardai-nos sempre no amor de Deus!
C                        G
Eu me consagro ao vosso amor,
F          G             C
Ó Mãe querida do Salvador!"""
  },
  {
    "id": "ide-pelo-mundo-anunciai-o-evangelho",
    "title": "Ide pelo Mundo, Anunciai o Evangelho",
    "composer": "Hinário Litúrgico Missionário",
    "liturgicalMoment": "Final",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 94,
    "timeSignature": "4/4",
    "rhythmName": "Marcha de Envio",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Ide+pelo+mundo+anunciai+o+Evangelho+cifra",
    "liturgicalAnalysis": {
      "status": "Canto de Envio Missionário (Mc 16, 15)",
      "score": 96,
      "documentRef": "IGMR 90 / Marcos 16, 15",
      "biblicalRef": "Mc 16, 15; Mt 28, 19-20",
      "justification": "Responde diretamente ao mandato final da Missa ('Ide em paz, e o Senhor vos acompanhe')."
    },
    "cifra": """[Intro] G  C  D  G

[Refrão]
G              C             D              G
Ide pelo mundo, anunciai o Evangelho!
Em             Am            D              G
Sede no mundo testemunhas do Senhor!

[Estrofe 1]
G              Em            C              D
1. O Espírito do Senhor sobre mim se derramou,
G              Em            C              D
Para anunciar a paz Ele mesmo me enviou!"""
  },
  {
    "id": "vem-espirito-santo-pentecostes",
    "title": "Vem, Espírito Santo (Veni Sancte Spiritus)",
    "composer": "Sequência de Pentecostes / Litúrgico",
    "liturgicalMoment": "Entrada",
    "liturgicalSeason": "Páscoa",
    "originalKey": "C",
    "bpm": 74,
    "timeSignature": "4/4",
    "rhythmName": "Balada Orante",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Vem+Espirito+Santo+sequencia+pentecostes+cifra",
    "liturgicalAnalysis": {
      "status": "Inspirado na Sequência Áurea Veni Sancte Spiritus",
      "score": 96,
      "documentRef": "IGMR 64 / Pentecostes",
      "biblicalRef": "At 2, 1-4",
      "justification": "Invocação ao Espírito Santo na Solenidade de Pentecostes e Crismas."
    },
    "cifra": """[Intro] C  Am  F  G  C

C                Am          F              G
Vem, Espírito Santo, vem, vem iluminar!
C                Am          F      G       C
Nossos caminhos vem guiar, vem nos transformar!

[Estrofe 1]
Am               Em          F              G
1. Pai dos pobres, vem do Céu, doador dos dons de Deus,
Am               Em          F              G
Luz bendita dos corações, Consolador perfeito!"""
  },
  {
    "id": "muitos-graos-de-trigo",
    "title": "Muitos Grãos de Trigo se Tornaram Pão",
    "composer": "Pe. José Cândido / Ofertório",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 78,
    "timeSignature": "4/4",
    "rhythmName": "Balada Simples",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Muitos+graos+de+trigo+se+tornaram+pao+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Catequese e Dominical)",
      "score": 94,
      "documentRef": "IGMR 74 / Didaqué 9",
      "biblicalRef": "Jo 12, 24; Didaqué 9, 4",
      "justification": "Retoma a antiquíssima oração cristã da Didaqué (século I) sobre os grãos dispersos pelas colinas que se unem num só pão."
    },
    "cifra": """[Intro] C  F  G  C

C                        G
1. Muitos grãos de trigo se tornaram pão,
F          G             C     C7
Hoje são teu Corpo, ceia e comunhão!
F          G             Em          Am
Muitos grãos de trigo se tornaram pão!

[Refrão]
C                        G
Toma, Senhor, nossa vida em ação,
F          G             C     C7
Para mudá-la em fruto e missão!
F          G             Em          Am
Toma, Senhor, nossa vida em ação,
Dm         G             C
Para mudá-la em missão!"""
  },
  {
    "id": "antes-da-morte-e-ressurreicao",
    "title": "Antes da Morte e Ressurreição de Jesus",
    "composer": "Hinário Litúrgico CNBB (Quinta-Feira Santa)",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Quaresma",
    "originalKey": "Dm",
    "bpm": 70,
    "timeSignature": "4/4",
    "rhythmName": "Toada Solene",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Antes+da+morte+e+ressurreicao+de+Jesus+cifra",
    "liturgicalAnalysis": {
      "status": "Oficial do Hinário Litúrgico da CNBB",
      "score": 100,
      "documentRef": "IGMR 86 / Missa da Ceia do Senhor",
      "biblicalRef": "1Cor 11, 23-26; Jo 13, 1-15",
      "justification": "Narra fielmente a instituição da Eucaristia na Última Ceia."
    },
    "cifra": """[Intro] Dm  Gm  A7  Dm

Dm                       Gm
1. Antes da morte e ressurreição de Jesus,
C                        F          A7
Ele, na Ceia, quis se entregar:
Dm                       Gm
Deu-se em comida e bebida pra nos salvar!

[Refrão]
Dm        Gm             C              F     A7
E quando amanhecer o dia eterno, a plena visão,
Dm        Gm             A7             Dm
Ressuscitaremos por crer nesta vida escondida no Pão!"""
  },
  {
    "id": "estas-entre-nos-tu-es-minha-vida",
    "title": "Estás Entre Nós (Tu És Minha Vida, Outro Deus Não Há)",
    "composer": "Pe. Jonas Abib / Tradicional",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "Em",
    "bpm": 74,
    "timeSignature": "4/4",
    "rhythmName": "Balada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Tu+es+minha+vida+outro+Deus+nao+ha+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado (Profissão de Fé Cristológica)",
      "score": 92,
      "documentRef": "IGMR 86 / João 14, 6",
      "biblicalRef": "Jo 14, 6; Fl 1, 21",
      "justification": "Usa a progressão circular clássica Em - C - D - G do início ao fim, sem pestanas."
    },
    "cifra": """[Intro] Em  C  D  G  B7

Em             C              D              G
1. Tu és minha vida, outro Deus não há!
Em             C              D              G
Tu és minha estrada, a minha verdade!
Am             D              G              Em
Em Tua Palavra eu caminharei,
C              D              G              B7
Enquanto eu viver e até quando Tu quiseres!
Em             C              D              G
Já não sentirei temor, pois estás aqui:
Am             B7             Em
Tu estás no meio de nós!"""
  },
  {
    "id": "provai-e-vede-quao-suave-salmo-33",
    "title": "Provai e Vede Quão Suave É o Senhor (Salmo 33)",
    "composer": "Lecionário Dominical / Comunhão e Salmo",
    "liturgicalMoment": "Salmo",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 72,
    "timeSignature": "4/4",
    "rhythmName": "Balada Meditativa",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Provai+e+vede+quao+suave+e+o+Senhor+Salmo+33",
    "liturgicalAnalysis": {
      "status": "Salmo Eucarístico Tradicional desde a Igreja Primitiva",
      "score": 100,
      "documentRef": "IGMR 61 e 86 / Salmo 33",
      "biblicalRef": "Sl 33 (34), 9",
      "justification": "São Cirilo de Jerusalém (séc. IV) já atestava o canto deste salmo durante a Comunhão e Liturgia da Palavra."
    },
    "cifra": """[Intro] D  G  A  D

[Refrão]
D               G          A              D
Provai e vede quão suave é o Senhor!
Bm              Em         A              D
Provai e vede quão suave é o Senhor!

[Estrofe 1]
D                          G
1. Bendirei o Senhor Deus em todo o tempo,
A                          D
Seu louvor estará sempre em minha boca.
Bm                         Em
Meu coração se glorifica no Senhor:
G               A          D
Que ouçam os humildes e se alegrem!"""
  }
]

more_songs = [
  {
    "id": "pelo-irmao-que-nao-amei-piedade",
    "title": "Senhor, Tende Piedade e Perdoai a Nossa Culpa",
    "composer": "Pe. Zezinho, scj",
    "liturgicalMoment": "Ato Penitencial",
    "liturgicalSeason": "Qualquer",
    "originalKey": "D",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Balada Lenta",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Senhor+tende+piedade+e+perdoai+a+nossa+culpa+Padre+Zezinho",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Ato Penitencial)",
      "score": 95,
      "documentRef": "IGMR 52",
      "biblicalRef": "1Jo 4, 20; Sl 50",
      "justification": "Clássico de 4 acordes (D, G, A, Bm) que mantém as três invocações a Senhor e Cristo."
    },
    "cifra": """[Intro] D  G  A  D

D                        G              D
1. Senhor, tende piedade e perdoai a nossa culpa,
G                        A              D
E perdoai a nossa culpa!
Bm                       Em             A              D
Porque nós somos vosso povo, que vem pedir vosso perdão!

D                        G              D
2. Cristo, tende piedade e perdoai a nossa culpa,
G                        A              D
E perdoai a nossa culpa!
Bm                       Em             A              D
Porque nós somos vosso povo, que vem pedir vosso perdão!

D                        G              D
3. Senhor, tende piedade e perdoai a nossa culpa,
G                        A              D
E perdoai a nossa culpa!
Bm                       Em             A              D
Porque nós somos vosso povo, que vem pedir vosso perdão!"""
  },
  {
    "id": "gloria-eliana-ribeiro-liturgico",
    "title": "Glória a Deus nas Alturas (Arranjo Jovem Litúrgico)",
    "composer": "Eliana Ribeiro / Missal Romano",
    "liturgicalMoment": "Glória",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 96,
    "timeSignature": "4/4",
    "rhythmName": "Pop Rock Litúrgico Sóbrio",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Gloria+a+Deus+nas+alturas+Eliana+Ribeiro+cifra",
    "liturgicalAnalysis": {
      "status": "Texto Oficial Integral do Missal Romano",
      "score": 100,
      "documentRef": "IGMR 53",
      "biblicalRef": "Lc 2, 14",
      "justification": "Uma das melodias mais cantadas por ministérios jovens que preserva palavra por palavra o texto oficial do Missal."
    },
    "cifra": """[Intro] D  G  A  D

D                     G
Glória a Deus nas alturas,
A                     D
E paz na terra aos homens por Ele amados!
Bm                    G
Senhor Deus, Rei dos céus, Deus Pai todo-poderoso:
Em                    A
Nós vos louvamos, nós vos bendizemos,
G                     A                  D
Nós vos adoramos, nós vos glorificamos,
G                     A                  D
Nós vos damos graças por vossa imensa glória!

Bm                    G
Senhor Jesus Cristo, Filho Unigênito,
Em                    A                  D
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai:
Bm                    G                  A
Vós que tirais o pecado do mundo, tende piedade de nós!
Bm                    G                  A
Vós que tirais o pecado do mundo, acolhei a nossa súplica!
G                     A                  D
Vós que estais à direita do Pai, tende piedade de nós!

G                     A                  D     Bm
Só vós sois o Santo, só vós, o Senhor,
G                     A                  D
Só vós, o Altíssimo, Jesus Cristo,
G                     A                  D
Com o Espírito Santo, na glória de Deus Pai. Amém!"""
  },
  {
    "id": "a-vos-o-meu-senhor-salmo-24",
    "title": "A Vós, ó Meu Senhor, Elevo a Minha Alma (Salmo 24)",
    "composer": "Lecionário (Advento e Tempo Comum)",
    "liturgicalMoment": "Salmo",
    "liturgicalSeason": "Advento",
    "originalKey": "Em",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Dedilhado / Balada",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=A+vos+o+meu+Senhor+elevo+a+minha+alma+Salmo+24",
    "liturgicalAnalysis": {
      "status": "Salmo Oficial do 1º Domingo do Advento",
      "score": 100,
      "documentRef": "IGMR 61 / Salmo 24",
      "biblicalRef": "Sl 24 (25), 1-5",
      "justification": "Abre o Ano Litúrgico no 1º Domingo do Advento."
    },
    "cifra": """[Intro] Em  Am  B7  Em

[Refrão]
Em             Am          B7             Em
A vós, ó meu Senhor, elevo a minha alma!
Em             Am          B7             Em
A vós, ó meu Senhor, elevo a minha alma!

[Estrofe 1]
Am                         Em
1. Mostrai-me, ó Senhor, vossos caminhos,
B7                         Em
E fazei-me conhecer a vossa estrada!
Am                         Em
Vossa verdade me oriente e me conduza,
B7                         Em
Porque sois o Deus da minha salvação!"""
  },
  {
    "id": "hoje-nasceu-para-nos-o-salvador-salmo-95",
    "title": "Hoje Nasceu para Nós o Salvador (Salmo 95 - Natal)",
    "composer": "Lecionário do Natal do Senhor",
    "liturgicalMoment": "Salmo",
    "liturgicalSeason": "Natal",
    "originalKey": "D",
    "bpm": 78,
    "timeSignature": "4/4",
    "rhythmName": "Balada Natalina",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Hoje+nasceu+para+nos+o+Salvador+Salmo+95",
    "liturgicalAnalysis": {
      "status": "Salmo Oficial da Missa da Noite de Natal",
      "score": 100,
      "documentRef": "IGMR 61 / Missa do Galo",
      "biblicalRef": "Sl 95 (96); Lc 2, 11",
      "justification": "Refrão oficial da Noite de Natal cantado com 4 acordes abertos (D, G, Bm, A)."
    },
    "cifra": """[Intro] D  G  A  D

[Refrão]
D              G          A              D
Hoje nasceu para nós o Salvador,
Bm             G          A              D
Que é Cristo, o Senhor!

[Estrofe 1]
D                         G
1. Cantai ao Senhor Deus um canto novo,
A                         D
Cantai ao Senhor Deus, ó terra inteira!
Bm                        G
Cantai e bendizei seu santo Nome,
A                         D
Dia após dia anunciai sua salvação!"""
  },
  {
    "id": "este-e-o-dia-que-o-senhor-fez-salmo-117",
    "title": "Este É o Dia que o Senhor Fez para Nós (Salmo 117)",
    "composer": "Lecionário do Domingo de Páscoa",
    "liturgicalMoment": "Salmo",
    "liturgicalSeason": "Páscoa",
    "originalKey": "G",
    "bpm": 86,
    "timeSignature": "4/4",
    "rhythmName": "Exultante / Balada",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Este+e+o+dia+que+o+Senhor+fez+para+nos+Salmo+117",
    "liturgicalAnalysis": {
      "status": "Salmo Oficial do Domingo da Ressurreição",
      "score": 100,
      "documentRef": "IGMR 61 / Domingo de Páscoa",
      "biblicalRef": "Sl 117 (118), 24",
      "justification": "O Salmo Pascal por excelência da Igreja Católica."
    },
    "cifra": """[Intro] G  C  D  G

[Refrão]
G              C             D              G
Este é o dia que o Senhor fez para nós:
Em             C             D              G
Alegremo-nos e nele exultemos!

[Estrofe 1]
G                            C
1. Dai graças ao Senhor, porque Ele é bom!
D                            G
"Eterna é a sua misericórdia!"
Em                           C
A casa de Israel agora o diga:
D                            G
"Eterna é a sua misericórdia!" """
  },
  {
    "id": "aleluia-alguem-do-povo-exclama",
    "title": "Aleluia, Alguém do Povo Exclama",
    "composer": "Pe. Zezinho, scj",
    "liturgicalMoment": "Aclamação ao Evangelho",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 84,
    "timeSignature": "4/4",
    "rhythmName": "Marcha Suave",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Aleluia+alguem+do+povo+exclama+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado (Baseado em Lucas 11, 27-28)",
      "score": 96,
      "documentRef": "IGMR 62 / Lucas 11, 27-28",
      "biblicalRef": "Lc 11, 27-28",
      "justification": "Canta o diálogo evangélico sobre a bem-aventurança de quem ouve e guarda a Palavra de Deus."
    },
    "cifra": """[Intro] D  G  A  D

[Refrão]
D        G       A        D
Aleluia, aleluia, aleluia!
D        G       A        D
Aleluia, aleluia, aleluia!

[Estrofe]
D                        A
1. Alguém do povo exclama: "Como é grande, ó Senhor,
G                        A                  D
Quem te gerou e alimentou!"
D                        A
Jesus responde: "Ó mulher, pra mim é feliz
G                        A                  D
Quem soube ouvir a voz de Deus e tudo guardou!" """
  },
  {
    "id": "aleluia-quando-estamos-unidos",
    "title": "Aleluia, Quando Estamos Unidos",
    "composer": "Tradicional Litúrgico (Mt 18, 20)",
    "liturgicalMoment": "Aclamação ao Evangelho",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 80,
    "timeSignature": "4/4",
    "rhythmName": "Dedilhado / Balada",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Aleluia+quando+estamos+unidos+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Melodia de Greensleeves / Mt 18,20)",
      "score": 92,
      "documentRef": "IGMR 62",
      "biblicalRef": "Mt 18, 20",
      "justification": "Muito simples e conhecida por todas as assembleias paroquiais."
    },
    "cifra": """[Intro] G  D  Em  C  D  G

[Refrão]
G       D    Em   Bm     C       G       D
Aleluia, aleluia, aleluia!
G       D    Em   Bm     C       D       G
Aleluia, aleluia, aleluia!

[Estrofe]
Em                   Bm
1. Quando estamos unidos, estás entre nós,
C                    G          D
E nos falarás da tua vida!
Em                   Bm
Este nosso mundo sentido terá,
C                    D          G
Se tua Palavra renovar!"""
  },
  {
    "id": "ofertas-singelas-pao-e-vinho",
    "title": "Ofertas Singelas, Pão e Vinho sobre a Mesa",
    "composer": "Repertório Litúrgico Paroquial",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 76,
    "timeSignature": "4/4",
    "rhythmName": "Balada Simples",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Ofertas+singelas+pao+e+vinho+sobre+a+mesa+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado para Apresentação das Oferendas",
      "score": 93,
      "documentRef": "IGMR 74",
      "biblicalRef": "Sl 115",
      "justification": "Canto tradicional de ofertório em Dó maior (C, G, Am, F) muito fácil para iniciantes."
    },
    "cifra": """[Intro] C  G  Am  F  G  C

C                  G              Am             Em
1. Ofertas singelas, pão e vinho sobre a mesa colocamos,
F                  C              Dm             G
Sinal do trabalho que fizemos e aqui depositamos:

[Refrão]
F                  G              Em             Am
É teu também nosso coração!
Dm                 G              C              C7
Aceita, Senhor, a nossa oferta, que será depois, na certa,
F                  G              C
O teu próprio Ser!"""
  },
  {
    "id": "um-coracao-para-amar",
    "title": "Um Coração para Amar",
    "composer": "Pe. Zezinho, scj",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 76,
    "timeSignature": "4/4",
    "rhythmName": "Balada Orante",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Um+coracao+para+amar+Padre+Zezinho+cifra",
    "liturgicalAnalysis": {
      "status": "Clássico de Ofertório Vocacional e Dominical",
      "score": 94,
      "documentRef": "IGMR 74",
      "biblicalRef": "1Rs 3, 9; Rm 12, 1",
      "justification": "Expressa a entrega dos dons recebidos de Deus de volta ao seu Altar."
    },
    "cifra": """[Intro] G  Am  D  G

G                        Am
1. Um coração para amar, pra perdoar e sentir,
D                        G
Para chorar e sorrir, ao me criar Tu me deste!
G                        Am
Um coração pra sonhar, inquieto e sempre a bater,
D                        G
Ansioso por entender as coisas que Tu disseste!

[Refrão]
G7                       C
Eis o que eu venho te dar,
D                        G      Em
Eis o que eu ponho no Altar:
Am                       D
Toma, Senhor, que ele é teu,
                         G
Meu coração não é meu!"""
  },
  {
    "id": "estar-em-tuas-maos-o-pai",
    "title": "Estar em Tuas Mãos, ó Pai (No Teu Altar)",
    "composer": "Pe. José Weber / CNBB",
    "liturgicalMoment": "Ofertório",
    "liturgicalSeason": "Quaresma",
    "originalKey": "Em",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Toada Sóbria",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Estar+em+tuas+maos+o+Pai+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado CNBB (Especial para Quaresma e Tempo Comum)",
      "score": 97,
      "documentRef": "IGMR 74 / Jo 12, 24",
      "biblicalRef": "Jo 12, 24; Lc 23, 46",
      "justification": "Medita sobre a semente que morre na terra para gerar o pão da eternidade."
    },
    "cifra": """[Intro] Em  Am  B7  Em

[Refrão]
Em            Am          D              G
Estar em tuas mãos, ó Pai, e a vida oferecer
C             Am          B7             Em
No pão e no vinho a Ti, para o mundo florescer!

[Estrofe 1]
Em                        Am
1. O grão que morre na terra é vida nova a brotar:
D                         G              B7
Assim é a nossa oferta deposta neste Altar!"""
  },
  {
    "id": "pao-da-vida-na-comunhao-jesus-se-da",
    "title": "Na Comunhão, Jesus Se Dá no Pão",
    "composer": "Hinário Litúrgico / Catequese",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 76,
    "timeSignature": "4/4",
    "rhythmName": "Balada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Na+comunhao+Jesus+se+da+no+pao+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado Litúrgico (Excelente para Iniciantes)",
      "score": 95,
      "documentRef": "IGMR 86 / João 6, 51",
      "biblicalRef": "Jo 6, 51-58",
      "justification": "Canto eucarístico cristalino e fácil (C, Am, Dm, G)."
    },
    "cifra": """[Intro] C  Am  Dm  G  C

[Refrão]
C                  Am             Dm             G
Na Comunhão, Jesus se dá no Pão,
C                  Am             Dm      G      C
O Cordeiro Imolado é refeição!
F                  G              Em             Am
Nosso alimento de amor e salvação,
Dm                 G              C
Em torno deste Altar somos irmãos!

[Estrofe 1]
C                                 Am
1. O Pão da Vida és Tu, Jesus, o Pão do Céu,
Dm                                G
O Caminho, a Verdade, nossa Luz!
C                                 Am
Não haverá fome nem sede jamais
Dm                 G              C
Para quem de Ti se alimentar em paz!"""
  },
  {
    "id": "cantar-a-beleza-da-vida",
    "title": "Cantar a Beleza da Vida",
    "composer": "Pe. José Weber / CNBB",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 78,
    "timeSignature": "4/4",
    "rhythmName": "Balada Litúrgica",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Cantar+a+beleza+da+vida+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado CNBB",
      "score": 95,
      "documentRef": "IGMR 86 / João 6",
      "biblicalRef": "Jo 6, 51; Jo 13, 34",
      "justification": "Muito cantado tanto na Entrada quanto na Comunhão dominical."
    },
    "cifra": """[Intro] C  G  Am  F  G  C

C                        G              Am             Em
1. Cantar a beleza da vida, presente do amor sem igual:
F                        C              Dm             G
Missão do teu povo escolhido! Senhor, vem livrar-nos do mal!

[Refrão]
C                        G              Am             Em
Vem dar-nos teu Filho, Senhor, sustento no pão e no vinho,
F                        C              Dm      G      C
E a força do Espírito Santo unindo o teu povo a caminho!"""
  },
  {
    "id": "sacramento-da-comunhao-nelsinho",
    "title": "Sacramento da Comunhão (Senhor, Quando Te Vejo)",
    "composer": "Diácono Nelsinho Corrêa / Comunidade Canção Nova",
    "liturgicalMoment": "Comunhão",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "D",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Balada Eucarística Lenta",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 5,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Sacramento+da+Comunhao+Nelsinho+Correa+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado para Comunhão e Pós-Comunhão",
      "score": 95,
      "documentRef": "IGMR 86-88",
      "biblicalRef": "Jo 17, 21; 1Cor 10, 17",
      "justification": "Profunda oração de fé na Presença Real e súplica pela unidade da Igreja ('Fazei de nós um só corpo e um só espírito')."
    },
    "cifra": """[Intro] D  A  Bm  G  A  D

D                A              Bm             F#m
Senhor, quando te vejo no Sacramento da Comunhão,
G                A              D              A
Sinto o Céu se abrir e uma luz a me atingir,
Em               G              A
Esfriando minha cabeça e esquentando meu coração!

D                A              Bm             F#m
Senhor, graças e louvores sejam dadas a todo momento:
G                A              D              A
Quero te louvar na dor e na alegria, e a cada dia,
Em               A              D              D7
Mais unido a Ti estar!

[Refrão]
G                A              F#m            Bm
Quero te receber com toda pureza e todo amor,
Em               A              D              D7
Como se fosse a primeira, a última, a única vez!
G                A              F#m            Bm
Fazei de nós, Senhor, um só corpo e um só espírito,
Em               A              D
No Sacramento do Amor!"""
  },
  {
    "id": "sim-eu-quero-que-a-luz-de-deus",
    "title": "Sim, Eu Quero que a Luz de Deus",
    "composer": "Pe. José Weber",
    "liturgicalMoment": "Final",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "C",
    "bpm": 86,
    "timeSignature": "4/4",
    "rhythmName": "Balada Jovem",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Sim+eu+quero+que+a+luz+de+Deus+cifra",
    "liturgicalAnalysis": {
      "status": "Clássico de Envio e Esperança Cristã",
      "score": 94,
      "documentRef": "IGMR 90 / Apocalipse 22, 20",
      "biblicalRef": "Ap 22, 20; Mt 5, 14-16",
      "justification": "Termina com o grito escatológico da Igreja primitiva: 'Amém! Vem, Senhor Jesus!' (Maranathá)."
    },
    "cifra": """[Intro] C  Am  Dm  G  C

[Refrão]
C                        Am
Sim, eu quero que a luz de Deus que um dia em mim brilhou,
Dm                       G
Jamais se esconda e não se apague em mim o seu fulgor!
C                        Am
Sim, eu quero que o meu Amor ajude o meu irmão
Dm                       G                      C
A caminhar guiado por tua mão, em tua lei, em tua luz, ó Senhor!

[Estrofe 1]
Am                       Em
1. Esta terra, os astros, o sertão em paz,
F                        G
Esta flor e o pássaro feliz que vês,
Am                       Em
Não sentirão, não poderão jamais viver
F                        G
Esta vida singular que Deus nos dá!"""
  },
  {
    "id": "obrigado-senhor-porque-es-meu-amigo",
    "title": "Obrigado, Senhor, Porque És Meu Amigo",
    "composer": "Pe. Zezinho / Tradicional",
    "liturgicalMoment": "Ação de Graças",
    "liturgicalSeason": "Tempo Comum",
    "originalKey": "G",
    "bpm": 68,
    "timeSignature": "4/4",
    "rhythmName": "Balada Suave",
    "rhythmPattern": "↓   ↓ ↑   ↑ ↓",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Obrigado+Senhor+porque+es+meu+amigo+cifra",
    "liturgicalAnalysis": {
      "status": "Aprovado para Ação de Graças e Missas com Crianças",
      "score": 91,
      "documentRef": "IGMR 88 / Jo 15, 15",
      "biblicalRef": "Jo 15, 15; Sl 135",
      "justification": "Apenas 3 acordes principais (G, C, D), excelente para iniciantes."
    },
    "cifra": """[Intro] G  C  D  G

[Refrão]
G                        C
Obrigado, Senhor, porque és meu amigo,
D                        G
Porque sempre comigo Tu estás a falar!
G                        C
No perfume das flores, na harmonia das cores,
D                        G
E no mar que murmura o teu Nome a rezar!

[Estrofe 1]
Em                       Bm
1. Escondido Tu estás no verde das florestas,
C                        G
Nas aves em festa, no sol a brilhar!
Em                       Bm
Na sombra que abriga, na brisa amiga,
C                        D              G
Na fonte que corre ligeira a cantar!"""
  },
  {
    "id": "pelas-estradas-da-vida-santa-maria-vem",
    "title": "Pelas Estradas da Vida (Santa Maria, Vem)",
    "composer": "M. Espinosa / Hinário Mariano",
    "liturgicalMoment": "Final",
    "liturgicalSeason": "Qualquer",
    "originalKey": "C",
    "bpm": 84,
    "timeSignature": "4/4",
    "rhythmName": "Marcha / Caminhada",
    "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
    "isMostUsed": True,
    "isSimple": True,
    "chordCount": 4,
    "youtubeUrl": "https://www.youtube.com/results?search_query=Pelas+estradas+da+vida+nunca+sozinho+estas+cifra",
    "liturgicalAnalysis": {
      "status": "Clássico Mariano Comunitário de Envio",
      "score": 96,
      "documentRef": "Lumen Gentium 62 / Canto Final",
      "biblicalRef": "At 1, 14; Lc 1, 38",
      "justification": "Canto mariano de peregrinação e envio missionário com 4 acordes abertos (C, F, G, Am)."
    },
    "cifra": """[Intro] C  F  G  C

C                        F              C
1. Pelas estradas da vida, nunca sozinho estás;
F                        G              C     C7
Contigo pelo caminho, Santa Maria vai!

[Refrão]
F                        G              C          Am
Ó vem conosco, vem caminhar, Santa Maria, vem!
Dm                       G              C
Ó vem conosco, vem caminhar, Santa Maria, vem!

C                        F              C
2. Se pelo mundo os homens, sem conhecer-se vão,
F                        G              C     C7
Não negues nunca a tua mão a quem teencontrar!"""
  }
]

songs.extend(more_songs)

if __name__ == "__main__":
    out_path = r"C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\js\songs-catalog.js"
    js_content = "// Catálogo Massivo do Santa Cifra\nwindow.SongsCatalog = " + json.dumps(songs, ensure_ascii=False, indent=2) + ";\n"
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(js_content)
    print(f"Total songs written to songs-catalog.js: {len(songs)}")
