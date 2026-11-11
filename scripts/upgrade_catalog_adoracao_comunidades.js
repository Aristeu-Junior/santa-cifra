const fs = require('fs');
const path = require('path');
const vm = require('vm');
const { cleanCifraText, countUniqueChords } = require('./cifra_cleaner');

const targetFile = path.join(__dirname, '../santa-cifra/js/catalog/catalog-adoracao-comunidades.js');
const cacheDir = path.join(__dirname, 'cifraclub_cache');

const content = fs.readFileSync(targetFile, 'utf8');
const sb = { window: {} };
vm.createContext(sb);
vm.runInContext(content, sb);
const songs = sb.window.SongsCatalogAdoracaoComunidades;

console.log(`Loaded ${songs.length} songs from Adoracao/Comunidades.`);

function loadCache(file) {
  const p = path.join(cacheDir, file);
  if (!fs.existsSync(p)) {
    console.warn(`Cache file not found: ${file}`);
    return null;
  }
  return cleanCifraText(fs.readFileSync(p, 'utf8'));
}

const map = {
  // Monsenhor Jonas Abib / Pe. Jonas
  'estas-entre-nos-tu-es-minha-vida': 'eliana-ribeiro-estas-entre-nos.txt',
  'vem-louvar-hoje-e-tempo-de-louvar-a-deus': 'padre-jonas-hoje-e-tempo-de-louvar.txt',
  'mons-jonas-abib-que-santidade-de-vida': 'padre-jonas-que-santidade-de-vida.txt',
  'mons-jonas-abib-cancao-do-espirito': 'padre-jonas-cancao-do-espirito.txt',
  'mons-jonas-abib-cantai-ao-senhor-cantico-novo': 'padre-jonas-cantai-ao-senhor-um-cantico-novo.txt',
  'mons-jonas-abib-eu-e-minha-casa': 'padre-jonas-eu-e-minha-casa.txt',
  'mons-jonas-abib-vigia-esperando-a-aurora': 'padre-jonas-vigia-esperando-aurora.txt',
  'mons-jonas-abib-inunda-meu-ser': 'padre-jonas-inunda-meu-ser.txt',
  'mons-jonas-abib-juras-de-amor': 'padre-jonas-juras-de-amor.txt',
  'mons-jonas-abib-nao-da-mais-pra-voltar': 'padre-jonas-nao-da-mais-pra-voltar.txt',
  'senhor-quem-entrara-no-santuario': 'padre-jonas-senhor-quem-entrara.txt',
  'mons-jonas-abib-sim-eu-quero': 'padre-jonas-sim-eu-quero.txt',
  'mons-jonas-abib-tao-perto-de-mim': 'padre-jonas-tao-perto-de-mim.txt',
  'mons-jonas-abib-preparai-o-caminho': 'padre-jonas-preparai-o-caminho.txt',
  'mons-jonas-abib-caminhada': 'padre-jonas-caminhada.txt',

  // Padre Zezinho
  'oracao-pela-familia-pe-zezinho': 'padre-zezinho-oracao-pela-familia.txt',
  'maria-de-nazare-pe-zezinho': 'maria-de-nazare-pe-zezinho.txt',
  'utopia-pe-zezinho': 'padre-zezinho-utopia.txt',
  'amar-como-jesus-amou-pe-zezinho': 'padre-zezinho-amar-como-jesus-amou.txt',
  'um-certo-galileu-pe-zezinho': 'padre-zezinho-um-certo-galileu.txt',
  'paz-inquieta-paz-de-cristo-pe-zezinho': 'padre-zezinho-paz-inquieta.txt',
  'aguia-pequena-pe-zezinho': 'padre-zezinho-aguia-pequena.txt',

  // Padre Marcelo Rossi
  'faz-um-milagre-em-mim-pe-marcelo-rossi': 'regis-danese-faz-um-milagre-em-mim.txt',
  'noites-traicoeiras-pe-marcelo-rossi': 'noites-traicoeiras-pe-marcelo-rossi.txt',
  'basta-querer-pe-marcelo-rossi': 'basta-querer-pe-marcelo-rossi.txt',
  'forca-e-vitoria-pe-marcelo-rossi': 'forca-e-vitoria-pe-marcelo-rossi.txt',
  'derrama-o-teu-amor-aqui-pe-marcelo-rossi': 'derrama-o-teu-amor-aqui-pe-marcelo-rossi.txt',
  'cura-senhor-onde-doi-pe-marcelo-rossi': 'cura-senhor-onde-doi-pe-marcelo-rossi.txt',
  'tudo-e-do-pai-pe-marcelo-rossi': 'tudo-e-do-pai-pe-marcelo-rossi.txt',
  'eu-navegarei-pe-marcelo-rossi': 'eu-navegarei-pe-marcelo-rossi.txt',
  'te-agradeco-pe-marcelo-rossi': 'te-agradeco-pe-marcelo-rossi.txt',

  // Vida Reluz / Walmir Alencar / Adoração e Vida
  'deus-imenso-walmir-alencar-vida-reluz': 'vida-reluz-deus-imenso.txt',
  'como-es-lindo-vida-reluz': 'vida-reluz-como-es-lindo.txt',
  'diante-do-rei-vida-reluz': 'vida-reluz-diante-do-rei.txt',
  'o-ceu-se-abre-ministerio-adoracao-e-vida': 'o-ceu-se-abre-ministerio-adoracao-e-vida.txt',
  'hoje-livre-sou-adoracao-e-vida': 'hoje-livre-sou-adoracao-e-vida.txt',

  // Dunga / Eliana Ribeiro / Canção Nova
  'chuva-de-graca-eliana-ribeiro': 'chuva-de-graca-eliana-ribeiro.txt',
  'restaura-nossa-casa-dunga-cancao-nova': 'restaura-nossa-casa-dunga-cancao-nova.txt',
  'dunga-restauracao': 'dunga-restauracao.txt',
  'dunga-como-nao-falar-do-seu-amor': 'dunga-como-nao-falar-do-seu-amor.txt',
  'dunga-quero-e-preciso': 'dunga-quero-e-preciso.txt',
  'dunga-consagrado': 'dunga-consagrado.txt',

  // Kelly Patrícia
  'irma-kelly-patricia-passarinho': 'kelly-patricia-passarinho.txt',
  'irma-kelly-patricia-via-sacra': 'kelly-patricia-via-sacra.txt',
  'irma-kelly-patricia-prisioneiro-do-amor': 'kelly-patricia-prisioneiro-do-amor.txt',
  'irma-kelly-patricia-viver-de-amor': 'kelly-patricia-viver-de-amor.txt',

  // Davidson Silva
  'davidson-silva-cada-dia': 'davidson-silva-cada-dia.txt',
  'davidson-silva-sinal-do-meu-amor': 'davidson-silva-sinal-do-meu-amor.txt',
  'davidson-silva-nada-nos-separara': 'davidson-silva-nada-nos-separara.txt',
  'davidson-silva-tome': 'davidson-silva-tome.txt',

  // Diego Fernandes
  'diego-fernandes-danca-de-avivamento': 'diego-fernandes-danca-de-avivamento.txt',
  'diego-fernandes-marcado-pelo-fogo': 'diego-fernandes-marcado-pelo-fogo.txt',
  'diego-fernandes-no-colo-de-maria': 'diego-fernandes-no-colo-de-maria.txt',
  'diego-fernandes-templo-vivo': 'diego-fernandes-templo-vivo.txt',

  // Adriana Arydes / Celina Borges
  'adriana-arydes-chave-do-coracao': 'adriana-arydes-chave-do-coracao.txt',
  'adriana-arydes-nova-manha': 'adriana-arydes-nova-manha.txt',
  'adriana-arydes-guardioes': 'adriana-arydes-guardioes.txt',
  'adriana-arydes-abraco-de-pai': 'adriana-arydes-abraco-de-pai.txt',
  'adriana-arydes-humano-amor-de-deus': 'adriana-arydes-humano-amor-de-deus.txt',
  'celina-borges-diamante': 'celina-borges-diamante.txt',
  'celina-borges-tudo-posso': 'tudo-posso-celina-borges.txt',
  'celina-borges-nas-asas-do-senhor': 'celina-borges-nas-asas-do-senhor.txt',

  // Outros
  'sacramento-de-amor-toca-de-assis': 'toca-de-assis-sacramento-de-amor.txt',
  'estrangeiro-aqui-comunidade-shalom': 'missionario-shalom-estrangeiro-aqui.txt',
  'mundo-novo-eros-biondini': 'eros-biondini-mundo-novo.txt'
};

