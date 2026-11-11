/**
 * SANTA CIFRA — Motor de Auto-Atualização OTA (Over-The-Air) para APK Android e PWA
 * Garante que qualquer versão instalada do APK receba automaticamente:
 * 1. Novas músicas e correções de cifras via sincronização de data/songs.json
 * 2. Novas versões de interface/design publicadas em https://santa-cifra.surge.sh
 */
window.SantaCifra = window.SantaCifra || {};

const OTA_BASE_URL = 'https://santa-cifra.surge.sh';
const OTA_VERSION_KEY = 'santa_cifra_ota_version_v4';
const OTA_CATALOG_KEY = 'santa_cifra_ota_catalog_v4';

// Expurgar caches legados que continham cifras desatualizadas ou placeholders
try {
  localStorage.removeItem('santa_cifra_ota_catalog_v3');
  localStorage.removeItem('santa_cifra_ota_version_v3');
  localStorage.removeItem('santa_cifra_ota_catalog_v2');
  localStorage.removeItem('santa_cifra_ota_version_v2');
  localStorage.removeItem('santa_cifra_ota_catalog');
  localStorage.removeItem('santa_cifra_ota_version');
} catch (_) {}

window.SantaCifra.checkForOTAUpdates = async function checkForOTAUpdates() {
  if (!navigator.onLine) return;

  try {
    const res = await fetch(`${OTA_BASE_URL}/version.json?t=${Date.now()}`, { cache: 'no-store' });
    if (!res.ok) return;
    const remoteMeta = await res.json();
    const localVersion = localStorage.getItem(OTA_VERSION_KEY);

    // Se a versão remota mudou ou o número de músicas aumentou, sincroniza o catálogo completo
    if (remoteMeta.buildId && typeof remoteMeta.buildId === 'string' && remoteMeta.buildId !== localVersion) {
      const songsRes = await fetch(`${OTA_BASE_URL}/data/songs.json?t=${Date.now()}`, { cache: 'no-store' });
      if (songsRes.ok) {
        const rawSongs = await songsRes.json();
        const validateOta = window.SantaCifra.security && window.SantaCifra.security.validateOtaCatalog;
        const remoteSongs = validateOta ? validateOta(rawSongs) : (Array.isArray(rawSongs) ? rawSongs : null);
        if (Array.isArray(remoteSongs) && remoteSongs.length > 0) {
          localStorage.setItem(OTA_CATALOG_KEY, JSON.stringify(remoteSongs));
          localStorage.setItem(OTA_VERSION_KEY, remoteMeta.buildId.slice(0, 64));
          window.SongsCatalog = remoteSongs;

          if (window.SantaCifra.initCatalog) {
            window.SantaCifra.initCatalog();
            if (window.SantaCifra.populateArtistOptGroup) window.SantaCifra.populateArtistOptGroup();
            if (window.SantaCifra.state && window.SantaCifra.state.activeTab === 'home') {
              window.SantaCifra.renderHeroShowcase();
              window.SantaCifra.renderCatalog();
            }
          }
        }
      }

      // Se o APK estiver rodando no fallback offline (file://) e a internet voltou, migra para a versão ao vivo atualizada
      if (window.location.protocol === 'file:' && window.SantaCifraNative && typeof window.SantaCifraNative.loadLiveCloud === 'function') {
        window.SantaCifraNative.loadLiveCloud();
      }
    }
  } catch (_) {
    // Silencioso quando offline ou em rede restrita
  }
};

window.SantaCifra.initOTAUpdater = function initOTAUpdater() {
  // Verifica imediatamente ao abrir o app
  setTimeout(() => window.SantaCifra.checkForOTAUpdates(), 800);

  // Verifica sempre que a conexão com a internet voltar
  window.addEventListener('online', () => {
    window.SantaCifra.checkForOTAUpdates();
  });

  // Verifica sempre que o usuário reabrir o aplicativo no celular
  document.addEventListener('visibilitychange', () => {
    if (document.visibilityState === 'visible') {
      window.SantaCifra.checkForOTAUpdates();
    }
  });

  // Polling leve a cada 3 minutos
  setInterval(() => {
    window.SantaCifra.checkForOTAUpdates();
  }, 180000);
};
