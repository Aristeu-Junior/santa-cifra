const fs = require('fs');

const songs = JSON.parse(fs.readFileSync('santa-cifra/data/songs.json', 'utf8'));

let sql = `-- SANTA CIFRA — Seed de Músicas Litúrgicas e Populares Católicas
-- Gerado automaticamente a partir de data/songs.json (Versão 3.8.5)
-- Total de músicas: ${songs.length}

INSERT INTO public.songs (
  id, title, artist, composer, original_key, bpm, time_signature,
  rhythm_name, rhythm_pattern, is_liturgical, is_most_used, is_simple,
  chord_count, liturgical_moment, liturgical_season, biblical_ref,
  repertoire_type, cifra, search_vector
) VALUES
`;

const rows = songs.map(s => {
  const esc = (str) => (str || '').replace(/'/g, "''");
  const isLit = s.repertoireType !== 'popular';
  return `(
  '${esc(s.id)}',
  '${esc(s.title)}',
  '${esc(s.artist || s.composer || '')}',
  '${esc(s.composer || '')}',
  '${esc(s.originalKey || s.tom || 'C')}',
  ${s.bpm || 80},
  '${esc(s.timeSignature || '4/4')}',
  '${esc(s.rhythmName || '')}',
  '${esc(s.rhythmPattern || '')}',
  ${isLit},
  ${Boolean(s.isMostUsed)},
  ${Boolean(s.isSimple)},
  ${s.chordCount || 4},
  '${esc(s.liturgicalMoment || '')}',
  '${esc(s.liturgicalSeason || '')}',
  '${esc(s.liturgicalAnalysis && s.liturgicalAnalysis.biblicalRef || '')}',
  '${esc(s.repertoireType || 'liturgical')}',
  '${esc(s.cifra)}',
  to_tsvector('portuguese', '${esc(s.title)} ' || '${esc(s.artist || '')}')
)`;
});

sql += rows.join(',\n') + `\nON CONFLICT (id) DO UPDATE SET\n  title = EXCLUDED.title,\n  cifra = EXCLUDED.cifra,\n  original_key = EXCLUDED.original_key,\n  search_vector = EXCLUDED.search_vector;\n`;

fs.writeFileSync('santa-cifra/supabase/seed_songs.sql', sql, 'utf8');
console.log(`Updated santa-cifra/supabase/seed_songs.sql with ${songs.length} rows.`);
