const fs = require('fs');
const assert = require('assert');

console.log('--- EXECUTING SANTA CIFRA v3.9.5 VERIFICATION SUITE ---');

// Test 1: chords-data.js
const chords = require('../santa-cifra/js/chords-data.js');

// 1.1 Gm guitar must contain barre rect and only 2 circles on fret 5
const gmGuitarSvg = chords.getChordSVG('Gm', 'guitar');
assert(gmGuitarSvg.includes('<rect x="15"'), 'Gm guitar should contain barre rect');
assert(gmGuitarSvg.includes('3ª'), 'Gm guitar should show 3ª casa indicator');
const circleMatches = gmGuitarSvg.match(/<circle /g) || [];
assert.strictEqual(circleMatches.length, 2, 'Gm guitar should only have 2 circles for fingers 3 and 4 (fret 5), not 6 circles');
console.log('✓ Test 1.1: Gm guitar barre ("dedo deitado") renders with 1 solid bar and 2 dots');

// 1.2 Keyboard C must contain exactly 3 circles (triad)
const cKeyboardSvg = chords.getChordSVG('C', 'keyboard');
const cCircleMatches = cKeyboardSvg.match(/<circle /g) || [];
assert.strictEqual(cCircleMatches.length, 3, 'C keyboard should only highlight 3 keys, not 6 keys');
console.log('✓ Test 1.2: C keyboard has exactly 3 keys for human hand triad (no 6-finger chord)');

// 1.3 Variations check
const cGuitarVars = chords.getChordVariations('C', 'guitar');
assert(cGuitarVars.length >= 3, 'C guitar should have at least 3 variations');
const cKeyVars = chords.getChordVariations('C', 'keyboard');
assert(cKeyVars.length >= 3, 'C keyboard should have at least 3 variations (inversões)');
console.log(`✓ Test 1.3: Variations available - C guitar: ${cGuitarVars.length}, C keyboard: ${cKeyVars.length}`);

// Test 2: Pecador, Agora É Tempo 7 verses check
const songs = JSON.parse(fs.readFileSync('santa-cifra/data/songs.json', 'utf8'));
const pecador = songs.find(s => s.id === 'pecador-agora-e-tempo-quaresma-cnbb');
assert(pecador, 'pecador song should exist in songs.json');
assert(pecador.cifra.includes('1. Neste tempo sacrossanto'), 'Stanza 1 missing');
assert(pecador.cifra.includes('2. Vinde, vinde, pecadores'), 'Stanza 2 missing');
assert(pecador.cifra.includes('3. Lembra, ó homem'), 'Stanza 3 missing');
assert(pecador.cifra.includes('4. Pelas dores cruciantes'), 'Stanza 4 missing');
assert(pecador.cifra.includes('5. O pecado nos separa'), 'Stanza 5 missing');
assert(pecador.cifra.includes('6. Rasgai vossos corações'), 'Stanza 6 missing');
assert(pecador.cifra.includes('7. Ó Jesus, compadecido'), 'Stanza 7 missing');
console.log('✓ Test 2: Pecador, Agora É Tempo contains all 7 canonical liturgical verses of CNBB');

// Test 3: Incendeia Minha Alma check
const incendeia = songs.find(s => s.id === 'pe-fabio-de-melo-incendeia-minha-alma');
assert(incendeia, 'incendeia song should exist in songs.json');
assert(incendeia.originalKey === 'C', 'Incendeia Minha Alma should be in key C (canonical Cifra Club)');
assert(incendeia.cifra.includes('C           G/B         Am'), 'Incendeia Minha Alma harmony should match Cifra Club');
console.log('✓ Test 3: Incendeia Minha Alma is canonical with key C and Cifra Club chords');

// Test 4: index.html check
const indexHtml = fs.readFileSync('santa-cifra/index.html', 'utf8');
assert(indexHtml.includes('document.documentElement.classList.add(\'dark-mode\')'), 'Inline FOUC prevention script missing in <head>');
assert(indexHtml.includes('id="btnPrevChordVar"'), 'btnPrevChordVar missing in index.html');
assert(indexHtml.includes('id="btnNextChordVar"'), 'btnNextChordVar missing in index.html');
assert(indexHtml.includes('id="chkRememberMe"'), 'chkRememberMe missing in index.html');
console.log('✓ Test 4: index.html contains inline theme script, chord variation navigation, and persistent login checkbox');

// Test 5: version.json and sw.js
const versionJson = JSON.parse(fs.readFileSync('santa-cifra/version.json', 'utf8'));
assert.strictEqual(versionJson.version, '3.9.5', 'version.json version should be 3.9.5');
assert.strictEqual(versionJson.apkVersionCode, 24, 'version.json apkVersionCode should be 24');
const swJs = fs.readFileSync('santa-cifra/sw.js', 'utf8');
assert(swJs.includes('santa-cifra-v29'), 'sw.js cache name should be santa-cifra-v29');
console.log('✓ Test 5: version.json bumped to v3.9.5 (Build 24) and sw.js bumped to santa-cifra-v29');

console.log('ALL TESTS PASSED SUCCESSFULLY! Ready for deployment.');
