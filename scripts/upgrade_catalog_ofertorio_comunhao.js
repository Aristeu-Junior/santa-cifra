const fs = require('fs');
const path = require('path');
const vm = require('vm');
const { cleanCifraText, countUniqueChords } = require('./cifra_cleaner');

const targetFile = path.join(__dirname, '../santa-cifra/js/catalog/catalog-ofertorio-comunhao.js');
const cacheDir = path.join(__dirname, 'cifraclub_cache');

const content = fs.readFileSync(targetFile, 'utf8');
const sb = { window: {} };
vm.createContext(sb);
vm.runInContext(content, sb);
const songs = sb.window.SongsCatalogOfertorioComunhao;

console.log(`Loaded ${songs.length} songs from Ofertorio/Comunhao.`);

const updates = {};

function loadCache(file) {
  const p = path.join(cacheDir, file);
  if (!fs.existsSync(p)) {
    console.warn(`Cache file not found: ${file}`);
    return null;
  }
  return cleanCifraText(fs.readFileSync(p, 'utf8'));
}

// 1. Um Coracao para Amar (Pe. Zezinho)
const umCoracao = loadCache('padre-zezinho-um-coracao-para-amar.txt');
updates['um-coracao-para-amar'] = umCoracao;
updates['um-coracao-para-amar-ofertorio'] = umCoracao;

// 2. Minha Vida Tem Sentido (Pe. Zezinho)
updates['minha-vida-tem-sentido-pe-zezinho'] = loadCache('padre-zezinho-minha-vida-tem-sentido.txt');

// 3. Vocacao (Se Ouvires a Voz do Vento - Pe. Zezinho)
updates['vocacao-se-ouvires-a-voz-do-vento-pe-zezinho'] = loadCache('padre-zezinho-vocacao.txt');

// 4. Barco a Vela (Eliana Ribeiro)
updates['barco-a-vela-eliana-ribeiro'] = loadCache('eliana-ribeiro-barco-vela.txt');

// 5. Em Teu Altar (Walmir Alencar)
updates['em-teu-altar-adoracao-e-vida'] = loadCache('walmir-alencar-em-teu-altar.txt');

// 6. So Por Ti Jesus (Eugenio Jorge)
updates['so-por-ti-jesus-eugenio-jorge'] = loadCache('eugenio-jorge-so-por-ti-jesus.txt');

// 7. A Forca do Amor (Marcio Todeschini)
updates['a-forca-do-amor-marcio-todeschini'] = loadCache('marcio-todeschini-a-forca-do-amor.txt');

// 8. Meu Mestre (Padre Marcelo Rossi)
updates['a-minha-vida-e-do-mestre-pe-marcelo-rossi'] = loadCache('padre-marcelo-rossi-meu-mestre.txt');

