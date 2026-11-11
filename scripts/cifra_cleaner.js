const fs = require('fs');
const path = require('path');
const vm = require('vm');

const cacheDir = path.join(__dirname, 'cifraclub_cache');

function cleanCifraText(text) {
  if (!text) return '';
  // Remove zero width spaces and invisible characters
  let cleaned = text.replace(/[\u200B-\u200D\uFEFF]/g, '');
  // Replace non-breaking spaces
  cleaned = cleaned.replace(/\u00A0/g, ' ');
  // Normalize windows newlines
  cleaned = cleaned.replace(/\r\n/g, '\n').replace(/\r/g, '\n');
  // Collapse 3 or more newlines to 2
  cleaned = cleaned.replace(/\n{3,}/g, '\n\n');
  return cleaned.trim();
}

function extractKey(text) {
  const m = text.match(/Tom:\s*([A-G][b#]?m?)/i);
  return m ? m[1] : null;
}

function countUniqueChords(text) {
  const chordRegex = /\b[A-G][b#]?(?:m|maj|min|dim|aug|sus[24]?|add[29]|7M|M7|[2-9]|11|13)*(?:\/[A-G][b#]?)?\b/g;
  const matches = text.match(chordRegex) || [];
  const unique = new Set(matches);
  return unique.size;
}

module.exports = { cleanCifraText, extractKey, countUniqueChords };
