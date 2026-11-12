const fs = require('fs');
const path = require('path');

// 1. sw.js
const swPath = path.join(__dirname, '../santa-cifra/sw.js');
let sw = fs.readFileSync(swPath, 'utf8');
sw = sw.replace(/const CACHE_NAME = 'santa-cifra-v\d+';/, "const CACHE_NAME = 'santa-cifra-v30';");
fs.writeFileSync(swPath, sw, 'utf8');
console.log('OK: sw.js atualizado para santa-cifra-v30');

// 2. index.html
const indexPath = path.join(__dirname, '../santa-cifra/index.html');
let html = fs.readFileSync(indexPath, 'utf8');
html = html.replace(/\?v=29/g, '?v=30');
fs.writeFileSync(indexPath, html, 'utf8');
console.log('OK: index.html atualizado para ?v=30');
