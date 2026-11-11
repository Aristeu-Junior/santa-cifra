const fs = require('fs');
const path = require('path');
const vm = require('vm');
const { cleanCifraText, countUniqueChords } = require('./cifra_cleaner');

const targetFile = path.join(__dirname, '../santa-cifra/js/catalog/catalog-ordinario-salmos.js');
const cacheDir = path.join(__dirname, 'cifraclub_cache');

const content = fs.readFileSync(targetFile, 'utf8');
const sb = { window: {} };
vm.createContext(sb);
vm.runInContext(content, sb);
const songs = sb.window.SongsCatalogOrdinario;

console.log(`Loaded ${songs.length} songs from Ordinario.`);

const updates = {};

// 1. Alo Meu Deus
const aloMeuDeus = cleanCifraText(fs.readFileSync(path.join(cacheDir, 'padre-zezinho-alo-meu-deus.txt'), 'utf8'));
updates['alo-meu-deus-pe-zezinho'] = aloMeuDeus;

// 2. Palavra de Salvacao
const palavra = cleanCifraText(fs.readFileSync(path.join(cacheDir, 'padre-zezinho-palavra-de-salvacao.txt'), 'utf8'));
updates['palavra-de-salvacao-pe-zezinho'] = palavra;

// 3. Fala Senhor
updates['fala-senhor-pe-zezinho'] = `[Intro] D  G  A7  D

[Refrão]
D             G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
Palavra de fraternidade!
D             G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
És Luz da nossa verdade!

[Primeira Parte]
   D                                  G
1. Tua Palavra é lâmpada para os meus pés,
   A7                                 D
É farol luminoso na noite escura da vida!
   Bm                                 Em
Se escuto a Tua voz, não vacilo em meu rumo,
   A7                                 D
Tua Palavra me guia e cura minha ferida!

[Refrão]
D             G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
Palavra de fraternidade!
D             G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
És Luz da nossa verdade!

[Segunda Parte]
   D                                  G
2. Fala, Senhor, ao coração dos aflitos,
   A7                                 D
Dá fortaleza ao que luta na dor e na prova!
   Bm                                 Em
Que a Tua Palavra transforme o nosso viver,
   A7                                 D
E faça no mundo nascer uma terra tão nova!

[Refrão]
D             G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
Palavra de fraternidade!
D             G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
És Luz da nossa verdade!`;

// 4. Gloria a Deus na Imensidao
const gloria = cleanCifraText(fs.readFileSync(path.join(cacheDir, 'padre-zezinho-gloria-a-deus-na-imensidao.txt'), 'utf8'));
updates['gloria-a-deus-na-imensidao-pe-zezinho'] = gloria;

// 5. Cantico de Maria Magnificat
updates['cantico-de-maria-magnificat-pe-zezinho'] = `[Intro] C  Am  Dm  G7  C

[Refrão]
C             Am         Dm          G7
A minh'alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!
C             Am         Dm          G7
A minh'alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!

[Primeira Parte]
   C                      Am
1. Porque olhou para a humildade de sua serva,
   Dm                         G7
Doravante as gerações me proclamarão feliz!
   C                          Am
O Todo-Poderoso fez em mim grandes maravilhas,
   Dm                 G7             C
Santo é o Seu nome de ternura e de raiz!

[Refrão]
C             Am         Dm          G7
A minh'alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!

[Segunda Parte]
   C                      Am
2. Seu amor para sempre se estende,
   Dm                         G7
De geração em geração sobre os que O temem!
   C                          Am
Com o poder do Seu braço dispersou os soberbos,
   Dm                 G7             C
Derrubou os poderosos de seus tronos altaneiros!

[Refrão]
C             Am         Dm          G7
A minh'alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!

[Terceira Parte]
   C                      Am
3. Elevou os mais humildes e encheu de bens os famintos,
   Dm                         G7
E despediu os ricos de mãos vazias!
   C                          Am
Socorreu a Israel, Seu servo fiel,
   Dm                 G7             C
Lembrado de sua misericórdia e aliança bravia!

[Refrão Final]
C             Am         Dm          G7
A minh'alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!`;

// 6. Oracao da Noite
const oracaoNoite = cleanCifraText(fs.readFileSync(path.join(cacheDir, 'padre-zezinho-oracao-da-noite.txt'), 'utf8'));
updates['oracao-da-noite-perdoai-nos-senhor-pe-zezinho'] = oracaoNoite;

