const fs = require('fs');

const path = process.argv[2];
const id = process.argv[3];

if (!path || !id) {
  console.log('Usage: node inspect_entry.js <catalog_path> <song_id>');
  process.exit(1);
}

const content = fs.readFileSync(path, 'utf8');
const regex = new RegExp(`{\\s*"id":\\s*"${id}"[\\s\\S]*?^  },?`, 'm');
const match = content.match(regex);
if (match) {
  console.log(match[0]);
} else {
  console.log(`Song id ${id} not found in ${path}`);
}
