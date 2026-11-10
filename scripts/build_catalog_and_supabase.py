# -*- coding: utf-8 -*-
"""
Script unificador do Santa Cifra:
- Carrega as 65 músicas originais de generate_songs.py
- Carrega as +165 novas músicas (Padre Zezinho, Padre Marcelo Rossi, Canção Nova, Shalom, Anjos de Resgate, Vida Reluz, Rosa de Saron, Frei Gilson, Colo de Deus, Thiago Brado, Hinário CNBB, Lecionário Dominical)
- Totaliza 230 músicas católicas completas!
- Exporta:
  1. cifra-liturgica-web/js/songs-catalog.js
  2. cifra-liturgica-web/data/songs.json
  3. cifra-liturgica-web/supabase/schema.sql
  4. cifra-liturgica-web/supabase/seed_songs.sql
"""

import json
import os
import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, SCRIPT_DIR)

import generate_songs
from part1_padre_zezinho_marcelo import (
    make_song,
    PADRE_ZEZINHO_SONGS,
    PADRE_MARCELO_ROSSI_SONGS,
    CANCAO_NOVA_E_COMUNIDADES_1,
)
from part2_comunidades_cnbb import (
    ANJOS_VIDA_RELUZ_ROSA_SONGS,
    SHALOM_COLO_FREI_GILSON_SONGS,
    HINARIO_CNBB_E_CLASSICOS_SONGS,
)
from part3_more_catholic_hits import MORE_CATHOLIC_HITS
from part4_50_artists_and_fraternidades import (
    FRATERNIDADES_E_CAMPANHAS_SONGS,
    FIFTY_CATHOLIC_SINGERS_SONGS,
)
from enrich_all_cifras import (
    WALMIR_ALENCAR_EXTRA_SONGS,
    ensure_full_cifra,
)
from part5_special_days_and_classification import (
    SPECIAL_LITURGICAL_DAYS_SONGS,
    classify_song_liturgical_and_theme,
)
try:
    from part6_rosa_thiago_jonas_dom_catequese import PART6_SONGS
except ImportError:
    PART6_SONGS = []
try:
    from part7_singers_and_communities_expansion import PART7_SONGS
except ImportError:
    PART7_SONGS = []
try:
    from part8_padres_and_liturgical_authors import PART8_SONGS
except ImportError:
    PART8_SONGS = []

