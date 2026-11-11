const fs = require('fs');
const path = require('path');
const vm = require('vm');
const { cleanCifraText, countUniqueChords } = require('./cifra_cleaner');

const targetFile = path.join(__dirname, '../santa-cifra/js/catalog/catalog-entrada-final.js');
const cacheDir = path.join(__dirname, 'cifraclub_cache');

const content = fs.readFileSync(targetFile, 'utf8');
const sb = { window: {} };
vm.createContext(sb);
vm.runInContext(content, sb);
const songs = sb.window.SongsCatalogEntradaFinal;

console.log(`Loaded ${songs.length} songs from Entrada/Final.`);

const updates = {};

function loadCache(file) {
  const p = path.join(cacheDir, file);
  if (!fs.existsSync(p)) {
    console.warn(`Cache file not found: ${file}`);
    return null;
  }
  return cleanCifraText(fs.readFileSync(p, 'utf8'));
}

// 1. Nova Geracao (Pe. Zezinho)
updates['nova-geracao-pe-zezinho'] = loadCache('padre-zezinho-nova-geracao.txt');

// 2. Quando Jesus Passar (Pe. Zezinho)
updates['quando-jesus-passar-pe-zezinho'] = loadCache('padre-zezinho-quando-jesus-passar.txt');

// 3. Ilumina, Ilumina (Pe. Zezinho)
updates['ilumina-ilumina-pe-zezinho'] = loadCache('padre-zezinho-ilumina-ilumina.txt');

// 4. De Lá do Interior (Pe. Zezinho)
updates['de-la-do-interior-pe-zezinho'] = loadCache('padre-zezinho-de-la-do-interior.txt');

// 5. Como Sao Belos (Pe. Zezinho)
updates['rosto-de-cristo-como-sao-belos-pe-zezinho'] = loadCache('padre-zezinho-como-sao-belos.txt');

// 6. Mae do Ceu Morena (Pe. Zezinho)
updates['mae-do-ceu-morena-pe-zezinho'] = loadCache('padre-zezinho-mae-do-ceu-morena.txt');

// 7. Cidadao do Infinito (Pe. Zezinho)
updates['cidadao-do-infinito-pe-zezinho'] = loadCache('padre-zezinho-cidadao-do-infinito.txt');

// 8. Estou Pensando em Deus (Pe. Zezinho)
updates['estou-pensando-em-deus-pe-zezinho'] = loadCache('padre-zezinho-estou-pensando-em-deus.txt');

// 9. A Escolhida (Uma Entre Todas)
updates['a-escolhida-uma-entre-todas'] = loadCache('catolicas-a-escolhida.txt');

// 10. Maria de Nazare
updates['maria-de-nazare'] = loadCache('maria-de-nazare-pe-zezinho.txt');

// 11. Erguei as Maos (Padre Marcelo Rossi)
updates['erguei-as-maos-pe-marcelo-rossi'] = loadCache('padre-marcelo-rossi-erguei-as-maos.txt');

// 12. Anjos de Deus (Padre Marcelo Rossi)
updates['anjos-de-deus-pe-marcelo-rossi'] = loadCache('padre-marcelo-rossi-anjos-de-deus.txt');

// 13. Senhor Poe Teus Anjos Aqui (Padre Marcelo Rossi)
updates['senhor-poe-teus-anjos-aqui-pe-marcelo-rossi'] = loadCache('padre-marcelo-rossi-senhor-poe-teus-anjos-aqui.txt');

// 14. Maria da Minha Infancia (Padre Marcelo Rossi)
updates['maria-da-minha-infancia-pe-marcelo-rossi'] = loadCache('padre-marcelo-rossi-maria-da-minha-infancia.txt');

// 15. Deus e 10 (Padre Marcelo Rossi)
updates['deus-e-dez-pe-marcelo-rossi'] = loadCache('padre-marcelo-rossi-deus-e-10.txt');

// 16. Louvemos ao Senhor (Padre Marcelo Rossi / Adhemar de Campos)
updates['louvemos-ao-senhor-pe-marcelo-rossi'] = loadCache('padre-marcelo-rossi-louvemos-ao-senhor.txt');

// 17. Perfeito e Quem Te Criou (Walmir Alencar / Pe. Zezinho)
updates['perfeito-e-quem-te-criou-vida-reluz'] = loadCache('padre-zezinho-perfeito-e-quem-te-criou.txt');

// 18. Celebra a Vitoria (Walmir Alencar / Vida Reluz)
updates['celebra-a-vitoria-walmir-alencar-vida-reluz'] = loadCache('vida-reluz-celebra-vitoria.txt');

