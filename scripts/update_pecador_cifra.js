const fs = require('fs');

const pecadorFullCifra = `[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm        Gm         A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb           Gm         A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador! (bis)

[Primeira Parte]
   Dm          Gm          A7          Dm
1. Neste tempo sacrossanto, o pecado faz horror;
   Bb           Gm         A7          Dm
Contemplando a Cruz de Cristo, convertei-vos ao Senhor!

[Refrão]
   Dm        Gm         A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb           Gm         A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!

[Segunda Parte]
   Dm          Gm         A7          Dm
2. Vinde, vinde, pecadores, vinde todos pelejar;
   Bb           Gm          A7          Dm
Contra as forças do inimigo, nossa alma libertar!

[Refrão]
   Dm        Gm         A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb           Gm         A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!

[Terceira Parte]
   Dm          Gm         A7          Dm
3. Lembra, ó homem, que és pó e ao pó hás de voltar;
   Bb           Gm          A7          Dm
Aproveita o tempo breve que te resta pra chorar!

[Refrão]
   Dm        Gm         A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb           Gm         A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!

[Quarta Parte]
   Dm           Gm         A7          Dm
4. Pelas dores cruciantes que Jesus por nós sofreu;
   Bb           Gm          A7          Dm
Pelo sangue derramado que na cruz nos redimiu!

[Refrão]
   Dm        Gm         A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb           Gm         A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!

[Quinta Parte]
   Dm          Gm         A7          Dm
5. O pecado nos separa do convívio do Senhor;
   Bb           Gm          A7          Dm
Pela graça redimidos, renovemos nosso amor!

[Refrão]
   Dm        Gm         A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb           Gm         A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!

[Sexta Parte]
   Dm          Gm          A7          Dm
6. Rasgai vossos corações, e não vossas vestes;
   Bb           Gm          A7          Dm
Voltai para o vosso Deus, compassivo e clemente!

[Refrão]
   Dm        Gm         A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb           Gm         A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!

[Sétima Parte]
   Dm          Gm          A7          Dm
7. Ó Jesus, compadecido, perdoai os nossos erros;
   Bb           Gm         A7          Dm
E nos concedei a graça de viver nos Vossos passos!

[Refrão Final]
   Dm        Gm         A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb           Gm         A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!`;

// 1. Atualizar data/songs.json
const songsPath = 'santa-cifra/data/songs.json';
const songs = JSON.parse(fs.readFileSync(songsPath, 'utf8'));
const pecadorSong = songs.find(s => s.id === 'pecador-agora-e-tempo-quaresma-cnbb');
if (pecadorSong) {
  pecadorSong.cifra = pecadorFullCifra;
  pecadorSong.chords = ['Dm', 'Gm', 'A7', 'Bb'];
  pecadorSong.chordCount = 4;
}
fs.writeFileSync(songsPath, JSON.stringify(songs, null, 2), 'utf8');
console.log('Updated songs.json with complete 7 verses of Pecador, Agora É Tempo');

// 2. Atualizar catalog-ordinario-salmos.js
const catPath = 'santa-cifra/js/catalog/catalog-ordinario-salmos.js';
let catContent = fs.readFileSync(catPath, 'utf8');
const idStr = '"id": "pecador-agora-e-tempo-quaresma-cnbb"';
const idx = catContent.indexOf(idStr);
if (idx !== -1) {
  const cifraKey = '"cifra":';
  const cifraIdx = catContent.indexOf(cifraKey, idx);
  if (cifraIdx !== -1) {
    // encontrar o final da string da cifra
    const quoteStart = catContent.indexOf('"', cifraIdx + cifraKey.length);
    // ler a string json escapada
    let endQuote = quoteStart + 1;
    while (endQuote < catContent.length) {
      if (catContent[endQuote] === '"' && catContent[endQuote - 1] !== '\\\\') {
        break;
      }
      endQuote++;
    }
    const escapedNewCifra = JSON.stringify(pecadorFullCifra);
    catContent = catContent.slice(0, quoteStart) + escapedNewCifra + catContent.slice(endQuote + 1);
    fs.writeFileSync(catPath, catContent, 'utf8');
    console.log('Updated catalog-ordinario-salmos.js with complete 7 verses of Pecador, Agora É Tempo');
  }
}
