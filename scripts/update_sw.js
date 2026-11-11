const fs = require('fs');

const path = 'santa-cifra/sw.js';
let content = fs.readFileSync(path, 'utf8');
content = content.replace(/santa-cifra-v28/g, 'santa-cifra-v29');
content = content.replace(/\?v=28/g, '?v=29');
fs.writeFileSync(path, content, 'utf8');
console.log('Successfully updated sw.js to v29');
