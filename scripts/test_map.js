const fs = require('fs');
const path = require('path');

const cacheDir = path.join(__dirname, 'cifraclub_cache');

// Direct mapping from song ID to cache file or canonical data
const songToCacheMap = {
  // Padre Zezinho
  'alo-meu-deus-pe-zezinho': 'padre-zezinho-alo-meu-deus.txt',
  'nova-geracao-pe-zezinho': 'padre-zezinho-nova-geracao.txt',
  'quando-jesus-passar-pe-zezinho': 'padre-zezinho-quando-jesus-passar.txt',
  'ilumina-ilumina-pe-zezinho': 'padre-zezinho-ilumina-ilumina.txt',
  'de-la-do-interior-pe-zezinho': 'padre-zezinho-de-la-do-interior.txt',
  'um-coracao-para-amar': 'padre-zezinho-um-coracao-para-amar.txt',
  'um-coracao-para-amar-ofertorio': 'padre-zezinho-um-coracao-para-amar.txt',
  'rosto-de-cristo-como-sao-belos-pe-zezinho': 'padre-zezinho-como-sao-belos.txt',
  'mae-do-ceu-morena-pe-zezinho': 'padre-zezinho-mae-do-ceu-morena.txt',
  'minha-vida-tem-sentido-pe-zezinho': 'padre-zezinho-minha-vida-tem-sentido.txt',
  'vocacao-se-ouvires-a-voz-do-vento-pe-zezinho': 'padre-zezinho-vocacao.txt',
  'cidadao-do-infinito-pe-zezinho': 'padre-zezinho-cidadao-do-infinito.txt',
  'estou-pensando-em-deus-pe-zezinho': 'padre-zezinho-estou-pensando-em-deus.txt',
  'palavra-de-salvacao-pe-zezinho': 'padre-zezinho-palavra-de-salvacao.txt',
  'gloria-a-deus-na-imensidao-pe-zezinho': 'padre-zezinho-gloria-a-deus-na-imensidao.txt',
  'oracao-da-noite-perdoai-nos-senhor-pe-zezinho': 'padre-zezinho-oracao-da-noite.txt',
  'a-escolhida-uma-entre-todas': 'catolicas-a-escolhida.txt',
  'perfeito-e-quem-te-criou-vida-reluz': 'padre-zezinho-perfeito-e-quem-te-criou.txt',
  'maria-de-nazare': 'maria-de-nazare-pe-zezinho.txt',
  'maria-de-nazare-pe-zezinho': 'maria-de-nazare-pe-zezinho.txt',
  'amar-como-jesus-amou-pe-zezinho': 'amar-como-jesus-amou-pe-zezinho.txt',
  'um-certo-galileu-pe-zezinho': 'um-certo-galileu-pe-zezinho.txt',
  'utopia-pe-zezinho': 'utopia-pe-zezinho.txt',
  'oracao-pela-familia-pe-zezinho': 'oracao-pela-familia-pe-zezinho.txt',
  'aguia-pequena-pe-zezinho': 'aguia-pequena-pe-zezinho.txt',
  'paz-inquieta-paz-de-cristo-pe-zezinho': 'paz-inquieta-paz-de-cristo-pe-zezinho.txt',
  'forca-de-paz-padre-zezinho': 'paz-inquieta-paz-de-cristo-pe-zezinho.txt',

  // Monsenhor Jonas Abib / Pe. Jonas
  'estas-entre-nos-tu-es-minha-vida': 'eliana-ribeiro-estas-entre-nos.txt',
  'vem-louvar-hoje-e-tempo-de-louvar-a-deus': 'padre-jonas-hoje-e-tempo-de-louvar.txt',
  'mons-jonas-abib-nao-da-mais-pra-voltar': 'padre-jonas-nao-da-mais-pra-voltar.txt',
  'mons-jonas-abib-vigia-esperando-a-aurora': 'padre-jonas-vigia-esperando-aurora.txt',
  'mons-jonas-abib-que-santidade-de-vida': 'padre-jonas-que-santidade-de-vida.txt',
  'mons-jonas-abib-sim-eu-quero': 'padre-jonas-sim-eu-quero.txt',
  'mons-jonas-abib-tao-perto-de-mim': 'padre-jonas-tao-perto-de-mim.txt',
  'mons-jonas-abib-preparai-o-caminho': 'padre-jonas-preparai-o-caminho.txt',
  'mons-jonas-abib-caminhada': 'padre-jonas-caminhada.txt',
  'mons-jonas-abib-inunda-meu-ser': 'padre-jonas-inunda-meu-ser.txt',
  'mons-jonas-abib-juras-de-amor': 'padre-jonas-juras-de-amor.txt',
  'mons-jonas-abib-cancao-do-espirito': 'padre-jonas-cancao-do-espirito.txt',
  'mons-jonas-abib-cantai-ao-senhor-cantico-novo': 'padre-jonas-cantai-ao-senhor-um-cantico-novo.txt',
  'mons-jonas-abib-eu-e-minha-casa': 'padre-jonas-eu-e-minha-casa.txt',
  'senhor-quem-entrara-no-santuario': 'padre-jonas-senhor-quem-entrara.txt',

  // Padre Marcelo Rossi
  'erguei-as-maos-pe-marcelo-rossi': 'padre-marcelo-rossi-erguei-as-maos.txt',
  'anjos-de-deus-pe-marcelo-rossi': 'padre-marcelo-rossi-anjos-de-deus.txt',
  'maria-da-minha-infancia-pe-marcelo-rossi': 'padre-marcelo-rossi-maria-da-minha-infancia.txt',
  'sonda-me-pe-marcelo-rossi': 'padre-marcelo-rossi-sonda-me.txt',
  'senhor-poe-teus-anjos-aqui-pe-marcelo-rossi': 'padre-marcelo-rossi-senhor-poe-teus-anjos-aqui.txt',
  'a-minha-vida-e-do-mestre-pe-marcelo-rossi': 'padre-marcelo-rossi-meu-mestre.txt',
  'deus-e-dez-pe-marcelo-rossi': 'padre-marcelo-rossi-deus-e-10.txt',
  'louvemos-ao-senhor-pe-marcelo-rossi': 'padre-marcelo-rossi-louvemos-ao-senhor.txt',
  'seja-engrandecido-pe-marcelo-rossi': 'asaph-borba-seja-engrandecido.txt',
  'faz-um-milagre-em-mim-pe-marcelo-rossi': 'regis-danese-faz-um-milagre-em-mim.txt',
  'noites-traicoeiras-pe-marcelo-rossi': 'noites-traicoeiras-pe-marcelo-rossi.txt',
  'basta-querer-pe-marcelo-rossi': 'basta-querer-pe-marcelo-rossi.txt',
  'forca-e-vitoria-pe-marcelo-rossi': 'forca-e-vitoria-pe-marcelo-rossi.txt',
  'derrama-o-teu-amor-aqui-pe-marcelo-rossi': 'derrama-o-teu-amor-aqui-pe-marcelo-rossi.txt',
  'cura-senhor-onde-doi-pe-marcelo-rossi': 'cura-senhor-onde-doi-pe-marcelo-rossi.txt',
  'tudo-e-do-pai-pe-marcelo-rossi': 'tudo-e-do-pai-pe-marcelo-rossi.txt',
  'eu-navegarei-pe-marcelo-rossi': 'eu-navegarei-pe-marcelo-rossi.txt',
  'te-agradeco-pe-marcelo-rossi': 'te-agradeco-pe-marcelo-rossi.txt',

  // Walmir Alencar / Vida Reluz / Adoração e Vida
  'deus-imenso-walmir-alencar-vida-reluz': 'vida-reluz-deus-imenso.txt',
  'como-es-lindo-vida-reluz': 'vida-reluz-como-es-lindo.txt',
  'diante-do-rei-vida-reluz': 'vida-reluz-diante-do-rei.txt',
  'celebra-a-vitoria-walmir-alencar-vida-reluz': 'vida-reluz-celebra-vitoria.txt',
  'obra-nova-cristo-quer-fazer-vida-reluz': 'vida-reluz-obra-nova.txt',
  'em-teu-altar-adoracao-e-vida': 'walmir-alencar-em-teu-altar.txt',
  'abraco-de-pai-walmir-alencar': 'walmir-alencar-abraco-de-pai.txt',
  'o-ceu-se-abre-ministerio-adoracao-e-vida': 'o-ceu-se-abre-ministerio-adoracao-e-vida.txt',
  'hoje-livre-sou-adoracao-e-vida': 'hoje-livre-sou-adoracao-e-vida.txt',

  // Canção Nova / Dunga / Eliana Ribeiro
  'barco-a-vela-eliana-ribeiro': 'eliana-ribeiro-barco-vela.txt',
  'chuva-de-graca-eliana-ribeiro': 'chuva-de-graca-eliana-ribeiro.txt',
  'dunga-restauracao': 'dunga-restauracao.txt',
  'restaura-nossa-casa-dunga-cancao-nova': 'restaura-nossa-casa-dunga-cancao-nova.txt',
  'dunga-como-nao-falar-do-seu-amor': 'dunga-como-nao-falar-do-seu-amor.txt',
  'dunga-quero-e-preciso': 'dunga-quero-e-preciso.txt',
  'dunga-consagrado': 'dunga-consagrado.txt',
  'eugenio-jorge-so-por-ti-jesus': 'eugenio-jorge-so-por-ti-jesus.txt',
  'so-por-ti-jesus-eugenio-jorge': 'eugenio-jorge-so-por-ti-jesus.txt',
  'a-forca-do-amor-marcio-todeschini': 'marcio-todeschini-a-forca-do-amor.txt',

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
  'celina-borges-nas-asas-do-senhor': 'celina-borges-nas-asas-do-senhor.txt'
};

let checked = 0;
let existing = 0;
for (const [id, cf] of Object.entries(songToCacheMap)) {
  checked++;
  const fullPath = path.join(cacheDir, cf);
  if (fs.existsSync(fullPath)) {
    existing++;
  } else {
    console.log(`Missing file for [${id}]: ${cf}`);
  }
}

console.log(`Checked ${checked} mappings: ${existing} existing on disk.`);