EXTRA_10_SONGS = [
    make_song(
        "forca-de-paz-padre-zezinho",
        "Força de Paz (Paz Inquieta)",
        "Padre Zezinho, scj",
        "Final", "Tempo Comum", "D", 88, "4/4", "Marcha Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Missionário da Paz", 94, "Estudo 79 CNBB", "Jo 14, 27",
        "Clássico do Padre Zezinho sobre ser força de paz no mundo.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Quero ser força de paz, onde houver guerra levar o amor;
   Bm                       Em              A7          D
Ser um cristão que não cansa jamais de anunciar o Senhor!"""
    ),
    make_song(
        "deus-e-amor-pe-zezinho",
        "Deus É Amor (1 João 4, 8)",
        "Padre Zezinho, scj",
        "Comunhão", "Tempo Comum", "C", 80, "4/4", "Balada Bíblica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Bíblico Joânico (1 João 4, 8)", 97, "IGMR 86 / 1João 4, 8", "1Jo 4, 7-16",
        "Quatro acordes básicos (C, Am, Dm, G7) cantando que Deus é Amor e quem permanece no amor permanece em Deus.",
        """[Intro] C  Am  Dm  G7  C

[Refrão]
   C                        Am              Dm          G7
Deus é Amor, Deus é Amor: quem vive no amor vive em Deus,
   Dm                       G7              C
E Deus vive nele, porque Deus é Amor!"""
    ),
    make_song(
        "louvemos-ao-senhor-pe-marcelo-rossi",
        "Louvemos ao Senhor (Subamos à Montanha do Senhor)",
        "Padre Marcelo Rossi / Adhemar de Campos",
        "Entrada", "Tempo Comum", "G", 104, "4/4", "Pop Louvor", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Entrada para Encontros e Grupos de Oração", 92, "Is 2, 3 / Sl 99", "Is 2, 3; Sl 99",
        "Quatro acordes em Sol maior para abertura festiva de encontros.",
        """[Intro] G  Em  C  D7

[Primeira Parte]
   G                        Em              C           D7
1. Louvemos ao Senhor, louvemos ao Senhor,
   G                        Em              C     D7    G
Adoremos no Seu santo monte, nosso Pai amado!
   C                        D7              G           Em
Seu Nome é santo! Louvemos ao Senhor!"""
    ),
    make_song(
        "faz-um-milagre-em-mim-pe-marcelo-rossi",
        "Faz um Milagre em Mim (Como Zaqueu)",
        "Padre Marcelo Rossi / Régis Danese",
        "Ação de Graças", "Tempo Comum", "G", 74, "4/4", "Balada Evangélica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Baseado no Evangelho de Zaqueu (Lucas 19, 1-10)", 94, "Lucas 19, 1-10", "Lc 19, 1-10",
        "Quatro acordes fixos (G, D, Em, C) do início ao fim, inspirado na conversão de Zaqueu.",
        """[Intro] G  D  Em  C

[Primeira Parte]
   G                                        D
1. Como Zaqueu, eu quero subir
   Em                                       C
O mais alto que eu puder;
   G                                        D
Só pra Te ver, olhar para Ti,
   Em                                       C
E chamar Sua atenção para mim!

   C                                        G
Eu preciso de Ti, Senhor! Eu preciso de Ti, oh Pai!
   Em                                       C           D
Sou pequeno demais, me dá a Tua paz, largo tudo pra Te seguir!

[Refrão]
   G                                        D
Entra na minha casa, entra na minha vida,
   Em                                       C
Mexe com minha estrutura, sara todas as feridas!
   G                                        D
Me ensina a ter santidade, quero amar somente a Ti,
   Em                                       C           G
Porque o Senhor é o meu bem maior: faz um milagre em mim!"""
    ),
    make_song(
        "soberano-eliana-ribeiro",
        "Soberano, Maravilhoso",
        "Eliana Ribeiro / Canção Nova",
        "Ação de Graças", "Qualquer", "D", 72, "4/4", "Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Adoração ao Santíssimo", 95, "Adoração Eucarística", "Sl 92; Ap 4, 11",
        "Quatro acordes em Ré maior (D, A, Bm, G) para adoração ao Santíssimo Sacramento.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm          G
Soberano, Maravilhoso, Deus que não sabe o que é falhar!
   D                        A               Bm    G     D
Fiel e Poderoso, diante de Ti quero me prostrar!"""
    ),
    make_song(
        "gratidao-eu-encontrei-um-amor-perfeito",
        "Gratidão (Eu Encontrei um Amor Perfeito - Lucas 17, 15)",
        "Canção Nova / Raquel Carpenter",
        "Ação de Graças", "Qualquer", "G", 72, "4/4", "Balada de Ação de Graças", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Ação de Graças (O Leproso Agradecido - Lucas 17)", 96,
        "Lucas 17, 15-18 / Pós-Comunhão", "Lc 17, 15-18; Sl 115",
        "Quatro acordes (G, D, Em, C) para agradecer a Jesus Sacramentado após a Comunhão.",
        """[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Eu encontrei um amor perfeito, um tesouro escondido,
   C                        Am              D
Diante deste altar!
   G                        D               Em
Seu valor é maior que tudo, nada poderá se igualar!

[Refrão]
   G                        D               Em
Te agradecer, Te dar o meu amor,
   C                        Am              D
É tudo o que eu quero fazer, meu Senhor!
   G                        D               Em
Derramar meu perfume aos Teus pés,
   C                        D               G
E estar sempre perto de Ti!"""
    ),
    make_song(
        "eis-me-aqui-senhor-comunidade-shalom",
        "Eis-me Aqui (Comunidade Shalom)",
        "Comunidade Católica Shalom",
        "Ofertório", "Tempo Comum", "C", 74, "4/4", "Balada Vocacional", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Vocacional e de Oferta de Vida", 96, "Isaías 6, 8 / IGMR 74", "Is 6, 8",
        "Quatro acordes simples (C, G, Am, F) de oferta vocacional.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Eis-me aqui, Senhor, pra fazer Tua vontade,
   F                        G               C
Toma a minha vida, consagra o meu coração!"""
    ),
    make_song(
        "tu-es-o-centro-frei-gilson",
        "Tu És o Centro da Minha Vida",
        "Frei Gilson / Som do Monte",
        "Ação de Graças", "Qualquer", "G", 72, "4/4", "Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Cristocêntrico de Adoração", 96, "Colossenses 1, 17-18", "Cl 1, 17-18",
        "Quatro acordes (G, D, Em, C) proclamando Jesus como o centro de toda a vida cristã.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D
Tu és o centro da minha vida,
   Em                       C
És a razão da minha alegria!
   G                        D
Não quero nada além de Ti, Jesus:
   Em                       C               G
Tu és meu Tudo, meu Senhor!"""
    ),
    make_song(
        "fogo-abrasador-comunidade-shalom",
        "Fogo Abrasador",
        "Comunidade Católica Shalom / Suely Façanha",
        "Comunhão", "Pentecostes", "D", 74, "4/4", "Balada de Consagração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino de Consagração e Amor Esponsal a Cristo", 97, "Cântico dos Cânticos 8, 6", "Ct 8, 6; Lc 12, 49",
        "Clássico da Comunidade Shalom em Ré maior.",
        """[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A               Bm
1. Se Tu inflamas o meu coração,
   G                        Em              A7
Se Tu somente és a minha razão de viver e amar:

[Refrão]
   D                        A               Bm
Em tuas mãos minha vida está, Teu coração é onde quero morar,
   G                        A7              D
E unir-me em amor como um fogo abrasador!"""
    ),
    make_song(
        "maranatha-vem-senhor-jesus-advento",
        "Maranathá! Vem, Senhor Jesus! (Apocalipse 22, 20)",
        "Pe. Reginaldo Veloso / Comunidade Shalom",
        "Entrada", "Advento", "Am", 84, "4/4", "Clamor do Advento", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clamor Escatológico Bíblico do Advento (Apocalipse 22, 20 / 1Cor 16, 22)", 100,
        "Catecismo 451 / Missal Romano - Advento", "Ap 22, 20; 1Cor 16, 22",
        "Quatro acordes em Lá menor (Am, Dm, G, C, E7) entoando a prece aramaica dos primeiros cristãos: Maranathá!",
        """[Intro] Am  Dm  G  C  E7  Am

[Refrão]
   Am                       Dm              G           C
Maranathá! Vem, Senhor Jesus!
   Dm                       Am              E7          Am
Maranathá! Vem, Senhor Jesus!

[Estrofe]
   Am                       Dm              G           C
1. O Espírito e a Esposa dizem: "Vem!" E quem ouve diga também: "Vem!"
   Dm                       Am              E7          Am
Vem depressa visitar a Tua vinha, ó Sol nascente da justiça!"""
    ),
]

