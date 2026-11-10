-- ============================================================================
-- SANTA CIFRA - SCHEMA OFICIAL SUPABASE (PostgreSQL + Row Level Security)
-- Execute este script no SQL Editor do seu projeto Supabase
-- ============================================================================

-- 1. Tabela de Músicas / Cifras Litúrgicas
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

-- Índices para busca rápida no Santa Cifra
CREATE INDEX IF NOT EXISTS idx_songs_moment ON public.songs (liturgical_moment);
CREATE INDEX IF NOT EXISTS idx_songs_season ON public.songs (liturgical_season);
CREATE INDEX IF NOT EXISTS idx_songs_most_used ON public.songs (is_most_used);
CREATE INDEX IF NOT EXISTS idx_songs_simple ON public.songs (is_simple);
CREATE INDEX IF NOT EXISTS idx_songs_composer ON public.songs (composer);

-- 2. Tabela de Pastas / Playlists (Estilo Spotify)
CREATE TABLE IF NOT EXISTS public.folders (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    icon TEXT NOT NULL DEFAULT '📁',
    description TEXT NOT NULL DEFAULT '',
    is_system BOOLEAN NOT NULL DEFAULT false,
    song_ids JSONB NOT NULL DEFAULT '[]'::jsonb,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- 3. Habilitar Row Level Security (RLS) com acesso para o cliente Web (anon/authenticated)
ALTER TABLE public.songs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.folders ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Leitura publica de cifras" ON public.songs;
CREATE POLICY "Leitura publica de cifras" ON public.songs
    FOR SELECT USING (true);

DROP POLICY IF EXISTS "Insercao e atualizacao publica de cifras" ON public.songs;
CREATE POLICY "Insercao e atualizacao publica de cifras" ON public.songs
    FOR ALL USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "Acesso publico a pastas" ON public.folders;
CREATE POLICY "Acesso publico a pastas" ON public.folders
    FOR ALL USING (true) WITH CHECK (true);
