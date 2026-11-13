const fs = require('fs');
const path = require('path');
const vm = require('vm');
const { execSync } = require('child_process');

const cacheDir = path.join(__dirname, 'cifraclub_cache');

function norm(s) {
  return String(s || '')
    .toLowerCase()
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim();
}

function slugify(s) {
  return String(s || '')
    .toLowerCase()
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');
}

function loadTransposition() {
  const ctx = { window: {} };
  vm.createContext(ctx);
  vm.runInContext(fs.readFileSync('santa-cifra/js/transposition.js', 'utf8'), ctx);
  return ctx.window.Transposition || ctx.window.TranspositionEngine;
}

function loadCatalogs() {
  const ctx = { window: {} };
  vm.createContext(ctx);
  const files = [
    { file: 'santa-cifra/js/catalog/catalog-ordinario-salmos.js', varName: 'SongsCatalogOrdinario' },
    { file: 'santa-cifra/js/catalog/catalog-entrada-final.js', varName: 'SongsCatalogEntradaFinal' },
    { file: 'santa-cifra/js/catalog/catalog-ofertorio-comunhao.js', varName: 'SongsCatalogOfertorioComunhao' },
    { file: 'santa-cifra/js/catalog/catalog-adoracao-comunidades.js', varName: 'SongsCatalogAdoracaoComunidades' }
  ];
  for (const f of files) {
    vm.runInContext(fs.readFileSync(f.file, 'utf8'), ctx);
  }
  return files.map(f => ({ ...f, list: ctx.window[f.varName] || [] }));
}

function wrapPair(chordLine, lyricLine, maxLen = 38) {
  if (!lyricLine || lyricLine.length <= maxLen) {
    if (chordLine && chordLine.length > maxLen && !lyricLine) {
      return [chordLine, lyricLine];
    }
    return [chordLine, lyricLine];
  }
  const out = [];
  let cRest = chordLine || '';
  let lRest = lyricLine || '';
  while (lRest.length > maxLen) {
    let splitAt = lRest.lastIndexOf(' ', maxLen);
    if (splitAt < 14) splitAt = maxLen;
    // Evitar cortar no meio de um acorde na linha de cima
    while (splitAt < lRest.length && cRest[splitAt] && cRest[splitAt] !== ' ') {
      const nextSpace = lRest.indexOf(' ', splitAt);
      if (nextSpace !== -1 && nextSpace <= maxLen + 8) {
        splitAt = nextSpace;
        break;
      }
      break;
    }
    const cPart = cRest.slice(0, splitAt).replace(/\s+$/g, '');
    const lPart = lRest.slice(0, splitAt).replace(/\s+$/g, '');
    if (cPart) out.push(cPart);
    out.push(lPart);
    cRest = cRest.slice(splitAt).replace(/^\s+/g, '');
    lRest = lRest.slice(splitAt).replace(/^\s+/g, '');
  }
  if (cRest.trim()) out.push(cRest.replace(/\s+$/g, ''));
  if (lRest.trim()) out.push(lRest.replace(/\s+$/g, ''));
  return out;
}

function formatCifraForMobile(cifra, T) {
  const lines = String(cifra || '').replace(/\r\n/g, '\n').split('\n');
  const out = [];
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i].replace(/\s+$/g, '');
    if (T.isChordLine(line) && i + 1 < lines.length && lines[i + 1].trim() && !T.isChordLine(lines[i + 1]) && !/^\s*\[/.test(lines[i + 1])) {
      const lyric = lines[i + 1].replace(/\s+$/g, '');
      if (lyric.length > 38) {
        const wrapped = wrapPair(line, lyric, 38);
        out.push(...wrapped);
        i++;
        continue;
      }
    }
    out.push(line);
  }
  return out.join('\n').replace(/\n{3,}/g, '\n\n').trim();
}

function classifySong(title, cifra) {
  const t = norm(title);
  const c = norm(cifra.slice(0, 400));
  if (/\b(kyrie|senhor tende piedade|perdao|ato penitencial|tende piedade)\b/.test(t)) {
    return { catalogIdx: 0, moment: 'Ato Penitencial', type: 'liturgical' };
  }
  if (/\b(gloria a deus nas alturas|hino de louvor)\b/.test(t)) {
    return { catalogIdx: 0, moment: 'Glória', type: 'liturgical' };
  }
  if (/\bsalmo\b/.test(t)) {
    return { catalogIdx: 0, moment: 'Salmo', type: 'liturgical' };
  }
  if (/\b(aleluia|aclamacao)\b/.test(t)) {
    return { catalogIdx: 0, moment: 'Aclamação', type: 'liturgical' };
  }
  if (/^santo\b|\bsanto e o senhor\b/.test(t)) {
    return { catalogIdx: 0, moment: 'Santo', type: 'liturgical' };
  }
  if (/\bcordeiro de deus\b/.test(t)) {
    return { catalogIdx: 0, moment: 'Cordeiro', type: 'liturgical' };
  }
  if (/\b(ofertorio|oferendas|pao e vinho|bendito sejais)\b/.test(t)) {
    return { catalogIdx: 2, moment: 'Ofertório', type: 'liturgical' };
  }
  if (/\b(comunhao|eucaristia|corpo e sangue)\b/.test(t)) {
    return { catalogIdx: 2, moment: 'Comunhão', type: 'liturgical' };
  }
  if (/\b(entrada|vinde|vamos celebrar)\b/.test(t) && /\b(missa|altar|igreja)\b/.test(c)) {
    return { catalogIdx: 1, moment: 'Entrada', type: 'liturgical' };
  }
  return { catalogIdx: 3, moment: 'Ação de Graças', type: 'popular' };
}