def sql_escape(val):
    if val is None:
        return "NULL"
    return "'" + str(val).replace("'", "''") + "'"

def main():
    base_songs = list(generate_songs.songs)
    new_batches = (
        SPECIAL_LITURGICAL_DAYS_SONGS
        + PADRE_ZEZINHO_SONGS
        + PADRE_MARCELO_ROSSI_SONGS
        + CANCAO_NOVA_E_COMUNIDADES_1
        + ANJOS_VIDA_RELUZ_ROSA_SONGS
        + WALMIR_ALENCAR_EXTRA_SONGS
        + SHALOM_COLO_FREI_GILSON_SONGS
        + HINARIO_CNBB_E_CLASSICOS_SONGS
        + MORE_CATHOLIC_HITS
        + EXTRA_10_SONGS
        + FRATERNIDADES_E_CAMPANHAS_SONGS
        + FIFTY_CATHOLIC_SINGERS_SONGS
        + PART6_SONGS
        + PART7_SONGS
        + PART8_SONGS
    )

    seen_ids = set(s["id"] for s in base_songs)
    all_songs = [classify_song_liturgical_and_theme(ensure_full_cifra(s)) for s in base_songs]
    for s in new_batches:
        if s["liturgicalMoment"] == "Aclamação":
            s["liturgicalMoment"] = "Aclamação ao Evangelho"
        elif s["liturgicalMoment"] == "Cordeiro":
            s["liturgicalMoment"] = "Cordeiro de Deus"
        elif s["liturgicalMoment"] == "Envio":
            s["liturgicalMoment"] = "Final"
        elif s["liturgicalMoment"] in ("Canto Mariano", "Louvor", "Adoração"):
            s["liturgicalMoment"] = "Ação de Graças"
        if s["id"] not in seen_ids:
            seen_ids.add(s["id"])
            all_songs.append(classify_song_liturgical_and_theme(ensure_full_cifra(s)))

    web_dir = os.path.join(os.path.dirname(SCRIPT_DIR), "santa-cifra")
    js_path = os.path.join(web_dir, "js", "songs-catalog.js")
    catalog_dir = os.path.join(web_dir, "js", "catalog")
    data_dir = os.path.join(web_dir, "data")
    supabase_dir = os.path.join(web_dir, "supabase")
    os.makedirs(catalog_dir, exist_ok=True)
    os.makedirs(data_dir, exist_ok=True)
    os.makedirs(supabase_dir, exist_ok=True)

    # 1. Split catalog into 4 modular JS files in js/catalog/
    #    - catalog-ordinario-salmos.js (Ordinário da Missa e Salmos - Litúrgicas)
    #    - catalog-entrada-final.js (Litúrgicas de Entrada e Envio Final)
    #    - catalog-ofertorio-comunhao.js (Litúrgicas de Ofertório, Comunhão e Pós-Comunhão Litúrgico)
    #    - catalog-adoracao-comunidades.js (Músicas Populares / Devocionais - Fora da Missa)
    ordinario_moments = {
        "Ato Penitencial",
        "Glória",
        "Salmo",
        "Aclamação ao Evangelho",
        "Santo",
        "Cordeiro de Deus",
    }
    entrada_final_moments = {"Entrada", "Final"}

    cat_ordinario = [
        s for s in all_songs
        if s.get("repertoireType") == "liturgica" and s["liturgicalMoment"] in ordinario_moments
    ]
    cat_entrada_final = [
        s for s in all_songs
        if s.get("repertoireType") == "liturgica" and s["liturgicalMoment"] in entrada_final_moments
    ]
    cat_ofertorio_comunhao = [
        s for s in all_songs
        if s.get("repertoireType") == "liturgica"
        and s["liturgicalMoment"] not in (ordinario_moments | entrada_final_moments)
    ]
    cat_adoracao = [
        s for s in all_songs
        if s.get("repertoireType") == "popular"
    ]

    catalog_parts = [
        ("catalog-ordinario-salmos.js", "SongsCatalogOrdinario", "Litúrgicas: Ordinário da Missa e Salmos", cat_ordinario),
        ("catalog-entrada-final.js", "SongsCatalogEntradaFinal", "Litúrgicas: Cantos de Entrada, Temas e Envio Final", cat_entrada_final),
        ("catalog-ofertorio-comunhao.js", "SongsCatalogOfertorioComunhao", "Litúrgicas: Cantos de Ofertório e Comunhão", cat_ofertorio_comunhao),
        ("catalog-adoracao-comunidades.js", "SongsCatalogAdoracaoComunidades", "Populares e Devocionais: Encontros, Retiros, Grupos de Oração e Adoração (Fora da Missa)", cat_adoracao),
    ]

    for filename, var_name, desc, items in catalog_parts:
        part_path = os.path.join(catalog_dir, filename)
        content = (
            f"// Santa Cifra — Módulo de Catálogo: {desc} ({len(items)} músicas)\n"
            f"window.{var_name} = {json.dumps(items, ensure_ascii=False, indent=2)};\n"
        )
        with open(part_path, "w", encoding="utf-8") as f:
            f.write(content)

    # Write aggregator js/songs-catalog.js (concise barrel file)
    aggregator_js = """/**
 * Santa Cifra — Agregador Modular do Catálogo (Músicas Litúrgicas + Populares/Devocionais)
 * Une os 4 módulos de js/catalog/*.js em window.SongsCatalog.
 */
(function () {
  'use strict';
  window.SongsCatalog = [].concat(
    window.SongsCatalogOrdinario || [],
    window.SongsCatalogEntradaFinal || [],
    window.SongsCatalogOfertorioComunhao || [],
    window.SongsCatalogAdoracaoComunidades || []
  );
})();
"""
    with open(js_path, "w", encoding="utf-8") as f:
        f.write(aggregator_js)

    # 2. Write data/songs.json and version.json (OTA Manifest)
    json_path = os.path.join(data_dir, "songs.json")
    with open(json_path, "w", encoding="utf-8") as f:
        json.dump(all_songs, f, ensure_ascii=False, indent=2)

    version_manifest = {
        "version": "3.5.0",
        "apkVersionCode": 8,
        "buildId": f"sc-v3.5.0-{len(all_songs)}",
        "totalSongs": len(all_songs),
        "liturgicalSongs": len(cat_ordinario) + len(cat_entrada_final) + len(cat_ofertorio_comunhao),
        "popularSongs": len(cat_adoracao),
        "apkDownloadUrl": "https://santa-cifra.surge.sh/santa-cifra.apk",
        "liveUrl": "https://santa-cifra.surge.sh"
    }
    with open(os.path.join(web_dir, "version.json"), "w", encoding="utf-8") as f:
        json.dump(version_manifest, f, ensure_ascii=False, indent=2)

    # 3. Write supabase/schema.sql (Anti-IDOR RLS Schema)
    schema_sql = """-- ============================================================================
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
"""
    with open(os.path.join(supabase_dir, "schema.sql"), "w", encoding="utf-8") as f:
        f.write(schema_sql)

    # 4. Write supabase/seed_songs.sql
    seed_lines = [
        "-- ============================================================================",
        f"-- SANTA CIFRA - SEED MASSIVO DE {len(all_songs)} MÚSICAS CATÓLICAS PARA SUPABASE",
        "-- ============================================================================",
        "INSERT INTO public.songs (",
        "  id, title, composer, liturgical_moment, liturgical_season, original_key,",
        "  bpm, time_signature, rhythm_name, rhythm_pattern, is_most_used, is_simple,",
        "  chord_count, youtube_url, liturgical_analysis, cifra",
        ") VALUES"
    ]
    val_rows = []
    for s in all_songs:
        analysis_json = json.dumps(s.get("liturgicalAnalysis", {}), ensure_ascii=False)
        row = (
            f"  ({sql_escape(s['id'])}, {sql_escape(s['title'])}, {sql_escape(s['composer'])}, "
            f"{sql_escape(s['liturgicalMoment'])}, {sql_escape(s['liturgicalSeason'])}, {sql_escape(s['originalKey'])}, "
            f"{int(s.get('bpm', 80))}, {sql_escape(s.get('timeSignature', '4/4'))}, "
            f"{sql_escape(s.get('rhythmName', 'Balada'))}, {sql_escape(s.get('rhythmPattern', '↓  ↓ ↑  ↑ ↓ ↑'))}, "
            f"{'true' if s.get('isMostUsed') else 'false'}, {'true' if s.get('isSimple') else 'false'}, "
            f"{int(s.get('chordCount', 4))}, {sql_escape(s.get('youtubeUrl', ''))}, "
            f"{sql_escape(analysis_json)}::jsonb, {sql_escape(s['cifra'])})"
        )
        val_rows.append(row)

    seed_lines.append(",\n".join(val_rows))
    seed_lines.append(
        "ON CONFLICT (id) DO UPDATE SET\n"
        "  title = EXCLUDED.title,\n"
        "  composer = EXCLUDED.composer,\n"
        "  liturgical_moment = EXCLUDED.liturgical_moment,\n"
        "  liturgical_season = EXCLUDED.liturgical_season,\n"
        "  original_key = EXCLUDED.original_key,\n"
        "  bpm = EXCLUDED.bpm,\n"
        "  rhythm_name = EXCLUDED.rhythm_name,\n"
        "  rhythm_pattern = EXCLUDED.rhythm_pattern,\n"
        "  is_most_used = EXCLUDED.is_most_used,\n"
        "  is_simple = EXCLUDED.is_simple,\n"
        "  chord_count = EXCLUDED.chord_count,\n"
        "  liturgical_analysis = EXCLUDED.liturgical_analysis,\n"
        "  cifra = EXCLUDED.cifra;\n"
    )
    with open(os.path.join(supabase_dir, "seed_songs.sql"), "w", encoding="utf-8") as f:
        f.write("\n".join(seed_lines))

    print(f"SUCCESS! Generated {len(all_songs)} unique Catholic & Liturgical songs.")
    # Breakdown by moment
    moments = {}
    for s in all_songs:
        m = s["liturgicalMoment"]
        moments[m] = moments.get(m, 0) + 1
    for m, count in sorted(moments.items(), key=lambda x: -x[1]):
        print(f"  - {m}: {count}")

if __name__ == "__main__":
    main()
