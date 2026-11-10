const CACHE_NAME = 'santa-cifra-v11';
const ASSETS = [
  './',
  './index.html',
  './version.json',
  './css/tokens.css?v=11',
  './css/layout.css?v=11',
  './css/catalog.css?v=11',
  './css/playlists.css?v=11',
  './css/viewer.css?v=11',
  './css/dialogs.css?v=11',
  './css/styles.css',
  './js/transposition.js?v=11',
  './js/chords-data.js?v=11',
  './js/metronome.js?v=11',
  './js/catalog/catalog-ordinario-salmos.js?v=11',
  './js/catalog/catalog-entrada-final.js?v=11',
  './js/catalog/catalog-ofertorio-comunhao.js?v=11',
  './js/catalog/catalog-adoracao-comunidades.js?v=11',
  './js/songs-catalog.js?v=11',
  './js/supabase-client.js?v=11',
  './js/modules/icons.js?v=11',
  './js/modules/auth.js?v=11',
  './js/modules/state.js?v=11',
  './js/modules/artists-view.js?v=11',
  './js/modules/catalog-view.js?v=11',
  './js/modules/playlists-view.js?v=11',
  './js/modules/song-viewer.js?v=11',
  './js/modules/ota-updater.js?v=11',
  './js/app.js?v=11',
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
