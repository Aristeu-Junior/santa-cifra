const { scrapeSong } = require('./cifraclub_scraper');

const candidates = [
  // Padre Marcelo Rossi / Outros
  'adhemar-de-campos/louvemos-ao-senhor/',
  'catolicas/o-vira-de-jesus/',
  'cantores-de-deus/o-vira-de-jesus/',
  'catolicas/batiza-me-senhor/',
  'ricardo-sa/a-cruz-sagrada/',
  // Dunga
  'dunga/restauracao/',
  'dunga/consagrado-para-amar/',
  'dunga/vida-nova/',
  'dunga/como-nao-falar-do-seu-amor/',
  'dunga/quero-e-preciso/',
  'dunga/phn/',
  // Irma Kelly Patricia
  'irma-kelly-patricia/passarinho/',
  'irma-kelly-patricia/via-sacra/',
  'irma-kelly-patricia/prisioneiro-do-amor/',
  'irma-kelly-patricia/morada/',
  'irma-kelly-patricia/viver-de-amor/',
  'irma-kelly-patricia/buscai-as-coisas-do-alto/',
  'irma-kelly-patricia/soberano-rei/',
  // Celina Borges
  'celina-borges/diamante/',
  'celina-borges/de-volta-a-fe/',
  // Adriana Arydes
  'adriana-arydes/a-chave-do-coracao/',
  'adriana-arydes/nova-manha/',
  'adriana-arydes/guardioes/',
  'adriana-arydes/coracao-sagrado/',
  // Tony Allysson
  'tony-allysson/poderoso-deus/',
  'tony-allysson/marca-da-vitoria/',
  'tony-allysson/aguas-profundas/',
  'tony-allysson/sustenta-o-fogo/',
  // Davidson Silva
  'davidson-silva/cada-dia/',
  'davidson-silva/sinal-do-meu-amor/',
  'davidson-silva/nada-nos-separara/',
  'davidson-silva/tome/',
  'davidson-silva/insuperavel-amor/',
  // Diego Fernandes
  'diego-fernandes/danca-de-avivamento/',
  'diego-fernandes/marcado-pelo-fogo/',
  'diego-fernandes/no-colo-de-maria/',
  'diego-fernandes/templo-vivo/'
];

async function run() {
  const results = {};
  for (const c of candidates) {
    const res = await scrapeSong(c);
    results[c] = res ? res.length : 0;
    console.log(c, '=>', res ? 'OK (' + res.length + ' chars)' : 'NOT FOUND');
  }
}
run();
