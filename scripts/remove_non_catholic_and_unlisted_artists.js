const fs = require('fs');
const path = require('path');
const vm = require('vm');

const ROOT = path.resolve(__dirname, '..');
const SONGS_JSON = path.join(ROOT, 'santa-cifra', 'data', 'songs.json');
const CATALOG_DIR = path.join(ROOT, 'santa-cifra', 'js', 'catalog');
const ARTISTS_VIEW = path.join(ROOT, 'santa-cifra', 'js', 'modules', 'artists-view.js');
const PROTECTED_ID = 'pe-fabio-de-melo-incendeia-minha-alma';

const songs = JSON.parse(fs.readFileSync(SONGS_JSON, 'utf8'));

// Load normalizeArtistName from artists-view.js
const sandbox = { document: {}, SantaCifra: { state: { songs } } };
sandbox.window = sandbox;
vm.runInNewContext(fs.readFileSync(ARTISTS_VIEW, 'utf8'), sandbox);
const normalize = sandbox.SantaCifra.normalizeArtistName;

const REMOVE_ARTISTS = new Set([
  // Explicitamente pedidos pelo usuário
  'Adhemar de Campos',
  'Celina Borges',
  'Cesáreo Gabaráin',
  'Eros Biondini',
  'Missão Mundo Novo',
  'Zé Vicente',
  'Régis Danese',
  'Suely Façanha',
  'Kleber Lucas',
  'Guilherme Kerr',
  'Ziza Fernandes',
  'Martín Valverde',
  'Fátima Souza',
  'Ricardo Sá',
  'Diego Fernandes',
  'Salette Ferreira',
  'Márcio Todeschini',
  'Maria do Rosário',
  'Italo Villar',
  'Quatro Por Um',
  'Álvaro e Daniel',
  'Luciana Antunes',
  'Yuri Costa',
  'Laércio Oliveira',
  // Não católicos / evangélicos
  'Ministério Koinonya',
  'Elizeu Gomes',
  'Danilo Casemiro',
  'Nelson Monteiro da Mota',
  'Karen Lafferty',
  'Nádia Santolli',
  'David Quinlan',
  'Marcos Barrientos',
  // Pouco conhecidos / avulsos
  'Banda Ceremonya',
  'Banda Romanos',
  'Rafael Morel',
  'Laura Salvador',
  'Jorge Guedes',
  'Raquel Carpenter',
  'Olívia Ferreira',
  'Pitter Di Laura',
  'Rogerinha Moreira',
  'Nicodemos Costa',
  'Mayara Marques',
  'Carlos Papae',
  'Marco Mammoli',
  'M. Espinosa',
  'Eurivaldo Silva Ferreira',
  'Roberto Malvezzi',
  'Gilson Celerino',
  'Gustavo Osterno',
  'Guilherme Pontes',
  'Léo Rabello'
]);

function shouldRemoveSong(song) {
  if (!song || song.id === PROTECTED_ID) return false;
  const parts = String(song.composer || '').split('/').map(x => normalize(x)).filter(Boolean);
  return parts.some(p => REMOVE_ARTISTS.has(p));
}

const keptSongs = songs.filter(s => !shouldRemoveSong(s));
const removedIds = new Set(songs.filter(s => shouldRemoveSong(s)).map(s => s.id));

fs.writeFileSync(SONGS_JSON, JSON.stringify(keptSongs, null, 2) + '\n', 'utf8');

let jsRemoved = 0;
for (const file of fs.readdirSync(CATALOG_DIR).filter(f => f.endsWith('.js'))) {
  const fullPath = path.join(CATALOG_DIR, file);
  const raw = fs.readFileSync(fullPath, 'utf8');
  const m = raw.match(/^([\s\S]*?window\.\w+\s*=\s*)(\[[\s\S]*\])(\s*;?\s*)$/);
  if (!m) {
    console.warn('Skipping unrecognized catalog format:', file);
    continue;
  }
  const arr = JSON.parse(m[2]);
  const filtered = arr.filter(item => !removedIds.has(item.id));
  if (filtered.length !== arr.length) {
    jsRemoved += (arr.length - filtered.length);
    fs.writeFileSync(fullPath, m[1] + JSON.stringify(filtered, null, 2) + m[3], 'utf8');
  }
}

const litCount = keptSongs.filter(s => s.repertoireType !== 'popular').length;
const popCount = keptSongs.length - litCount;
console.log(`Removed ${removedIds.size} songs from songs.json (${jsRemoved} from JS catalogs).`);
console.log(`Remaining -> Total: ${keptSongs.length} | Para a Missa: ${litCount} | Fora da Missa: ${popCount}`);