// 19. Obra Nova (Walmir Alencar / Vida Reluz)
updates['obra-nova-cristo-quer-fazer-vida-reluz'] = loadCache('vida-reluz-obra-nova.txt');

// 20. Podes Reinar (Eliana Ribeiro / Koinonya)
updates['podes-reinar-eliana-ribeiro-agnus-dei'] = loadCache('eliana-ribeiro-podes-reinar.txt');

// 21. Cristaos Vinde Todos (Adeste Fideles)
const adeste = loadCache('catolicas-cristaos-vinde-todos.txt');
updates['cristaos-vinde-todos-natal'] = adeste;
updates['cristaos-vinde-todos-adeste-fideles-natal'] = adeste;

// 22. Com Minha Mae Estarei
updates['com-minha-mae-estarei-tradicional'] = `[Intro] G  C  G  D7  G

[Refrão]
G
Com minha Mãe estarei,
   C        G
Na santa glória um dia!
   Em       Am
Ao lado de Maria,
   D7       G
No céu triunfarei!
G              D7
No céu, no céu,
               G
Com minha Mãe estarei!
G              D7
No céu, no céu,
               G
Com minha Mãe estarei!

[Estrofe 1]
   G
1. Com minha Mãe estarei,
   C             G
Aos anjos me ajuntando,
   Em            Am
Do Onipotente ao mando,
   D7            G
Hosanas sempre darei!

[Refrão]
G              D7
No céu, no céu,
               G
Com minha Mãe estarei!
G              D7
No céu, no céu,
               G
Com minha Mãe estarei!

[Estrofe 2]
   G
2. Com minha Mãe estarei,
   C             G
E então contemplarei,
   Em            Am
A face do meu Rei,
   D7            G
A quem na terra amei!

[Refrão]
G              D7
No céu, no céu,
               G
Com minha Mãe estarei!
G              D7
No céu, no céu,
               G
Com minha Mãe estarei!

[Estrofe 3]
   G
3. Com minha Mãe estarei,
   C             G
Palmas de paz nas mãos,
   Em            Am
E entre os meus irmãos,
   D7            G
Vitórias cantarei!

[Refrão Final]
G              D7
No céu, no céu,
               G
Com minha Mãe estarei!
G              D7
No céu, no céu,
               G
Com minha Mãe estarei!`;

// 23. O Senhor Ressurgiu, Aleluia
updates['o-senhor-ressurgiu-aleluia'] = `[Intro] F  C  G7  C

[Refrão]
C              F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am             Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!
C              F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am             Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!

[Estrofe 1]
C                          F
1. Celebremos a festa da vida,
Dm                         G7
Cristo venceu o pecado e a morte!
C                          F
Ressuscitou glorioso do túmulo,
Dm                         G7            C
Para nos dar a divina esperança e a sorte!

[Refrão]
C              F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am             Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!

[Estrofe 2]
C                          F
2. A pedra da morte foi revolvida,
Dm                         G7
A aurora pascal sobre nós já raiou!
C                          F
Vede o lençol e o sudário dobrados,
Dm                         G7            C
Cristo Jesus sobre a morte triunfou!

[Refrão]
C              F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am             Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!

[Estrofe 3]
C                          F
3. Não choreis, o Senhor está vivo,
Dm                         G7
Ide depressa contar aos irmãos!
C                          F
Ele vai para a Galiléia na frente,
Dm                         G7            C
Aparecerá aos discípulos cristãos!

[Refrão]
C              F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am             Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!

[Estrofe 4]
C                          F
4. Este é o dia que o Senhor preparou,
Dm                         G7
Exultemos e nele cantemos louvor!
C                          F
Glória a Cristo, autor de nossa vida,
Dm                         G7            C
Nosso Pastor, Redentor e Senhor!

[Refrão Final]
C              F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am             Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!`;

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
 * Catálogo de Cifras - Cantos de Entrada, Envio e Final
 * Santa Cifra - Plataforma de Cifras Litúrgicas Católicas
 * 
 * Contém cantos rituais para procissão de entrada e rito de envio/final
 * organizados por tempos litúrgicos e solenidades do calendário romano.
 */

window.SongsCatalogEntradaFinal = ${JSON.stringify(songs, null, 2)};
`;

// Validate syntax before writing
const verifySb = { window: {} };
vm.createContext(verifySb);
vm.runInContext(newContent, verifySb);

if (verifySb.window.SongsCatalogEntradaFinal.length === songs.length) {
  fs.writeFileSync(targetFile, newContent, 'utf8');
  console.log(`SUCCESS: Saved ${targetFile} with ${appliedCount} songs upgraded.`);
} else {
  console.error('ERROR: Verification failed!');
}
