const fs = require('fs');
const path = require('path');
const { scrapeSong } = require('./cifraclub_scraper');

const cacheDir = path.join(__dirname, 'cifraclub_cache');
if (!fs.existsSync(cacheDir)) {
  fs.mkdirSync(cacheDir, { recursive: true });
}

// Map of canonical slug to local cache filename
const songUrls = [
  // Padre Zezinho
  { file: 'padre-zezinho-alo-meu-deus.txt', url: 'padre-zezinho/alo-meu-deus/' },
  { file: 'padre-zezinho-nova-geracao.txt', url: 'padre-zezinho/nova-geracao/' },
  { file: 'padre-zezinho-quando-jesus-passar.txt', url: 'padre-zezinho/quando-jesus-passar/' },
  { file: 'padre-zezinho-ilumina-ilumina.txt', url: 'padre-zezinho/ilumina-ilumina/' },
  { file: 'padre-zezinho-de-la-do-interior.txt', url: 'padre-zezinho/de-la-do-interior/' },
  { file: 'padre-zezinho-um-coracao-para-amar.txt', url: 'padre-zezinho/um-coracao-para-amar/' },
  { file: 'padre-zezinho-como-sao-belos.txt', url: 'padre-zezinho/como-sao-belos/' },
  { file: 'padre-zezinho-mae-do-ceu-morena.txt', url: 'padre-zezinho/mae-do-ceu-morena/' },
  { file: 'padre-zezinho-minha-vida-tem-sentido.txt', url: 'padre-zezinho/minha-vida-tem-sentido/' },
  { file: 'padre-zezinho-vocacao.txt', url: 'padre-zezinho/vocacao/' },
  { file: 'padre-zezinho-o-povo-de-deus.txt', url: 'padre-zezinho/o-povo-de-deus/' },
  { file: 'padre-zezinho-daqui-do-meu-lugar.txt', url: 'padre-zezinho/daqui-do-meu-lugar/' },
  { file: 'padre-zezinho-a-barca.txt', url: 'padre-zezinho/a-barca/' },
  { file: 'padre-zezinho-es-agua-viva.txt', url: 'padre-zezinho/es-agua-viva/' },
  { file: 'padre-zezinho-perfeito-e-quem-te-criou.txt', url: 'padre-zezinho/perfeito-e-quem-te-criou/' },
  { file: 'catolicas-a-escolhida.txt', url: 'catolicas/a-escolhida/' },
  { file: 'padre-zezinho-maria-de-nazare.txt', url: 'padre-zezinho/maria-de-nazare/' },
  { file: 'padre-zezinho-amar-como-jesus-amou.txt', url: 'padre-zezinho/amar-como-jesus-amou/' },
  { file: 'padre-zezinho-um-certo-galileu.txt', url: 'padre-zezinho/um-certo-galileu/' },
  { file: 'padre-zezinho-utopia.txt', url: 'padre-zezinho/utopia/' },
  { file: 'padre-zezinho-oracao-pela-familia.txt', url: 'padre-zezinho/oracao-pela-familia/' },
  { file: 'padre-zezinho-cidadao-do-infinito.txt', url: 'padre-zezinho/cidadao-do-infinito/' },
  { file: 'padre-zezinho-estou-pensando-em-deus.txt', url: 'padre-zezinho/estou-pensando-em-deus/' },
  { file: 'padre-zezinho-aguia-pequena.txt', url: 'padre-zezinho/aguia-pequena/' },
  { file: 'padre-zezinho-paz-inquieta.txt', url: 'padre-zezinho/paz-inquieta/' },

  // Monsenhor Jonas Abib / Pe. Jonas
  { file: 'padre-jonas-nao-da-mais-pra-voltar.txt', url: 'padre-jonas/nao-da-mais-pra-voltar/' },
  { file: 'padre-jonas-hoje-e-tempo-de-louvar.txt', url: 'padre-jonas/hoje--tempo-de-louvar-a-deus/' },
  { file: 'padre-jonas-que-santidade-de-vida.txt', url: 'padre-jonas/que-santidade-de-vida/' },
  { file: 'padre-jonas-vigia-esperando-aurora.txt', url: 'padre-jonas/vigia-esperando-aurora/' },
  { file: 'padre-jonas-senhor-quem-entrara.txt', url: 'padre-jonas/senhor-quem-entrara/' },
  { file: 'padre-jonas-sim-eu-quero.txt', url: 'padre-jonas/sim-eu-quero/' },
  { file: 'padre-jonas-tao-perto-de-mim.txt', url: 'padre-jonas/tao-perto-de-mim/' },
  { file: 'padre-jonas-preparai-o-caminho.txt', url: 'padre-jonas/preparai-o-caminho/' },
  { file: 'padre-jonas-caminhada.txt', url: 'padre-jonas/caminhada/' },
  { file: 'padre-jonas-inunda-meu-ser.txt', url: 'padre-jonas/inunda-meu-ser/' },
  { file: 'padre-jonas-juras-de-amor.txt', url: 'padre-jonas/juras-de-amor/' },
  { file: 'padre-jonas-cancao-do-espirito.txt', url: 'padre-jonas/cancao-do-espirito/' },
  { file: 'padre-jonas-cantai-ao-senhor-um-cantico-novo.txt', url: 'padre-jonas/cantai-ao-senhor-um-cantico-novo/' },
  { file: 'padre-jonas-eu-e-minha-casa.txt', url: 'padre-jonas/eu-e-minha-casa-serviremos-ao-senhor/' },
  { file: 'eliana-ribeiro-estas-entre-nos.txt', url: 'eliana-ribeiro/estas-entre-nos/' },

  // Padre Marcelo Rossi
  { file: 'padre-marcelo-rossi-erguei-as-maos.txt', url: 'padre-marcelo-rossi/erguei-as-maos/' },
  { file: 'padre-marcelo-rossi-anjos-de-deus.txt', url: 'padre-marcelo-rossi/anjos-de-deus/' },
  { file: 'padre-marcelo-rossi-maria-da-minha-infancia.txt', url: 'padre-marcelo-rossi/maria-da-minha-infancia/' },
  { file: 'padre-marcelo-rossi-sonda-me.txt', url: 'padre-marcelo-rossi/sonda-me/' },
  { file: 'padre-marcelo-rossi-senhor-poe-teus-anjos-aqui.txt', url: 'padre-marcelo-rossi/senhor-poe-teus-anjos-aqui/' },
  { file: 'padre-marcelo-rossi-meu-mestre.txt', url: 'padre-marcelo-rossi/meu-mestre/' },
  { file: 'padre-marcelo-rossi-deus-e-10.txt', url: 'padre-marcelo-rossi/deus-e-10/' },
  { file: 'padre-marcelo-rossi-louvemos-ao-senhor.txt', url: 'adhemar-de-campos/louvemos-ao-senhor/' },
  { file: 'asaph-borba-seja-engrandecido.txt', url: 'asaph-borba/seja-engrandecido/' },
  { file: 'regis-danese-faz-um-milagre-em-mim.txt', url: 'regis-danese/faz-um-milagre-em-mim/' },

  // Walmir Alencar / Vida Reluz / Adoração e Vida
  { file: 'vida-reluz-deus-imenso.txt', url: 'vida-reluz/deus-imenso/' },
  { file: 'vida-reluz-como-es-lindo.txt', url: 'vida-reluz/como-es-lindo/' },
  { file: 'vida-reluz-diante-do-rei.txt', url: 'vida-reluz/diante-do-rei/' },
  { file: 'vida-reluz-celebra-vitoria.txt', url: 'vida-reluz/celebra-vitoria/' },
  { file: 'vida-reluz-obra-nova.txt', url: 'vida-reluz/obra-nova/' },
  { file: 'walmir-alencar-em-teu-altar.txt', url: 'walmir-alencar/em-teu-altar/' },
  { file: 'walmir-alencar-abraco-de-pai.txt', url: 'walmir-alencar/abraco-de-pai/' },
  { file: 'adoracao-e-vida-o-ceu-se-abre.txt', url: 'ministerio-adoracao-e-vida/o-ceu-se-abre/' },
  { file: 'adoracao-e-vida-hoje-livre-sou.txt', url: 'ministerio-adoracao-e-vida/hoje-livre-sou/' },

  // Canção Nova / Dunga / Eliana Ribeiro / Outros
  { file: 'eliana-ribeiro-barco-vela.txt', url: 'eliana-ribeiro/barco-vela/' },
  { file: 'dunga-restauracao.txt', url: 'dunga/restauracao/' },
  { file: 'dunga-como-nao-falar-do-seu-amor.txt', url: 'dunga/como-nao-falar-do-seu-amor/' },
  { file: 'dunga-quero-e-preciso.txt', url: 'dunga/quero-e-preciso/' },
  { file: 'eugenio-jorge-so-por-ti-jesus.txt', url: 'eugenio-jorge/so-por-ti-jesus/' },
  { file: 'marcio-todeschini-a-forca-do-amor.txt', url: 'marcio-todeschini/a-forca-do-amor/' },

  // Kelly Patrícia
  { file: 'kelly-patricia-passarinho.txt', url: 'kelly-patricia/passarinho/' },
  { file: 'kelly-patricia-via-sacra.txt', url: 'kelly-patricia/via-sacra/' },
  { file: 'kelly-patricia-prisioneiro-do-amor.txt', url: 'kelly-patricia/prisioneiro-do-amor/' },
  { file: 'kelly-patricia-viver-de-amor.txt', url: 'kelly-patricia/viver-de-amor/' },

  // Davidson Silva
  { file: 'davidson-silva-cada-dia.txt', url: 'davidson-silva/cada-dia/' },
  { file: 'davidson-silva-sinal-do-meu-amor.txt', url: 'davidson-silva/sinal-do-meu-amor/' },
  { file: 'davidson-silva-nada-nos-separara.txt', url: 'davidson-silva/nada-nos-separara/' },
  { file: 'davidson-silva-tome.txt', url: 'davidson-silva/tome/' },

  // Diego Fernandes
  { file: 'diego-fernandes-danca-de-avivamento.txt', url: 'diego-fernandes/danca-de-avivamento/' },
  { file: 'diego-fernandes-marcado-pelo-fogo.txt', url: 'diego-fernandes/marcado-pelo-fogo/' },
  { file: 'diego-fernandes-no-colo-de-maria.txt', url: 'diego-fernandes/no-colo-de-maria/' },
  { file: 'diego-fernandes-templo-vivo.txt', url: 'diego-fernandes/templo-vivo/' }
];

async function run() {
  console.log(`Starting fetch of ${songUrls.length} canonical songs...`);
  let success = 0;
  let skipped = 0;
  let failed = 0;

  for (const item of songUrls) {
    const dest = path.join(cacheDir, item.file);
    if (fs.existsSync(dest) && fs.statSync(dest).size > 200) {
      skipped++;
      continue;
    }
    const text = await scrapeSong(item.url);
    if (text && text.length > 100) {
      fs.writeFileSync(dest, text, 'utf8');
      console.log(`SAVED [${item.file}] (${text.length} chars)`);
      success++;
    } else {
      console.log(`FAILED [${item.file}] for url: ${item.url}`);
      failed++;
    }
  }
  console.log(`Done! Success: ${success}, Skipped: ${skipped}, Failed: ${failed}`);
}

run();
