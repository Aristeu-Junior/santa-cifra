-- ============================================================================
-- SANTA CIFRA - SCHEMA OFICIAL SUPABASE (PostgreSQL + Anti-IDOR Row Level Security)
-- Execute este script no SQL Editor do seu projeto Supabase
-- ============================================================================

-- 1. Tabela de Perfis de Usuários (Vinculada a auth.users)
CREATE TABLE IF NOT EXISTS public.profiles (
    id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    name TEXT NOT NULL CHECK (char_length(name) BETWEEN 2 AND 60),
    email TEXT NOT NULL,
    parish TEXT DEFAULT '' CHECK (char_length(parish) <= 80),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- 2. Tabela de Músicas / Cifras Litúrgicas (Catálogo Público + Contribuições)
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

CREATE INDEX IF NOT EXISTS idx_songs_moment ON public.songs (liturgical_moment);
CREATE INDEX IF NOT EXISTS idx_songs_season ON public.songs (liturgical_season);
CREATE INDEX IF NOT EXISTS idx_songs_most_used ON public.songs (is_most_used);
CREATE INDEX IF NOT EXISTS idx_songs_simple ON public.songs (is_simple);
CREATE INDEX IF NOT EXISTS idx_songs_composer ON public.songs (composer);

-- 3. Tabela de Pastas Pessoais (Protegida contra IDOR por user_id)
CREATE TABLE IF NOT EXISTS public.folders (
    id TEXT NOT NULL,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    name TEXT NOT NULL CHECK (char_length(name) BETWEEN 1 AND 60),
    icon TEXT NOT NULL DEFAULT 'folder',
    description TEXT NOT NULL DEFAULT '' CHECK (char_length(description) <= 120),
    is_system BOOLEAN NOT NULL DEFAULT false,
    song_ids JSONB NOT NULL DEFAULT '[]'::jsonb,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (user_id, id)
);

CREATE INDEX IF NOT EXISTS idx_folders_user_id ON public.folders (user_id);

-- 4. Row Level Security (RLS) Estrito contra IDOR
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.songs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.folders ENABLE ROW LEVEL SECURITY;

-- Políticas de Perfil: cada usuário só lê e edita o próprio perfil
DROP POLICY IF EXISTS "Perfil proprio leitura e edicao" ON public.profiles;
CREATE POLICY "Perfil proprio leitura e edicao" ON public.profiles
    FOR ALL
    USING (auth.uid() = id)
    WITH CHECK (auth.uid() = id);

-- Políticas de Músicas: leitura pública; escrita apenas autenticada
DROP POLICY IF EXISTS "Leitura publica de cifras" ON public.songs;
CREATE POLICY "Leitura publica de cifras" ON public.songs
    FOR SELECT USING (true);

DROP POLICY IF EXISTS "Insercao autenticada de cifras" ON public.songs;
CREATE POLICY "Insercao autenticada de cifras" ON public.songs
    FOR INSERT WITH CHECK (auth.role() = 'authenticated');

-- Políticas de Pastas (Anti-IDOR): usuário autenticado SÓ acessa/modifica pastas onde user_id = auth.uid()
DROP POLICY IF EXISTS "Pastas isoladas por usuario Anti-IDOR" ON public.folders;
CREATE POLICY "Pastas isoladas por usuario Anti-IDOR" ON public.folders
    FOR ALL
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);