// 9. Pelos Prados e Campinas (Frei Fabreti) - All 5 canonical strophes
updates['pelos-prados-e-campinas-salmo-22'] = `[Intro] C  Am  F  Fm  C  G7  C

[Refrão]
C       G         Am  Em
Tu és, Senhor, o meu pastor!
    F             G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 1]
         C          Am           F   Fm
1. Pelos prados e campinas verdejantes
       C   Am
Eu vou!
    Em            F          D7   G7
É o Senhor que me leva a descansar!
         C             Am          F   Fm
Junto às fontes de águas puras repousantes
       C   Am
Eu vou!
        Em       F          G     G7
Minhas forças o Senhor vai animar!

[Refrão]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 2]
         C             Am            F   Fm
2. Nos caminhos da justiça e da verdade
       C   Am
Eu vou!
       Em        F           D7   G7
Pelo amor do seu nome Ele me guia!
          C             Am          F   Fm
Mesmo quando pela morte ameaçado
       C   Am
Eu vou!
        Em         F            G    G7
Sem temor, pois o Senhor comigo está!

[Refrão]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 3]
       C          Am          F   Fm
3. Com seu cajado e o báculo seguro
       C   Am
Eu vou!
      Em            F        D7   G7
És o meu conforto na tribulação!
     C              Am         F   Fm
Uma mesa bem farta me preparas
       C   Am
Eu vou!
      Em             F            G    G7
Sob a vista do inimigo me acolhes!

[Refrão]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 4]
        C           Am           F   Fm
4. Com óleo santo ungiste a minha fronte
       C   Am
Eu vou!
      Em             F         D7   G7
O meu cálice transborda de alegria!
       C           Am             F   Fm
Tua bondade e tua graça me acompanham
       C   Am
Eu vou!
        Em            F            G    G7
Todos os dias da minha vida aqui na terra!

[Refrão]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 5]
        C            Am          F   Fm
5. E na tua santa casa habitarei
       C   Am
Eu vou!
        Em            F            D7   G7
Pelos tempos que não findam cantarei!
       C           Am             F   Fm
Glória ao Pai, e ao Filho, e ao Santo Espírito
       C   Am
Eu vou!
       Em             F          G    G7
Pelos séculos dos séculos, sem fim!

[Refrão Final]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!`;

// 10. Bendito e Louvado Seja o Pai Nosso Criador
updates['bendito-e-louvado-seja-o-pai-nosso-criador'] = `[Intro] D  G  A7  D

[Refrão]
D              G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm             Em          A7            D
O pão que nós recebemos é dom do seu amor!
D              G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm             Em          A7            D
O pão que nós recebemos é dom do seu amor!

[Estrofe 1]
D                          G
1. O pão que se transforma no Corpo de Jesus,
A7                         D
E o vinho no seu Sangue vertido lá na cruz!
Bm                         Em
O trigo germinado na terra com suor,
A7                         D
Torna-se hóstia santa no altar do Redentor!

[Refrão]
D              G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm             Em          A7            D
O pão que nós recebemos é dom do seu amor!

[Estrofe 2]
D                          G
2. O vinho que ofertamos com júbilo e louvor,
A7                         D
É fruto da videira, colhido com amor!
Bm                         Em
Recebe, ó Pai celeste, os frutos do labor,
A7                         D
Que o povo consagrado entrega ao Senhor!

[Refrão]
D              G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm             Em          A7            D
O pão que nós recebemos é dom do seu amor!

[Estrofe 3]
D                          G
3. As nossas alegrias, angústias e aflições,
A7                         D
Colocamos no altar em nossas oblações!
Bm                         Em
Unidos a Jesus na ceia do amor,
A7                         D
Sejamos oferenda perfeita ao Criador!

[Refrão]
D              G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm             Em          A7            D
O pão que nós recebemos é dom do seu amor!

[Estrofe 4]
D                          G
4. A Igreja em caminhada proclama com fervor:
A7                         D
Bendito seja Deus, nosso amado Pastor!
Bm                         Em
Ao Pai e ao Filho eterno, e ao Espírito de luz,
A7                         D
Louvor eterno e glória no Reino de Jesus!

[Refrão Final]
D              G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm             Em          A7            D
O pão que nós recebemos é dom do seu amor!`;

