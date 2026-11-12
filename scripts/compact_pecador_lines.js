const fs = require('fs');
const path = require('path');

const pecadorCifraCompact = `[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm           Gm
Pecador, agora é tempo
        A7          Dm
De pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Primeira Parte]
   Dm              Gm
1. Neste tempo sacrossanto,
   A7           Dm
   O pecado faz horror;
       Bb             Gm
   Contemplando a Cruz de Cristo,
         A7           Dm
   Convertei-vos ao Senhor!

[Refrão]
   Dm           Gm
Pecador, agora é tempo
        A7          Dm
De pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Segunda Parte]
   Dm           Gm
2. Vinde, vinde, pecadores,
   A7           Dm
   Vinde todos pelejar;
      Bb             Gm
   Contra as forças do inimigo,
         A7          Dm
   Nossa alma libertar!

[Refrão]
   Dm           Gm
Pecador, agora é tempo
        A7          Dm
De pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Terceira Parte]
   Dm          Gm
3. Lembra, ó homem, que és pó
         A7            Dm
   E ao pó hás de voltar;
      Bb            Gm
   Aproveita o tempo breve
          A7           Dm
   Que te resta pra chorar!

[Refrão]
   Dm           Gm
Pecador, agora é tempo
        A7          Dm
De pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Quarta Parte]
   Dm          Gm
4. Pelas dores cruciantes
         A7           Dm
   Que Jesus por nós sofreu;
      Bb           Gm
   Pelo sangue derramado
          A7            Dm
   Que na cruz nos redimiu!

[Refrão]
   Dm           Gm
Pecador, agora é tempo
        A7          Dm
De pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Quinta Parte]
   Dm          Gm
5. Vede lá no alto Monte
        A7             Dm
   A Cruz de nosso Redentor;
       Bb            Gm
   De braços abertos chama:
            A7          Dm
   "Vinde a Mim por Meu amor!"

[Refrão]
   Dm           Gm
Pecador, agora é tempo
        A7          Dm
De pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Sexta Parte]
   Dm           Gm
6. Rasgai vossos corações,
      A7           Dm
   E não vossas vestes;
      Bb          Gm
   Voltai para o vosso Deus,
       A7            Dm
   Compassivo e clemente!

[Refrão]
   Dm           Gm
Pecador, agora é tempo
        A7          Dm
De pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Sétima Parte]
   Dm           Gm
7. Ó Jesus, compadecido,
        A7             Dm
   Perdoai os nossos erros;
        Bb           Gm
   E nos concedei a graça
            A7             Dm
   De viver nos Vossos passos!

[Refrão Final]
   Dm           Gm
Pecador, agora é tempo
        A7          Dm
De pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!`;

// 1. Update songs.json
const songsJsonPath = path.join(__dirname, '../santa-cifra/data/songs.json');
const songs = JSON.parse(fs.readFileSync(songsJsonPath, 'utf8'));
const target = songs.find(s => s.id === 'pecador-agora-e-tempo-quaresma-cnbb');
if (target) {
  target.cifra = pecadorCifraCompact;
  fs.writeFileSync(songsJsonPath, JSON.stringify(songs, null, 2), 'utf8');
  console.log('songs.json: Pecador Agora e Tempo atualizado!');
}

// 2. Update catalog-ordinario-salmos.js
const catalogOrdinarioPath = path.join(__dirname, '../santa-cifra/js/catalog/catalog-ordinario-salmos.js');
let catOrdinario = JSON.parse(fs.readFileSync(catalogOrdinarioPath, 'utf8').replace(/^[^{[]*window\.[A-Za-z0-9_]+\s*=\s*/, '').replace(/;?\s*$/, ''));
const catTarget = catOrdinario.find(s => s.id === 'pecador-agora-e-tempo-quaresma-cnbb');
if (catTarget) {
  catTarget.cifra = pecadorCifraCompact;
  fs.writeFileSync(catalogOrdinarioPath, `window.SongsCatalogOrdinario = ${JSON.stringify(catOrdinario, null, 2)};\n`, 'utf8');
  console.log('catalog-ordinario-salmos.js: Pecador Agora e Tempo atualizado!');
}
