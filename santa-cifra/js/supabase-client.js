/**
 * SANTA CIFRA - Cliente de Sincronização Supabase (PostgREST API Nativo)
 * Permite conectar qualquer projeto Supabase (URL + Anon Key) para armazenar e sincronizar
 * as 254+ cifras católicas, novas cifras cadastradas e pastas/playlists estilo Spotify.
 */

(function () {
  const STORAGE_KEY_CONFIG = 'santaCifra_supabaseConfig';

  const SCHEMA_SQL_SNIPPET = `-- Execute no SQL Editor do Supabase:
CREATE TABLE IF NOT EXISTS public.songs (
    id TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    composer TEXT NOT NULL,
    liturgical_moment TEXT NOT NULL,
    liturgical_season TEXT NOT NULL DEFAULT 'Qualquer',
    original_key TEXT NOT NULL DEFAULT 'C',
    bpm INTEGER NOT NULL DEFAULT 80,
    time_signature TEXT NOT NULL DEFAULT '4/4',
    rhythm_name TEXT NOT NULL DEFAULT 'Balada',
    rhythm_pattern TEXT NOT NULL DEFAULT '↓  ↓ ↑  ↑ ↓ ↑',
    is_most_used BOOLEAN NOT NULL DEFAULT false,
    is_simple BOOLEAN NOT NULL DEFAULT true,
    chord_count INTEGER NOT NULL DEFAULT 4,
    youtube_url TEXT,
    liturgical_analysis JSONB NOT NULL DEFAULT '{}'::jsonb,
    cifra TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS public.folders (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    icon TEXT NOT NULL DEFAULT '📁',
    description TEXT NOT NULL DEFAULT '',
    is_system BOOLEAN NOT NULL DEFAULT false,
    song_ids JSONB NOT NULL DEFAULT '[]'::jsonb,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE public.songs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.folders ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Acesso publico songs" ON public.songs;
CREATE POLICY "Acesso publico songs" ON public.songs FOR ALL USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "Acesso publico folders" ON public.folders;
CREATE POLICY "Acesso publico folders" ON public.folders FOR ALL USING (true) WITH CHECK (true);`;

  function getConfig() {
    try {
      const raw = localStorage.getItem(STORAGE_KEY_CONFIG);
      if (!raw) return { url: '', anonKey: '', enabled: false };
      return JSON.parse(raw);
    } catch (_) {
      return { url: '', anonKey: '', enabled: false };
    }
  }

  function saveConfig(url, anonKey) {
    const cleanUrl = (url || '').trim().replace(/\/+$/, '');
    const cleanKey = (anonKey || '').trim();
    const cfg = {
      url: cleanUrl,
      anonKey: cleanKey,
      enabled: Boolean(cleanUrl && cleanKey)
    };
    localStorage.setItem(STORAGE_KEY_CONFIG, JSON.stringify(cfg));
    return cfg;
  }

  function getHeaders(cfg, extra = {}) {
    return Object.assign(
      {
        apikey: cfg.anonKey,
        Authorization: `Bearer ${cfg.anonKey}`,
        'Content-Type': 'application/json'
      },
      extra
    );
  }

  function songToRow(song) {
    return {
      id: song.id,
      title: song.title,
      composer: song.composer,
      liturgical_moment: song.liturgicalMoment,
      liturgical_season: song.liturgicalSeason || 'Qualquer',
      original_key: song.originalKey || 'C',
      bpm: Number(song.bpm) || 80,
      time_signature: song.timeSignature || '4/4',
      rhythm_name: song.rhythmName || 'Balada',
      rhythm_pattern: song.rhythmPattern || '↓  ↓ ↑  ↑ ↓ ↑',
      is_most_used: Boolean(song.isMostUsed),
      is_simple: Boolean(song.isSimple),
      chord_count: Number(song.chordCount) || 4,
      youtube_url: song.youtubeUrl || '',
      liturgical_analysis: song.liturgicalAnalysis || {},
      cifra: song.cifra
    };
  }

  function rowToSong(row) {
    return {
      id: row.id,
      title: row.title,
      composer: row.composer,
      liturgicalMoment: row.liturgical_moment,
      liturgicalSeason: row.liturgical_season || 'Qualquer',
      originalKey: row.original_key || 'C',
      bpm: row.bpm || 80,
      timeSignature: row.time_signature || '4/4',
      rhythmName: row.rhythm_name || 'Balada',
      rhythmPattern: row.rhythm_pattern || '↓  ↓ ↑  ↑ ↓ ↑',
      isMostUsed: Boolean(row.is_most_used),
      isSimple: Boolean(row.is_simple),
      chordCount: row.chord_count || 4,
      youtubeUrl: row.youtube_url || '',
      liturgicalAnalysis: row.liturgical_analysis || {},
      cifra: row.cifra
    };
  }

  async function fetchSongsFromSupabase() {
    const cfg = getConfig();
    if (!cfg.enabled) return null;
    const res = await fetch(`${cfg.url}/rest/v1/songs?select=*&order=title.asc`, {
      method: 'GET',
      headers: getHeaders(cfg)
    });
    if (!res.ok) {
      const errText = await res.text();
      throw new Error(`Erro Supabase (${res.status}): ${errText}`);
    }
    const rows = await res.json();
    return Array.isArray(rows) ? rows.map(rowToSong) : [];
  }

  async function pushSongsToSupabase(songsArray) {
    const cfg = getConfig();
    if (!cfg.enabled) throw new Error('Configure a URL e a Anon Key do Supabase primeiro.');
    const rows = songsArray.map(songToRow);
    // Envia em lotes de 50 para evitar payload excessivo
    const batchSize = 50;
    let totalSent = 0;
    for (let i = 0; i < rows.length; i += batchSize) {
      const chunk = rows.slice(i, i + batchSize);
      const res = await fetch(`${cfg.url}/rest/v1/songs?on_conflict=id`, {
        method: 'POST',
        headers: getHeaders(cfg, { Prefer: 'resolution=merge-duplicates,return=minimal' }),
        body: JSON.stringify(chunk)
      });
      if (!res.ok) {
        const errText = await res.text();
        throw new Error(`Falha ao enviar lote para public.songs (${res.status}): ${errText}`);
      }
      totalSent += chunk.length;
    }
    return totalSent;
  }

  async function pushFoldersToSupabase(foldersArray) {
    const cfg = getConfig();
    if (!cfg.enabled) return 0;
    const rows = foldersArray.map((f) => ({
      id: f.id,
      name: f.name,
      icon: f.icon || '📁',
      description: f.description || '',
      is_system: Boolean(f.isSystem),
      song_ids: f.songIds || [],
      updated_at: new Date().toISOString()
    }));
    const res = await fetch(`${cfg.url}/rest/v1/folders?on_conflict=id`, {
      method: 'POST',
      headers: getHeaders(cfg, { Prefer: 'resolution=merge-duplicates,return=minimal' }),
      body: JSON.stringify(rows)
    });
    if (!res.ok) {
      const errText = await res.text();
      throw new Error(`Falha ao sincronizar pastas (${res.status}): ${errText}`);
    }
    return rows.length;
  }

  async function fetchFoldersFromSupabase() {
    const cfg = getConfig();
    if (!cfg.enabled) return null;
    const res = await fetch(`${cfg.url}/rest/v1/folders?select=*`, {
      method: 'GET',
      headers: getHeaders(cfg)
    });
    if (!res.ok) return null;
    const rows = await res.json();
    if (!Array.isArray(rows) || rows.length === 0) return null;
    return rows.map((r) => ({
      id: r.id,
      name: r.name,
      icon: r.icon || '📁',
      description: r.description || '',
      isSystem: Boolean(r.is_system),
      songIds: Array.isArray(r.song_ids) ? r.song_ids : []
    }));
  }

  window.SantaCifraSupabase = {
    SCHEMA_SQL_SNIPPET,
    getConfig,
    saveConfig,
    fetchSongsFromSupabase,
    pushSongsToSupabase,
    pushFoldersToSupabase,
    fetchFoldersFromSupabase
  };
})();