// 7. Sonda-me (Padre Marcelo Rossi)
const sondaMe = cleanCifraText(fs.readFileSync(path.join(cacheDir, 'padre-marcelo-rossi-sonda-me.txt'), 'utf8'));
updates['sonda-me-pe-marcelo-rossi'] = sondaMe;

// 8. Seja Engrandecido (Asaph Borba)
const sejaEng = cleanCifraText(fs.readFileSync(path.join(cacheDir, 'asaph-borba-seja-engrandecido.txt'), 'utf8'));
updates['seja-engrandecido-pe-marcelo-rossi'] = sejaEng;

// 9. Abraco de Pai (Walmir Alencar)
const abracoPai = cleanCifraText(fs.readFileSync(path.join(cacheDir, 'walmir-alencar-abraco-de-pai.txt'), 'utf8'));
updates['abraco-de-pai-walmir-alencar'] = abracoPai;

// 10. Salmo 103 (Enviai o Vosso Espírito)
updates['enviai-o-vosso-espirito-senhor-salmo-103'] = `[Intro] C  Am  F  G  C

[Refrão]
C                      Am
Enviai o vosso Espírito, Senhor,
F              G               C
E da terra toda a face renovai!
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
F                      G               C
E que sabedoria em todas elas transborda!

[Refrão]
C                      Am
Enviai o vosso Espírito, Senhor,
F              G               C
E da terra toda a face renovai!

[Estrofe 2]
Am                     Em
2. Todos eles, ó Senhor, de vós esperam
F                      G
Que a seu tempo vós lhes deis o alimento;
Am                     Em
Vós lhes dais o que comer e eles recolhem,
F                      G               C
Vós abris a vossa mão e todos se fartam!

[Refrão]
C                      Am
Enviai o vosso Espírito, Senhor,
F              G               C
E da terra toda a face renovai!

[Estrofe 3]
Am                     Em
3. Se tirais o seu respiro, eles perecem
F                      G
E voltam para o pó de onde vieram;
Am                     Em
Enviais o vosso Espírito e renascem,
F                      G               C
E da terra toda a face vós renovais!

[Refrão]
C                      Am
Enviai o vosso Espírito, Senhor,
F              G               C
E da terra toda a face renovai!

[Estrofe 4]
Am                     Em
4. Glória ao Senhor pelos seus feitos eternos,
F                      G
Alegre-se o Senhor em suas criaturas!
Am                     Em
Que o meu canto seja a Ele agradável,
F                      G               C
No Senhor eu ponho toda a minha alegria!

[Refrão Final]
C                      Am
Enviai o vosso Espírito, Senhor,
F              G               C
E da terra toda a face renovai!`;

// 11. Salmo 50 (Misericordia ó Senhor)
updates['misericordia-o-senhor-pois-pecamos-salmo-50'] = `[Intro] Em  Am  B7  Em

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
E apagai completamente a minha culpa!

[Refrão]
Em             Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 2]
Em                               Am
2. Eu reconheço toda a minha iniquidade,
B7                               Em
O meu pecado está sempre à minha frente;
Em                               Am
Foi contra vós, só contra vós que eu pequei,
B7                               Em
E pratiquei o que é mau aos vossos olhos!

[Refrão]
Em             Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 3]
Em                               Am
3. Criai em mim um coração que seja puro,
B7                               Em
Dai-me de novo um espírito decidido;
Em                               Am
Ó Senhor, não me afasteis de vossa face,
B7                               Em
Nem retireis de mim vosso Santo Espírito!

[Refrão]
Em             Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 4]
Em                               Am
4. Dai-me de novo a alegria de ser salvo,
B7                               Em
E confirmai-me com espírito generoso;
Em                               Am
Abri meus lábios, ó Senhor, para cantar,
B7                               Em
E minha boca anunciará vosso louvor!

[Refrão Final]
Em             Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!`;

// 12. Salmo 24 (A Vós, ó Meu Senhor, Elevo a Minha Alma)
updates['a-vos-o-meu-senhor-salmo-24'] = `[Intro] Em  Am  B7  Em

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
Porque sois o Deus da minha salvação!

[Refrão]
Em             Am          B7             Em
A vós, ó meu Senhor, elevo a minha alma!

[Estrofe 2]
Am                         Em
2. Recordai, Senhor meu Deus, vossa ternura
B7                         Em
E a vossa compaixão que são eternas!
Am                         Em
De mim lembrai-vos, porque sois misericórdia
B7                         Em
E sois bondade sem limites, ó Senhor!

[Refrão]
Em             Am          B7             Em
A vós, ó meu Senhor, elevo a minha alma!

[Estrofe 3]
Am                         Em
3. O Senhor é piedade e retidão,
B7                         Em
E reconduz ao bom caminho os pecadores;
Am                         Em
Ele dirige os humildes na justiça
B7                         Em
E aos pobres ensina o seu caminho!

[Refrão Final]
Em             Am          B7             Em
A vós, ó meu Senhor, elevo a minha alma!`;

