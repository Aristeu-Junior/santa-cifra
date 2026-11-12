/**
 * Script para expandir o repertório canônico da Banda Arkanjos / Juninho Cassimiro
 * com 8 grandes sucessos pesquisados no Cifra Club:
 * 
 * 1. Convívio dos Eleitos
 * 2. Santa Cruz
 * 3. Meu Tesouro
 * 4. Dia da Bênção
 * 5. Teus Planos
 * 6. O Poço (part. Frei Gilson)
 * 7. Corações ao Alto (Tema RCC)
 * 8. Face a Face
 * 
 * Regras:
 * - Chords exatos do Cifra Club.
 * - Linhas curtas (máx 35 caracteres) para nunca cortar no celular.
 * - Incendeia Minha Alma 100% intocada.
 */

const fs = require('fs');
const path = require('path');

const songsJsonPath = path.join(__dirname, '../santa-cifra/data/songs.json');
const catalogAdoracaoPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-adoracao-comunidades.js');
const catalogOfertorioPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-ofertorio-comunhao.js');
const catalogEntradaPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-entrada-final.js');

const songsJson = JSON.parse(fs.readFileSync(songsJsonPath, 'utf8'));
const existingIds = new Set(songsJson.map(s => s.id));

const arkanjosHits = [
  {
    id: "convivio-dos-eleitos-banda-arkanjos",
    title: "Convívio dos Eleitos",
    composer: "Banda Arkanjos / Juninho Cassimiro",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 72,
    timeSignature: "4/4",
    rhythmName: "Balada Pop Orante",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Convivio+dos+Eleitos",
    liturgicalAnalysis: {
      status: "Canto Eucarístico / Desapego do Mundo",
      score: 98,
      documentRef: "Filipenses 3, 8; Santo Agostinho",
      biblicalRef: "Fl 3, 8",
      justification: "Maior clássico de espiritualidade da Banda Arkanjos, inspirado em Santo Agostinho e São Felipe Néri ('Prefiro o Paraíso').",
      repertoireType: "adoracao",
      specialDay: "Retiros e Adoração ao Santíssimo",
      normExplanation: "Canto de consagração e desapego das glórias terrenas para viver pelo Céu."
    },
    cifra: `[Intro] G  C9  Em  D  C9

[Primeira Parte]
G               C9
O Senhor me libertou,
                      Em
O que mais me prende aqui!
D              C9
Nada me seduz, nada!

G                C9
Meu amor por Ti, Jesus,
                     Em
É o que tenho de valor:
D              C9
Nada me atrai, nada!

[Segunda Parte]
Am             Bm     C9
Tarde Te amei, meu Senhor,
Am             Bm    C9
Mas Te encontrei, amor!
Am              Bm     C9
Meu maior bem é ser Teu,
D
Todo Teu, Jesus!

[Pré-Refrão]
Am            D
Por nada eu Te trocaria,
Bm            Em
Por nada eu Te deixaria:
C9          D
Nada, nada, nada!

[Refrão]
G                 C9
Concedei-me o convívio
              Em
Dos Vossos eleitos!
D                  C9
Eu sonho com o céu todo tempo!
Am7             Bm7
Não quero honras nem riquezas,
C                D
Eu prefiro o Paraíso!

[Refrão Final]
G                 C9
Concedei-me o convívio
              Em
Dos Vossos eleitos!
D                  C9
Eu sonho com o céu todo tempo!
Am7             Bm7
Não quero honras nem riquezas,
C       D         G
Eu prefiro o Paraíso!`,
    repertoireType: "adoracao",
    specialDay: "Retiros e Adoração ao Santíssimo",
    liturgicalNormNote: "Canto de entrega e consagração total a Jesus no Santíssimo Sacramento."
  },
  {
    id: "santa-cruz-banda-arkanjos",
    title: "Santa Cruz",
    composer: "Banda Arkanjos / Juninho Cassimiro",
    liturgicalMoment: "Comunhão / Semana Santa",
    liturgicalSeason: "Quaresma",
    originalKey: "G",
    bpm: 68,
    timeSignature: "4/4",
    rhythmName: "Balada da Cruz",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Santa+Cruz",
    liturgicalAnalysis: {
      status: "Exaltação da Santa Cruz",
      score: 99,
      documentRef: "Gálatas 6, 14; Sexta-Feira Santa",
      biblicalRef: "Gl 6, 14",
      justification: "Hino solene da Banda Arkanjos sobre o mistério da redenção na Cruz de Cristo.",
      repertoireType: "liturgica",
      specialDay: "Solenidade da Exaltação da Santa Cruz e Sexta-Feira Santa",
      normExplanation: "100% litúrgico: exalta a Cruz salvífica onde o Cordeiro lavou os pecados humanos."
    },
    cifra: `[Intro] G  Bm7  C9  D

[Primeira Parte]
G                     Bm7
Todos os pecados meus e os seus
                  C9
Foram cravados no madeiro,
                 Am7    D
Pois Jesus nos lavou na cruz!
G                     Bm7
Ele se fez Cordeiro e tomou
                 C9
Toda dor que era nossa:
             Am7      D
Com amor Ele nos libertou!

[Pré-Refrão]
C9             Bm7       Em7
Ele desceu da Sua glória santa
C9            Bm7      Em7
Pra se fazer sacrifício por nós;
Am7               Bm7
Como ovelha muda ao matadouro,
C9              D
Obedeceu até a morte de cruz!

[Refrão]
G       Bm7       C9
Ó Santa Cruz, bendita Cruz!
             D          G
O amor por ela se revelou!
G           Bm7        C9
Nós somos a Igreja da Cruz,
                 D
Por isso a exaltamos, Senhor!

[Segunda Parte]
C9              Bm7
Não há mais barreira entre nós:
C9         D        G
O véu do templo rasgou!
C9            Bm7
O céu está aberto pra nós,
Am7            D      G
A graça de Deus triunfou!`,
    repertoireType: "liturgica",
    specialDay: "Solenidade da Exaltação da Santa Cruz e Sexta-Feira Santa",
    liturgicalNormNote: "Canto solene para a Exaltação da Santa Cruz e Quaresma."
  },
  {
    id: "meu-tesouro-banda-arkanjos",
    title: "Meu Tesouro",
    composer: "Banda Arkanjos / Juninho Cassimiro",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Qualquer",
    originalKey: "F",
    bpm: 70,
    timeSignature: "4/4",
    rhythmName: "Balada Lenta",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Meu+Tesouro",
    liturgicalAnalysis: {
      status: "Canto Contemplativo Eucarístico",
      score: 96,
      documentRef: "Mateus 6, 21 / 'Onde está o teu tesouro'",
      biblicalRef: "Mt 6, 21",
      justification: "Canção tema do primeiro álbum de grande repercussão nacional da Banda Arkanjos.",
      repertoireType: "adoracao",
      specialDay: "Adoração e Pós-Comunhão",
      normExplanation: "Meditação bíblica de que o verdadeiro tesouro da alma é o Coração de Deus."
    },
    cifra: `[Intro] Bb  Am7  Gm7  C

[Primeira Parte]
F                Am7
Onde está meu coração,
Gm7              C
Ali estará o meu tesouro!
F                Am7
O meu desejo é Te amar,
Gm7               C
Sentir Tua paz e Teu amor!

[Segunda Parte]
F            Am7
Pobre coração ferido,
Bb            Am7
Que buscou amores vãos:
Gm7           Am7
Volta agora para o Pai,
Bb            C
Que te acolhe em Suas mãos!

[Refrão]
Bb                Am7
Ergue o teu olhar pra Deus:
Bb                 Am7
Nele há amor sem fim!
Gm7          Am7
Ele é o teu maior tesouro,
Bb           C         F
O Teu abrigo até o fim!`,
    repertoireType: "adoracao",
    specialDay: "Adoração e Pós-Comunhão",
    liturgicalNormNote: "Canto contemplativo para pós-comunhão e adoração."
  },
  {
    id: "dia-da-bencao-banda-arkanjos",
    title: "Dia da Bênção (Faz Chover)",
    composer: "Banda Arkanjos",
    liturgicalMoment: "Louvor / Efusão",
    liturgicalSeason: "Qualquer",
    originalKey: "F",
    bpm: 78,
    timeSignature: "4/4",
    rhythmName: "Balada Pop Louvor",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Dia+da+Bencao",
    liturgicalAnalysis: {
      status: "Canto de Avivamento e Efusão",
      score: 95,
      documentRef: "Malaquias 3, 10; Efésios 1, 3",
      biblicalRef: "Ml 3, 10",
      justification: "Clássico animado da Banda Arkanjos muito pedido em vigílias de oração e encontros carismáticos.",
      repertoireType: "popular",
      specialDay: "Vigílias e Grupos de Oração",
      normExplanation: "Proclama a abertura dos céus e o derramamento de bênçãos de Deus."
    },
    cifra: `[Intro] F  Dm  Bb  C

[Primeira Parte]
F
Hoje as portas do céu
Dm
Vão se abrir para nós:
Bb
Deus está aqui
C
Neste santo lugar!

F
É o próprio Jesus
Dm
Com Seu Espírito Santo
Bb
Trazendo a paz
C
E as bênçãos do céu!

[Pré-Refrão]
Dm           Am
Cura o meu coração,
Bb          F
Muda a minha vida:
Gm            C
Só Tu podes realizar!

[Refrão]
F             C/E
Faz chover, Senhor,
Dm
Sobre nós águas vivas!
Bb
Abre as comportas do céu
C
Neste santo lugar!

F              C/E
Derrama em nós, Jesus,
Dm
Uma chuva de bênçãos:
Bb
Hoje é o dia de Deus,
C                F
Eu tomo posse da graça!`,
    repertoireType: "popular",
    specialDay: "Vigílias e Grupos de Oração",
    liturgicalNormNote: "Canto de avivamento e oração da Banda Arkanjos."
  },
  {
    id: "teus-planos-juninho-cassimiro",
    title: "Teus Planos",
    composer: "Juninho Cassimiro",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Qualquer",
    originalKey: "G",
    bpm: 68,
    timeSignature: "4/4",
    rhythmName: "Balada Orante",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 6,
    youtubeUrl: "https://www.youtube.com/results?search_query=Juninho+Cassimiro+Teus+Planos",
    liturgicalAnalysis: {
      status: "Canto de Entrega e Abandono em Deus",
      score: 99,
      documentRef: "Jeremias 29, 11; Isaías 55, 8-9",
      biblicalRef: "Jr 29, 11",
      justification: "Maior composição da carreira de Juninho Cassimiro, regravada e cantada por milhões de fiéis no Brasil.",
      repertoireType: "adoracao",
      specialDay: "Adoração e Missa com Jovens",
      normExplanation: "Oração sincera de abandono da própria vontade nos desígnios perfeitos de Deus."
    },
    cifra: `[Intro] G  Am7  Bm7  C  D

[Primeira Parte]
G
Eu me abro ao Teu querer,
Am7
Eu me rendo à Tua voz;
Bm7
Quero me submeter,
C               D
Quero conhecer Teus planos!

G
Os passos que dei sem Ti
Am7
Só me fizeram chorar;
Bm7
O tanto que me enganei:
C                 D
Me arrependo dos meus planos!

[Pré-Refrão]
Am7      G       D/F#
Sem Ti nada posso fazer!
Em       C
Onde eu posso ir
Am7
Se o céu que procuro
C              D
Só encontro em Ti?

[Refrão]
G           F
Os passos são Teus,
C
O meu próximo minuto é Teu:
C/D                G
Se não for assim, não me deixe ir!

G            F
Dou minha mão a Ti,
C
Fecho os olhos e confio em Ti:
C/D     G
Leva-me, Senhor!`,
    repertoireType: "adoracao",
    specialDay: "Adoração e Missa com Jovens",
    liturgicalNormNote: "Canto orante de entrega aos planos de Deus."
  },
  {
    id: "o-poco-juninho-cassimiro-frei-gilson",
    title: "O Poço (Deus Sedento)",
    composer: "Juninho Cassimiro / Intérprete: Frei Gilson",
    liturgicalMoment: "Comunhão / Quaresma",
    liturgicalSeason: "Quaresma",
    originalKey: "A",
    bpm: 66,
    timeSignature: "4/4",
    rhythmName: "Balada Meditativa Profunda",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Juninho+Cassimiro+Frei+Gilson+O+Poco",
    liturgicalAnalysis: {
      status: "Diálogo de Jesus e a Samaritana",
      score: 100,
      documentRef: "João 4, 5-42 / 3º Domingo da Quaresma",
      biblicalRef: "Jo 4, 10",
      justification: "Encontro bíblico magistral entre Jesus e a Samaritana no poço de Jacó, gravado por Juninho Cassimiro e Frei Gilson.",
      repertoireType: "liturgica",
      specialDay: "3º Domingo da Quaresma e Comunhão",
      normExplanation: "100% litúrgico e bíblico: reflete sobre a sede de Jesus por nossas almas."
    },
    cifra: `[Intro] A  C#m7  D  E

[Primeira Parte]
A
Quer se encontrar com o Amor?
F#m             E       D
Quer se deparar com um olhar?
A
Ele está sentado ali,
F#m            E       D
Na beira do poço a te esperar!

[Segunda Parte]
A              C#m7
Que tal sentar naquele poço
D                 E
E dar de beber ao Deus sedento?
A             C#m7
Se conhecesses o Seu dom,
D             E
Beberias da água viva!

[Refrão]
F#m         C#m7
Vai lá, rasga o teu coração
D            E
E vem até Jesus!
A           C#m7
Conta pra Ele como estás,
D                 E
Deixa Ele te curar na cruz!

F#m         C#m7
O amor de Deus vai te acolher,
D             E
Ele só quer te libertar:
A            E
Vem a este poço de amor,
D      E         A
Água viva Ele te dará!`,
    repertoireType: "liturgica",
    specialDay: "3º Domingo da Quaresma e Comunhão",
    liturgicalNormNote: "Canto do encontro de Jesus com a Samaritana no poço de Jacó."
  },
  {
    id: "coracoes-ao-alto-banda-arkanjos",
    title: "Corações ao Alto",
    composer: "Banda Arkanjos / Juninho Cassimiro",
    liturgicalMoment: "Louvor / Prefácio",
    liturgicalSeason: "Qualquer",
    originalKey: "D",
    bpm: 94,
    timeSignature: "4/4",
    rhythmName: "Pop Louvor Efusivo",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Coracoes+ao+Alto",
    liturgicalAnalysis: {
      status: "Hino Oficial do ENF RCC Brasil",
      score: 96,
      documentRef: "Colossenses 3, 1-2; Diálogo do Prefácio",
      biblicalRef: "Cl 3, 1",
      justification: "Tema nacional da RCC e grande composição de Juninho Cassimiro / Banda Arkanjos inspirada no diálogo do Prefácio.",
      repertoireType: "popular",
      specialDay: "Congressos, Cenáculos e Encontros de Oração",
      normExplanation: "Convite a elevar o coração para Deus e buscar as coisas do alto."
    },
    cifra: `[Intro] Bm  F#m  G  A  Bm

[Primeira Parte]
Bm          F#m
Queremos voltar ao primeiro amor,
G              A      Bm
Esvaziar-nos de todo o mal:
G             F#m
Se temos a Ti, Senhor,
G             A        Bm
O que mais nos atrai aqui?

[Refrão]
G           F#m
Corações ao alto!
G              A      Bm
O nosso coração está em Deus!
G           F#m
Corações ao alto!
G              A      Bm
O nosso coração está em Deus!

[Segunda Parte]
Em            Bm
Se vivemos pelo Espírito,
G            A       Bm
Andemos no Santo Espírito!
Em            Bm
Se vivemos pelo Espírito,
G            A       Bm
Andemos no Santo Espírito!

[Ponte]
D            A        Bm
Sopra dos quatro cantos,
G             A
O sopro da vida de Deus!
D            A        Bm
E levanta sobre esta terra
G        A         Bm
Um povo santo e fiel!`,
    repertoireType: "popular",
    specialDay: "Congressos, Cenáculos e Encontros de Oração",
    liturgicalNormNote: "Canto de louvor e exortação a buscar as coisas do alto."
  },
  {
    id: "face-a-face-banda-arkanjos",
    title: "Face a Face",
    composer: "Banda Arkanjos / Juninho Cassimiro",
    liturgicalMoment: "Comunhão / Adoração",
    liturgicalSeason: "Qualquer",
    originalKey: "C",
    bpm: 70,
    timeSignature: "4/4",
    rhythmName: "Balada Orante",
    rhythmPattern: "↓   ↓ ↑   ↑ ↓",
    isMostUsed: true,
    isSimple: true,
    chordCount: 5,
    youtubeUrl: "https://www.youtube.com/results?search_query=Banda+Arkanjos+Face+a+Face",
    liturgicalAnalysis: {
      status: "Canto Escatológico da Esperança Celeste",
      score: 97,
      documentRef: "1 Coríntios 13, 12; Apocalipse 21, 4",
      biblicalRef: "1 Cor 13, 12",
      justification: "Clássico lírico sobre o encontro face a face com Deus na eternidade, onde não haverá mais pranto nem dor.",
      repertoireType: "adoracao",
      specialDay: "Comunhão e Vigílias de Esperança",
      normExplanation: "Meditação cristã sobre a comunhão eterna no Céu com Deus e com os Santos."
    },
    cifra: `[Intro] C  Em  Dm7  G

[Primeira Parte]
C                    Em
Face a face com meu Deus,
                   Dm7
Com os anjos cantarei!
                   G
Lá a noite não existe,
                 C
Nem tão pouco a dor!

[Segunda Parte]
C
Ele foi preparar um lugar,
Em
Uma linda morada nos céus;
F
Voltará para me buscar,
Dm7            G
Para sempre com Ele habitar!

[Refrão]
C              Em
Finalmente livre eu sou!
Dm7           G
Livre eternamente eu sou!
C              Em
Face a face com meu Deus,
Dm7        G       C
Descanso eterno eu terei!`,
    repertoireType: "adoracao",
    specialDay: "Comunhão e Vigílias de Esperança",
    liturgicalNormNote: "Canto meditativo da esperança da ressurreição e vida eterna."
  }
];

