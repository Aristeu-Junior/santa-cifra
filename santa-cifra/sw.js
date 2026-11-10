const CACHE_NAME = 'santa-cifra-v8';
const ASSETS = [
  './',
  './index.html',
  './version.json',
  './css/tokens.css?v=8',
  './css/layout.css?v=8',
  './css/catalog.css?v=8',
  './css/playlists.css?v=8',
  './css/viewer.css?v=8',
  './css/dialogs.css?v=8',
  './css/styles.css',
  './js/transposition.js?v=8',
  './js/chords-data.js?v=8',
  './js/metronome.js?v=8',
  './js/catalog/catalog-ordinario-salmos.js?v=8',
  './js/catalog/catalog-entrada-final.js?v=8',
  './js/catalog/catalog-ofertorio-comunhao.js?v=8',
  './js/catalog/catalog-adoracao-comunidades.js?v=8',
  './js/songs-catalog.js?v=8',
  './js/supabase-client.js?v=8',
  './js/modules/icons.js?v=8',
  './js/modules/state.js?v=8',
  './js/modules/catalog-view.js?v=8',
  './js/modules/playlists-view.js?v=8',
  './js/modules/song-viewer.js?v=8',
  './js/modules/ota-updater.js?v=8',
  './js/app.js?v=8',
  './assets/icon.svg',
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