function main() {
  const T = loadTransposition();
  const catalogs = loadCatalogs();
  const allExisting = catalogs.flatMap(c => c.list);
  const existingIds = new Set(allExisting.map(s => s.id));
  const existingTitleArtist = new Set(allExisting.map(s => `${norm(s.title)}::${norm(s.composer)}`));
  const existingTitles = new Set(allExisting.map(s => norm(s.title)));

  const files = fs.readdirSync(cacheDir).filter(f => f.endsWith('.json'));
  let imported = 0;
  let skipped = 0;

  for (const file of files) {
    let data;
    try {
      data = JSON.parse(fs.readFileSync(path.join(cacheDir, file), 'utf8'));
    } catch {
      skipped++;
      continue;
    }
    if (!data || data.skipped || !data.cifra || !data.title) {
      skipped++;
      continue;
    }
    if (/incendeia minha alma/i.test(data.title)) continue; // blindagem absoluta

    const formattedCifra = formatCifraForMobile(data.cifra, T);
    const uniqueChords = T.extractUniqueChords(formattedCifra);
    if (!uniqueChords.length) {
      skipped++;
      continue;
    }

    const tKey = norm(data.title);
    const taKey = `${tKey}::${norm(data.artistName)}`;
    if (existingTitleArtist.has(taKey) || existingTitles.has(tKey)) {
      skipped++;
      continue;
    }

    let id = `${slugify(data.artistSlug || data.artistName)}-${slugify(data.songSlug || data.title)}`;
    if (!id) id = `song-${Date.now()}-${imported}`;
    let suffix = 2;
    while (existingIds.has(id)) {
      id = `${slugify(data.artistSlug || data.artistName)}-${slugify(data.songSlug || data.title)}-${suffix++}`;
    }

    const originalKey = (data.originalKey && /^[A-G][#b]?m?$/.test(data.originalKey))
      ? data.originalKey
      : (uniqueChords[0].replace(/[^A-G#bm]/g, '') || 'C');

    const { catalogIdx, moment, type } = classifySong(data.title, formattedCifra);
    const isLit = type === 'liturgical';

    const entry = {
      id,
      title: data.title.trim(),
      composer: data.artistName.trim(),
      liturgicalMoment: moment,
      liturgicalSeason: 'Qualquer',
      originalKey,
      bpm: 76,
      timeSignature: '4/4',
      rhythmName: isLit ? 'Canto Litúrgico' : 'Louvor e Adoração',
      rhythmPattern: '↓   ↓ ↑   ↑ ↓ ↑',
      isMostUsed: false,
      isSimple: uniqueChords.length <= 5,
      chordCount: uniqueChords.length,
      youtubeUrl: '',
      liturgicalAnalysis: {
        status: isLit ? 'Aprovado para Liturgia' : 'Canto Devocional / Grupo de Oração',
        score: isLit ? 92 : 85,
        documentRef: isLit ? 'IGMR / Hinário Litúrgico CNBB' : 'Acervo Católico Popular',
        biblicalRef: '',
        justification: isLit
          ? 'Canto litúrgico adequado ao momento ritual indicado.'
          : 'Cântico católico popular e devocional para adoração, grupos de oração e retiros.',
        repertoireType: type,
        specialDay: isLit ? 'Missa Dominical e Celebrações' : 'Encontros, Retiros e Grupo de Oração',
        normExplanation: isLit
          ? 'Canto Litúrgico Próprio para a Santa Missa.'
          : 'Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros e Adoração fora da Missa.'
      },
      cifra: formattedCifra,
      repertoireType: type,
      specialDay: isLit ? 'Missa Dominical e Celebrações' : 'Encontros, Retiros e Grupo de Oração',
      liturgicalNormNote: isLit
        ? 'Canto Litúrgico Próprio para a Santa Missa.'
        : 'Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros e Adoração fora da Missa.'
    };

    catalogs[catalogIdx].list.push(entry);
    existingIds.add(id);
    existingTitleArtist.add(taKey);
    existingTitles.add(tKey);
    imported++;
  }

  for (const cat of catalogs) {
    fs.writeFileSync(cat.file, `window.${cat.varName} = ${JSON.stringify(cat.list, null, 2)};\n`, 'utf8');
  }

  const merged = catalogs.flatMap(c => c.list);
  fs.writeFileSync('santa-cifra/data/songs.json', JSON.stringify(merged, null, 2), 'utf8');

  const litCount = merged.filter(s => s.repertoireType !== 'popular').length;
  const popCount = merged.length - litCount;
  const vPath = 'santa-cifra/version.json';
  const ver = JSON.parse(fs.readFileSync(vPath, 'utf8'));
  ver.totalSongs = merged.length;
  ver.liturgicalSongs = litCount;
  ver.popularSongs = popCount;
  fs.writeFileSync(vPath, JSON.stringify(ver, null, 2), 'utf8');

  execSync('node scripts/update_seed_sql.js', { stdio: 'inherit' });
  console.log(`Imported ${imported} new songs (skipped ${skipped}). Total catalog: ${merged.length} (${litCount} liturgical + ${popCount} popular).`);
}

main();
