const fs = require('fs');
const path = require('path');

const newCifra = `[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Primeira Parte]
   Dm           Gm         A7           Dm
1. Neste tempo sacrossanto, o pecado faz horror;
       Bb             Gm
   Contemplando a Cruz de Cristo,
         A7           Dm
   Convertei-vos ao Senhor!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Segunda Parte]
   Dm           Gm        A7          Dm
2. Vinde, vinde, pecadores, vinde todos pelejar;
      Bb             Gm
   Contra as forças do inimigo,
         A7          Dm
   Nossa alma libertar!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Terceira Parte]
   Dm          Gm          A7            Dm
3. Lembra, ó homem, que és pó e ao pó hás de voltar;
      Bb            Gm
   Aproveita o tempo breve
          A7           Dm
   Que te resta pra chorar!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Quarta Parte]
   Dm          Gm         A7           Dm
4. Pelas dores cruciantes que Jesus por nós sofreu;
      Bb           Gm
   Pelo sangue derramado
          A7            Dm
   Que na cruz nos redimiu!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Quinta Parte]
   Dm          Gm          A7             Dm
5. Vede lá no alto Monte a Cruz de nosso Redentor;
       Bb            Gm
   De braços abertos chama:
            A7          Dm
   "Vinde a Mim por Meu amor!"

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Sexta Parte]
   Dm           Gm        A7           Dm
6. Rasgai vossos corações, e não vossas vestes;
      Bb          Gm
   Voltai para o vosso Deus,
       A7            Dm
   Compassivo e clemente!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Sétima Parte]
   Dm           Gm          A7             Dm
7. Ó Jesus, compadecido, perdoai os nossos erros;
        Bb           Gm
   E nos concedei a graça
            A7             Dm
   De viver nos Vossos passos!

[Refrão Final]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!`;

// 1. Atualizar santa-cifra/data/songs.json
const songsJsonPath = path.join(__dirname, '../santa-cifra/data/songs.json');
const songs = JSON.parse(fs.readFileSync(songsJsonPath, 'utf8'));
const target = songs.find(s => s.id === 'pecador-agora-e-tempo-quaresma-cnbb');
if (target) {
  target.cifra = newCifra;
  fs.writeFileSync(songsJsonPath, JSON.stringify(songs, null, 2), 'utf8');
  console.log('OK: Atualizado em songs.json');
} else {
  console.log('ERRO: Não encontrou em songs.json');
}

// 2. Atualizar santa-cifra/js/catalog/catalog-ordinario-salmos.js
const catalogJsPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-ordinario-salmos.js');
let catalogJs = fs.readFileSync(catalogJsPath, 'utf8');
const regex = /(\{\s*"id":\s*"pecador-agora-e-tempo-quaresma-cnbb"[\s\S]*?"cifra":\s*)"[\s\S]*?"(,[\s\S]*?"repertoireType":\s*"liturgica")/;
if (regex.test(catalogJs)) {
  catalogJs = catalogJs.replace(regex, `$1${JSON.stringify(newCifra)}$2`);
  fs.writeFileSync(catalogJsPath, catalogJs, 'utf8');
  console.log('OK: Atualizado em catalog-ordinario-salmos.js');
} else {
  console.log('ERRO: Regex não bateu em catalog-ordinario-salmos.js');
}
