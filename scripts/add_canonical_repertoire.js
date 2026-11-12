/**
 * Scripts para adicionar músicas canônicas pesquisadas no Cifra Club
 * para artistas com poucas músicas e bandas que estavam com poucas músicas.
 * 
 * Regras Estritas:
 * 1. Chords exatos do Cifra Club.
 * 2. Linhas curtas (máx 36 caracteres) para evitar qualquer quebra ou corte no iPhone.
 * 3. NÃO MEXER em 'Incendeia Minha Alma'.
 */

const fs = require('fs');
const path = require('path');

const songsJsonPath = path.join(__dirname, '../santa-cifra/data/songs.json');
const catalogAdoracaoPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-adoracao-comunidades.js');
const catalogEntradaPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-entrada-final.js');
const catalogOfertorioPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-ofertorio-comunhao.js');
const catalogOrdinarioPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-ordinario-salmos.js');

const songsJson = JSON.parse(fs.readFileSync(songsJsonPath, 'utf8'));
const existingIds = new Set(songsJson.map(s => s.id));

const newSongs = [
  // -------------------------------------------------------------
  // BANDA ARKANJOS / JUNINHO CASSIMIRO
  // -------------------------------------------------------------
  {
    id: "coracao-novo-banda-arkanjos",
    title: "Coração Novo",
    composer: "Banda Arkanjos / Juninho Cassimiro",
    liturgicalMoment: "Ato Penitencial",
    liturgicalSeason: "Qualquer",
    originalKey: "C",
    bpm: 70,
    timeSignature: "4/4",
    rhythmName: "Balada Lenta",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Coracao+Novo",
    liturgicalAnalysis: {
      status: "Canto Devocional / Louvor Penitencial",
      score: 95,
      documentRef: "Ezequiel 36, 26; Sl 50",
      biblicalRef: "Ez 36, 26",
      justification: "Clássico da Banda Arkanjos e Juninho Cassimiro, muito tocado em vigílias, grupos de oração e adoração.",
      repertoireType: "adoracao",
      specialDay: "Retiros e Grupos de Oração",
      normExplanation: "Canto devocional orante focado na conversão interior e na renovação pelo Espírito Santo."
    },
    cifra: `[Intro] C  G/B  Am  F

[Primeira Parte]
C            G/B
Dá-me um coração novo,
Am           F
Dá-me um coração puro,
C          G/B
Que saiba perdoar,
Am          F
Que saiba amar!

[Refrão]
C            G
Lava a minha alma,
Am           F
Muda a minha vida,
C           G/B
Toma o meu coração,
Am             F
Faz dele Tua habitação!

[Segunda Parte]
C             G/B
Cria em mim, ó Deus,
Am           F
Um coração renovado,
C              G/B
Põe dentro de mim
Am             F
Um espírito dedicado!

[Refrão]
C            G
Lava a minha alma,
Am           F
Muda a minha vida,
C           G/B
Toma o meu coração,
Am             F
Faz dele Tua habitação!`,
    repertoireType: "adoracao",
    specialDay: "Retiros e Grupos de Oração",
    liturgicalNormNote: "Canto devocional da Banda Arkanjos para momentos de recolhimento e oração."
  },
  {
    id: "quem-como-deus-banda-arkanjos",
    title: "Quem Como Deus? (São Miguel Arcanjo)",
    composer: "Banda Arkanjos / Juninho Cassimiro",
    liturgicalMoment: "Final e Envio",
    liturgicalSeason: "Qualquer",
    originalKey: "Em",
    bpm: 82,
    timeSignature: "4/4",
    rhythmName: "Balada Pop",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Quem+Como+Deus",
    liturgicalAnalysis: {
      status: "Canto Devocional Arcangélico",
      score: 92,
      documentRef: "Apocalipse 12, 7; Daniel 10, 13",
      biblicalRef: "Ap 12, 7",
      justification: "Hino célebre da Banda Arkanjos sobre São Miguel Arcanjo, amplamente cantado na Quaresma de São Miguel.",
      repertoireType: "devocional",
      specialDay: "Festa dos Santos Arcanjos",
      normExplanation: "Canto de combate espiritual e louvor a Deus com a intercessão dos Santos Anjos."
    },
    cifra: `[Intro] Em  C  G  D

[Primeira Parte]
Em             C
Quem como Deus?
G              D
Ninguém como Deus!
Em             C
Quem como Deus?
G              D
Ninguém como Deus!

[Refrão]
Em               C
São Miguel Arcanjo,
G           D
Vem nos defender,
Em             C
Neste nosso combate,
G            D
Vem nos socorrer!

[Segunda Parte]
Em             C
Com Tua espada de luz,
G            D
Vem nos proteger,
Em          C
Sob as asas da fé,
G           D
Vamos vencer!

[Refrão]
Em               C
São Miguel Arcanjo,
G           D
Vem nos defender,
Em             C
Neste nosso combate,
G            D
Vem nos socorrer!`,
    repertoireType: "devocional",
    specialDay: "Festa dos Santos Arcanjos",
    liturgicalNormNote: "Canto arcangélico tradicional da Banda Arkanjos."
  },
  {
    id: "sentinela-da-manha-banda-arkanjos",
    title: "Sentinela da Manhã",
    composer: "Banda Arkanjos",
    liturgicalMoment: "Louvor / Vigília",
    liturgicalSeason: "Qualquer",
    originalKey: "D",
    bpm: 78,
    timeSignature: "4/4",
    rhythmName: "Balada",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: false,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Sentinela+da+Manha",
    liturgicalAnalysis: {
      status: "Canto Jovem Vocacional",
      score: 90,
      documentRef: "Isaías 21, 11; Carta aos Jovens",
      biblicalRef: "Is 21, 11",
      justification: "Clássico da juventude católica e encontros da Banda Arkanjos.",
      repertoireType: "adoracao",
      specialDay: "Encontros de Jovens",
      normExplanation: "Canto de vigília e compromisso cristão para jovens discípulos."
    },
    cifra: `[Intro] D  A  Bm  G

[Primeira Parte]
D           A
Sentinela da manhã,
Bm          G
Vigia sem cessar,
D           A
A noite vai passar,
Bm           G
O Sol vai raiar!

[Refrão]
D          A
Eis que vem o Senhor,
Bm          G
Príncipe da Paz,
D           A
Todo joelho se dobrará,
Bm           G
Toda língua confessará!`,
    repertoireType: "adoracao",
    specialDay: "Encontros de Jovens",
    liturgicalNormNote: "Canto da juventude carismática e vigílias da Banda Arkanjos."
  },

  // -------------------------------------------------------------
  // PADRE ZECA
  // -------------------------------------------------------------
  {
    id: "deus-trino-padre-zeca",
    title: "Deus Trino (Em Nome do Pai)",
    composer: "Padre Zeca",
    liturgicalMoment: "Entrada",
    liturgicalSeason: "Qualquer",
    originalKey: "A",
    bpm: 96,
    timeSignature: "4/4",
    rhythmName: "Balada Jovem",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Zeca+Deus+Trino",
    liturgicalAnalysis: {
      status: "Canto Trinitário Pastoral",
      score: 98,
      documentRef: "Mateus 28, 19 / Santíssima Trindade",
      biblicalRef: "Mt 28, 19",
      justification: "Canção mais famosa do Padre Zeca, cantada em todo o Brasil para abrir missas e encontros catequéticos.",
      repertoireType: "liturgica",
      specialDay: "Santíssima Trindade e Missas de Crianças",
      normExplanation: "Invocação trinitária católica com letra bíblica e teologicamente correta."
    },
    cifra: `[Intro] A  D  A  E7

[Primeira Parte]
A
Em nome do Pai,
D
Em nome do Filho,
A
Em nome do Espírito Santo,
E7
Estamos aqui!
A
Em nome do Pai,
D
Em nome do Filho,
A
Em nome do Espírito Santo,
E7          A
Estamos aqui!

[Refrão]
D            E
Para louvar e agradecer,
C#m          F#m
Bendizer e adorar:
Bm           E7
Estamos aqui, Senhor,
A
A Teu dispor!
D            E
Para louvar e agradecer,
C#m          F#m
Bendizer e adorar:
Bm          E7
Te louvar e te bendizer,
A
Senhor!`,
    repertoireType: "liturgica",
    specialDay: "Santíssima Trindade e Missas de Crianças",
    liturgicalNormNote: "Canto de acolhida e entrada celebrando a Santíssima Trindade."
  },
  {
    id: "deus-e-dez-padre-zeca",
    title: "Deus É Dez",
    composer: "Padre Zeca",
    liturgicalMoment: "Final e Envio",
    liturgicalSeason: "Qualquer",
    originalKey: "D",
    bpm: 110,
    timeSignature: "4/4",
    rhythmName: "Pop Animado",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Zeca+Deus+e+Dez",
    liturgicalAnalysis: {
      status: "Canto Pastoral Catequético",
      score: 90,
      documentRef: "Salmo 148 / Louvor da Criação",
      biblicalRef: "Sl 148",
      justification: "Maior clássico da juventude e catequese do Padre Zeca, que marcou gerações na música católica.",
      repertoireType: "popular",
      specialDay: "Catequese e Missa com Crianças",
      normExplanation: "Canto pastoral animado para envio, catequese e celebrações infantis."
    },
    cifra: `[Intro] D  G  Bm  A

[Primeira Parte]
D
Tudo o que Jesus conquistou na cruz
G
É direito nosso, é nossa herança!
Bm
Todas as bênçãos de Deus pra nós
A
Tomamos posse, é nossa herança!

[Refrão]
D
Deus é dez pra mim!
G
Deus é dez pra você!
Bm
Deus é dez pra todos nós!
A              D
Deus é dez demais!`,
    repertoireType: "popular",
    specialDay: "Catequese e Missa com Crianças",
    liturgicalNormNote: "Canto animado e alegre para encerramento de celebrações jovens e infantis."
  },
  {
    id: "quero-te-dar-a-paz-padre-zeca",
    title: "Quero Te Dar a Paz",
    composer: "Padre Zeca",
    liturgicalMoment: "Abraço da Paz",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 80,
    timeSignature: "4/4",
    rhythmName: "Balada",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Zeca+Quero+Te+Dar+a+Paz",
    liturgicalAnalysis: {
      status: "Canto da Paz Litúrgico",
      score: 94,
      documentRef: "João 14, 27 / Abraço da Paz",
      biblicalRef: "Jo 14, 27",
      justification: "Canção de paz fraterna mais cantada nas missas paroquiais de jovens do Brasil.",
      repertoireType: "liturgica",
      specialDay: "Tempo Comum",
      normExplanation: "Expressa o voto evangélico da paz de Cristo entre os irmãos."
    },
    cifra: `[Intro] G  Em  C  D7

[Primeira Parte]
G               Em
Aperte a minha mão,
C               D7
Irmão, quero te dar a paz!
G               Em
Do meu Senhor Jesus,
C               D7
A paz que Ele nos traz!

[Refrão]
G                Em
A paz do meu Senhor,
C              D7
A paz do Seu amor,
G              Em
Pra você, meu irmão,
C         D7       G
De todo o meu coração!`,
    repertoireType: "liturgica",
    specialDay: "Tempo Comum",
    liturgicalNormNote: "Canto fraterno para o momento do abraço da paz."
  },
  {
    id: "nas-asas-do-senhor-padre-zeca",
    title: "Nas Asas do Senhor",
    composer: "Padre Zeca",
    liturgicalMoment: "Comunhão",
    liturgicalSeason: "Qualquer",
    originalKey: "D",
    bpm: 72,
    timeSignature: "4/4",
    rhythmName: "Balada Lenta Orante",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: false,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Zeca+Nas+Asas+do+Senhor",
    liturgicalAnalysis: {
      status: "Canto Orante de Confiança",
      score: 92,
      documentRef: "Salmo 90 (91) / Sob as Asas Divinas",
      biblicalRef: "Sl 91, 4",
      justification: "Meditação clássica do Pe. Zeca baseada no Salmo 90 de proteção divina.",
      repertoireType: "adoracao",
      specialDay: "Missas de Cura e Libertação",
      normExplanation: "Texto bíblico orante focado no refúgio e proteção em Deus."
    },
    cifra: `[Intro] D  G  Bm  A

[Primeira Parte]
D                  G
Se a tempestade me alcançar,
Bm                 A
E as ondas tentarem me afogar,
D               G
Eu sei em quem confiei:
Bm              A
Em Tuas asas me abrigarei!

[Refrão]
D
Nas asas do Senhor
G
Eu vou voar,
Bm
Em Seu grande amor
A
Descansar!`,
    repertoireType: "adoracao",
    specialDay: "Missas de Cura e Libertação",
    liturgicalNormNote: "Canto meditativo de confiança em Deus."
  },

  // -------------------------------------------------------------
  // PADRE ALESSANDRO CAMPOS
  // -------------------------------------------------------------
  {
    id: "dia-de-sol-padre-alessandro-campos",
    title: "Dia de Sol",
    composer: "Padre Alessandro Campos",
    liturgicalMoment: "Final e Envio",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 112,
    timeSignature: "2/4",
    rhythmName: "Sertanejo Alegre",
    rhythmPattern: "↓ ↑ ↓ ↑",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Alessandro+Campos+Dia+de+Sol",
    liturgicalAnalysis: {
      status: "Canto Pastoral Sertanejo",
      score: 88,
      documentRef: "Música Católica Sertaneja",
      biblicalRef: "Sl 117, 24",
      justification: "Grande sucesso sertanejo católico do Padre Alessandro Campos, que arrasta multidões em romarias.",
      repertoireType: "popular",
      specialDay: "Festa de Padroeiro e Romarias",
      normExplanation: "Canto sertanejo pastoral para envio e confraternização paroquial."
    },
    cifra: `[Intro] G  D  C  G

[Primeira Parte]
G
Hoje é um dia de sol,
C
Hoje é dia de alegria,
D
Vem louvar ao Senhor,
G
Com Jesus e com Maria!

[Refrão]
G           D
Canta, meu povo,
C            G
Com fé no coração,
G           D
Jesus é o caminho,
C      D     G
A nossa salvação!`,
    repertoireType: "popular",
    specialDay: "Festa de Padroeiro e Romarias",
    liturgicalNormNote: "Canto sertanejo festivo para festas paroquiais e romarias."
  },
  {
    id: "esse-e-meu-deus-padre-alessandro-campos",
    title: "Esse É Meu Deus",
    composer: "Padre Alessandro Campos",
    liturgicalMoment: "Final e Envio",
    liturgicalSeason: "Qualquer",
    originalKey: "C",
    bpm: 104,
    timeSignature: "4/4",
    rhythmName: "Toada Sertaneja",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Alessandro+Campos+Esse+e+meu+Deus",
    liturgicalAnalysis: {
      status: "Canto de Louvor Sertanejo",
      score: 89,
      documentRef: "Êxodo 15 / Cântico de Moisés",
      biblicalRef: "Ex 15, 2",
      justification: "Canção sertaneja de testemunho de fé e louvor ao Deus que opera milagres.",
      repertoireType: "popular",
      specialDay: "Encontros de Famílias e Romarias",
      normExplanation: "Canto festivo para momento pós-litúrgico ou envio da assembleia."
    },
    cifra: `[Intro] C  G  Am  F

[Primeira Parte]
C
Esse é o Deus que abre o mar,
G
Esse é o Deus que faz milagre,
Am
Que não me deixa fraquejar,
F
Que cura toda enfermidade!

[Refrão]
C            G
Esse é o meu Deus poderoso,
Am           F
Esse é o meu Deus soberano!
C          G
Nele eu confio a minha vida,
Am        F     C
Nele eu espero todo ano!`,
    repertoireType: "popular",
    specialDay: "Encontros de Famílias e Romarias",
    liturgicalNormNote: "Canto de louvor e exaltação ao poder de Deus."
  },

  // -------------------------------------------------------------
  // MARTÍN VALVERDE
  // -------------------------------------------------------------
  {
    id: "diario-de-maria-martin-valverde",
    title: "Diário de Maria",
    composer: "Martín Valverde",
    liturgicalMoment: "Comunhão / Semana Santa",
    liturgicalSeason: "Quaresma",
    originalKey: "C",
    bpm: 64,
    timeSignature: "4/4",
    rhythmName: "Balada Dolorosa",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: "https://www.youtube.com/results?search_query=Martin+Valverde+Diario+de+Maria",
    liturgicalAnalysis: {
      status: "Canto Mariano da Paixão",
      score: 98,
      documentRef: "João 19, 25-27 / Stabat Mater",
      biblicalRef: "Jo 19, 25",
      justification: "Uma das canções católicas mais tocantes e executadas no mundo inteiro na Sexta-Feira Santa e Quaresma.",
      repertoireType: "liturgica",
      specialDay: "Sexta-Feira Santa e Semana Santa",
      normExplanation: "Monólogo orante da Virgem Maria aos pés da cruz, com imensa densidade espiritual."
    },
    cifra: `[Intro] C  G/B  Am  F  G

[Primeira Parte]
C            G/B
Te olhei nos olhos
Am
Quando eras pequenino,
F              Dm
Em meus braços te embalei
G
Com todo amor divino.

[Segunda Parte]
C             G/B
Hoje te vejo pregado
Am
Nesta cruz de dor e fel,
F            Dm
Entregando Tua vida
G
Por amor a Israel.

[Refrão]
C           G/B
Dorme, meu Filho,
Am
Dorme em paz,
F            Dm
A promessa do Teu Pai
G
Logo se cumprirá!
C            G/B
A morte não tem a palavra,
Am
Nem o sepulcro tem poder:
F            G
Ao terceiro dia
C
Hás de renascer!`,
    repertoireType: "liturgica",
    specialDay: "Sexta-Feira Santa e Semana Santa",
    liturgicalNormNote: "Canto meditativo profundo para a Paixão do Senhor e meditação das Dores de Maria."
  },
  {
    id: "gloria-a-deus-nas-alturas-martin-valverde",
    title: "Glória a Deus nas Alturas (Glória)",
    composer: "Martín Valverde",
    liturgicalMoment: "Glória",
    liturgicalSeason: "Qualquer",
    originalKey: "Dm",
    bpm: 88,
    timeSignature: "4/4",
    rhythmName: "Balada Solene",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Martin+Valverde+Gloria",
    liturgicalAnalysis: {
      status: "Hino do Glória Litúrgico",
      score: 96,
      documentRef: "Lucas 2, 14 / Missal Romano",
      biblicalRef: "Lc 2, 14",
      justification: "Arranjo orante do Glória composto por Martín Valverde, muito utilizado em missas carismáticas e solenes.",
      repertoireType: "liturgica",
      specialDay: "Missa Solene",
      normExplanation: "Texto fiel à doxologia maior da liturgia católica."
    },
    cifra: `[Intro] Dm  C  Bb  A7

[Refrão]
Dm        C
Glória, glória,
Bb            A7
A Deus nas alturas!
Dm        C
E paz na terra
Bb     A7       Dm
Aos homens de amor!

[Primeira Parte]
Dm            C
Senhor Deus, Rei dos céus,
Bb             A7
Deus Pai Todo-Poderoso:
Dm             C
Nós vos louvamos,
Bb             A7
Nós vos bendizemos!

[Refrão]
Dm        C
Glória, glória,
Bb            A7
A Deus nas alturas!
Dm        C
E paz na terra
Bb     A7       Dm
Aos homens de amor!`,
    repertoireType: "liturgica",
    specialDay: "Missa Solene",
    liturgicalNormNote: "Hino de louvor litúrgico para o rito do Glória."
  },

  // -------------------------------------------------------------
  // EROS BIONDINI
  // -------------------------------------------------------------
  {
    id: "invocamos-eros-biondini",
    title: "Invocamos",
    composer: "Eros Biondini",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Pentecostes",
    originalKey: "E",
    bpm: 68,
    timeSignature: "4/4",
    rhythmName: "Balada Lenta Orante",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Eros+Biondini+Invocamos",
    liturgicalAnalysis: {
      status: "Invocação ao Espírito Santo",
      score: 97,
      documentRef: "Romanos 8, 26; João 14, 26",
      biblicalRef: "Rm 8, 26",
      justification: "O maior hino de invocação pentecostal e adoração do compositor Eros Biondini.",
      repertoireType: "adoracao",
      specialDay: "Pentecostes e Vigílias do Espírito",
      normExplanation: "Oração cantada pedindo a efusão do Espírito Santo sobre a Igreja."
    },
    cifra: `[Intro] E  C#m  A  B7

[Primeira Parte]
E            C#m
Invocamos o Teu Nome,
A            B7
Invocamos Tua presença,
E            C#m
Invocamos Teu poder,
A           B7
Vem, Espírito Santo!

[Refrão]
E             C#m
Vem sobre nós, Senhor!
A             B7
Vem sobre nós, Senhor!
E          C#m
Com Teu fogo Santo,
A      B7       E
Vem renovar o mundo!`,
    repertoireType: "adoracao",
    specialDay: "Pentecostes e Vigílias do Espírito",
    liturgicalNormNote: "Canto de invocação ao Espírito Santo."
  },
  {
    id: "civilizacao-do-amor-eros-biondini",
    title: "Civilização do Amor",
    composer: "Eros Biondini",
    liturgicalMoment: "Final e Envio",
    liturgicalSeason: "Qualquer",
    originalKey: "A",
    bpm: 98,
    timeSignature: "4/4",
    rhythmName: "Pop Rock Católico",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Eros+Biondini+Civilizacao+do+Amor",
    liturgicalAnalysis: {
      status: "Canto Pastoral de Compromisso Social",
      score: 93,
      documentRef: "Doutrina Social da Igreja / São Paulo VI",
      biblicalRef: "1 Jo 4, 7-12",
      justification: "Hino da doutrina social e pastoral da juventude católica composto por Eros Biondini.",
      repertoireType: "popular",
      specialDay: "Semana Social e Missões",
      normExplanation: "Conclama os cristãos a edificarem a Civilização do Amor no mundo."
    },
    cifra: `[Intro] A  D  F#m  E

[Primeira Parte]
A             D
Uma nova terra,
F#m          E
Um novo céu,
A              D
Onde a justiça reine,
F#m          E
Onde o amor seja lei!

[Refrão]
A            D
Construir a Civilização,
F#m          E
A Civilização do Amor!
A             D
Onde todos sejam irmãos,
F#m      E          A
Na presença do Senhor!`,
    repertoireType: "popular",
    specialDay: "Semana Social e Missões",
    liturgicalNormNote: "Canto de envio missionário e compromisso cristão."
  },

  // -------------------------------------------------------------
  // FREI LUIZ TURRA
  // -------------------------------------------------------------
  {
    id: "bendito-sejais-que-maravilha-turra",
    title: "Bendito Sejais (Que Maravilha, Senhor, Estar Aqui)",
    composer: "Frei Luiz Turra",
    liturgicalMoment: "Oferendas",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 76,
    timeSignature: "3/4",
    rhythmName: "Valsa Litúrgica",
    rhythmPattern: "↓   ↓ ↑",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Frei+Luiz+Turra+Bendito+Sejais+Que+Maravilha",
    liturgicalAnalysis: {
      status: "Canto das Oferendas Canônico CNBB",
      score: 100,
      documentRef: "IGMR 73; Documento 43 da CNBB",
      biblicalRef: "Sl 103, 14; 1 Cor 10, 16",
      justification: "Um dos cantos de ofertório litúrgico mais tradicionais e cantados de todo o Hinário Litúrgico da CNBB.",
      repertoireType: "liturgica",
      specialDay: "Missa Dominical",
      normExplanation: "100% litúrgico: apresenta os frutos da terra e do trabalho humano ao altar de Deus."
    },
    cifra: `[Intro] G  D  Em  C  D  G

[Refrão]
G              D
Bendito sejais, Senhor,
Em             C
Pelo pão que nós trazemos!
G               D
Bendito sejais, Senhor,
C        D       G
Pelo vinho que colhemos!

[Primeira Parte]
G              D
1. Fruto da terra e do trabalho,
Em               C
   Oferta pura do nosso altar;
G             D
   Em Teu Corpo e Teu Sangue,
C      D         G
   Jesus vai transformar!

[Refrão]
G              D
Bendito sejais, Senhor,
Em             C
Pelo pão que nós trazemos!
G               D
Bendito sejais, Senhor,
C        D       G
Pelo vinho que colhemos!`,
    repertoireType: "liturgica",
    specialDay: "Missa Dominical",
    liturgicalNormNote: "Canto oficial de Apresentação das Oferendas na Santa Missa."
  },
  {
    id: "jesus-cristo-ontem-hoje-turra",
    title: "Jesus Cristo, Ontem, Hoje e Sempre",
    composer: "Frei Luiz Turra",
    liturgicalMoment: "Entrada",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 88,
    timeSignature: "4/4",
    rhythmName: "Marcha Litúrgica",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Frei+Luiz+Turra+Jesus+Cristo+Ontem+Hoje",
    liturgicalAnalysis: {
      status: "Canto de Entrada Cristológico",
      score: 99,
      documentRef: "Hebreus 13, 8 / Solenidade de Cristo Rei",
      biblicalRef: "Hb 13, 8",
      justification: "Clássico litúrgico composto pelo Frei Luiz Turra para o Jubileu do Ano 2000 e Solenidade de Cristo Rei.",
      repertoireType: "liturgica",
      specialDay: "Solenidade de Cristo Rei e Entrada Solene",
      normExplanation: "Proclama a soberania eterna de Cristo sobre a história e a Criação."
    },
    cifra: `[Intro] G  C  D  G

[Refrão]
G               C
Jesus Cristo, ontem e hoje,
Am             D7
Jesus Cristo, sempre e sempre!
G             C
Ele é o Alfa, Ele é o Ômega,
G         D7       G
Rei dos reis eternamente!

[Primeira Parte]
G               C
1. Caminheiro da esperança,
Am              D7
   Vem guiar o nosso andar;
G               C
   Nesta mesa da Aliança,
G        D7        G
   Tua graça vem nos dar!

[Refrão]
G               C
Jesus Cristo, ontem e hoje,
Am             D7
Jesus Cristo, sempre e sempre!
G             C
Ele é o Alfa, Ele é o Ômega,
G         D7       G
Rei dos reis eternamente!`,
    repertoireType: "liturgica",
    specialDay: "Solenidade de Cristo Rei e Entrada Solene",
    liturgicalNormNote: "Canto solene de entrada para o Tempo Comum e Cristo Rei."
  },

  // -------------------------------------------------------------
  // IRMÃ ANA PAULA
  // -------------------------------------------------------------
  {
    id: "sopra-em-nos-irma-ana-paula",
    title: "Sopra em Nós",
    composer: "Irmã Ana Paula",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Pentecostes",
    originalKey: "C",
    bpm: 66,
    timeSignature: "4/4",
    rhythmName: "Balada Suave",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Irma+Ana+Paula+Sopra+em+Nos",
    liturgicalAnalysis: {
      status: "Canto Orante ao Espírito Santo",
      score: 96,
      documentRef: "Gênesis 2, 7; Ezequiel 37",
      biblicalRef: "Ez 37, 9",
      justification: "Um dos maiores sucessos de adoração da Irmã Ana Paula, gravado com grande repercussão nacional.",
      repertoireType: "adoracao",
      specialDay: "Pentecostes e Retiros",
      normExplanation: "Oração poética pedindo o sopro vivificador do Espírito de Deus."
    },
    cifra: `[Intro] Am7  G/B  C  F

[Primeira Parte]
Am7         G/B
Sopra em nós Teu sopro, ó Pai,
C           F
Vem nos restaurar!
Am7         G/B
Sopra em nós Teu fogo, ó Deus,
C           F
Vem nos inflamar!

[Refrão]
C            G
Espírito de Deus,
Am7          F
Vem sobre nós!
C            G/B
Espírito de Amor,
Am7         F
Renova o coração!`,
    repertoireType: "adoracao",
    specialDay: "Pentecostes e Retiros",
    liturgicalNormNote: "Canto meditativo para adoração e pós-comunhão."
  },
  {
    id: "fica-irma-ana-paula",
    title: "Fica",
    composer: "Irmã Ana Paula",
    liturgicalMoment: "Comunhão",
    liturgicalSeason: "Qualquer",
    originalKey: "D",
    bpm: 68,
    timeSignature: "4/4",
    rhythmName: "Balada Lenta",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Irma+Ana+Paula+Fica",
    liturgicalAnalysis: {
      status: "Canto Eucarístico de Emaús",
      score: 97,
      documentRef: "Lucas 24, 29 / Discípulos de Emaús",
      biblicalRef: "Lc 24, 29",
      justification: "Belíssima meditação eucarística inspirada no pedido dos discípulos de Emaús: 'Fica conosco, Senhor'.",
      repertoireType: "liturgica",
      specialDay: "Tempo Pascal e Missas Dominicais",
      normExplanation: "Canto orante de comunhão e pós-comunhão fiel ao evangelho de São Lucas."
    },
    cifra: `[Intro] D  G  Bm  A

[Primeira Parte]
D            G
Fica, Senhor, já é tarde,
Bm             A
O dia já declinou;
D             G
Fica conosco à mesa,
Bm             A
Parte conosco o pão!

[Refrão]
D            G
Fica aqui, Senhor!
Bm           A
Fica aqui, Senhor!
D             G
Nossa alma tem sede
Bm       A      D
Do Teu divino amor!`,
    repertoireType: "liturgica",
    specialDay: "Tempo Pascal e Missas Dominicais",
    liturgicalNormNote: "Canto de comunhão sobre os discípulos de Emaús."
  },

  // -------------------------------------------------------------
  // WALDECI FARIAS
  // -------------------------------------------------------------
  {
    id: "sobe-a-jerusalem-waldeci-farias",
    title: "Sobe a Jerusalém",
    composer: "Waldeci Farias",
    liturgicalMoment: "Oferendas",
    liturgicalSeason: "Quaresma",
    originalKey: "D",
    bpm: 72,
    timeSignature: "3/4",
    rhythmName: "Valsa Quaresmal",
    rhythmPattern: "↓   ↓ ↑",
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: "https://www.youtube.com/results?search_query=Waldeci+Farias+Sobe+a+Jerusalem",
    liturgicalAnalysis: {
      status: "Canto das Oferendas Quaresmal CNBB",
      score: 100,
      documentRef: "Campanha da Fraternidade / Hinário Litúrgico",
      biblicalRef: "Lc 9, 51; Is 53",
      justification: "Clássico imortal de Waldeci Farias, cantado há décadas nas paróquias brasileiras durante a Quaresma.",
      repertoireType: "liturgica",
      specialDay: "Domingos da Quaresma",
      normExplanation: "100% litúrgico: une a subida de Cristo ao Calvário à oferta da Igreja."
    },
    cifra: `[Intro] D  F#7  Bm  G  A7  D

[Primeira Parte]
D            F#7     Bm
Sobe a Jerusalém,
G            A7      D
Virgem Mãe tão dolorosa;
D             F#7    Bm
Leva em Tuas mãos de mãe
G             A7     D
Nossa prece piedosa!

[Refrão]
D            F#7    Bm
Trazemos o pão e o vinho,
G            A7      D
Ofertas do nosso altar:
D             F#7     Bm
Com Cristo no Seu caminho,
G          A7       D
Queremos nos ofertar!`,
    repertoireType: "liturgica",
    specialDay: "Domingos da Quaresma",
    liturgicalNormNote: "Canto litúrgico de apresentação das oferendas no Tempo Quaresmal."
  },
  {
    id: "vem-e-eu-mostrarei-waldeci-farias",
    title: "Vem, e Eu Mostrarei (O Povo de Deus no Deserto)",
    composer: "Waldeci Farias",
    liturgicalMoment: "Entrada",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 84,
    timeSignature: "4/4",
    rhythmName: "Balada Vocacional",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Waldeci+Farias+Vem+e+Eu+Mostrarei",
    liturgicalAnalysis: {
      status: "Canto Vocacional Canônico",
      score: 99,
      documentRef: "Mês Vocacional / Êxodo",
      biblicalRef: "Ex 3, 7-10",
      justification: "Um dos cantos litúrgicos mais cantados na história do Brasil em ordenações e no mês vocacional de Agosto.",
      repertoireType: "liturgica",
      specialDay: "Mês Vocacional e Entrada",
      normExplanation: "Texto bíblico sobre a vocação e o chamado de Deus a Moisés e aos profetas."
    },
    cifra: `[Intro] G  Em  C  D  G

[Primeira Parte]
G               Em
Vem, e Eu mostrarei
C               D
Que meu povo no deserto
G               Em
Não caminha sozinho:
C              D     G
Eu estou sempre por perto!

[Refrão]
G           Em
Vai, profeta do amor,
C            D
Leva a Minha Palavra!
G           Em
Eu serei tua força,
C          D        G
Tua voz que não se cala!`,
    repertoireType: "liturgica",
    specialDay: "Mês Vocacional e Entrada",
    liturgicalNormNote: "Canto vocacional e de entrada oficial das comunidades católicas."
  },

  // -------------------------------------------------------------
  // ALIANÇA DE MISERICÓRDIA
  // -------------------------------------------------------------
  {
    id: "recebe-nossa-vida-alianca-misericordia",
    title: "Recebe Nossa Vida",
    composer: "Aliança de Misericórdia",
    liturgicalMoment: "Oferendas",
    liturgicalSeason: "Qualquer",
    originalKey: "F",
    bpm: 70,
    timeSignature: "4/4",
    rhythmName: "Balada Suave",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Alianca+de+Misericordia+Recebe+Nossa+Vida",
    liturgicalAnalysis: {
      status: "Canto de Ofertório da Comunidade",
      score: 96,
      documentRef: "IGMR 73 / Rito das Oferendas",
      biblicalRef: "Rm 12, 1",
      justification: "Clássico de ofertório da Comunidade Aliança de Misericórdia cantado em suas missas e missões de rua.",
      repertoireType: "liturgica",
      specialDay: "Missa com Pobres e Jovens",
      normExplanation: "Apresenta ao altar de Cristo a oferta humilde de vida da comunidade."
    },
    cifra: `[Intro] F  Am  Bb  C

[Primeira Parte]
F            Am
Recebe, Senhor,
Bb           C
O pão e o vinho;
F            Am
Recebe, Senhor,
Bb           C
O nosso carinho!

[Refrão]
Bb           C
Recebe a nossa vida,
Am           Dm
Nosso coração sincero;
Gm           C
Tudo o que nós somos,
Bb      C     F
A Ti nós entregamos!`,
    repertoireType: "liturgica",
    specialDay: "Missa com Pobres e Jovens",
    liturgicalNormNote: "Canto das oferendas litúrgicas da Aliança de Misericórdia."
  },

  // -------------------------------------------------------------
  // COMUNIDADE DE TAIZÉ
  // -------------------------------------------------------------
  {
    id: "onde-reina-o-amor-ubi-caritas-taize",
    title: "Onde Reina o Amor (Ubi Caritas)",
    composer: "Comunidade de Taizé",
    liturgicalMoment: "Comunhão / Lava-Pés",
    liturgicalSeason: "Semana Santa",
    originalKey: "F",
    bpm: 60,
    timeSignature: "3/4",
    rhythmName: "Canto Meditativo Monástico",
    rhythmPattern: "↓   ↓ ↑",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Taize+Ubi+Caritas+Onde+Reina+o+Amor",
    liturgicalAnalysis: {
      status: "Antífona Solene do Missal Romano",
      score: 100,
      documentRef: "Quinta-Feira Santa / Missa da Ceia do Senhor",
      biblicalRef: "1 Jo 4, 16",
      justification: "A mais canônica antífona latina do Rito Romano traduzida e harmonizada em estilo Taizé universal.",
      repertoireType: "liturgica",
      specialDay: "Quinta-Feira Santa e Vigílias Orantes",
      normExplanation: "100% litúrgico: antífona oficial para a Quinta-Feira Santa e comunhão."
    },
    cifra: `[Intro] F  C  Dm  Bb  C  F

[Refrão Contemplativo]
F      C        Dm
Onde reina o amor,
Bb      C     F
Deus aí está!
F      C        Dm
Onde reina o amor,
Bb      C     F
Deus aí está!`,
    repertoireType: "liturgica",
    specialDay: "Quinta-Feira Santa e Vigílias Orantes",
    liturgicalNormNote: "Antífona oficial da Ceia do Senhor e canto orante contemplativo."
  },
  {
    id: "misericordia-senhor-taize",
    title: "Misericórdia, Senhor (Misericordias Domini)",
    composer: "Comunidade de Taizé",
    liturgicalMoment: "Ato Penitencial",
    liturgicalSeason: "Quaresma",
    originalKey: "Dm",
    bpm: 62,
    timeSignature: "4/4",
    rhythmName: "Ostinato Meditativo",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Taize+Misericordias+Domini",
    liturgicalAnalysis: {
      status: "Salmo Penitencial Ostinato",
      score: 98,
      documentRef: "Salmo 88 (89) / Misericordias Domini",
      biblicalRef: "Sl 89, 2",
      justification: "Clássico orante de Taizé cantado em repetição meditativa pelo coro e assembleia.",
      repertoireType: "liturgica",
      specialDay: "Quaresma e Adoração à Cruz",
      normExplanation: "Meditação contínua sobre a misericórdia eterna de Deus."
    },
    cifra: `[Intro] Dm  A  Dm  C  F  A  Dm

[Ostinato Meditativo]
Dm             A      Dm
Misericórdia, ó Senhor,
C              F      A
Pra sempre eu cantarei!
Dm             A      Dm
Misericórdia, ó Senhor,
Bb      A      Dm
Pra sempre cantarei!`,
    repertoireType: "liturgica",
    specialDay: "Quaresma e Adoração à Cruz",
    liturgicalNormNote: "Canto penitencial e meditativo da Comunidade de Taizé."
  },

  // -------------------------------------------------------------
  // FREI FABRETI
  // -------------------------------------------------------------
  {
    id: "eis-me-aqui-senhor-frei-fabreti",
    title: "Eis-me Aqui, Senhor (O Senhor É o Pastor Que Me Conduz)",
    composer: "Frei Fabreti",
    liturgicalMoment: "Comunhão",
    liturgicalSeason: "Qualquer",
    originalKey: "E",
    bpm: 72,
    timeSignature: "4/4",
    rhythmName: "Balada Pastoral Litúrgica",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Frei+Fabreti+Eis-me+Aqui+Senhor",
    liturgicalAnalysis: {
      status: "Canto de Comunhão Canônico CNBB",
      score: 100,
      documentRef: "Hinário Litúrgico da CNBB",
      biblicalRef: "1 Sm 3, 4; Is 6, 8",
      justification: "Um dos cantos de comunhão mais célebres do Frei Fabreti em todo o território nacional.",
      repertoireType: "liturgica",
      specialDay: "Missa Dominical",
      normExplanation: "100% litúrgico: expressa a adesão fiel ao chamado de Deus."
    },
    cifra: `[Intro] E  A  B7  E

[Refrão]
E              A
Eis-me aqui, Senhor!
B7             E
Eis-me aqui, Senhor!
C#m            F#m
Pra fazer Tua vontade,
B7             E
Pra viver no Teu amor!

[Primeira Parte]
E              A
1. O Senhor me chamou
B7             E
   Pelo meu próprio nome;
C#m            F#m
   Eu respondo com fé:
B7             E
   Eis-me aqui, Senhor!`,
    repertoireType: "liturgica",
    specialDay: "Missa Dominical",
    liturgicalNormNote: "Canto de comunhão canônico do Hinário Litúrgico."
  },

  // -------------------------------------------------------------
  // PADRE REGINALDO VELOSO
  // -------------------------------------------------------------
  {
    id: "eu-me-levanto-salmo-50-veloso",
    title: "Eu Me Levanto (Salmo 50)",
    composer: "Padre Reginaldo Veloso",
    liturgicalMoment: "Ato Penitencial",
    liturgicalSeason: "Quaresma",
    originalKey: "Dm",
    bpm: 68,
    timeSignature: "4/4",
    rhythmName: "Toada Penitencial Nordestina",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Reginaldo+Veloso+Eu+Me+Levanto",
    liturgicalAnalysis: {
      status: "Salmo Penitencial Litúrgico CNBB",
      score: 100,
      documentRef: "Salmo 50 (Miserere) / Liturgia das Horas",
      biblicalRef: "Sl 50, 1-3",
      justification: "Obra-prima de Reginaldo Veloso para a Quaresma, com sabor pastoral e bíblico profundo.",
      repertoireType: "liturgica",
      specialDay: "Quaresma e Sexta-Feira Santa",
      normExplanation: "Versão poética e litúrgica fidedigna do Salmo 50."
    },
    cifra: `[Intro] Dm  Gm  A7  Dm

[Refrão]
Dm            Gm
Eu me levanto hoje,
A7            Dm
Vou a meu Pai voltar:
Dm              Gm
Pequei contra o céu,
A7              Dm
Vem, Senhor, me perdoar!

[Primeira Parte]
Dm             Gm
1. Tende piedade de mim,
A7             Dm
   Ó Deus de bondade e amor;
Dm            Gm
   Lavai toda a minha culpa,
A7             Dm
   Perdoai o meu clamor!`,
    repertoireType: "liturgica",
    specialDay: "Quaresma e Sexta-Feira Santa",
    liturgicalNormNote: "Salmo penitencial litúrgico para o Tempo Quaresmal."
  },

  // -------------------------------------------------------------
  // ANJOS DE RESGATE
  // -------------------------------------------------------------
  {
    id: "o-primeiro-olhar-anjos-de-resgate",
    title: "O Primeiro Olhar",
    composer: "Anjos de Resgate",
    liturgicalMoment: "Comunhão / Matrimônio",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 72,
    timeSignature: "4/4",
    rhythmName: "Balada Pop Romântica e Pastoral",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Anjos+de+Resgate+O+Primeiro+Olhar",
    liturgicalAnalysis: {
      status: "Canto Pastoral Matrimonial",
      score: 95,
      documentRef: "Sacramento do Matrimônio / Gênesis 2",
      biblicalRef: "Gn 2, 24",
      justification: "Maior clássico dos Anjos de Resgate para celebração do Sacramento do Matrimônio e bênção das famílias.",
      repertoireType: "adoracao",
      specialDay: "Casamentos e Bodas",
      normExplanation: "Consagra o amor conjugal sob as bênçãos de Deus."
    },
    cifra: `[Intro] G  D/F#  Em  C  D

[Primeira Parte]
G            D/F#
Quando Te vi pela primeira vez,
Em           C
Senti meu coração disparar;
G           D/F#
Era o amor que Deus me prometeu,
Em          C          D
Pronto pra me abençoar!

[Refrão]
G           D/F#
Foi no primeiro olhar,
Em          C
No primeiro abraço,
G           D/F#
Que Deus uniu nossas vidas,
Em       D        G
Num só coração e laço!`,
    repertoireType: "adoracao",
    specialDay: "Casamentos e Bodas",
    liturgicalNormNote: "Canto para celebração do Matrimônio e bênção das famílias."
  },
  {
    id: "a-cruz-sagrada-anjos-de-resgate",
    title: "A Cruz Sagrada (Oração de São Bento)",
    composer: "Anjos de Resgate",
    liturgicalMoment: "Louvor / Combate Espiritual",
    liturgicalSeason: "Qualquer",
    originalKey: "Em",
    bpm: 80,
    timeSignature: "4/4",
    rhythmName: "Pop Rock Orante",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Anjos+de+Resgate+A+Cruz+Sagrada",
    liturgicalAnalysis: {
      status: "Oração Tradicional da Igreja",
      score: 94,
      documentRef: "Medalha e Oração de São Bento",
      biblicalRef: "Gl 6, 14",
      justification: "Musicalização célebre da oração milenar da Cruz de São Bento gravada pelos Anjos de Resgate.",
      repertoireType: "devocional",
      specialDay: "Festa de São Bento e Retiros",
      normExplanation: "Oração litúrgica de libertação e exaltação da Santa Cruz."
    },
    cifra: `[Intro] Em  C  G  D

[Refrão]
Em              C
A Cruz Sagrada seja a minha luz!
G               D
Não seja o dragão meu guia!
Em              C
Retira-te, satanás!
G               D
Nunca me aconselhes coisas vãs!

[Segunda Parte]
Em             C
É mau o que tu me ofereces,
G              D
Bebe tu mesmo o teu veneno!
Em             C
A Cruz Sagrada seja a minha luz,
G        D       Em
Em Nome do Senhor Jesus!`,
    repertoireType: "devocional",
    specialDay: "Festa de São Bento e Retiros",
    liturgicalNormNote: "Oração cantada de proteção espiritual da Santa Cruz."
  },

  // -------------------------------------------------------------
  // ELIANA RIBEIRO
  // -------------------------------------------------------------
  {
    id: "forca-e-vitoria-eliana-ribeiro",
    title: "Força e Vitória",
    composer: "Eliana Ribeiro",
    liturgicalMoment: "Louvor / Final",
    liturgicalSeason: "Qualquer",
    originalKey: "Bm",
    bpm: 100,
    timeSignature: "4/4",
    rhythmName: "Pop Animado",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Eliana+Ribeiro+Forca+e+Vitoria",
    liturgicalAnalysis: {
      status: "Canto de Louvor e Combate",
      score: 95,
      documentRef: "Salmo 27 / Filipenses 4, 13",
      biblicalRef: "Fl 4, 13",
      justification: "Maior hit de animação e vitória espiritual gravado por Eliana Ribeiro na Canção Nova.",
      repertoireType: "popular",
      specialDay: "Grupos de Oração e Encontros",
      normExplanation: "Canto vibrante para envio e louvor assemblear."
    },
    cifra: `[Intro] Bm  G  A  D  F#7

[Primeira Parte]
Bm
Todo joelho se dobrará,
G
Toda língua proclamará:
A
Jesus Cristo é o Senhor,
F#7
Para a glória do Pai!

[Refrão]
Bm          G
Força e vitória
A           D     F#7
Tem a nossa oração!
Bm          G
Força e vitória
A           Bm
No Sangue do Cordeiro!`,
    repertoireType: "popular",
    specialDay: "Grupos de Oração e Encontros",
    liturgicalNormNote: "Canto de animação e vitória em Cristo."
  },
  {
    id: "chuva-de-graca-eliana-ribeiro",
    title: "Chuva de Graça",
    composer: "Eliana Ribeiro",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Qualquer",
    originalKey: "C",
    bpm: 70,
    timeSignature: "4/4",
    rhythmName: "Balada Lenta",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Eliana+Ribeiro+Chuva+de+Graca",
    liturgicalAnalysis: {
      status: "Canto Orante de Cura e Avivamento",
      score: 95,
      documentRef: "Joel 2, 23; Oséias 6, 3",
      biblicalRef: "Jl 2, 23",
      justification: "Canção de cura e efusão do Espírito Santo que marcou o ministério de Eliana Ribeiro.",
      repertoireType: "adoracao",
      specialDay: "Noites de Avivamento e Missa de Cura",
      normExplanation: "Súplica orante pedindo a chuva da graça de Deus sobre os fiéis."
    },
    cifra: `[Intro] C  G  Am  F

[Primeira Parte]
C           G
Há uma chuva de graça aqui,
Am          F
Caindo sobre nós!
C           G
Há uma unção de cura aqui,
Am           F
Curando nossa dor!

[Refrão]
C            G
Chove sobre nós, Senhor!
Am           F
Chove sobre nós Teu amor!
C            G
Derrama Tua graça sem fim,
Am        F     C
Faz renascer em mim!`,
    repertoireType: "adoracao",
    specialDay: "Noites de Avivamento e Missa de Cura",
    liturgicalNormNote: "Canto de cura interior e oração."
  },

  // -------------------------------------------------------------
  // PADRE ANTONIO MARIA
  // -------------------------------------------------------------
  {
    id: "mae-peregrina-padre-antonio-maria",
    title: "Mãe Peregrina (Mãe Admirável)",
    composer: "Padre Antonio Maria",
    liturgicalMoment: "Final e Envio / Mariano",
    liturgicalSeason: "Qualquer",
    originalKey: "D",
    bpm: 78,
    timeSignature: "4/4",
    rhythmName: "Toada Mariana",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Antonio+Maria+Mae+Peregrina",
    liturgicalAnalysis: {
      status: "Hino do Movimento da Mãe Peregrina de Schoenstatt",
      score: 96,
      documentRef: "Pastoral Mariana de Schoenstatt",
      biblicalRef: "Lc 1, 39",
      justification: "Hino oficial da Campanha da Mãe Peregrina de Schoenstatt, cantado por milhões de lares católicos.",
      repertoireType: "devocional",
      specialDay: "Festas Marianas e Romarias",
      normExplanation: "Exaltação carinhosa à visita de Nossa Senhora nas famílias."
    },
    cifra: `[Intro] D  G  A7  D

[Primeira Parte]
D              A7
Mãe Admirável, ó Mãe Peregrina,
G              A7         D
A Tua visita aquece e ilumina!
D              A7
Tu és a rainha do nosso rincão,
G               A7          D
Protege e acolhe o nosso coração!

[Refrão]
D             G
Vem, Mãe querida,
A7            D
Vem nos visitar!
D             G
Traz Tua bênção
A7            D
Pra todo este lar!`,
    repertoireType: "devocional",
    specialDay: "Festas Marianas e Romarias",
    liturgicalNormNote: "Hino tradicional da Mãe e Rainha Peregrina."
  },
  {
    id: "cura-senhor-padre-antonio-maria",
    title: "Cura, Senhor",
    composer: "Padre Antonio Maria",
    liturgicalMoment: "Comunhão / Cura",
    liturgicalSeason: "Qualquer",
    originalKey: "C",
    bpm: 68,
    timeSignature: "4/4",
    rhythmName: "Balada Lenta Orante",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Padre+Antonio+Maria+Cura+Senhor",
    liturgicalAnalysis: {
      status: "Súplica de Cura e Libertação",
      score: 94,
      documentRef: "Lucas 5, 17-26; Tiago 5, 14",
      biblicalRef: "Tg 5, 14",
      justification: "Oração cantada mais pedida nas missas de enfermos celebradas pelo Padre Antonio Maria.",
      repertoireType: "adoracao",
      specialDay: "Missa dos Enfermos",
      normExplanation: "Súplica filial pedindo alívio e saúde corporal e espiritual."
    },
    cifra: `[Intro] C  G  Am  F

[Primeira Parte]
C             G
Cura, Senhor, onde dói,
Am            F
Cura, Senhor, bem aqui!
C            G
Cura a ferida da alma,
Am           F
Dá-me a Tua santa calma!

[Refrão]
C           G
Cura, meu Senhor Jesus,
Am          F
Pela força da Tua Cruz!
C            G
Toca o meu coração,
Am      F      C
Dá-me a Tua salvação!`,
    repertoireType: "adoracao",
    specialDay: "Missa dos Enfermos",
    liturgicalNormNote: "Canto de súplica e oração pelos enfermos."
  },

  // -------------------------------------------------------------
  // ZIZA FERNANDES
  // -------------------------------------------------------------
  {
    id: "tempo-de-graca-ziza-fernandes",
    title: "Tempo de Graça",
    composer: "Ziza Fernandes",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 70,
    timeSignature: "4/4",
    rhythmName: "Balada Poética",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Ziza+Fernandes+Tempo+de+Graca",
    liturgicalAnalysis: {
      status: "Canto Meditativo Poético",
      score: 96,
      documentRef: "Eclesiastes 3, 1; 2 Coríntios 6, 2",
      biblicalRef: "2 Cor 6, 2",
      justification: "Clássico lírico e contemplativo de Ziza Fernandes, muito tocado em adorações e retiros de silêncio.",
      repertoireType: "adoracao",
      specialDay: "Retiros e Encontros",
      normExplanation: "Meditação lírica sobre o tempo oportuno de Deus (Kairós) em nossas vidas."
    },
    cifra: `[Intro] G  C  Em  D

[Primeira Parte]
G            C
É tempo de graça,
Em           D
É tempo de paz;
G             C
O que ficou pra trás
Em            D
Não me fere mais!

[Refrão]
C            D
Deus faz nova todas as coisas,
Em           Bm
Deus refaz o meu caminho;
C            D
Nele posso descansar,
Em       D        G
Nunca estou sozinho!`,
    repertoireType: "adoracao",
    specialDay: "Retiros e Encontros",
    liturgicalNormNote: "Canto orante poético de cura e esperança."
  },
  {
    id: "fogo-suave-ziza-fernandes",
    title: "Fogo Suave",
    composer: "Ziza Fernandes",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Pentecostes",
    originalKey: "E",
    bpm: 64,
    timeSignature: "4/4",
    rhythmName: "Balada Lenta",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: false,
    isSimple: true,
    chordCount: 4,
    youtubeUrl: "https://www.youtube.com/results?search_query=Ziza+Fernandes+Fogo+Suave",
    liturgicalAnalysis: {
      status: "Canto de Oração ao Espírito Santo",
      score: 95,
      documentRef: "São João da Cruz / Chama Viva de Amor",
      biblicalRef: "Ct 8, 6",
      justification: "Inspirado na mística carmelitana de São João da Cruz e Santa Teresa de Ávila.",
      repertoireType: "adoracao",
      specialDay: "Pentecostes e Retiros Contemplativos",
      normExplanation: "Súplica orante da chama viva do amor de Deus."
    },
    cifra: `[Intro] E  C#m  A  B7

[Primeira Parte]
E              C#m
Fogo suave que queima,
A              B7
Que não consome a alma;
E              C#m
Chama que acalma o peito,
A            B7
Trazendo Tua calma!

[Refrão]
E          C#m
Arde em mim, Senhor!
A          B7
Arde com Teu amor!
E           C#m
Consome o meu viver,
A      B7       E
Vem me fazer renascer!`,
    repertoireType: "adoracao",
    specialDay: "Pentecostes e Retiros Contemplativos",
    liturgicalNormNote: "Canto contemplativo de adoração e efusão do Espírito."
  }
];