// 11. Os Graos Que Formam a Espiga (Frei Luiz Turra)
updates['os-graos-que-formam-a-espiga-ofertorio'] = `[Intro] F  C  G7  C

[Refrão]
C              F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am             Dm          G7            C
Os homens que são Igreja se unem pela oblação!
C              F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am             Dm          G7            C
Os homens que são Igreja se unem pela oblação!

[Estrofe 1]
C                          F
1. Diante do teu altar, Senhor, a nossa oferta trazemos;
Dm                         G7
Acolhe com teu amor o pão e o vinho que temos!
C                          F
O pão é fruto da terra e do trabalho do homem,
Dm                         G7            C
Alimento que dá vida aos povos que te adoram!

[Refrão]
C              F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am             Dm          G7            C
Os homens que são Igreja se unem pela oblação!

[Estrofe 2]
C                          F
2. Os cachos de uva colhidos se tornam em vinho puro;
Dm                         G7
O povo de Deus reunido caminha firme e seguro!
C                          F
Bebida da salvação na mesa da Eucaristia,
Dm                         G7            C
Converte a nossa fraqueza em perene alegria!

[Refrão]
C              F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am             Dm          G7            C
Os homens que são Igreja se unem pela oblação!

[Estrofe 3]
C                          F
3. O pão e o vinho no altar serão sacrifício santo;
Dm                         G7
A vida dos filhos de Deus se eleva em doce canto!
C                          F
A dor de quem nada tem, a luta de quem trabalha,
Dm                         G7            C
Encontram na tua graça a força que nunca falha!

[Refrão]
C              F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am             Dm          G7            C
Os homens que são Igreja se unem pela oblação!

[Estrofe 4]
C                          F
4. Senhor, que a nossa oferta se una à oferta do Filho,
Dm                         G7
E a todos conceda a graça de ver o eterno brilho!
C                          F
Ao Pai bendito e clemente, a Cristo o Redentor,
Dm                         G7            C
E ao Espírito Consolador, tributo de santo amor!

[Refrão Final]
C              F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am             Dm          G7            C
Os homens que são Igreja se unem pela oblação!`;

// 12. A Mesa Santa Que Preparamos (Pe. José Weber)
updates['a-mesa-santa-que-preparamos-ofertorio'] = `[Intro] D  G  A7  D

[Refrão]
D              G           A7            D
A mesa santa que preparamos, mãos estendidas no altar de Deus!
Bm             Em          A7            D
Pão e vinho nós ofertamos, frutos da terra e do trabalho!
D              G           A7            D
Bendito sejais, Senhor, Deus do universo,
Bm             Em          A7            D
Pelo pão e pelo vinho que hoje vos apresentamos!

[Estrofe 1]
D                          G
1. Ofertamos as nossas dores, a esperança do nosso irmão;
A7                         D
Acolhei, Senhor compassivo, nossa prece e nossa união!
Bm                         Em
Tudo o que somos e temos depositamos aqui,
A7                         D
Pra renascer renovados e consagrados a Ti!

[Refrão]
D              G           A7            D
A mesa santa que preparamos, mãos estendidas no altar de Deus!
Bm             Em          A7            D
Pão e vinho nós ofertamos, frutos da terra e do trabalho!

[Estrofe 2]
D                          G
2. Com o Filho bem-amado queremos nos consagrar;
A7                         D
Fazei de nós um só corpo pra vossa glória cantar!
Bm                         Em
O vinho vertido no cálice e o pão repartido no amor,
A7                         D
Sejam sustento e remédio para todo pecador!

[Refrão]
D              G           A7            D
A mesa santa que preparamos, mãos estendidas no altar de Deus!
Bm             Em          A7            D
Pão e vinho nós ofertamos, frutos da terra e do trabalho!

[Estrofe 3]
D                          G
3. Ao Deus Uno e Trino louvemos com júbilo e gratidão,
A7                         D
Que acolhe em sua mesa a santa celebração!
Bm                         Em
Ao Pai Criador da vida, ao Verbo que se humilhou,
A7                         D
E ao Espírito Santificador que a Igreja confirmou!

[Refrão Final]
D              G           A7            D
A mesa santa que preparamos, mãos estendidas no altar de Deus!
Bm             Em          A7            D
Pão e vinho nós ofertamos, frutos da terra e do trabalho!`;