let appliedCount = 0;
songs.forEach(s => {
  if (map[s.id]) {
    const text = loadCache(map[s.id]);
    if (text) {
      s.cifra = text;
      s.chordCount = countUniqueChords(s.cifra);
      appliedCount++;
      console.log(`Updated [${s.id}] -> ${s.cifra.split('\n').length} lines, ${s.chordCount} chords.`);
    }
  }
});

const newContent = `/**
 * Catálogo de Cifras - Adoração, Grupos de Oração e Comunidades
 * Santa Cifra - Plataforma de Cifras Litúrgicas Católicas
 * 
 * Contém cantos das comunidades carismáticas e novas comunidades:
 * Shalom, Canção Nova, Colo de Deus, Fraternidade São João Paulo II,
 * Toca de Assis, Recado, e grandes compositores devocionais.
 */

window.SongsCatalogAdoracaoComunidades = ${JSON.stringify(songs, null, 2)};
`;

// Validate syntax before writing
const verifySb = { window: {} };
vm.createContext(verifySb);
vm.runInContext(newContent, verifySb);

if (verifySb.window.SongsCatalogAdoracaoComunidades.length === songs.length) {
  fs.writeFileSync(targetFile, newContent, 'utf8');
  console.log(`SUCCESS: Saved ${targetFile} with ${appliedCount} songs upgraded.`);
} else {
  console.error('ERROR: Verification failed!');
}