// 13. Salmo 95 (Hoje Nasceu Para Nós o Salvador)
updates['hoje-nasceu-para-nos-o-salvador-salmo-95'] = `[Intro] F  C  G7  C

[Refrão]
C              F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!
C              F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofe 1]
C                      F
1. Cantai ao Senhor Deus um canto novo,
Dm                     G7
Cantai ao Senhor Deus, ó terra inteira!
C                      F
Cantai e bendizei seu santo nome,
Dm                     G7                C
Dia após dia anunciai sua salvação!

[Refrão]
C              F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofe 2]
C                      F
2. Manifestai a sua glória entre as nações,
Dm                     G7
E entre os povos do universo as suas maravilhas!
C                      F
Porque grande é o Senhor e mui digno de louvor,
Dm                     G7                C
Mais terrível e soberano que os falsos deuses!

[Refrão]
C              F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofe 3]
C                      F
3. O céu se rejubile e exulte a terra,
Dm                     G7
Aplauda o mar com tudo o que ele encerra!
C                      F
Os campos com seus frutos rejubilem,
Dm                     G7                C
E exultem as florestas na presença do Senhor!

[Refrão]
C              F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofe 4]
C                      F
4. Pois Ele vem, Ele vem para julgar a terra,
Dm                     G7
Governar o mundo inteiro com justiça!
C                      F
E os povos julgará com lealdade,
Dm                     G7                C
Com sua verdade e eterna fidelidade!

[Refrão Final]
C              F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!`;

// 14. Salmo 117 (Este É o Dia Que o Senhor Fez)
updates['este-e-o-dia-que-o-senhor-fez-salmo-117'] = `[Intro] D  G  A7  D

[Refrão]
D              G           A7             D
Este é o dia que o Senhor fez para nós:
Bm             Em          A7             D
Alegremo-nos e nele exultemos!
D              G           A7             D
Este é o dia que o Senhor fez para nós:
Bm             Em          A7             D
Alegremo-nos e nele exultemos!

[Estrofe 1]
D                          G
1. Dai graças ao Senhor, porque Ele é bom,
A7                         D
Porque eterna é a sua misericórdia!
Bm                         Em
A casa de Israel agora o diga:
A7                         D
Eterna é a sua misericórdia!

[Refrão]
D              G           A7             D
Este é o dia que o Senhor fez para nós:
Bm             Em          A7             D
Alegremo-nos e nele exultemos!

[Estrofe 2]
D                          G
2. A mão direita do Senhor fez maravilhas,
A7                         D
A mão direita do Senhor me levantou!
Bm                         Em
Não hei de morrer, mas viverei,
A7                         D
Para cantar as santas obras do Senhor!

[Refrão]
D              G           A7             D
Este é o dia que o Senhor fez para nós:
Bm             Em          A7             D
Alegremo-nos e nele exultemos!

[Estrofe 3]
D                          G
3. A pedra que os pedreiros rejeitaram
A7                         D
Tornou-se agora a pedra angular!
Bm                         Em
Pelo Senhor é que foi feito tudo isso:
A7                         D
Que maravilha Ele fez a nossos olhos!

[Refrão Final]
D              G           A7             D
Este é o dia que o Senhor fez para nós:
Bm             Em          A7             D
Alegremo-nos e nele exultemos!`;

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
 * Catálogo de Cifras - Ordinário da Missa e Salmos Responsoriais
 * Santa Cifra - Plataforma de Cifras Litúrgicas Católicas
 * 
 * Contém cantos rituais do Ordinário: Entrada, Ato Penitencial, Glória,
 * Salmos Responsoriais, Aclamação ao Evangelho, Santo, Cordeiro de Deus.
 */

window.SongsCatalogOrdinario = ${JSON.stringify(songs, null, 2)};
`;

// Validate syntax before writing
const verifySb = { window: {} };
vm.createContext(verifySb);
vm.runInContext(newContent, verifySb);

if (verifySb.window.SongsCatalogOrdinario.length === songs.length) {
  fs.writeFileSync(targetFile, newContent, 'utf8');
  console.log(`SUCCESS: Saved ${targetFile} with ${appliedCount} songs upgraded.`);
} else {
  console.error('ERROR: Verification failed!');
}
