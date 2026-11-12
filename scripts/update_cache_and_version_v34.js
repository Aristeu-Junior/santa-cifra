const fs = require('fs');
const path = require('path');

// 1. Update version.json
const versionJsonPath = path.join(__dirname, '../santa-cifra/version.json');
const versionData = JSON.parse(fs.readFileSync(versionJsonPath, 'utf8'));
versionData.version = "3.9.8";
versionData.apkVersionCode = 27;
versionData.buildId = "sc-v3.9.8-authentic-photos-all-bands-arcanjos-expanded-catalog-no-overflow-v34";
versionData.totalSongs = 552;
versionData.liturgicalSongs = 295;
versionData.popularSongs = 257;
fs.writeFileSync(versionJsonPath, JSON.stringify(versionData, null, 2), 'utf8');
console.log('version.json: OK!');

// 2. Update sw.js
const swPath = path.join(__dirname, '../santa-cifra/sw.js');
let swCode = fs.readFileSync(swPath, 'utf8');

// Change cache name
swCode = swCode.replace(/CACHE_NAME\s*=\s*'santa-cifra-v\d+'/, "CACHE_NAME = 'santa-cifra-v34'");
swCode = swCode.replace(/\?v=\d+/g, "?v=34");

// Add new artist assets if not present
if (!swCode.includes('banda-arkanjos.jpg')) {
  swCode = swCode.replace(
    "'./assets/artists/banda-dom.jpg',",
    "'./assets/artists/banda-arcanjos.jpg',\n  './assets/artists/banda-arkanjos.jpg',\n  './assets/artists/juninho-cassimiro.jpg',\n  './assets/artists/banda-dom.jpg',"
  );
}
fs.writeFileSync(swPath, swCode, 'utf8');
console.log('sw.js: OK!');

// 3. Update index.html
const indexPath = path.join(__dirname, '../santa-cifra/index.html');
let indexHtml = fs.readFileSync(indexPath, 'utf8');
indexHtml = indexHtml.replace(/\?v=\d+/g, "?v=34");
fs.writeFileSync(indexPath, indexHtml, 'utf8');
console.log('index.html: OK!');
