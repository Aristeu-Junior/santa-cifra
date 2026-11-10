const CACHE_NAME = 'santa-cifra-v13';
const ASSETS = [
  './',
  './index.html',
  './version.json',
  './css/tokens.css?v=13',
  './css/layout.css?v=13',
  './css/catalog.css?v=13',
  './css/playlists.css?v=13',
  './css/viewer.css?v=13',
  './css/dialogs.css?v=13',
  './css/styles.css',
  './js/transposition.js?v=13',
  './js/chords-data.js?v=13',
  './js/metronome.js?v=13',
  './js/catalog/catalog-ordinario-salmos.js?v=13',
  './js/catalog/catalog-entrada-final.js?v=13',
  './js/catalog/catalog-ofertorio-comunhao.js?v=13',
  './js/catalog/catalog-adoracao-comunidades.js?v=13',
  './js/songs-catalog.js?v=13',
  './js/supabase-client.js?v=13',
  './js/modules/icons.js?v=13',
  './js/modules/auth.js?v=13',
  './js/modules/state.js?v=13',
  './js/modules/artists-view.js?v=13',
  './js/modules/catalog-view.js?v=13',
  './js/modules/playlists-view.js?v=13',
  './js/modules/song-viewer.js?v=13',
  './js/modules/ota-updater.js?v=13',
  './js/app.js?v=13',
  './assets/icon.svg',
  './assets/apple-touch-icon.png',
  './assets/icon-192.png',
  './assets/icon-512.png',
  './assets/favicon-32.png',
  './manifest.webmanifest'
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