// 13. Antes da Morte e Ressurreição de Jesus (Navarro / Waldeci)
updates['antes-da-morte-e-ressurreicao- de-jesus-comunhao'] = `[Intro] F  C  G7  C

[Refrão]
C              F           G7            C
Isto é o meu Corpo que é dado por vós!
Am             Dm          G7            C
Isto é o meu Sangue derramado por vós!
C              F           G7            C
Fazei isto em memória de mim,
Am             Dm          G7            C
Até que eu venha no Reino sem fim!

[Estrofe 1]
C                          F
1. Antes da morte e ressurreição de Jesus,
Dm                         G7
Ele, na Ceia, quis se entregar:
C                          F
Deu-se em comida e deu-se em bebida,
Dm                         G7            C
Para os homens da terra remir e salvar!

[Refrão]
C              F           G7            C
Isto é o meu Corpo que é dado por vós!
Am             Dm          G7            C
Isto é o meu Sangue derramado por vós!

[Estrofe 2]
C                          F
2. Estando à mesa, tomou o pão santo,
Dm                         G7
Deu graças ao Pai e o partiu aos seus:
C                          F
"Tomai e comei, isto é o meu Corpo,
Dm                         G7            C
O Pão da Aliança que desce dos céus!"

[Refrão]
C              F           G7            C
Isto é o meu Corpo que é dado por vós!
Am             Dm          G7            C
Isto é o meu Sangue derramado por vós!

[Estrofe 3]
C                          F
3. Depois da ceia, tomou o cálice,
Dm                         G7
Deu graças de novo e a todos entregou:
C                          F
"Tomai e bebei, Sangue da Aliança,
Dm                         G7            C
Que pelos pecados de todos jorrou!"

[Refrão]
C              F           G7            C
Isto é o meu Corpo que é dado por vós!
Am             Dm          G7            C
Isto é o meu Sangue derramado por vós!

[Estrofe 4]
C                          F
4. Quem come deste pão e bebe deste vinho
Dm                         G7
Terá vida eterna, não há de morrer;
C                          F
Eu o ressuscitarei no último dia,
Dm                         G7            C
Para com o Pai no esplendor viver!

[Refrão]
C              F           G7            C
Isto é o meu Corpo que é dado por vós!
Am             Dm          G7            C
Isto é o meu Sangue derramado por vós!

[Estrofe 5]
C                          F
5. Somos a Igreja reunida no amor,
Dm                         G7
Corpo místico vivo do Redentor;
C                          F
Pelo Pão sagrado e pelo Sangue bendito,
Dm                         G7            C
Sejamos no mundo reflexo do amor!

[Refrão Final]
C              F           G7            C
Isto é o meu Corpo que é dado por vós!
Am             Dm          G7            C
Isto é o meu Sangue derramado por vós!
C              F           G7            C
Fazei isto em memória de mim,
Am             Dm          G7            C
Até que eu venha no Reino sem fim!`;

let appliedCount = 0;
songs.forEach(s => {
  if (updates[s.id]) {
    s.cifra = updates[s.id];
    s.chordCount = countUniqueChords(s.cifra);
    appliedCount++;
    console.log(`Updated [${s.id}] -> ${s.cifra.split('\n').length} lines, ${s.chordCount} chords.`);
  }
});

const newContent = `/**
 * Catálogo de Cifras - Cantos de Ofertório, Comunhão e Ação de Graças
 * Santa Cifra - Plataforma de Cifras Litúrgicas Católicas
 * 
 * Contém cantos rituais para apresentação dos dons (Ofertório),
 * procissão da Sagrada Comunhão e Ação de Graças eucarística.
 */

window.SongsCatalogOfertorioComunhao = ${JSON.stringify(songs, null, 2)};
`;

// Validate syntax before writing
const verifySb = { window: {} };
vm.createContext(verifySb);
vm.runInContext(newContent, verifySb);

if (verifySb.window.SongsCatalogOfertorioComunhao.length === songs.length) {
  fs.writeFileSync(targetFile, newContent, 'utf8');
  console.log(`SUCCESS: Saved ${targetFile} with ${appliedCount} songs upgraded.`);
} else {
  console.error('ERROR: Verification failed!');
}
