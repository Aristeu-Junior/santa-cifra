const fs = require('fs');
const readline = require('readline');

const rl = readline.createInterface({
  input: fs.createReadStream('C:/Users/Aristeu Junior/.gemini/antigravity/brain/cd2b41d5-f32b-4a54-bf7b-7360ecdf9d0a/.system_generated/logs/transcript.jsonl')
});

rl.on('line', line => {
  if (line.includes('"step_index":1238') || line.includes('"step_index":1237')) {
    const obj = JSON.parse(line);
    console.log(obj.tool_calls || obj.content);
  }
});