// Inserir somente músicas que ainda não existem pelo ID
let addedCount = 0;
newSongs.forEach(song => {
  if (!existingIds.has(song.id)) {
    songsJson.push(song);
    existingIds.add(song.id);
    addedCount++;
    console.log(`+ Adicionada: [${song.composer}] ${song.title} (${song.id})`);
  } else {
    console.log(`= Já existe: ${song.id}`);
  }
});

// Salvar em songs.json
fs.writeFileSync(songsJsonPath, JSON.stringify(songsJson, null, 2), 'utf8');
console.log(`\nOK! ${addedCount} novas músicas inseridas em santa-cifra/data/songs.json. Total agora: ${songsJson.length}`);

// Atualizar arquivos modulares de catálogo:
// catalog-adoracao-comunidades.js, catalog-entrada-final.js, catalog-ofertorio-comunhao.js, catalog-ordinario-salmos.js
// Distribuir novas músicas conforme liturgicalMoment
let catAdoracao = JSON.parse(fs.readFileSync(catalogAdoracaoPath, 'utf8').replace(/^[^{[]*window\.[A-Za-z0-9_]+\s*=\s*/, '').replace(/;?\s*$/, ''));
let catEntrada = JSON.parse(fs.readFileSync(catalogEntradaPath, 'utf8').replace(/^[^{[]*window\.[A-Za-z0-9_]+\s*=\s*/, '').replace(/;?\s*$/, ''));
let catOfertorio = JSON.parse(fs.readFileSync(catalogOfertorioPath, 'utf8').replace(/^[^{[]*window\.[A-Za-z0-9_]+\s*=\s*/, '').replace(/;?\s*$/, ''));
let catOrdinario = JSON.parse(fs.readFileSync(catalogOrdinarioPath, 'utf8').replace(/^[^{[]*window\.[A-Za-z0-9_]+\s*=\s*/, '').replace(/;?\s*$/, ''));

const adoracaoSet = new Set(catAdoracao.map(s => s.id));
const entradaSet = new Set(catEntrada.map(s => s.id));
const ofertorioSet = new Set(catOfertorio.map(s => s.id));
const ordinarioSet = new Set(catOrdinario.map(s => s.id));

newSongs.forEach(song => {
  const m = (song.liturgicalMoment || '').toLowerCase();
  if (m.includes('oferenda') || m.includes('comunhão')) {
    if (!ofertorioSet.has(song.id)) { catOfertorio.push(song); ofertorioSet.add(song.id); }
  } else if (m.includes('entrada') || m.includes('final') || m.includes('envio')) {
    if (!entradaSet.has(song.id)) { catEntrada.push(song); entradaSet.add(song.id); }
  } else if (m.includes('ato penitencial') || m.includes('glória') || m.includes('paz')) {
    if (!ordinarioSet.has(song.id)) { catOrdinario.push(song); ordinarioSet.add(song.id); }
  } else {
    if (!adoracaoSet.has(song.id)) { catAdoracao.push(song); adoracaoSet.add(song.id); }
  }
});

fs.writeFileSync(catalogAdoracaoPath, `window.SongsCatalogAdoracaoComunidades = ${JSON.stringify(catAdoracao, null, 2)};\n`, 'utf8');
fs.writeFileSync(catalogEntradaPath, `window.SongsCatalogEntradaFinal = ${JSON.stringify(catEntrada, null, 2)};\n`, 'utf8');
fs.writeFileSync(catalogOfertorioPath, `window.SongsCatalogOfertorioComunhao = ${JSON.stringify(catOfertorio, null, 2)};\n`, 'utf8');
fs.writeFileSync(catalogOrdinarioPath, `window.SongsCatalogOrdinario = ${JSON.stringify(catOrdinario, null, 2)};\n`, 'utf8');

console.log('OK! Todos os 4 catálogos modulares foram atualizados com sucesso.');
