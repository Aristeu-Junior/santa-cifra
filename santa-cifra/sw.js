const CACHE_NAME = 'santa-cifra-v21';
const ASSETS = [
  './',
  './index.html',
  './version.json',
  './apple-touch-icon.png',
  './apple-touch-icon-precomposed.png',
  './css/tokens.css?v=21',
  './css/layout.css?v=21',
  './css/catalog.css?v=21',
  './css/playlists.css?v=21',
  './css/calendar.css?v=21',
  './css/viewer.css?v=21',
  './css/dialogs.css?v=21',
  './css/styles.css',
  './js/transposition.js?v=21',
  './js/chords-data.js?v=21',
  './js/metronome.js?v=21',
  './js/catalog/catalog-ordinario-salmos.js?v=21',
  './js/catalog/catalog-entrada-final.js?v=21',
  './js/catalog/catalog-ofertorio-comunhao.js?v=21',
  './js/catalog/catalog-adoracao-comunidades.js?v=21',
  './js/songs-catalog.js?v=21',
  './js/supabase-client.js?v=21',
  './js/modules/icons.js?v=21',
  './js/modules/auth.js?v=21',
  './js/modules/state.js?v=21',
  './js/modules/artists-view.js?v=21',
  './js/modules/catalog-view.js?v=21',
  './js/modules/playlists-view.js?v=21',
  './js/modules/liturgical-calendar.js?v=21',
  './js/modules/song-viewer.js?v=21',
  './js/modules/ota-updater.js?v=21',
  './js/app.js?v=21',
  './assets/icon.svg',
  './assets/apple-touch-icon.png',
  './assets/apple-touch-icon-precomposed.png',
  './assets/icon-192.png',
  './assets/icon-512.png',
  './assets/favicon-32.png',
  './manifest.webmanifest',
  './assets/artists/adoracao-e-vida.jpg',
  './assets/artists/adriana-arydes.jpg',
  './assets/artists/alianca-de-misericordia.jpg',
  './assets/artists/anjos-de-resgate.jpg',
  './assets/artists/banda-dom.jpg',
  './assets/artists/banda-dominus.jpg',
  './assets/artists/campanha-da-fraternidade.jpg',
  './assets/artists/cancao-nova.jpg',
  './assets/artists/catequese-catolica.jpg',
  './assets/artists/celina-borges.jpg',
  './assets/artists/colo-de-deus.jpg',
  './assets/artists/comunidade-recado.jpg',
  './assets/artists/comunidade-shalom.jpg',
  './assets/artists/comunidade-taize.jpg',
  './assets/artists/davidson-silva.jpg',
  './assets/artists/default-cover.jpg',
  './assets/artists/diego-fernandes.jpg',
  './assets/artists/dunga.jpg',
  './assets/artists/eliana-ribeiro.jpg',
  './assets/artists/eros-biondini.jpg',
  './assets/artists/eugenio-jorge.jpg',
  './assets/artists/fraternidade-sjpii.jpg',
  './assets/artists/fraternidade-toca-de-assis.jpg',
  './assets/artists/frei-fabreti.jpg',
  './assets/artists/frei-gilson.jpg',
  './assets/artists/frei-luiz-turra.jpg',
  './assets/artists/hinario-liturgico-cnbb.jpg',
  './assets/artists/irma-ana-paula.jpg',
  './assets/artists/irma-kelly-patricia.jpg',
  './assets/artists/irma-miria-kolling.jpg',
  './assets/artists/lecionario-dominical.jpg',
  './assets/artists/martin-valverde.jpg',
  './assets/artists/missal-romano.jpg',
  './assets/artists/monsenhor-jonas-abib.jpg',
  './assets/artists/nelsinho-correa.jpg',
  './assets/artists/padre-alessandro-campos.jpg',
  './assets/artists/padre-antonio-maria.jpg',
  './assets/artists/padre-fabio-de-melo.jpg',
  './assets/artists/padre-joaozinho.jpg',
  './assets/artists/padre-jose-weber.jpg',
  './assets/artists/padre-marcelo-rossi.jpg',
  './assets/artists/padre-reginaldo-manzotti.jpg',
  './assets/artists/padre-reginaldo-veloso.jpg',
  './assets/artists/padre-zeca.jpg',
  './assets/artists/padre-zezinho.jpg',
  './assets/artists/rosa-de-saron.jpg',
  './assets/artists/sao-tomas-de-aquino.jpg',
  './assets/artists/suely-facanha.jpg',
  './assets/artists/thiago-brado.jpg',
  './assets/artists/tony-allysson.jpg',
  './assets/artists/vida-reluz.jpg',
  './assets/artists/waldeci-farias.jpg',
  './assets/artists/walmir-alencar.jpg',
  './assets/artists/ze-vicente.jpg',
  './assets/artists/ziza-fernandes.jpg'
];

self.addEventListener('install', (event) => {
  self.skipWaiting();
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => cache.addAll(ASSETS))
  );
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys()
      .then((keys) => Promise.all(keys.filter((k) => k !== CACHE_NAME).map((k) => caches.delete(k))))
      .then(() => self.clients.claim())
      .then(() => self.clients.matchAll({ type: 'window' }))
      .then((windowClients) => {
        windowClients.forEach((client) => {
          if ('navigate' in client) {
            client.navigate(client.url).catch(() => {});
          }
        });
      })
  );
});

self.addEventListener('fetch', (event) => {
  if (event.request.method !== 'GET') return;
  event.respondWith(
    fetch(event.request)
      .then((response) => {
        const clone = response.clone();
        caches.open(CACHE_NAME).then((cache) => cache.put(event.request, clone));
        return response;
      })
      .catch(() => caches.match(event.request, { ignoreSearch: true }))
  );
});