let added = 0;
arkanjosHits.forEach(song => {
  if (!existingIds.has(song.id)) {
    songsJson.push(song);
    existingIds.add(song.id);
    added++;
    console.log(`+ Adicionada: [${song.composer}] ${song.title} (${song.id})`);
  } else {
    console.log(`= Já existe: ${song.id}`);
  }
});

// Salvar songs.json
fs.writeFileSync(songsJsonPath, JSON.stringify(songsJson, null, 2), 'utf8');
console.log(`\nsongs.json atualizado com ${added} novas músicas da Banda Arkanjos! Total: ${songsJson.length}`);

// Atualizar catalog-*.js
let catAdoracao = JSON.parse(fs.readFileSync(catalogAdoracaoPath, 'utf8').replace(/^[^{[]*window\.[A-Za-z0-9_]+\s*=\s*/, '').replace(/;?\s*$/, ''));
let catOfertorio = JSON.parse(fs.readFileSync(catalogOfertorioPath, 'utf8').replace(/^[^{[]*window\.[A-Za-z0-9_]+\s*=\s*/, '').replace(/;?\s*$/, ''));
let catEntrada = JSON.parse(fs.readFileSync(catalogEntradaPath, 'utf8').replace(/^[^{[]*window\.[A-Za-z0-9_]+\s*=\s*/, '').replace(/;?\s*$/, ''));

const adSet = new Set(catAdoracao.map(s => s.id));
const ofSet = new Set(catOfertorio.map(s => s.id));
const enSet = new Set(catEntrada.map(s => s.id));

arkanjosHits.forEach(song => {
  const m = (song.liturgicalMoment || '').toLowerCase();
  if (m.includes('comunhão') || m.includes('semana santa')) {
    if (!ofSet.has(song.id)) { catOfertorio.push(song); ofSet.add(song.id); }
  } else if (m.includes('louvor') || m.includes('final')) {
    if (!enSet.has(song.id)) { catEntrada.push(song); enSet.add(song.id); }
  } else {
    if (!adSet.has(song.id)) { catAdoracao.push(song); adSet.add(song.id); }
  }
});

fs.writeFileSync(catalogAdoracaoPath, `window.SongsCatalogAdoracaoComunidades = ${JSON.stringify(catAdoracao, null, 2)};\n`, 'utf8');
fs.writeFileSync(catalogOfertorioPath, `window.SongsCatalogOfertorioComunhao = ${JSON.stringify(catOfertorio, null, 2)};\n`, 'utf8');
fs.writeFileSync(catalogEntradaPath, `window.SongsCatalogEntradaFinal = ${JSON.stringify(catEntrada, null, 2)};\n`, 'utf8');

console.log('OK! Arquivos modulares de catálogo atualizados.');
