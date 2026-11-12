const fs = require('fs');
const path = require('path');

// 1. Update version.json
const versionJsonPath = path.join(__dirname, '../santa-cifra/version.json');
const versionData = JSON.parse(fs.readFileSync(versionJsonPath, 'utf8'));
versionData.version = "3.9.9";
versionData.apkVersionCode = 28;
versionData.buildId = "sc-v3.9.9-banda-arkanjos-complete-discography-13-hits-v35";
versionData.totalSongs = 560;
versionData.liturgicalSongs = 297;
versionData.popularSongs = 263;
fs.writeFileSync(versionJsonPath, JSON.stringify(versionData, null, 2), 'utf8');
console.log('version.json: OK (v3.9.9 / 560 songs)');

// 2. Update sw.js
const swPath = path.join(__dirname, '../santa-cifra/sw.js');
let swCode = fs.readFileSync(swPath, 'utf8');
swCode = swCode.replace(/CACHE_NAME\s*=\s*'santa-cifra-v\d+'/, "CACHE_NAME = 'santa-cifra-v35'");
swCode = swCode.replace(/\?v=\d+/g, "?v=35");
fs.writeFileSync(swPath, swCode, 'utf8');
console.log('sw.js: OK (cache v35)');

// 3. Update index.html
const indexPath = path.join(__dirname, '../santa-cifra/index.html');
let indexHtml = fs.readFileSync(indexPath, 'utf8');
indexHtml = indexHtml.replace(/\?v=\d+/g, "?v=35");
fs.writeFileSync(indexPath, indexHtml, 'utf8');
console.log('index.html: OK (assets v35)');
