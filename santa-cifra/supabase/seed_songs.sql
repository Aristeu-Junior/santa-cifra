-- SANTA CIFRA — Seed de Músicas Litúrgicas e Populares Católicas
-- Gerado automaticamente a partir de data/songs.json (Versão 3.8.5)
-- Total de músicas: 552

INSERT INTO public.songs (
  id, title, artist, composer, original_key, bpm, time_signature,
  rhythm_name, rhythm_pattern, is_liturgical, is_most_used, is_simple,
  chord_count, liturgical_moment, liturgical_season, biblical_ref,
  repertoire_type, cifra, search_vector
) VALUES
(
  'senhor-que-viestes-salvar',
  'Senhor, que Viestes Salvar os Corações Arrependidos',
  'Pe. Zeca / JMJ',
  'Pe. Zeca / JMJ',
  'D',
  68,
  '4/4',
  'Balada Lenta Orante',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Ato Penitencial',
  'Qualquer',
  'Sl 50; Lc 18, 13',
  'liturgica',
  '[Intro] D  A  Bm  G  A  D

D          A       Bm
Senhor que viestes salvar
G         A   D
Os corações arrependidos:
G      Gm     D   Bm   Em   A   D
Piedade, piedade, piedade de nós!
G      Gm     D   Bm   Em   A   D
Piedade, piedade, piedade de nós!

D          A      Bm
Ó Cristo que viestes chamar
G          A     D
Os pecadores humilhados:
G      Gm     D   Bm   Em   A   D
Piedade, piedade, piedade de nós!

D          A       Bm
Senhor que intercedeis por nós
G          A   D
Junto a Deus Pai que nos perdoa:
G      Gm     D   Bm   Em   A   D
Piedade, piedade, piedade de nós!',
  to_tsvector('portuguese', 'Senhor, que Viestes Salvar os Corações Arrependidos ' || '')
),
(
  'senhor-tende-piedade-de-nos-simples',
  'Senhor, Tende Piedade de Nós (Clássico 3 Acordes)',
  'Tradicional Litúrgico (Missal Romano)',
  'Tradicional Litúrgico (Missal Romano)',
  'Em',
  72,
  '4/4',
  'Balada Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Ato Penitencial',
  'Qualquer',
  'Mt 20, 30',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Primeira Parte]
Em         Am
Senhor, tende piedade de nós!
B7         Em
Senhor, tende piedade de nós!
Em         Am
Senhor, tende piedade de nós!
B7         Em
Tende piedade de nós!

[Segunda Parte]
Em         Am
Cristo, tende piedade de nós!
B7         Em
Cristo, tende piedade de nós!
Em         Am
Cristo, tende piedade de nós!
B7         Em
Tende piedade de nós!

[Terceira Parte]
Em         Am
Senhor, tende piedade de nós!
B7         Em
Senhor, tende piedade de nós!
Em         Am
Senhor, tende piedade de nós!
B7         Em
Tende piedade de nós!',
  to_tsvector('portuguese', 'Senhor, Tende Piedade de Nós (Clássico 3 Acordes) ' || '')
),
(
  'kyrie-eleison-shalom',
  'Kyrie Eleison (Como a Ovelha Perdida)',
  'Nicodemos Costa / Comunidade Católica Shalom',
  'Nicodemos Costa / Comunidade Católica Shalom',
  'G',
  70,
  '4/4',
  'Balada Orante',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  false,
  11,
  'Ato Penitencial',
  'Qualquer',
  'Lc 15, 4; Lc 23, 42',
  'liturgica',
  '[Intro] G  D/F#  Em  Bm  C  G/B  Am  C  G/B  D

[Primeira Parte]
G            D/F#
Como a ovelha perdida
Em           Bm
Pelo pecado ferida
Am         D   D#º  Em  D9/F#
Eu Te suplico perdão, ó Bom Pastor!

[Refrão 1]
G      D/F#  Em     Bm
Kyrie eleison! Kyrie eleison!
C       G/B  Am   C   G/B  D/F#  G
Kyrie   e   -  le  -  i  -  son!

[Segunda Parte]
G             D/F#
Como o ladrão perdoado
Em            Bm
Encontro o paraíso ao Teu lado
Am         D       D#º  Em  D9/F#
Lembra-te de mim, pecador, por Tua Cruz!

[Refrão 2]
G       D/F#    Em      Bm
Christe eleison! Christe eleison!
C       G/B  Am   C   G/B  D/F#  G
Chri - ste  e  -  le  -  i  -  son!

[Terceira Parte]
G             D/F#
Como a pecadora caída
Em         Bm
Derramo aos Teus pés minha vida
Am         D            D#º  Em  D9/F#
Vê as lágrimas do meu coração e salva-me!

[Refrão 3]
G      D/F#  Em     Bm
Kyrie eleison! Kyrie eleison!
C       G/B  Am   C   Bm  Am  G  D  G
Kyrie   e   -  le  -  i  -  son!',
  to_tsvector('portuguese', 'Kyrie Eleison (Como a Ovelha Perdida) ' || '')
),
(
  'perdao-senhor-tantos-erros-cometi',
  'Perdão, Senhor, Tantos Erros Cometi',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'C',
  68,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓',
  true,
  false,
  true,
  5,
  'Ato Penitencial',
  'Qualquer',
  'Sl 50',
  'liturgica',
  '[Intro] C  Am  Dm  G  C

[Primeira Parte]
C         Am          Dm         G
Perdão, Senhor, tantos erros cometi,
Em         Am          Dm       G       C    C7
Perdão, Senhor, tantas vezes me omiti!
F         G           Em         Am
Perdão, Senhor, pelos males que causei,
Dm         G           C        C7
Pelas coisas que falei, pelo irmão que não amei!

[Refrão]
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C      C7
Meu pecado vem lavar com Seu amor!
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C
Meu pecado vem lavar com Seu amor!

[Segunda Parte]
C         Am          Dm         G
Senhor, que Te compadeces de nós, pecadores,
Em         Am          Dm       G       C    C7
Senhor, que nos acolhes em Teus santos braços,
F         G           Em         Am
Tem compaixão de nós, renova a nossa vida,
Dm         G           C        C7
Sustenta os nossos passos no caminho do amor!

[Refrão]
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C      C7
Meu pecado vem lavar com Seu amor!
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C
Meu pecado vem lavar com Seu amor!',
  to_tsvector('portuguese', 'Perdão, Senhor, Tantos Erros Cometi ' || '')
),
(
  'gloria-a-deus-nas-alturas-cnbb',
  'Glória a Deus nas Alturas (Oficial da Liturgia)',
  'Casemiro V. Nogueira / CNBB',
  'Casemiro V. Nogueira / CNBB',
  'E',
  88,
  '4/4',
  'Marcha Solene / Louvor',
  '↓  ↓  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Glória',
  'Tempo Comum',
  'Lc 2, 14; Ap 5, 12',
  'liturgica',
  '[Intro] E  B7  E

[Refrão]
    E      B7    F#m
Glória a Deus nas alturas,
       B7       E
Glória a Deus nas alturas!
    E7     A
E paz na terra aos homens
       E     B7    E
por Ele amados.

[Solo / Estrofe 1]
    E         B7
Senhor Deus, Rei dos céus,
    A           E
Deus Pai todo-poderoso:
    A         E
Nós vos louvamos, nós vos bendizemos,
    F#7           B7
Nós vos adoramos, nós vos glorificamos,
    A          B7     E
Nós vos damos graças por vossa imensa glória.

[Solo / Estrofe 2]
    E            B7
Senhor Jesus Cristo, Filho Unigênito,
    A         E
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai.
    A         E
Vós que tirais o pecado do mundo,
    F#7        B7
Tende piedade de nós.
    A         E
Vós que tirais o pecado do mundo,
    F#7           B7
Acolhei a nossa súplica.
    A         E
Vós que estais à direita do Pai,
    B7         E
Tende piedade de nós.

[Solo / Estrofe 3]
    E           B7
Só vós sois o Santo, só vós, o Senhor,
    A         E
Só vós, o Altíssimo, Jesus Cristo,
    A           E
Com o Espírito Santo,
       B7           E
Na glória de Deus Pai. Amém!',
  to_tsvector('portuguese', 'Glória a Deus nas Alturas (Oficial da Liturgia) ' || '')
),
(
  'gloria-a-deus-nas-alturas-simplificado-do',
  'Glória a Deus nas Alturas (Fácil Sem Pestana em Dó)',
  'Hinário Litúrgico CNBB',
  'Hinário Litúrgico CNBB',
  'C',
  90,
  '4/4',
  'Balada Festiva',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Glória',
  'Tempo Comum',
  'Lc 2, 14',
  'liturgica',
  '[Intro] C  Am  Dm  G  C

[Refrão]
C       Am    Dm   G
Glória a Deus nas alturas!
C       Am    Dm   G
Glória a Deus nas alturas!
C          Em      Am         Dm   G    C
E paz na terra aos homens por Ele amados!

[Estrofe 1]
C         Am
Senhor Deus, Rei dos céus, Deus Pai todo-poderoso:
Dm         G
Nós vos louvamos, nós vos bendizemos,
C         Am
Nós vos adoramos, nós vos glorificamos,
Dm         G         C
Nós vos damos graças por vossa imensa glória!

[Estrofe 2]
C         Am
Senhor Jesus Cristo, Filho Unigênito,
Dm         G
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai:
C         Am
Vós que tirais o pecado do mundo, tende piedade de nós!
Dm         G
Vós que tirais o pecado do mundo, acolhei a nossa súplica!
C         Am         Dm    G    C
Vós que estais à direita do Pai, tende piedade de nós!

[Estrofe 3]
C         Am
Só vós sois o Santo, só vós, o Senhor,
Dm         G
Só vós, o Altíssimo, Jesus Cristo,
C         Am       Dm   G    C
Com o Espírito Santo, na glória de Deus Pai. Amém!',
  to_tsvector('portuguese', 'Glória a Deus nas Alturas (Fácil Sem Pestana em Dó) ' || '')
),
(
  'o-senhor-e-meu-pastor-salmo-23',
  'O Senhor É Meu Pastor, Nada Me Faltará (Salmo 23)',
  'Lecionário Dominical / Salmo Responsorial',
  'Lecionário Dominical / Salmo Responsorial',
  'G',
  70,
  '3/4',
  'Valsa Meditativa',
  '↓   ↑ ↓   ↑ ↓',
  true,
  true,
  true,
  4,
  'Salmo',
  'Tempo Comum',
  'Salmo 22 (23)',
  'liturgica',
  '[Intro] G  Em  C  D  G

[Refrão]
G       Em      C        D
O Senhor é meu pastor, nada me faltará!
G       Em      C   D    G
O Senhor é meu pastor, nada me faltará!

[Estrofe 1]
G         Em
1. O Senhor é meu pastor, nada me falta;
C         Am           D
Em verdes pastagens me faz repousar.
C         D        G       Em
Conduz-me junto às águas refrescantes
C         Am           D
E restaura as forças da minha alma.

[Estrofe 2]
G         Em
2. Guia-me pelo caminho do bem,
C         Am         D
Por causa da honra do seu santo Nome.
C         D            G      Em
Mesmo que eu passe pelo vale tenebroso,
C         Am           D
Não temo mal algum, estais comigo!',
  to_tsvector('portuguese', 'O Senhor É Meu Pastor, Nada Me Faltará (Salmo 23) ' || '')
),
(
  'enviai-o-vosso-espirito-senhor-salmo-103',
  'Enviai o Vosso Espírito, Senhor (Salmo 103)',
  'Lecionário / Solenidade de Pentecostes',
  'Lecionário / Solenidade de Pentecostes',
  'C',
  72,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  6,
  'Salmo',
  'Páscoa',
  'Sl 103 (104), 30',
  'liturgica',
  '[Intro] C  Am  F  G  C

[Refrão]
C         Am
Enviai o vosso Espírito, Senhor,
F         G         C
E da terra toda a face renovai!
C         Am
Enviai o vosso Espírito, Senhor,
F         G         C
E da terra toda a face renovai!

[Estrofe 1]
Am         Em
1. Bendize, ó minha alma, ao Senhor!
F         G
Ó meu Deus e meu Senhor, como sois grande!
Am         Em
Quão numerosas, ó Senhor, são vossas obras,
F            G         C
E que sabedoria em todas elas transborda!

[Refrão]
C         Am
Enviai o vosso Espírito, Senhor,
F         G         C
E da terra toda a face renovai!

[Estrofe 2]
Am         Em
2. Todos eles, ó Senhor, de vós esperam
F         G
Que a seu tempo vós lhes deis o alimento;
Am         Em
Vós lhes dais o que comer e eles recolhem,
F            G         C
Vós abris a vossa mão e todos se fartam!

[Refrão]
C         Am
Enviai o vosso Espírito, Senhor,
F         G         C
E da terra toda a face renovai!

[Estrofe 3]
Am         Em
3. Se tirais o seu respiro, eles perecem
F         G
E voltam para o pó de onde vieram;
Am         Em
Enviais o vosso Espírito e renascem,
F           G         C
E da terra toda a face vós renovais!

[Refrão]
C         Am
Enviai o vosso Espírito, Senhor,
F         G         C
E da terra toda a face renovai!

[Estrofe 4]
Am         Em
4. Glória ao Senhor pelos seus feitos eternos,
F         G
Alegre-se o Senhor em suas criaturas!
Am         Em
Que o meu canto seja a Ele agradável,
F            G         C
No Senhor eu ponho toda a minha alegria!

[Refrão Final]
C         Am
Enviai o vosso Espírito, Senhor,
F         G         C
E da terra toda a face renovai!',
  to_tsvector('portuguese', 'Enviai o Vosso Espírito, Senhor (Salmo 103) ' || '')
),
(
  'misericordia-o-senhor-pois-pecamos-salmo-50',
  'Misericórdia, ó Senhor, pois Pecamos (Salmo 50)',
  'Lecionário Quaresmal',
  'Lecionário Quaresmal',
  'Em',
  64,
  '4/4',
  'Dedilhado Penitencial',
  'P  i  m  a',
  true,
  true,
  true,
  4,
  'Salmo',
  'Quaresma',
  'Sl 50 (51)',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Refrão]
Em         Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!
Em         Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 1]
Em         Am
1. Tende piedade, ó meu Deus, misericórdia!
B7         Em
Na imensidão de vosso amor, purificai-me!
Em         Am
Lavai-me todo inteiro do pecado,
B7         Em
E apagai completamente a minha culpa!

[Refrão]
Em         Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 2]
Em         Am
2. Eu reconheço toda a minha iniquidade,
B7         Em
O meu pecado está sempre à minha frente;
Em         Am
Foi contra vós, só contra vós que eu pequei,
B7         Em
E pratiquei o que é mau aos vossos olhos!

[Refrão]
Em         Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 3]
Em         Am
3. Criai em mim um coração que seja puro,
B7         Em
Dai-me de novo um espírito decidido;
Em         Am
Ó Senhor, não me afasteis de vossa face,
B7         Em
Nem retireis de mim vosso Santo Espírito!

[Refrão]
Em         Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 4]
Em         Am
4. Dai-me de novo a alegria de ser salvo,
B7         Em
E confirmai-me com espírito generoso;
Em         Am
Abri meus lábios, ó Senhor, para cantar,
B7         Em
E minha boca anunciará vosso louvor!

[Refrão Final]
Em         Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!',
  to_tsvector('portuguese', 'Misericórdia, ó Senhor, pois Pecamos (Salmo 50) ' || '')
),
(
  'aleluia-como-o-pai-me-amou',
  'Aleluia, Como o Pai Me Amou',
  'Pe. Zezinho / Hinário Litúrgico',
  'Pe. Zezinho / Hinário Litúrgico',
  'C',
  82,
  '4/4',
  'Aclamação Jubilosa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Jo 15, 9-10',
  'liturgica',
  '[Intro] C  G  Am  F  G  C

[Refrão]
C       G     Am      F       G      C
Aleluia, Aleluia! Aleluia, Aleluia!
C       G     Am      F       G      C
Aleluia, Aleluia! Aleluia, Aleluia!

[Versículo]
C           G        Am
Como o Pai me amou, assim eu vos amei:
F           Dm           G
Permanecei no meu amor, permanecei na minha paz!

[Refrão]
C       G     Am      F       G      C
Aleluia, Aleluia! Aleluia, Aleluia!
C       G     Am      F       G      C
Aleluia, Aleluia! Aleluia, Aleluia!

[Versículo]
C           G        Am
Como o Pai me amou, assim eu vos amei:
F           Dm           G
Permanecei no meu amor, permanecei na minha paz!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Aleluia, Como o Pai Me Amou ' || '')
),
(
  'aleluia-a-minha-alma-abrirei',
  'Aleluia, a Minha Alma Abrirei',
  'Tradicional Litúrgico',
  'Tradicional Litúrgico',
  'C',
  76,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'At 16, 14',
  'liturgica',
  '[Intro] C  Am  Dm  G  C

C        Am      Dm      G
Aleluia, aleluia, a minh''alma abrirei!
C        Am      Dm      G      C     C7
Aleluia, aleluia, Cristo é meu Rei!

F        G       Em      Am
Aleluia, aleluia, a minh''alma abrirei!
Dm       G       C
Aleluia, aleluia, Cristo é meu Rei!

C        Am      Dm      G
Aleluia, aleluia, a minh''alma abrirei!
C        Am      Dm      G      C     C7
Aleluia, aleluia, Cristo é meu Rei!

F        G       Em      Am
Aleluia, aleluia, a minh''alma abrirei!
Dm       G       C
Aleluia, aleluia, Cristo é meu Rei!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Aleluia, a Minha Alma Abrirei ' || '')
),
(
  'buscai-primeiro-o-reino-de-deus',
  'Buscai Primeiro o Reino de Deus (Aleluia)',
  'Comunidade de Taizé / Mateus 6,33',
  'Comunidade de Taizé / Mateus 6,33',
  'C',
  74,
  '4/4',
  'Dedilhado / Balada',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Mt 6, 33; Mt 4, 4',
  'liturgica',
  '[Intro] C  Em  Am  F  C  G  C

C       Em      Am         Em
1. Buscai primeiro o Reino de Deus
F       C         G
E a sua justiça,
C       Em          Am         Em
E todas as coisas vos serão acrescentadas:
F       C    G    C
Aleluia, Aleluia!

[Refrão]
C    Em   Am   Em   F    C    G
Aleluia, Aleluia, Aleluia,
C    Em   Am   Em   F    G    C
Aleluia, Aleluia!

C       Em         Am         Em
2. Não só de pão o homem viverá,
F       C         G
Mas de toda palavra
C       Em          Am         Em
Que procede da boca de Deus:
F       C    G    C
Aleluia, Aleluia!',
  to_tsvector('portuguese', 'Buscai Primeiro o Reino de Deus (Aleluia) ' || '')
),
(
  'louvor-e-gloria-a-ti-senhor-quaresma',
  'Louvor e Glória a Ti, Senhor (Aclamação da Quaresma)',
  'Lecionário Romano / CNBB',
  'Lecionário Romano / CNBB',
  'D',
  72,
  '4/4',
  'Marcha Sóbria',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  3,
  'Aclamação ao Evangelho',
  'Quaresma',
  'Jo 6, 68',
  'liturgica',
  '[Intro] D  G  A  D

[Refrão]
D         G          D
Louvor e glória a Ti, Senhor,
G         A          D
Cristo, Palavra, Palavra de Deus!
D         G          D
Louvor e glória a Ti, Senhor,
G        A        D
Cristo, Palavra de Deus!

[Versículo]
Bm         F#m
Nem só de pão vive o homem, mas de toda palavra
G         A
Que sai da boca de Deus!

[Refrão]
D         G          D
Louvor e glória a Ti, Senhor,
G         A          D
Cristo, Palavra, Palavra de Deus!
D         G          D
Louvor e glória a Ti, Senhor,
G        A        D
Cristo, Palavra de Deus!

[Versículo]
Bm         F#m
Nem só de pão vive o homem, mas de toda palavra
G         A
Que sai da boca de Deus!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Louvor e Glória a Ti, Senhor (Aclamação da Quaresma) ' || '')
),
(
  'santo-senhor-deus-do-universo',
  'Santo, Santo, Santo, Senhor Deus do Universo',
  'Melodia Litúrgica Tradicional / Missal Romano',
  'Melodia Litúrgica Tradicional / Missal Romano',
  'C',
  78,
  '4/4',
  'Balada Sagrada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Santo',
  'Qualquer',
  'Is 6, 3; Sl 117; Mt 21, 9',
  'liturgica',
  '[Intro] C  Am  Dm  G

[Primeira Parte]
C           Am
Santo, Santo, Santo
Dm         G
Senhor, Deus do universo!
C            Am
O céu e a terra proclamam
F        G
A Vossa glória!

[Refrão]
C    F    C     F     G
Hosana nas alturas, Hosana!
C    F    C     F     G    C
Hosana nas alturas, Hosana!

[Segunda Parte]
C         Am
Bendito aquele que vem
Dm         G
Em nome do Senhor!
C         Am
Bendito aquele que vem
Dm         G
Em nome do Senhor!

[Refrão Final]
C    F    C     F     G
Hosana nas alturas, Hosana!
C    F    C     F     G    C
Hosana nas alturas, Hosana!',
  to_tsvector('portuguese', 'Santo, Santo, Santo, Senhor Deus do Universo ' || '')
),
(
  'santo-dos-anjos-dm',
  'Santo, Santo, Santo (Em Ré Menor Solene)',
  'Hinário Litúrgico CNBB',
  'Hinário Litúrgico CNBB',
  'Dm',
  84,
  '4/4',
  'Marcha Sóbria',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Santo',
  'Qualquer',
  'Is 6, 3; Mt 21, 9',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

Dm         Gm
Santo, Santo, Santo, Senhor Deus do universo!
C         F          A7
O céu e a terra proclamam a vossa glória!

[Refrão]
Dm         Gm
Hosana nas alturas, hosana!
A7         Dm
Hosana nas alturas, hosana!

Dm         Gm
Bendito o que vem em nome do Senhor!
C         F          A7
Bendito o que vem em nome do Senhor!

Dm         Gm
Hosana nas alturas, hosana!
A7         Dm
Hosana nas alturas, hosana!',
  to_tsvector('portuguese', 'Santo, Santo, Santo (Em Ré Menor Solene) ' || '')
),
(
  'santo-solene-em-sol',
  'Santo, Santo, Santo (Fácil em Sol Maior - 3 Acordes)',
  'Missal Romano / Popular Litúrgico',
  'Missal Romano / Popular Litúrgico',
  'G',
  80,
  '4/4',
  'Balada Simples',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Santo',
  'Qualquer',
  'Is 6, 3',
  'liturgica',
  '[Intro] G  C  D  G

G         C
Santo, Santo, Santo, Senhor Deus do universo!
D         G
O céu e a terra proclamam a vossa glória!
G           C          D          G
Hosana, hosana, hosana nas alturas!

G         C
Bendito o que vem em nome do Senhor!
G           C          D          G
Hosana, hosana, hosana nas alturas!

G         C
Santo, Santo, Santo, Senhor Deus do universo!
D         G
O céu e a terra proclamam a vossa glória!
G           C          D          G
Hosana, hosana, hosana nas alturas!

G         C
Bendito o que vem em nome do Senhor!
G           C          D          G
Hosana, hosana, hosana nas alturas!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Santo, Santo, Santo (Fácil em Sol Maior - 3 Acordes) ' || '')
),
(
  'cordeiro-de-deus-missal',
  'Cordeiro de Deus (Agnus Dei em Ré Maior)',
  'Texto Oficial do Missal Romano',
  'Texto Oficial do Missal Romano',
  'D',
  64,
  '4/4',
  'Súplica Orante Suave',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Cordeiro de Deus',
  'Qualquer',
  'Jo 1, 29; Ap 5, 6-12',
  'liturgica',
  '[Intro] D  G  A  D

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D       Em   A     D
Tende piedade, piedade de nós!

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D       Em   A     D
Tende piedade, piedade de nós!

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D     Em   A     D
Dai-nos a paz, dai-nos a paz!

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D       Em   A     D
Tende piedade, piedade de nós!

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D       Em   A     D
Tende piedade, piedade de nós!

D           Em      A          D
Cordeiro de Deus, que tirais o pecado do mundo:
G        D     Em   A     D
Dai-nos a paz, dai-nos a paz!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Cordeiro de Deus (Agnus Dei em Ré Maior) ' || '')
),
(
  'cordeiro-de-deus-sol-maior',
  'Cordeiro de Deus (Melodia Suave em Sol Maior)',
  'CNBB / Comunidade Shalom',
  'CNBB / Comunidade Shalom',
  'G',
  66,
  '4/4',
  'Balada Lenta',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Cordeiro de Deus',
  'Qualquer',
  'Jo 1, 29',
  'liturgica',
  '[Intro] G  Em  C  D  G

G         Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
Am         C          D         G
Tende piedade, tende piedade de nós!

G         Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
Am         C          D         G
Tende piedade, tende piedade de nós!

G         Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
C         D          C      D       G
Dai-nos a paz, dai-nos a vossa paz!

G         Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
Am         C          D         G
Tende piedade, tende piedade de nós!

G         Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
Am         C          D         G
Tende piedade, tende piedade de nós!

G         Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
C         D          C      D       G
Dai-nos a paz, dai-nos a vossa paz!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Cordeiro de Deus (Melodia Suave em Sol Maior) ' || '')
),
(
  'provai-e-vede-quao-suave-salmo-33',
  'Provai e Vede Quão Suave É o Senhor (Salmo 33)',
  'Lecionário Dominical / Comunhão e Salmo',
  'Lecionário Dominical / Comunhão e Salmo',
  'D',
  72,
  '4/4',
  'Balada Meditativa',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Salmo',
  'Tempo Comum',
  'Sl 33 (34), 9',
  'liturgica',
  '[Intro] C  G  Am  F  G  C

[Refrão]
C         G         Am
Provai e vede quão suave é o Senhor!
F         G         C
Feliz o homem que tem n''Ele o seu refúgio!

[Estrofes]
C        Em            F         C
1. Bendirei o Senhor em todo o tempo,
Dm         Am            D7            G
Seu louvor estará sempre em meus lábios!
C      Em            F         C
Minha alma se gloria no Senhor:
F         G         C
Que ouçam os humildes e se alegrem!

[Refrão]

C        Em            F         C
2. Comigo engrandecei ao Senhor Deus,
Dm         Am            D7            G
Exaltemos todos juntos o Seu Nome!
C       Em            F         C
Procurei o Senhor e Ele me atendeu,
F         G         C
De todos os meus temores me livrou!

[Refrão]

C        Em            F         C
3. Contemplai a sua face e alegrai-vos,
Dm         Am            D7            G
E vosso rosto não terá de enrubescer!
C        Em            F         C
Este pobre clamou e o Senhor o ouviu,
F         G         C
E o salvou de todas as suas angústias!

[Refrão]

C       Em            F         C
4. O anjo do Senhor acampa ao redor
Dm         Am            D7            G
Dos que O temem, e os defende e salva!
C       Em            F         C
Provai e vede como o Senhor é bom:
F         G         C
Feliz aquele que se abriga no Seu amor!',
  to_tsvector('portuguese', 'Provai e Vede Quão Suave É o Senhor (Salmo 33) ' || '')
),
(
  'pelo-irmao-que-nao-amei-piedade',
  'Senhor, Tende Piedade e Perdoai a Nossa Culpa',
  'Pe. Zezinho, scj',
  'Pe. Zezinho, scj',
  'D',
  68,
  '4/4',
  'Balada Lenta',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Ato Penitencial',
  'Qualquer',
  '1Jo 4, 20; Sl 50',
  'liturgica',
  '[Intro] D  G  A  D

D         G         D
1. Senhor, tende piedade e perdoai a nossa culpa,
G       A         D
E perdoai a nossa culpa!
Bm            Em         A         D
Porque nós somos vosso povo, que vem pedir vosso perdão!

D         G         D
2. Cristo, tende piedade e perdoai a nossa culpa,
G       A         D
E perdoai a nossa culpa!
Bm            Em         A         D
Porque nós somos vosso povo, que vem pedir vosso perdão!

D         G         D
3. Senhor, tende piedade e perdoai a nossa culpa,
G       A         D
E perdoai a nossa culpa!
Bm            Em         A         D
Porque nós somos vosso povo, que vem pedir vosso perdão!',
  to_tsvector('portuguese', 'Senhor, Tende Piedade e Perdoai a Nossa Culpa ' || '')
),
(
  'gloria-eliana-ribeiro-liturgico',
  'Glória a Deus nas Alturas (Arranjo Jovem Litúrgico)',
  'Eliana Ribeiro / Missal Romano',
  'Eliana Ribeiro / Missal Romano',
  'D',
  96,
  '4/4',
  'Pop Rock Litúrgico Sóbrio',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Glória',
  'Tempo Comum',
  'Lc 2, 14',
  'liturgica',
  '[Intro] D  G  A  D

D         G
Glória a Deus nas alturas,
A         D
E paz na terra aos homens por Ele amados!
Bm         G
Senhor Deus, Rei dos céus, Deus Pai todo-poderoso:
Em         A
Nós vos louvamos, nós vos bendizemos,
G            A            D
Nós vos adoramos, nós vos glorificamos,
G         A         D
Nós vos damos graças por vossa imensa glória!

Bm         G
Senhor Jesus Cristo, Filho Unigênito,
Em         A         D
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai:
Bm         G         A
Vós que tirais o pecado do mundo, tende piedade de nós!
Bm         G            A
Vós que tirais o pecado do mundo, acolhei a nossa súplica!
G         A         D
Vós que estais à direita do Pai, tende piedade de nós!

G        A         D     Bm
Só vós sois o Santo, só vós, o Senhor,
G          A          D
Só vós, o Altíssimo, Jesus Cristo,
G         A         D
Com o Espírito Santo, na glória de Deus Pai. Amém!',
  to_tsvector('portuguese', 'Glória a Deus nas Alturas (Arranjo Jovem Litúrgico) ' || '')
),
(
  'a-vos-o-meu-senhor-salmo-24',
  'A Vós, ó Meu Senhor, Elevo a Minha Alma (Salmo 24)',
  'Lecionário (Advento e Tempo Comum)',
  'Lecionário (Advento e Tempo Comum)',
  'Em',
  68,
  '4/4',
  'Dedilhado / Balada',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Salmo',
  'Advento',
  'Sl 24 (25), 1-5',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Refrão]
Em         Am          B7         Em
A vós, ó meu Senhor, elevo a minha alma!
Em         Am          B7         Em
A vós, ó meu Senhor, elevo a minha alma!

[Estrofe 1]
Am         Em
1. Mostrai-me, ó Senhor, vossos caminhos,
B7         Em
E fazei-me conhecer a vossa estrada!
Am         Em
Vossa verdade me oriente e me conduza,
B7         Em
Porque sois o Deus da minha salvação!

[Refrão]
Em         Am          B7         Em
A vós, ó meu Senhor, elevo a minha alma!

[Estrofe 2]
Am         Em
2. Recordai, Senhor meu Deus, vossa ternura
B7         Em
E a vossa compaixão que são eternas!
Am         Em
De mim lembrai-vos, porque sois misericórdia
B7         Em
E sois bondade sem limites, ó Senhor!

[Refrão]
Em         Am          B7         Em
A vós, ó meu Senhor, elevo a minha alma!

[Estrofe 3]
Am         Em
3. O Senhor é piedade e retidão,
B7         Em
E reconduz ao bom caminho os pecadores;
Am         Em
Ele dirige os humildes na justiça
B7         Em
E aos pobres ensina o seu caminho!

[Refrão Final]
Em         Am          B7         Em
A vós, ó meu Senhor, elevo a minha alma!',
  to_tsvector('portuguese', 'A Vós, ó Meu Senhor, Elevo a Minha Alma (Salmo 24) ' || '')
),
(
  'hoje-nasceu-para-nos-o-salvador-salmo-95',
  'Hoje Nasceu para Nós o Salvador (Salmo 95 - Natal)',
  'Lecionário do Natal do Senhor',
  'Lecionário do Natal do Senhor',
  'D',
  78,
  '4/4',
  'Balada Natalina',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Salmo',
  'Natal',
  'Sl 95 (96); Lc 2, 11',
  'liturgica',
  '[Intro] F  C  G7  C

[Refrão]
C         F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!
C         F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofe 1]
C         F
1. Cantai ao Senhor Deus um canto novo,
Dm         G7
Cantai ao Senhor Deus, ó terra inteira!
C         F
Cantai e bendizei seu santo nome,
Dm         G7         C
Dia após dia anunciai sua salvação!

[Refrão]
C         F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofe 2]
C         F
2. Manifestai a sua glória entre as nações,
Dm         G7
E entre os povos do universo as suas maravilhas!
C         F
Porque grande é o Senhor e mui digno de louvor,
Dm         G7         C
Mais terrível e soberano que os falsos deuses!

[Refrão]
C         F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofe 3]
C         F
3. O céu se rejubile e exulte a terra,
Dm         G7
Aplauda o mar com tudo o que ele encerra!
C         F
Os campos com seus frutos rejubilem,
Dm         G7         C
E exultem as florestas na presença do Senhor!

[Refrão]
C         F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofe 4]
C         F
4. Pois Ele vem, Ele vem para julgar a terra,
Dm         G7
Governar o mundo inteiro com justiça!
C         F
E os povos julgará com lealdade,
Dm          G7         C
Com sua verdade e eterna fidelidade!

[Refrão Final]
C         F           G7            C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!',
  to_tsvector('portuguese', 'Hoje Nasceu para Nós o Salvador (Salmo 95 - Natal) ' || '')
),
(
  'este-e-o-dia-que-o-senhor-fez-salmo-117',
  'Este É o Dia que o Senhor Fez para Nós (Salmo 117)',
  'Lecionário do Domingo de Páscoa',
  'Lecionário do Domingo de Páscoa',
  'G',
  86,
  '4/4',
  'Exultante / Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Salmo',
  'Páscoa',
  'Sl 117 (118), 24',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
D         G           A7         D
Este é o dia que o Senhor fez para nós:
Bm         Em          A7         D
Alegremo-nos e nele exultemos!
D         G           A7         D
Este é o dia que o Senhor fez para nós:
Bm         Em          A7         D
Alegremo-nos e nele exultemos!

[Estrofe 1]
D         G
1. Dai graças ao Senhor, porque Ele é bom,
A7         D
Porque eterna é a sua misericórdia!
Bm         Em
A casa de Israel agora o diga:
A7         D
Eterna é a sua misericórdia!

[Refrão]
D         G           A7         D
Este é o dia que o Senhor fez para nós:
Bm         Em          A7         D
Alegremo-nos e nele exultemos!

[Estrofe 2]
D         G
2. A mão direita do Senhor fez maravilhas,
A7         D
A mão direita do Senhor me levantou!
Bm         Em
Não hei de morrer, mas viverei,
A7         D
Para cantar as santas obras do Senhor!

[Refrão]
D         G           A7         D
Este é o dia que o Senhor fez para nós:
Bm         Em          A7         D
Alegremo-nos e nele exultemos!

[Estrofe 3]
D         G
3. A pedra que os pedreiros rejeitaram
A7         D
Tornou-se agora a pedra angular!
Bm         Em
Pelo Senhor é que foi feito tudo isso:
A7         D
Que maravilha Ele fez a nossos olhos!

[Refrão Final]
D         G           A7         D
Este é o dia que o Senhor fez para nós:
Bm         Em          A7         D
Alegremo-nos e nele exultemos!',
  to_tsvector('portuguese', 'Este É o Dia que o Senhor Fez para Nós (Salmo 117) ' || '')
),
(
  'aleluia-alguem-do-povo-exclama',
  'Aleluia, Alguém do Povo Exclama',
  'Pe. Zezinho, scj',
  'Pe. Zezinho, scj',
  'D',
  84,
  '4/4',
  'Marcha Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Lc 11, 27-28',
  'liturgica',
  '[Intro] D  G  A  D

[Refrão]
D        G       A        D
Aleluia, aleluia, aleluia!
D        G       A        D
Aleluia, aleluia, aleluia!

[Estrofe]
D         A
1. Alguém do povo exclama: "Como é grande, ó Senhor,
G        A        D
Quem te gerou e alimentou!"
D         A
Jesus responde: "Ó mulher, pra mim é feliz
G         A         D
Quem soube ouvir a voz de Deus e tudo guardou!"

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Aleluia, Alguém do Povo Exclama ' || '')
),
(
  'aleluia-quando-estamos-unidos',
  'Aleluia, Quando Estamos Unidos',
  'Tradicional Litúrgico (Mt 18, 20)',
  'Tradicional Litúrgico (Mt 18, 20)',
  'G',
  80,
  '4/4',
  'Dedilhado / Balada',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Mt 18, 20',
  'liturgica',
  '[Intro] G  D  Em  C  D  G

[Refrão]
G       D    Em   Bm     C       G       D
Aleluia, aleluia, aleluia!
G       D    Em   Bm     C       D       G
Aleluia, aleluia, aleluia!

[Estrofe]
Em         Bm
1. Quando estamos unidos, estás entre nós,
C         G          D
E nos falarás da tua vida!
Em         Bm
Este nosso mundo sentido terá,
C         D          G
Se tua Palavra renovar!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Aleluia, Quando Estamos Unidos ' || '')
),
(
  'meu-deus-meu-deus-por-que-me-abandonastes-salmo-ramos',
  'Meu Deus, Meu Deus, Por Que Me Abandonastes? (Salmo 21 - Ramos)',
  'Lecionário Dominical / Hinário Litúrgico CNBB',
  'Lecionário Dominical / Hinário Litúrgico CNBB',
  'Dm',
  70,
  '4/4',
  'Salmodia Meditativa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Quaresma',
  'Sl 21(22)',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm      Gm         A7          Dm
Meu Deus, meu Deus, por que me abandonastes?
   Bb      Gm         A7          Dm
Meu Deus, meu Deus, por que me abandonastes?

[Primeira Parte]
   Dm         Gm
1. Riem de mim todos aqueles que me veem,
   A7         Dm
Torcem os lábios e sacodem a cabeça:
   Bb         Gm
"Ao Senhor se confiou, Ele o liberte,
   A7         Dm
E agora o salve, se é verdade que Ele o ama!"

[Refrão]
   Dm      Gm         A7          Dm
Meu Deus, meu Deus, por que me abandonastes?

[Segunda Parte]
   Dm         Gm
2. Cães numerosos me rodeiam furiosos,
   A7         Dm
E por um bando de malvados fui cercado;
   Bb         Gm
Transpassaram minhas mãos e os meus pés,
   A7         Dm
E eu posso contar todos os meus ossos!

[Terceira Parte]
   Dm         Gm
3. Eles repartem entre si as minhas vestes
   A7            Dm
E sorteiam entre si a minha túnica.
   Bb         Gm
Vós, porém, ó meu Senhor, não fiqueis longe;
   A7         Dm
Ó minha força, vinde logo em meu socorro!',
  to_tsvector('portuguese', 'Meu Deus, Meu Deus, Por Que Me Abandonastes? (Salmo 21 - Ramos) ' || '')
),
(
  'pecador-agora-e-tempo-quaresma-cnbb',
  'Pecador, Agora É Tempo (Quarta-Feira de Cinzas e Quaresma)',
  'Hinário Litúrgico CNBB / Tradicional Quaresmal',
  'Hinário Litúrgico CNBB / Tradicional Quaresmal',
  'Dm',
  72,
  '4/4',
  'Toque Quaresmal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ato Penitencial',
  'Quaresma',
  'Jl 2, 12-13; Mc 1, 15',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Primeira Parte]
   Dm           Gm         A7           Dm
1. Neste tempo sacrossanto, o pecado faz horror;
       Bb             Gm
   Contemplando a Cruz de Cristo,
         A7           Dm
   Convertei-vos ao Senhor!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Segunda Parte]
   Dm           Gm        A7          Dm
2. Vinde, vinde, pecadores, vinde todos pelejar;
      Bb             Gm
   Contra as forças do inimigo,
         A7          Dm
   Nossa alma libertar!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Terceira Parte]
   Dm          Gm          A7            Dm
3. Lembra, ó homem, que és pó e ao pó hás de voltar;
      Bb            Gm
   Aproveita o tempo breve
          A7           Dm
   Que te resta pra chorar!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Quarta Parte]
   Dm          Gm         A7           Dm
4. Pelas dores cruciantes que Jesus por nós sofreu;
      Bb           Gm
   Pelo sangue derramado
          A7            Dm
   Que na cruz nos redimiu!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Quinta Parte]
   Dm          Gm          A7             Dm
5. Vede lá no alto Monte a Cruz de nosso Redentor;
       Bb            Gm
   De braços abertos chama:
            A7          Dm
   "Vinde a Mim por Meu amor!"

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Sexta Parte]
   Dm           Gm        A7           Dm
6. Rasgai vossos corações, e não vossas vestes;
      Bb          Gm
   Voltai para o vosso Deus,
       A7            Dm
   Compassivo e clemente!

[Refrão]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!

[Sétima Parte]
   Dm           Gm          A7             Dm
7. Ó Jesus, compadecido, perdoai os nossos erros;
        Bb           Gm
   E nos concedei a graça
            A7             Dm
   De viver nos Vossos passos!

[Refrão Final]
   Dm           Gm        A7          Dm
Pecador, agora é tempo de pesar e de temor:
    Bb             Gm
Serve a Deus, despreza o mundo,
     A7           Dm
Já não sejas pecador!',
  to_tsvector('portuguese', 'Pecador, Agora É Tempo (Quarta-Feira de Cinzas e Quaresma) ' || '')
),
(
  'cristo-ressuscitou-aleluia-sequencia-pascal',
  'Cristo Ressuscitou, Aleluia! (Sequência da Páscoa - Victimae Paschali)',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Hinário Litúrgico CNBB / Missal Romano',
  'D',
  96,
  '4/4',
  'Hino Pascal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Páscoa',
  '1Cor 5, 7-8; Jo 20, 1-9',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D         G         A7          D
Cristo ressuscitou, Aleluia! Venceu a morte com amor!
   Bm        Em         A7          D
Cristo ressuscitou, Aleluia! Vive para sempre o Senhor!

[Primeira Parte]
   D         G         A7          D
1. Cantai, cristãos, afinal: "Salve, ó Vítima Pascal!"
   Bm        Em         A7          D
Cordeiro inocente, o Cristo abriu-nos do Pai o aprisco!

[Refrão]
   D         G         A7          D
Cristo ressuscitou, Aleluia! Venceu a morte com amor!

[Segunda Parte]
   D        G         A7          D
2. Por toda ovelha imolado, do mundo lava o pecado;
   Bm        Em         A7          D
Duelam forte e mais forte: é a Vida que vence a morte!

[Terceira Parte]
   D       G         A7          D
3. "Dize-nos, ó Maria, que viste na galeria?"
   Bm         Em         A7          D
"Vi o sepulcro de Cristo vazio e a glória do Ressuscitado!"',
  to_tsvector('portuguese', 'Cristo Ressuscitou, Aleluia! (Sequência da Páscoa - Victimae Paschali) ' || '')
),
(
  'este-e-o-dia-que-o-senhor-fez-para-nos-pascoa',
  'Este É o Dia que o Senhor Fez para Nós (Salmo 117 - Páscoa)',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'C',
  96,
  '4/4',
  'Salmo Festivo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Páscoa',
  'Sl 117(118)',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C     F         G7          C
Este é o dia que o Senhor fez para nós:
   Am    Dm         G7          C
Alegremo-nos e Nele exultemos! Aleluia!

[Primeira Parte]
   C      F         G7          C
1. Dai graças ao Senhor, porque Ele é bom!
   Am        Dm         G7          C
"Eterna é a Sua misericórdia!" — diga a casa de Israel!

[Refrão]
   C     F         G7          C
Este é o dia que o Senhor fez para nós:
   Am    Dm         G7          C
Alegremo-nos e Nele exultemos! Aleluia!

[Segunda Parte]
   C         F         G7          C
2. A mão direita do Senhor fez maravilhas, a mão direita do Senhor me levantou!
   Am         Dm         G7          C
Não morrerei, mas ao contrário, viverei para cantar as grandes obras do Senhor!

[Terceira Parte]
   C         F         G7          C
3. A pedra que os pedreiros rejeitaram tornou-se agora a pedra angular!
   Am         Dm         G7          C
Pelo Senhor é que foi feito tudo isso: que maravilhas Ele fez a nossos olhos!',
  to_tsvector('portuguese', 'Este É o Dia que o Senhor Fez para Nós (Salmo 117 - Páscoa) ' || '')
),
(
  'vinde-espirito-santo-sequencia-de-pentecostes',
  'Vinde, Espírito Santo (Sequência Oficial de Pentecostes - Veni Sancte Spiritus)',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Hinário Litúrgico CNBB / Missal Romano',
  'G',
  82,
  '4/4',
  'Hino de Pentecostes',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Páscoa',
  'At 2, 1-11; Jo 20, 19-23',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
   G          C         D7          G
Vinde, Espírito Santo, enchei os corações dos vossos fiéis
   Em    Am         D7          G
E acendei neles o fogo do vosso amor!

[Primeira Parte]
   G         C         D7          G
1. Espírito de Deus, enviai dos céus um raio de luz!
   Em         Am         D7          G
Vinde, Pai dos pobres, dai aos corações vossos sete dons!

[Refrão]
   G          C         D7          G
Vinde, Espírito Santo, enchei os corações dos vossos fiéis!

[Segunda Parte]
   G          C         D7          G
2. Consolo que acalma, hóspede da alma, doce alívio, vinde!
   Em        Am         D7          G
No labor descanso, na aflição remanso, no calor aragem!

[Terceira Parte]
   G           C         D7          G
3. Lavai o que é impuro, regai o que é seco, curai o ferido;
   Em         Am         D7          G
Dobrai o que é duro, guiai no caminho, dai-nos vossos dons!',
  to_tsvector('portuguese', 'Vinde, Espírito Santo (Sequência Oficial de Pentecostes - Veni Sancte Spiritus) ' || '')
),
(
  'louva-siao-o-salvador-lauda-sion-corpus-christi',
  'Louva, Sião, o Salvador (Sequência de Corpus Christi - Lauda Sion)',
  'São Tomás de Aquino / Hinário Litúrgico CNBB',
  'São Tomás de Aquino / Hinário Litúrgico CNBB',
  'C',
  88,
  '4/4',
  'Hino Eucarístico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Jo 6, 51-58',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C        F         G7          C
Louva, Sião, o Salvador, o teu Guia e teu Pastor,
   Am    Dm         G7          C
Com hinos e cânticos de júbilo!

[Primeira Parte]
   C       F         G7          C
1. O tema de hoje é o Pão vivo e que dá a vida,
   Am      Dm         G7          C
Que na Santa Ceia foi entregue aos doze irmãos!

[Refrão]
   C        F         G7          C
Louva, Sião, o Salvador, o teu Guia e teu Pastor!

[Segunda Parte]
   C        F         G7          C
2. Eis o Pão dos Anjos, feito pão dos peregrinos,
   Am         Dm         G7          C
Verdadeiro pão dos filhos: Bom Pastor, verdadeiro Pão, tende piedade de nós!',
  to_tsvector('portuguese', 'Louva, Sião, o Salvador (Sequência de Corpus Christi - Lauda Sion) ' || '')
),
(
  'hoje-nasceu-para-nos-o-salvador-salmo-natal',
  'Hoje Nasceu para Nós o Salvador (Salmo 95 - Missa da Noite de Natal)',
  'Lecionário Dominical / Hinário Litúrgico CNBB',
  'Lecionário Dominical / Hinário Litúrgico CNBB',
  'C',
  90,
  '4/4',
  'Salmo de Natal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Natal',
  'Sl 95(96); Lc 2, 11',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C    F         G7          C
Hoje nasceu para nós o Salvador,
   Am    Dm         G7          C
Que é Cristo, o Senhor!

[Primeira Parte]
   C     F         G7          C
1. Cantai ao Senhor Deus um canto novo,
   Am    Dm         G7          C
Cantai ao Senhor Deus, ó terra inteira!
   F    C         Dm          G7
Cantai e bendizei Seu santo Nome!

[Refrão]
   C          F         G7          C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Segunda Parte]
   C     F         G7          C
2. Dia após dia anunciai Sua salvação,
   Am     Dm         G7          C
Manifestai a Sua glória entre as nações,
   F    C         Dm    G7    C
E entre os povos do universo Seus prodígios!',
  to_tsvector('portuguese', 'Hoje Nasceu para Nós o Salvador (Salmo 95 - Missa da Noite de Natal) ' || '')
),
(
  'alo-meu-deus-pe-zezinho',
  'Alô, Meu Deus',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  74,
  '4/4',
  'Balada / Oração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  9,
  'Ato Penitencial',
  'Quaresma',
  'Lc 15, 11-24',
  'liturgica',
  '[Intro] D  A  D  A  Dm  D

[Primeira Parte]

         D         Em
Alô meu Deus, fazia tanto tempo

            A            D   A
Que eu não mais te procurava

         D         Em
Alô meu Deus, senti saudades tuas

      A         D
E acabei voltando aqui

[Pré-Refrão]

   D7            G
Andei por mil caminhos

   Gm          D
E como as andorinhas

    Bm            Em
Eu vim fazer meu ninho

        A           D
Em tua casa e repousar

   D7         G
Embora eu me afastasse

     Gm         D
E andasse desligado

     Bm         Em
Meu coração cansado

      A      D
Resolveu voltar

[Refrão]

         Em
Eu não me acostumei

     A         D
Nas terras onde andei

         Em
Eu não me acostumei

     A         D
Nas terras onde andei

( A  Dm  D )

[Primeira Parte]

         D         Em
Alô meu Deus, fazia tanto tempo

            A            D   A
Que eu não mais te procurava

         D         Em
Alô meu Deus, senti saudades tuas

      A         D
E acabei voltando aqui

[Pré-Refrão]

    D7            G
Gastei a minha herança

     Gm         D
Comprando só matéria

    Bm           Em
Restou-me a esperança

          A            D
De outra vez te encontrar

    D7         G
Voltei arrependido

    Gm        D
Meu coração ferido

   Bm          Em
E volto convencido

         A     D
Que este é o meu lugar

[Refrão]

         Em
Eu não me acostumei

     A         D
Nas terras onde andei

         Em
Eu não me acostumei

     A         D
Nas terras onde andei

         Em
Eu não me acostumei

     A         D
Nas terras onde andei',
  to_tsvector('portuguese', 'Alô, Meu Deus ' || '')
),
(
  'palavra-de-salvacao-pe-zezinho',
  'Palavra de Salvação',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  92,
  '4/4',
  'Marcha Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Jo 6, 68; Hb 4, 12',
  'liturgica',
  'E          B7
Palavra de Salvação

 F#m   B7        E
Somente o céu tem pra dar

            B7
Por isso o meu coração

 A    B7     E  E7
Se abre para escutar

A      E        B7    E   E7
Por mais difícil que seja seguir

A   E      B7    E E7
Tua palavra queremos ouvir

A      E       B7      E E7
Por mais difícil de se praticar

A   E     B7      E  A B7
Tua Palavra queremos guardar

E          B7
Palavra de Salvação

 F#m   B7        E
Somente o céu tem pra dar

            B7
Por isso o meu coração

 A    B7     E  E7
Se abre para escutar

A     E   B7      E E7
Com Simão Pedro diremos também

A     E     B7          E E7
Que não é fácil dizer sempre amém

A      E     B7        E E7
Mas não há outro na terra e no céu

A      E      B7      E  A B7
Mais companheiro, mais santo e fiel

E          B7
Palavra de Salvação

 F#m   B7        E
Somente o céu tem pra dar

            B7
Por isso o meu coração

 A    B7     E  C#m
Se abre para escutar

 F#m   B7      E  C#m
Se abre para escutar

 F#m   B7      E  A B7 E
Se abre para escutar',
  to_tsvector('portuguese', 'Palavra de Salvação ' || '')
),
(
  'fala-senhor-pe-zezinho',
  'Fala, Senhor, Palavra de Fraternidade',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'D',
  88,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  6,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  '1Sm 3, 9-10',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
D         G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
Palavra de fraternidade!
D         G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
És Luz da nossa verdade!

[Primeira Parte]
   D         G
1. Tua Palavra é lâmpada para os meus pés,
   A7         D
É farol luminoso na noite escura da vida!
   Bm         Em
Se escuto a Tua voz, não vacilo em meu rumo,
   A7         D
Tua Palavra me guia e cura minha ferida!

[Refrão]
D         G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
Palavra de fraternidade!
D         G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
És Luz da nossa verdade!

[Segunda Parte]
   D         G
2. Fala, Senhor, ao coração dos aflitos,
   A7         D
Dá fortaleza ao que luta na dor e na prova!
   Bm         Em
Que a Tua Palavra transforme o nosso viver,
   A7         D
E faça no mundo nascer uma terra tão nova!

[Refrão]
D         G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
Palavra de fraternidade!
D         G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
És Luz da nossa verdade!',
  to_tsvector('portuguese', 'Fala, Senhor, Palavra de Fraternidade ' || '')
),
(
  'gloria-a-deus-na-imensidao-pe-zezinho',
  'Glória a Deus na Imensidão',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'G',
  98,
  '4/4',
  'Marcha Festiva',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Glória',
  'Tempo Comum',
  'Lc 2, 14',
  'liturgica',
  'G       C        D7    G
Glória a Deus na imensidão

  C       G       A7            D
e paz na terra ao homem nosso irmão

 G         C            D7
Glória a Deus na imensidão

  G      C        G    D7        G
e paz na terra ao homem nosso irmão

         Am      D7         G         Am
1. Senhor, Deus Pai Criador onipotente, nós vos louvamos

    D7       G        Am    D7          G
e vos bendizemos por nos terdes dado o Cristo Salvador.

         Am   D7         G         Am
2. Senhor, Jesus unigênito do Pai, nós vos damos graças

    D7            G       Am         D7         G
por terdes vindo ao mundo, feito nosso irmão, sois nosso redentor.

         Am     D7         G        Am       D7
3.Senhor, Espírito Santo, Deus Amor, nós vos adoramos

         G         Am        D7         G
e vos glorificamos por nos conduzirdes por Cristo, a nosso Pai.

            Am           D7         G          Am     D7
4.Glória ao Pai e a Cristo sejam dadas, glória ao Espírito Santo

       G     Am    D7         G
sem cessar, agora e para sempre, por toda eternidade.',
  to_tsvector('portuguese', 'Glória a Deus na Imensidão ' || '')
),
(
  'cantico-de-maria-magnificat-pe-zezinho',
  'Cântico de Maria (Meu Espírito Exulta de Alegria)',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  84,
  '4/4',
  'Balada Bíblica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  6,
  'Salmo',
  'Advento',
  'Lc 1, 46-55',
  'liturgica',
  '[Intro] C  Am  Dm  G7  C

[Refrão]
C         Am         Dm          G7
A minh''alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!
C         Am         Dm          G7
A minh''alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!

[Primeira Parte]
   C         Am
1. Porque olhou para a humildade de sua serva,
   Dm         G7
Doravante as gerações me proclamarão feliz!
   C         Am
O Todo-Poderoso fez em mim grandes maravilhas,
   Dm         G7         C
Santo é o Seu nome de ternura e de raiz!

[Refrão]
C         Am         Dm          G7
A minh''alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!

[Segunda Parte]
   C         Am
2. Seu amor para sempre se estende,
   Dm         G7
De geração em geração sobre os que O temem!
   C         Am
Com o poder do Seu braço dispersou os soberbos,
   Dm         G7         C
Derrubou os poderosos de seus tronos altaneiros!

[Refrão]
C         Am         Dm          G7
A minh''alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!

[Terceira Parte]
   C         Am
3. Elevou os mais humildes e encheu de bens os famintos,
   Dm         G7
E despediu os ricos de mãos vazias!
   C         Am
Socorreu a Israel, Seu servo fiel,
   Dm         G7         C
Lembrado de sua misericórdia e aliança bravia!

[Refrão Final]
C         Am         Dm          G7
A minh''alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!',
  to_tsvector('portuguese', 'Cântico de Maria (Meu Espírito Exulta de Alegria) ' || '')
),
(
  'sonda-me-pe-marcelo-rossi',
  'Sonda-me, Senhor, e Me Conhece (Salmo 138)',
  'Padre Marcelo Rossi',
  'Padre Marcelo Rossi',
  'Em',
  72,
  '4/4',
  'Dedilhado / Oração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  12,
  'Ato Penitencial',
  'Quaresma',
  'Sl 138, 1-24',
  'liturgica',
  '[Intro] Am  Dm7  G  C7M

        F  Bb  E7(4)  E7

[Primeira Parte]

 Am         Dm7
Senhor, eu sei que Tu me sondas

 G              C7M  G/B
Sei também que me conheces

 Am         Dm7
Se me assento ou me levanto

     E         Am
Conheces meus pensamentos

         Dm7
Quer deitado ou quer andando

 G                   C7M   G/B
Sabes todos os meus passos

   Am         Dm7
E antes que haja em mim palavras

 G         C    E7
Sei que em tudo me conheces

[Refrão]

 Am         Dm7
Senhor, eu sei que Tu me sondas

  G              C7M
Senhor, eu sei que Tu me sondas

 F              Bm7(5-)
Senhor, eu sei que Tu me sondas

 E7         Am
Senhor, eu sei que Tu me sondas

   A         Dm7
Senhor, eu sei que Tu me sondas

  G              C7M
Senhor, eu sei que Tu me sondas

 F              Bm7(5-)
Senhor, eu sei que Tu me sondas

 E7         Am
Senhor, eu sei que Tu me sondas

( Dm7  G  C7M )

( F  Bb  E7(4)  E7 )

[Segunda Parte]

 Am         Dm7
Deus, Tu me cercaste em volta

  G                  C7M
Tuas mãos em mim repousam

 Am         Dm7
Tal ciência é grandiosa

 G         C
Não alcanço de tão alta

Am         Dm7
   Se eu subo até o céu

 G              C7M
Sei que ali também Te encontro

 Am         Dm7
Se no abismo está minh&#x27;alma

 G         C    E7
Sei que aí também me amas

[Refrão]

 Am         Dm7
Senhor, eu sei que Tu me sondas

  G              C7M
Senhor, eu sei que Tu me sondas

 F              Bm7(5-)
Senhor, eu sei que Tu me sondas

 E7         Am
Senhor, eu sei que Tu me sondas

   A         Dm7
Senhor, eu sei que Tu me sondas

  G              C7M
Senhor, eu sei que Tu me sondas

 F              Bm7(5-)
Senhor, eu sei que Tu me sondas

 E7         Am
Senhor, eu sei que Tu me sondas',
  to_tsvector('portuguese', 'Sonda-me, Senhor, e Me Conhece (Salmo 138) ' || '')
),
(
  'seja-engrandecido-pe-marcelo-rossi',
  'Seja Engrandecido',
  'Padre Marcelo Rossi / Guilherme Kerr',
  'Padre Marcelo Rossi / Guilherme Kerr',
  'G',
  94,
  '4/4',
  'Louvor Alegre',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  8,
  'Glória',
  'Tempo Comum',
  'Sl 33, 4; Sl 144',
  'liturgica',
  'E         G#m
Seja engrandecido, oh Deus da minha vida

   A            F#m         B   A
Tú És o Deus da minha salvação

E         G#m
És a minha rocha, a minha segurança

      A            F#m       B   A
Meus lábios sempre te exaltarão

E              D/E
Aleluia (aleluia), te louvo (te louvo)

     A        F#m         B     E   A
Pois sei que sobre todos És Senhor

E              D/E
Aleluia (aleluia), te louvo (te louvo)

     A        F#m           B    A
Pois sei que sobre todos És Senhor

 E                  D/E
Aleluia (aleluia), aleluia, (aleluia)

    A        F#m       B4   B
Aleluia,  louvemos ao Senhor

 E                  D/E
Aleluia (aleluia), aleluia, (aleluia)

    A        F#m      B   A   D E
Aleluia,  louvemos ao senhor',
  to_tsvector('portuguese', 'Seja Engrandecido ' || '')
),
(
  'pai-nosso-pe-marcelo-rossi',
  'Pai Nosso (Padre Marcelo Rossi)',
  'Padre Marcelo Rossi',
  'Padre Marcelo Rossi',
  'G',
  72,
  '4/4',
  'Balada Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Cordeiro de Deus',
  'Qualquer',
  'Mt 6, 9-13',
  'liturgica',
  '[Intro] G  Em  C  D  G

[Primeira Parte]
   G         Em
Pai nosso que estais no céu,
   C         D
Santificado seja o Vosso nome,
   G         Em
Venha a nós o Vosso Reino,
   C         D
Seja feita a Vossa vontade,
   C    D         G       Em
Assim na terra como no céu!

[Segunda Parte]
   G         Em
O pão nosso de cada dia nos dai hoje,
   C         D
Perdoai-nos as nossas ofensas,
   G         Em
Assim como nós perdoamos a quem nos tem ofendido;
   C    D         G       Em
E não nos deixeis cair em tentação,
   C            D           G
Mas livrai-nos do mal. Amém!',
  to_tsvector('portuguese', 'Pai Nosso (Padre Marcelo Rossi) ' || '')
),
(
  'abraco-de-pai-walmir-alencar',
  'Abraço de Pai (Quanto Eu Esperei)',
  'Walmir Alencar / Ministério Adoração e Vida',
  'Walmir Alencar / Ministério Adoração e Vida',
  'D',
  72,
  '4/4',
  'Balada Contemplativa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  25,
  'Ato Penitencial',
  'Quaresma',
  'Lc 15, 11-32',
  'liturgica',
  'Intro: F#m  C#m  D  A/C#  F#m  C#m  G9  D/F#  E4  E

E|---4h5-4----------4h5-4----------------------------| 
B|---------5-5/7----------5-5/7--5-5-5h7-5-3h5-2-0h2-| 
G|-6---------------6---------------------------------| 
D|---------------------------------------------------| 

E|---4h5-4-------4h5-4-----------------------------0-| 
B|---------5-5/7-------5-----5--3-2---3-2---3-2----0-| 
G|-6---------------------4h6--------2-----2-----2--2-| 
D|-------------------------------------------------2-| 

A9          A7+/9
Quanto eu esperei!

F#m9            C#m7
Ansioso queria te ver

   Bm7           C#m7   D7+
E te falar o que há em mim

Bm7     Bm7/A  (E/G#  E  D/F#  E/G#  D/F#  E/G#)
Já não podia        me conter

      A9       A7+/9
Me decidi, Senhor

F#m9         C#m7
Hoje quero rasgar meu viver

   Bm7         C#m7   D7+
E te mostrar meu cora__ção

Bm7     Bm7/A  G    D/F#  (E/G#  E  D/F#  E/G#)
Tudo que tenho e    sou

 A9         F#m
E por mais que me falem, não vou desistir!

 Bm7         E4       E
Eu sei que nada sou, por isso estou aqui

    A9         F#m
Mas eu sei que o amor que o Senhor tem por mim

   Bm7           Bm7/A     E4        E7        A7+  (D/F#  E/G#)
É muito mais que o meu, sou gota derramada no mar

            A9         F#m
Quanto tempo também o Senhor me esperou

      Bm7         E4           E
Nas tardes encontrou saudade em meu lugar

  A9         F#m
Mas ao me ver na estrada ao longe voltar

 Bm7            Bm7/A   E4          E7       A7+   E4  E
Num salto se alegrou e   foi correndo me encontrar

       A9         F#m
E não me perguntou nem por onde eu andei

  Bm7         E4        E9
Dos bens que eu gastei, mais nada me restou

         A9         F#m
Mas olhando em meus olhos somente me amou

C#m7       D9 (A/C# Bm7)   Bm7/A  E/G#  E
E ao me beijar,             me acolheu
 E/F#  F#m  E/F#  F#m  E/D  D9  E/D  D9 (bis) Bm7  Bm7/A (E/G# E D/F# E/G#)
num abraço de pai

(A9  A7+/9  G6  D9/F#  A9)',
  to_tsvector('portuguese', 'Abraço de Pai (Quanto Eu Esperei) ' || '')
),
(
  'gloria-a-deus-nas-alturas-shalom-capella',
  'Glória a Deus nas Alturas (Shalom)',
  'Comunidade Católica Shalom',
  'Comunidade Católica Shalom',
  'E',
  104,
  '4/4',
  'Pop Litúrgico Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Glória',
  'Qualquer',
  'Lc 2, 14',
  'liturgica',
  '[Intro] E  B  C#m  A

[Refrão]
   E         B         C#m         A
Glória a Deus nas alturas, e paz na terra aos homens por Ele amados! (2x)

[Primeira Parte]
   E        B         C#m         A
Senhor Deus, Rei dos céus, Deus Pai todo-poderoso:
   E     B         C#m         A
Nós Vos louvamos, nós Vos bendizemos,
   E     B         C#m         A
Nós Vos adoramos, nós Vos glorificamos,
   F#m         B7         E
Nós Vos damos graças por Vossa imensa glória!

[Segunda Parte]
   C#m    G#m         A         E
Senhor Jesus Cristo, Filho Unigênito,
   C#m      G#m         A         B7
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai:
   A         B7         G#m         C#m
Vós que tirais o pecado do mundo, tende piedade de nós!
   A          B7         G#m         C#m
Vós que tirais o pecado do mundo, acolhei a nossa súplica!
   A         B7         E
Vós que estais à direita do Pai, tende piedade de nós!

[Terceira Parte]
   A         B7         G#m         C#m
Só Vós sois o Santo, só Vós o Senhor, só Vós o Altíssimo, Jesus Cristo,
   F#m          B7         E
Com o Espírito Santo, na glória de Deus Pai. Amém!',
  to_tsvector('portuguese', 'Glória a Deus nas Alturas (Shalom) ' || '')
),
(
  'santo-suely-facanha-shalom',
  'Santo, Santo, Santo (Shalom / Suely Façanha)',
  'Suely Façanha / Comunidade Shalom',
  'Suely Façanha / Comunidade Shalom',
  'Em',
  82,
  '4/4',
  'Solene Eucarístico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Santo',
  'Qualquer',
  'Is 6, 3; Mt 21, 9',
  'liturgica',
  '[Intro] Em  C  D  Em

[Primeira Parte]
   Em      D         C         B7
Santo, Santo, Santo, Senhor Deus do universo!
   Em     D         C         B7
O céu e a terra proclamam a Vossa glória!

[Refrão]
   G    D         Em         C
Hosana nas alturas! Hosana!
   G    D         B7         Em
Hosana nas alturas! Hosana!

[Segunda Parte]
   C     D         G         Em
Bendito o que vem em nome do Senhor!
   C    D         B7         Em
Hosana nas alturas! Hosana!',
  to_tsvector('portuguese', 'Santo, Santo, Santo (Shalom / Suely Façanha) ' || '')
),
(
  'cordeiro-de-deus-shalom',
  'Cordeiro de Deus (Comunidade Shalom)',
  'Comunidade Católica Shalom',
  'Comunidade Católica Shalom',
  'G',
  72,
  '4/4',
  'Balada Suave da Fração do Pão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Cordeiro de Deus',
  'Qualquer',
  'Jo 1, 29',
  'liturgica',
  '[Intro] G  Em  C  D

[Primeira e Segunda Vezes]
   G       Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
   Am    C         D         G
Tende piedade de nós! (2x)

[Terceira Vez]
   G       Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
   C            D         G
Dai-nos a paz, dai-nos a paz, Senhor, a Vossa paz!

[Primeira e Segunda Vezes]
   G       Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
   Am    C         D         G
Tende piedade de nós! (2x)

[Terceira Vez]
   G       Em         C         D
Cordeiro de Deus, que tirais o pecado do mundo,
   C            D         G
Dai-nos a paz, dai-nos a paz, Senhor, a Vossa paz!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Cordeiro de Deus (Comunidade Shalom) ' || '')
),
(
  'aleluia-a-minhalma-abrirei',
  'Aleluia, a Minh''alma Abrirei',
  'Tradicional Litúrgico',
  'Tradicional Litúrgico',
  'C',
  88,
  '4/4',
  'Balada de Aclamação',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'At 16, 14; Lc 24, 45',
  'liturgica',
  '[Intro] C  Am  Dm  G7  C

[Refrão]
   C     Am         Dm          G7
Aleluia, aleluia, a minh''alma abrirei!
   C    Am         Dm    G7    C
Aleluia, aleluia, Cristo é meu Rei!

[Versículo]
   F      G7         C           Am
1. Fala, Senhor, que o Teu servo escuta:
   Dm     G7         C
Tu tens palavras de vida eterna!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Aleluia, a Minh''alma Abrirei ' || '')
),
(
  'a-vossa-palavra-senhor-salmo-18',
  'Senhor, Tens Palavras de Vida Eterna (Salmo 18)',
  'Ir. Miria T. Kolling / Lecionário Dominical',
  'Ir. Miria T. Kolling / Lecionário Dominical',
  'C',
  82,
  '4/4',
  'Salmo Responsorial',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Tempo Comum',
  'Sl 18, 8-11; Jo 6, 68',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C        F         C
Senhor, tens palavras de vida eterna!
   Dm       G7         C
Senhor, tens palavras de vida eterna!

[Estrofes do Salmo 18]
   C       Am         Dm
1. A Lei do Senhor Deus é perfeita,
   G7     C
Conforto para a alma!
   C      Am         Dm
O testemunho do Senhor é fiel,
   G7      C
Sabedoria dos humildes!

   C         Am         Dm
2. Os preceitos do Senhor são precisos,
   G7    C
Alegria ao coração!
   C       Am         Dm
O mandamento do Senhor é brilhante,
   G7       C
Para os olhos é uma luz!',
  to_tsvector('portuguese', 'Senhor, Tens Palavras de Vida Eterna (Salmo 18) ' || '')
),
(
  'oracao-da-noite-perdoai-nos-senhor-pe-zezinho',
  'Oração da Noite (Perdoai-nos, Senhor)',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'Dm',
  74,
  '4/4',
  'Balada Penitencial',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Ato Penitencial',
  'Qualquer',
  'Sl 50; Lc 18, 13',
  'liturgica',
  'F         A7      Bb   C          F
Mais outro dia findou, eu venho te ver para conversar

         A7         Bb  C         F
Mais outra noite chegou, eu venho agradecer antes de repousar

         Gm7          C            F
Andei o dia inteiro procurando o meu irmão

         Gm7          C         F
Eu quis ser instrumento do teu amor, do teu perdão

         A7         Bb
Muito obrigado, Senhor pelo amor que eu ensinei

       C         F
Pelo amor que eu recebi

         A7          Bb          C           F
Muito obrigado, Senhor pela dor que suavizei por sorrisos que sorri

         A7  Bb  C  F
Sou peregrino do amor e venho agradcer o dia que vivi

         A7         Bb         C           F
Houve tristeza, Senhor mas eu não quis sofrer, pois caminhei em ti',
  to_tsvector('portuguese', 'Oração da Noite (Perdoai-nos, Senhor) ' || '')
),
(
  'buscai-primeiro-o-reino-de-deus-taize-liturgico',
  'Buscai Primeiro o Reino de Deus (Mateus 6, 33)',
  'Karen Lafferty / Taizé / Hinário Litúrgico',
  'Karen Lafferty / Taizé / Hinário Litúrgico',
  'C',
  80,
  '4/4',
  'Cânone Bíblico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Mt 6, 33; Mt 4, 4',
  'liturgica',
  '[Intro] C  G  Am  Em  F  C  G7  C

[Primeira Parte]
   C        G         Am          Em
1. Buscai primeiro o Reino de Deus e a Sua justiça,
   F        C         Dm    G7    C
E todas as coisas vos serão acrescentadas! Aleluia, aleluia!

[Segunda Parte]
   C         G         Am          Em
2. Não só de pão o homem viverá, mas de toda Palavra
   F     C         Dm    G7    C
Que procede da boca de Deus! Aleluia, aleluia!

[Refrão em Cânone]
   C        G       Am      Em
Aleluia, aleluia, aleluia,
   F        C       G7      C
Aleluia, aleluia!',
  to_tsvector('portuguese', 'Buscai Primeiro o Reino de Deus (Mateus 6, 33) ' || '')
),
(
  'eu-confesso-a-deus-e-a-vos-irmaos',
  'Eu Confesso a Deus e a Vós, Irmãos (Confiteor)',
  'Missal Romano / Liturgia Católica',
  'Missal Romano / Liturgia Católica',
  'C',
  70,
  '4/4',
  'Balada Penitencial',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Ato Penitencial',
  'Qualquer',
  'Tg 5, 16; Lc 18, 13',
  'liturgica',
  '[Intro] C  Am  Dm  G  C

[Primeira Parte]
C            Am          Dm           G
Eu confesso a Deus, Pai Todo-Poderoso,
Em          Am          Dm          G
E a vós, irmãos, que pequei muitas vezes:
F           G           Em          Am
Por pensamentos e palavras, atos e omissões,
Dm          G           C           C7
Por minha culpa, minha tão grande culpa!

[Refrão]
F          G            Em          Am
E peço à Virgem Maria, aos Anjos e Santos,
Dm         G            C           C7
E a vós, irmãos, que rogueis por mim
F          G            Em          Am
A Deus nosso Senhor, a Deus nosso Senhor!
Dm         G            C
Senhor, tende piedade de nós!',
  to_tsvector('portuguese', 'Eu Confesso a Deus e a Vós, Irmãos (Confiteor) ' || '')
),
(
  'tende-piedade-de-nos-senhor-quaresma',
  'Senhor, Tende Piedade de Nós (Pelo Irmão Que Não Amei)',
  'Hinário Litúrgico da Quaresma / CNBB',
  'Hinário Litúrgico da Quaresma / CNBB',
  'Em',
  72,
  '4/4',
  'Balada Penitencial Quaresmal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ato Penitencial',
  'Quaresma',
  '1Jo 4, 20; Sl 50',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Primeira Parte]
Em         Am
Senhor, tende piedade de nós!
B7         Em
Pelo irmão que não amei,
Em         Am
Pelo mal que pratiquei,
B7         Em
Pelo bem que recusei:
Am          Em          B7          Em
Senhor, piedade! Senhor, tende piedade!

[Segunda Parte]
Em         Am
Cristo, tende piedade de nós!
B7         Em
Pela prece que esqueci,
Em         Am
Pela fé que não vivi,
B7         Em
Pelos erros que cometi:
Am          Em          B7          Em
Cristo, piedade! Cristo, tende piedade!

[Terceira Parte]
Em         Am
Senhor, tende piedade de nós!
B7         Em
Pelo orgulho e divisão,
Em         Am
Pela falta de perdão,
B7         Em
Vem curar meu coração:
Am          Em          B7          Em
Senhor, piedade! Senhor, tende piedade!',
  to_tsvector('portuguese', 'Senhor, Tende Piedade de Nós (Pelo Irmão Que Não Amei) ' || '')
),
(
  'senhor-servo-de-deus-ato-penitencial',
  'Senhor, Servo de Deus, Que Libertastes a Nossa Vida',
  'Missal Romano / CNBB',
  'Missal Romano / CNBB',
  'Dm',
  76,
  '4/4',
  'Solene Penitencial',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ato Penitencial',
  'Quaresma',
  'Is 53; Fl 2, 7-8',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Invocação 1]
   Dm         Gm
1. Senhor, Servo de Deus, que libertastes a nossa vida,
   A7     Dm
Tende piedade de nós!
   Gm           Dm          A7         Dm
Senhor, tende piedade de nós!

[Invocação 2]
   Dm         Gm
2. Ó Cristo, nosso Irmão, que conheceis nossa fraqueza,
   A7     Dm
Tende piedade de nós!
   Gm           Dm          A7         Dm
Cristo, tende piedade de nós!

[Invocação 3]
   Dm         Gm
3. Senhor, Filho de Deus, que vos tornastes obediente,
   A7     Dm
Tende piedade de nós!
   Gm           Dm          A7         Dm
Senhor, tende piedade de nós!',
  to_tsvector('portuguese', 'Senhor, Servo de Deus, Que Libertastes a Nossa Vida ' || '')
),
(
  'gloria-a-deus-nos-altos-ceus-cnbb',
  'Glória a Deus nos Altos Céus (Hinário CNBB)',
  'Ir. Miria T. Kolling / Hinário Litúrgico CNBB',
  'Ir. Miria T. Kolling / Hinário Litúrgico CNBB',
  'D',
  100,
  '4/4',
  'Marcha Festiva',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Glória',
  'Qualquer',
  'Lc 2, 14',
  'liturgica',
  '[Intro] D  G  A7  D

[Primeira Parte]
   D           G         A7          D
1. Glória a Deus nos altos céus! Paz na terra a seus amados!
   Bm       Em         A7          D
A Vós louvam, Rei celeste, os que foram libertados!

[Refrão]
   G         A7         D           Bm
Glória a Deus, lá nos céus, e paz aos seus! Amém! (2x)

[Segunda Parte]
   D         G         A7          D
2. Deus e Pai, nós Vos louvamos, adoramos, bendizemos;
   Bm        Em         A7          D
Damos glória ao Vosso Nome, Vossos dons agradecemos!

[Terceira Parte]
   D        G         A7          D
3. Senhor nosso, Jesus Cristo, Unigênito do Pai,
   Bm       Em         A7          D
Vós, de Deus Cordeiro Santo, nossas culpas perdoai!

[Quarta Parte]
   D        G         A7          D
4. Vós somente sois o Santo, o Altíssimo, o Senhor,
   Bm       Em         A7          D
Com o Espírito Divino, de Deus Pai no esplendor!',
  to_tsvector('portuguese', 'Glória a Deus nos Altos Céus (Hinário CNBB) ' || '')
),
(
  'santo-e-o-senhor-meu-deus-digno-de-louvor',
  'Santo, Santo, Santo É o Senhor, Deus do Universo (Popular)',
  'Hinário Paroquial / Tradicional',
  'Hinário Paroquial / Tradicional',
  'D',
  88,
  '4/4',
  'Marcha Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Santo',
  'Qualquer',
  'Is 6, 3; Mt 21, 9',
  'liturgica',
  '[Intro] D  Bm  G  A7  D

[Primeira Parte]
   D         Bm
Santo, Santo, Santo,
   G         A7
Senhor, Deus do universo!
   D         Bm
O céu e a terra proclamam
   G            A7          D
A Vossa glória!

[Refrão]
   G     A7         D           Bm
Hosana nas alturas! Hosana nas alturas!
   Em         A7         D
Bendito o que vem em nome do Senhor: Hosana nas alturas!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Santo, Santo, Santo É o Senhor, Deus do Universo (Popular) ' || '')
),
(
  'santo-dos-anjos-ze-vicente',
  'Santo, Santo, Santo, Dizem Todos os Anjos (Santo Popular)',
  'Hinário Popular / Adaptação Litúrgica',
  'Hinário Popular / Adaptação Litúrgica',
  'G',
  96,
  '4/4',
  'Marcha',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Santo',
  'Tempo Comum',
  'Is 6, 3; Mt 21, 9',
  'liturgica',
  '[Intro] G  D7  G

[Primeira Parte]
   G         D7
Santo, Santo, Santo, Senhor Deus do universo!
   C         D7         G
O céu e a terra proclamam a Vossa glória!

[Refrão]
   G         D7
Hosana nas alturas! Hosana nas alturas!
   C         D7         G
Bendito o que vem em nome do Senhor: Hosana nas alturas!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Santo, Santo, Santo, Dizem Todos os Anjos (Santo Popular) ' || '')
),
(
  'cordeiro-de-deus-em-re-maior-simples',
  'Cordeiro de Deus (Versão Simples em 3 Acordes)',
  'Melodia Paroquial Tradicional',
  'Melodia Paroquial Tradicional',
  'D',
  76,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Cordeiro de Deus',
  'Qualquer',
  'Jo 1, 29',
  'liturgica',
  '[Intro] D  G  A7  D

[Primeira e Segunda Vezes]
   D         G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7        D
Tende piedade de nós! (2x)

[Terceira Vez]
   D         G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7         D
Dai-nos a paz! Dai-nos a paz!

[Primeira e Segunda Vezes]
   D         G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7        D
Tende piedade de nós! (2x)

[Terceira Vez]
   D         G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7         D
Dai-nos a paz! Dai-nos a paz!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Cordeiro de Deus (Versão Simples em 3 Acordes) ' || '')
),
(
  'cordeiro-de-deus-em-mi-menor-quaresma',
  'Cordeiro de Deus (Solene para Quaresma e Advento)',
  'Pe. José Weber / Hinário Litúrgico CNBB',
  'Pe. José Weber / Hinário Litúrgico CNBB',
  'Em',
  72,
  '4/4',
  'Dedilhado Sóbrio',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  3,
  'Cordeiro de Deus',
  'Quaresma',
  'Jo 1, 29',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Primeira e Segunda Vezes]
   Em         Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7        Em
Tende piedade de nós! (2x)

[Terceira Vez]
   Em         Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7    Em
Dai-nos a paz!

[Primeira e Segunda Vezes]
   Em         Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7        Em
Tende piedade de nós! (2x)

[Terceira Vez]
   Em         Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7    Em
Dai-nos a paz!

[Final] Em  G  B7  Em',
  to_tsvector('portuguese', 'Cordeiro de Deus (Solene para Quaresma e Advento) ' || '')
),
(
  'salmo-22-o-senhor-e-o-pastor-que-me-conduz-pe-jose-weber',
  'O Senhor É o Pastor Que Me Conduz (Salmo 22 Oficial)',
  'Pe. José Weber, svd / Lecionário Dominical',
  'Pe. José Weber, svd / Lecionário Dominical',
  'F',
  78,
  '4/4',
  'Salmo Responsorial',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Qualquer',
  'Sl 22, 1-6',
  'liturgica',
  '[Intro] F  Bb  C7  F

[Refrão]
   F            Bb         C7          F
O Senhor é o Pastor que me conduz: não me falta coisa alguma! (2x)

[Estrofes]
   F         Dm         Gm          C7
1. O Senhor é o Pastor que me conduz, para as águas repousantes me encaminha;
   Bb         C7         F
Eu tivesse de andar por vale escuro, não temeria mal algum, pois vós estais comigo!

   F           Dm         Gm          C7
2. Preparais à minha frente uma mesa, bem à vista do inimigo;
   Bb         C7         F
E com óleo vós ungis minha cabeça, o meu cálice transborda!

[Final] F  Bb  C7  F',
  to_tsvector('portuguese', 'O Senhor É o Pastor Que Me Conduz (Salmo 22 Oficial) ' || '')
),
(
  'salmo-121-que-alegria-quando-ouvimos-que-nos-disseram',
  'Que Alegria Quando Me Disseram: Vamos à Casa do Senhor (Salmo 121)',
  'Ir. Miria T. Kolling / Lecionário Dominical',
  'Ir. Miria T. Kolling / Lecionário Dominical',
  'G',
  84,
  '4/4',
  'Salmo de Romaria',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Advento',
  'Sl 121, 1-9',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
   G          C         D7          G
Que alegria, quando me disseram: "Vamos à casa do Senhor!"

[Estrofes]
   G         Em         Am          D7
1. Que alegria, quando ouvi que me disseram: "Vamos à casa do Senhor!"
   C         D7         G
E agora nossos pés já se detêm, Jerusalém, em tuas portas!

   G          Em         Am          D7
2. Para lá sobem as tribos de Israel, as tribos do Senhor;
   C         D7         G
Para louvar, segundo a lei de Israel, o nome do Senhor!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Que Alegria Quando Me Disseram: Vamos à Casa do Senhor (Salmo 121) ' || '')
),
(
  'salmo-50-piedade-o-senhor-tende-piedade-quaresma',
  'Piedade, Ó Senhor, Tende Piedade, Pois Pecamos Contra Vós (Salmo 50)',
  'Pe. José Weber / Lecionário da Quaresma',
  'Pe. José Weber / Lecionário da Quaresma',
  'Dm',
  72,
  '4/4',
  'Salmo Penitencial',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Quaresma',
  'Sl 50, 3-6.12-14.17',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm         Gm         A7          Dm
Piedade, ó Senhor, tende piedade, pois pecamos contra Vós!

[Estrofes]
   Dm         Gm         C7          F
1. Tende piedade, ó meu Deus, misericórdia! Na imensidão de vosso amor, purificai-me!
   Gm            Dm         A7          Dm
Lavai-me todo inteiro do pecado, e apagai completamente a minha culpa!

   Dm         Gm         C7          F
2. Criai em mim um coração que seja puro, dai-me de novo um espírito decidido;
   Gm         Dm         A7          Dm
Ó Senhor, não me afasteis de vossa face, nem retireis de mim o vosso Santo Espírito!

[Final] Dm  F  A7  Dm',
  to_tsvector('portuguese', 'Piedade, Ó Senhor, Tende Piedade, Pois Pecamos Contra Vós (Salmo 50) ' || '')
),
(
  'salmo-97-hoje-nasceu-para-nos-o-salvador-natal',
  'Hoje Nasceu Para Nós o Salvador, Que É Cristo, o Senhor (Salmo 95/97)',
  'Lecionário Dominical - Noite de Natal',
  'Lecionário Dominical - Noite de Natal',
  'D',
  86,
  '4/4',
  'Salmo de Natal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Natal',
  'Sl 95, 1-3.11-13; Lc 2, 11',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D          G         A7          D
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofes]
   D         Bm         G           A7
1. Cantai ao Senhor Deus um canto novo, cantai ao Senhor Deus, ó terra inteira!
   G       A7         D
Cantai e bendizei seu santo nome!

   D         Bm         G           A7
2. Dia após dia anunciai sua salvação, manifestai a sua glória entre as nações,
   G          A7         D
E entre os povos do universo seus prodígios!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Hoje Nasceu Para Nós o Salvador, Que É Cristo, o Senhor (Salmo 95/97) ' || '')
),
(
  'salmo-103-enviai-o-vosso-espirito-senhor-pentecostes',
  'Enviai o Vosso Espírito, Senhor, e da Terra Toda a Face Renovai (Salmo 103)',
  'Lecionário Dominical - Solenidade de Pentecostes',
  'Lecionário Dominical - Solenidade de Pentecostes',
  'C',
  84,
  '4/4',
  'Salmo de Pentecostes',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Pentecostes',
  'Sl 103, 1.24.29-31.34',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C            F         G7          C
Enviai o Vosso Espírito, Senhor, e da terra toda a face renovai!

[Estrofes]
   C         Am         Dm          G7
1. Bendize, ó minha alma, ao Senhor! Ó meu Deus e meu Senhor, como sois grande!
   F         G7         C
Quão numerosas, ó Senhor, são vossas obras: encheu-se a terra com as vossas criaturas!

   C         Am         Dm          G7
2. Se tirais o seu respiro, elas perecem e voltam para o pó de onde vieram;
   F         G7         C
Enviais o vosso espírito e renascem, e da terra toda a face renovais!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Enviai o Vosso Espírito, Senhor, e da Terra Toda a Face Renovai (Salmo 103) ' || '')
),
(
  'salmo-62-a-minha-alma-tem-sede-de-vos-meu-deus',
  'A Minha Alma Tem Sede de Vós, Como a Terra Sedenta (Salmo 62)',
  'Lecionário Dominical / Pe. José Weber',
  'Lecionário Dominical / Pe. José Weber',
  'Em',
  78,
  '4/4',
  'Salmo Contemplativo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Tempo Comum',
  'Sl 62, 2-9',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Refrão]
   Em       Am         D7          G
A minh''alma tem sede de Vós, como a terra sedenta,
   Am    B7         Em
Ó meu Deus!

[Estrofes]
   Em            Am         D7          G
1. Sois vós, ó Senhor, o meu Deus! Desde a aurora ansioso vos busco!
   Am         B7         Em
A minh''alma tem sede de vós, minha carne também vos deseja!

   Em         Am         D7          G
2. Pois melhor é a vossa graça do que a vida, por isso meus lábios vos exaltam;
   Am         B7         Em
Quero bendizer-vos toda a vida, e elevar para o vosso nome as minhas mãos!

[Final] Em  G  B7  Em',
  to_tsvector('portuguese', 'A Minha Alma Tem Sede de Vós, Como a Terra Sedenta (Salmo 62) ' || '')
),
(
  'salmo-115-o-calice-por-nos-abençoado-quinta-feira-santa',
  'O Cálice Por Nós Abençoado É a Nossa Comunhão Com o Sangue do Senhor (Salmo 115)',
  'Lecionário Dominical - Quinta-Feira Santa da Ceia do Senhor',
  'Lecionário Dominical - Quinta-Feira Santa da Ceia do Senhor',
  'Dm',
  76,
  '4/4',
  'Salmo da Ceia do Senhor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Quaresma',
  'Sl 115, 12-13.15-18; 1Cor 10, 16',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm    Gm         C7          F
O cálice por nós abençoado
   Gm     Dm         A7          Dm
É a nossa comunhão com o Sangue do Senhor!

[Estrofes]
   Dm         Gm         C7          F
1. Que poderei retribuir ao Senhor Deus por tudo aquilo que Ele fez em meu favor?
   Gm           Dm         A7          Dm
Elevo o cálice da minha salvação, invocando o nome santo do Senhor!

   Dm         Gm         C7          F
2. É sentida por demais pelo Senhor a morte de seus santos, seus amigos;
   Gm            Dm         A7          Dm
Eis que sou o vosso servo, ó Senhor, vós quebrastes os meus grilhões!

[Final] Dm  F  A7  Dm',
  to_tsvector('portuguese', 'O Cálice Por Nós Abençoado É a Nossa Comunhão Com o Sangue do Senhor (Salmo 115) ' || '')
),
(
  'salmo-21-meu-deus-meu-deus-por-que-me-abandonastes',
  'Meu Deus, Meu Deus, Por Que Me Abandonastes? (Salmo 21 - Domingo de Ramos)',
  'Lecionário Dominical - Domingo de Ramos e Sexta-Feira Santa',
  'Lecionário Dominical - Domingo de Ramos e Sexta-Feira Santa',
  'Am',
  72,
  '4/4',
  'Salmo da Paixão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Quaresma',
  'Sl 21, 8-9.17-20.23-24; Mt 27, 46',
  'liturgica',
  '[Intro] Am  Dm  E7  Am

[Refrão]
   Am      Dm         E7          Am
Meu Deus, meu Deus, por que me abandonastes?

[Estrofes]
   Am         Dm         G           C
1. Riem de mim todos aqueles que me veem, torcem os lábios e sacodem a cabeça:
   Dm         Am         E7          Am
"Ao Senhor se confiou, Ele o freie e agora o salve, se é verdade que Ele o ama!"

   Am         Dm         G           C
2. Transpassaram minhas mãos e os meus pés, e eu posso contar todos os meus ossos;
   Dm         Am         E7          Am
Eles repartem entre si as minhas vestes e sorteiam entre si a minha túnica!

[Final] Am  C  E7  Am',
  to_tsvector('portuguese', 'Meu Deus, Meu Deus, Por Que Me Abandonastes? (Salmo 21 - Domingo de Ramos) ' || '')
),
(
  'salmo-30-pai-em-tuas-maos-entrego-o-meu-espirito',
  'Pai, em Tuas Mãos Entrego o Meu Espírito (Salmo 30 - Sexta-Feira da Paixão)',
  'Lecionário Dominical - Sexta-Feira da Paixão do Senhor',
  'Lecionário Dominical - Sexta-Feira da Paixão do Senhor',
  'Dm',
  70,
  '4/4',
  'Salmo da Paixão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Salmo',
  'Quaresma',
  'Sl 30, 2.6.12-13.15-17.25; Lc 23, 46',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm     Gm         A7          Dm
Pai, em Tuas mãos entrego o meu espírito!

[Estrofes]
   Dm         Gm         C7          F
1. Senhor, eu ponho em vós minha esperança; que eu não fique envergonhado eternamente!
   Gm         Dm         A7          Dm
Em vossas mãos, Senhor, entrego o meu espírito, porque vós me salvareis, ó Deus fiel!

   Dm          Gm         C7          F
2. Mas eu confio em vós, Senhor, e digo: "Vós sois o meu Deus!"
   Gm         Dm         A7          Dm
Em vossas mãos está o meu destino; fazei brilhar vosso semblante ao vosso servo!

[Final] Dm  F  A7  Dm',
  to_tsvector('portuguese', 'Pai, em Tuas Mãos Entrego o Meu Espírito (Salmo 30 - Sexta-Feira da Paixão) ' || '')
),
(
  'vinde-cristaos-vinde-a-porfia-natal',
  'Vinde, Cristãos, Vinde à Porfia (Glória In Excelsis Deo)',
  'Hinário Tradicional de Natal',
  'Hinário Tradicional de Natal',
  'F',
  96,
  '4/4',
  'Hino Natalino',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Glória',
  'Natal',
  'Lc 2, 13-14',
  'liturgica',
  '[Intro] F  Bb  C7  F

[Primeira Parte]
   F         C7         F
1. Vinde, cristãos, vinde à porfia, hinos cantemos de louvor,
   F         C7         F
Hinos de paz e de alegria, que os anjos cantam ao Senhor:

[Refrão]
   F    Dm   Gm   C7   F    Bb   C7
Gló-o-o-o-o-ria in excelsis Deo!
   F    Dm   Gm   C7   F    Bb   C7   F
Gló-o-o-o-o-ria in excelsis Deo!

[Final] F  Bb  C7  F',
  to_tsvector('portuguese', 'Vinde, Cristãos, Vinde à Porfia (Glória In Excelsis Deo) ' || '')
),
(
  'pecador-agora-e-tempo-de-pesar-e-de-temor-quaresma',
  'Pecador, Agora É Tempo (Perdão, Senhor, Tão Grande É Meu Pecado)',
  'Hino Tradicional da Quaresma e Semana Santa',
  'Hino Tradicional da Quaresma e Semana Santa',
  'Am',
  72,
  '4/4',
  'Hino Penitencial Tradicional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ato Penitencial',
  'Quaresma',
  'Sl 50; Lc 15, 18',
  'liturgica',
  '[Intro] Am  Dm  E7  Am

[Primeira Parte]
   Am         E7
1. Pecador, agora é tempo de pesar e de temor:
   Dm        Am         E7          Am
Serve a Deus, despreza o mundo, já não sejas pecador!

[Refrão]
   A7    Dm         G7          C
Misericórdia, meu Deus, misericórdia!
   Dm     Am         E7          Am
Perdão, Senhor, pelos meus tantos pecados!

[Final] Am  C  E7  Am',
  to_tsvector('portuguese', 'Pecador, Agora É Tempo (Perdão, Senhor, Tão Grande É Meu Pecado) ' || '')
),
(
  'victimae-paschali-laudes-sequencia-da-pascoa',
  'Cantai, Cristãos, Afinal: Salve, Ó Vítima Pascal! (Sequência da Páscoa)',
  'Wipo de Borgonha (Séc. XI) / Missal Romano',
  'Wipo de Borgonha (Séc. XI) / Missal Romano',
  'Dm',
  86,
  '4/4',
  'Sequência Oficial da Páscoa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Páscoa',
  'Lc 24, 1-12; 1Cor 5, 7',
  'liturgica',
  '[Intro] Dm  C  Bb  A7  Dm

[Primeira Parte]
   Dm         C         Dm
1. Cantai, cristãos, afinal: "Salve, ó Vítima Pascal!"
   F       C         Dm          A7      Dm
Cordeiro inocente, o Cristo abriu-nos do Pai o aprisco!

[Segunda Parte]
   Dm            C         Dm
2. Por toda ovelha imolado, do mundo lava o pecado;
   F      C         Dm          A7      Dm
Duelam forte e mais forte: é a Vida que vence a morte!

[Terceira Parte]
   Gm          Dm         A7          Dm
3. "Que viste, ó Maria, na estrada?" — "Vi a tumba abandonada,
   Gm      Dm         A7          Dm
Vi Cristo ressuscitado, o vivo e glorificado!"

[Final]
   F        C         Gm          A7      Dm
Ressuscitou de verdade: Ó Rei Cristo, piedade! Amém! Aleluia!',
  to_tsvector('portuguese', 'Cantai, Cristãos, Afinal: Salve, Ó Vítima Pascal! (Sequência da Páscoa) ' || '')
),
(
  'veni-sancte-spiritus-sequencia-de-pentecostes',
  'Espírito de Deus, Enviai dos Céus um Raio de Luz (Sequência de Pentecostes)',
  'Papa Inocêncio III (Séc. XIII) / Missal Romano',
  'Papa Inocêncio III (Séc. XIII) / Missal Romano',
  'G',
  80,
  '4/4',
  'Sequência Oficial de Pentecostes',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Pentecostes',
  'At 2, 1-11; Jo 14, 26',
  'liturgica',
  '[Intro] G  Em  C  D7  G

[Primeira Parte]
   G         Em         C           D7
1. Espírito de Deus, enviai dos céus um raio de luz!
   G       Em         C     D7    G
Vinde, Pai dos pobres, dai aos corações Vossos sete dons!

[Segunda Parte]
   G          Em         C           D7
2. Consolo que acalma, hóspede da alma, doce alívio, vinde!
   G       Em         C     D7    G
No labor descanso, na aflição remanso, no calor aragem!

[Terceira Parte]
   C           D7         G           Em
3. Lavai o que é impuro, regai o que é seco, sarai o ferido;
   C         D7         G           Em
Dobrai o que é duro, guiai no caminho, aquecei o frio!

[Final]
   C           D7         G           Em
4. Dai à Vossa Igreja, que espera e deseja, Vossos sete dons;
   Am         D7         G
Dai em prêmio ao forte uma santa morte, alegria eterna! Amém! Aleluia!',
  to_tsvector('portuguese', 'Espírito de Deus, Enviai dos Céus um Raio de Luz (Sequência de Pentecostes) ' || '')
),
(
  'filho-de-davi-tony-allysson',
  'Filho de Davi (Tem Compaixão de Mim)',
  'Tony Allysson',
  'Tony Allysson',
  'D',
  74,
  '4/4',
  'Balada de Cura',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  7,
  'Ato Penitencial',
  'Quaresma',
  'Mc 10, 47-52',
  'liturgica',
  '[Intro] D  A  Em  A  (2x)

[Primeira Parte]
D         A
Me contaram que o Senhor ia passar
Em         A
E que havia uma chance de eu poder enxergar
D         A
Me disseram que tinhas poder
Em         A
Pra ressuscitar e fazer o paralítico andar!

[Pré-Refrão]
Bm            F#m            G
Renasceu dentro de mim a fé
A
Que há muito eu já não tinha
Bm            F#m            G
Eu senti meu coração arder
Em         A
E eu gritei para o Senhor me responder:

[Refrão]
D         A       Bm
Jesus, Filho de Davi, me cura!
G         D
És o Santo de Israel!
A         Bm
Diante de Ti a tempestade se cala
A         D
Meu Deus honra a minha fé!',
  to_tsvector('portuguese', 'Filho de Davi (Tem Compaixão de Mim) ' || '')
),
(
  'entao-volta-diego-fernandes',
  'Volte ao Primeiro Amor',
  'Diego Fernandes',
  'Diego Fernandes',
  'Eb',
  80,
  '4/4',
  'Pop Rock Católico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  6,
  'Ato Penitencial',
  'Quaresma',
  'Lc 15, 11-24',
  'liturgica',
  '[Intro] Eb  Ab  Eb  Ab

[Primeira Parte]
Eb
Eu preciso voltar ao primeiro amor
Ab
E relembrar como o Senhor me resgatou
Eb
Eu preciso voltar ao primeiro amor
Ab
E relembrar como o Senhor me resgatou!

[Pré-Refrão]
Cm              Bb/D
Os meus dias não são mais os mesmos
Ab         Bb4  Bb
Me perdi de Ti, vem, vem me encontrar!

[Refrão]
Eb         Ab
Seu amor jamais se acabará, o Senhor não se cansa de me amar
Eb         Ab
Seu amor jamais se acabará, o Senhor não se cansa de me amar!

[Segunda Parte]
Cm         Bb
Ainda que a mãe me esqueça
Ab         Eb
E o pior comigo aconteça
Fm           Bb4  Bb
Não vai me deixar jamais!

Eb         Ab
Ele me ama, Ele me ama
Eb         Ab
Ele me ama, Ele me ama!',
  to_tsvector('portuguese', 'Volte ao Primeiro Amor ' || '')
),
(
  'maos-ensanguentadas-de-jesus-pe-cleidimar',
  'Mãos Ensanguentadas de Jesus',
  'Maria do Rosário / Pe. Reginaldo Manzotti / Pe. Cleidimar',
  'Maria do Rosário / Pe. Reginaldo Manzotti / Pe. Cleidimar',
  'A',
  72,
  '4/4',
  'Balada de Cura e Libertação',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Ato Penitencial',
  'Quaresma',
  'Jo 20, 27; Is 53, 5',
  'liturgica',
  '[Intro] A9  F#m  Bm  E7  A9  E7

[Primeira Parte]
A9         F#m         Bm
Mãos ensanguentadas de Jesus,
E    E7          A9      E7
Mãos feridas lá na Cruz
A9           A7            D9
Vem tocar em mim, vem tocar em mim,
Bm            E7
Vem tocar em mim,
D9            E7          A9      E7
Vem, Senhor Jesus!

[Segunda Parte]
A9         F#m         Bm
Mãos que as crianças abençoaram,
E            E7           A9        E7
Mãos que os pães multiplicaram
A9           A7            D9
Vem tocar em mim, vem tocar em mim,
Bm            E7
Vem tocar em mim,
D9            E7          A9
Vem, Senhor Jesus!

[Terceira Parte]
A9         F#m         Bm
Mãos ressuscitadas de Jesus,
E     E7          A9      E7
Mãos que curam pela Cruz
A9           A7            D9
Vem tocar em mim, vem tocar em mim,
Bm            E7
Vem tocar em mim,
D9            E7          A9
Vem, Senhor Jesus!',
  to_tsvector('portuguese', 'Mãos Ensanguentadas de Jesus ' || '')
),
(
  'aleluia-alegria-minha-gente-irma-custodia',
  'Aleluia, Alegria, Minha Gente!',
  'Irmã Custódia Cardoso / Hinário Litúrgico CNBB',
  'Irmã Custódia Cardoso / Hinário Litúrgico CNBB',
  'G',
  96,
  '4/4',
  'Baião Litúrgico',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Lc 4, 18',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
   G        C         D7          G
Aleluia, alegria, minha gente! Aleluia, alegria!
   C         D7         G
O Senhor vai falar com a gente: acolhamos Sua Palavra neste dia!

[Refrão]
   G        C         D7          G
Aleluia, alegria, minha gente! Aleluia, alegria!
   C         D7         G
O Senhor vai falar com a gente: acolhamos Sua Palavra neste dia!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Aleluia, Alegria, Minha Gente! ' || '')
),
(
  'kyrie-eleison-senhor-que-viestes-salvar-palestrina',
  'Senhor, Que Viestes Salvar (Kyrie Solene)',
  'Coral Palestrina / Missal Romano',
  'Coral Palestrina / Missal Romano',
  'Dm',
  74,
  '4/4',
  'Solene Litúrgico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Ato Penitencial',
  'Qualquer',
  'Sl 50',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
Dm           Gm          A7      Dm
Senhor, que viestes salvar os corações arrependidos:
Dm          Gm      A7          Dm
Kyrie eleison! Kyrie eleison!
Dm          Gm      A7          Dm
Kyrie eleison! Kyrie eleison!

[Segunda Parte]
Dm        Gm          A7      Dm
Cristo, que viestes chamar os pecadores:
Dm          Gm        A7        Dm
Christe eleison! Christe eleison!
Dm          Gm        A7        Dm
Christe eleison! Christe eleison!

[Terceira Parte]
Dm         Gm          A7      Dm
Senhor, que intercedeis por nós junto do Pai:
Dm          Gm      A7          Dm
Kyrie eleison! Kyrie eleison!
Dm          Gm      A7          Dm
Kyrie eleison! Kyrie eleison!',
  to_tsvector('portuguese', 'Senhor, Que Viestes Salvar (Kyrie Solene) ' || '')
),
(
  'semeadores-da-palavra-sementes-do-verbo',
  'Semeadores da Palavra (Mateus 13, 3-9)',
  'Comunidade Católica Sementes do Verbo',
  'Comunidade Católica Sementes do Verbo',
  'C',
  86,
  '4/4',
  'Balada Bíblica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Mt 13, 3-9',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C        F         G7          C
Aleluia, aleluia! A semente é a Palavra de Deus,
   Am        Dm         G7          C
E o semeador é Cristo, que nos abre o Reino dos Céus!

[Refrão]
   C        F         G7          C
Aleluia, aleluia! A semente é a Palavra de Deus,
   Am        Dm         G7          C
E o semeador é Cristo, que nos abre o Reino dos Céus!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Semeadores da Palavra (Mateus 13, 3-9) ' || '')
),
(
  'tua-palavra-e-vida-comunidade-palavra-viva',
  'Tua Palavra É Viva e Eficaz (Hebreus 4, 12)',
  'Comunidade Católica Palavra Viva',
  'Comunidade Católica Palavra Viva',
  'D',
  88,
  '4/4',
  'Marcha Litúrgica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Hb 4, 12',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D       G         A7          D
Aleluia, aleluia! Tua Palavra é viva e eficaz:
   Bm      Em         A7          D
Ilumina a nossa mente e nos conduz à Tua paz!

[Refrão]
   D       G         A7          D
Aleluia, aleluia! Tua Palavra é viva e eficaz:
   Bm      Em         A7          D
Ilumina a nossa mente e nos conduz à Tua paz!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Tua Palavra É Viva e Eficaz (Hebreus 4, 12) ' || '')
),
(
  'celina-borges-lava-me',
  'Lava-me (Nas Águas dos Rios de Deus)',
  'Celina Borges',
  'Celina Borges',
  'C',
  72,
  '4/4',
  'Balada de Cura',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  14,
  'Ato Penitencial',
  'Quaresma',
  'Sl 50, 4.9; Jo 13, 8',
  'liturgica',
  '[Intro] C  F6/C  Fm6/C  C  G/B  Am  F  G

[Primeira Parte]
C              F/C
Lava-me nas águas dos rios de Deus, lava-me
Bb      G/B             C       G
Lava-me nas águas dos rios de Deus, lava-me
C        Dm
Mergulha-me nas águas da fonte do amor, mergulha-me
Dm/C    Bb      G/B             C
Mergulha-me nas águas da fonte do amor, mergulha-me

[Refrão]
C        Dm        Dm/C
Nas águas que curam, águas que limpam
G4        G         C
Águas que saram, águas que purificam
C        Dm        Dm/C
Águas que encharcam, águas que acalmam
G4        G              C       A  A/C#
Águas que limpam, águas que purificam

[Segunda Parte]
D        D7M        Em      Em/D
Põe Tua mão no lugar onde dói, e cura-me
C         A/C#  D              G/A
Põe Tua mão e de novo constrói, restaura-me
D           D/F#  Em      Em/D
Põe Teu olhar onde eu tento esconder a minha dor
C                   A/C#  D      A
Mais uma vez não consigo entender o desamor

[Refrão Final]
D        Em        Em/D
Nas águas que curam, águas que limpam
G/A       A             D         G/A   A
Águas que saram, águas que purificam
D        D/F#      Em      Em/D
Águas que encharcam, águas que acalmam
G/A        A    D    G/A  A
Águas que limpam, águas que purificam

G/A  A     D           D/F#  Em
Lava-me, ó Senhor nos Teus rios
G/A     A7    D
Lava-me, lava-me, lava-me!',
  to_tsvector('portuguese', 'Lava-me (Nas Águas dos Rios de Deus) ' || '')
),
(
  'celina-borges-buscai-primeiro',
  'Buscai Primeiro o Reino de Deus (Celina Borges)',
  'Celina Borges',
  'Celina Borges',
  'D',
  84,
  '4/4',
  'Balada Evangélica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Mt 6, 33; Mt 4, 4',
  'liturgica',
  '[Intro] D  F#m  G  D  G  D  A7  D

[Primeira Parte]
   D            F#m         G         D
1. Buscai primeiro o Reino de Deus
   G            D           Em         A7
E a Sua justiça,
   D            F#m         G         D
E todas as coisas vos serão acrescentadas:
   G            D           A7         D
Aleluia, Aleluia!

[Refrão]
   D            F#m         G         D
Aleluia, Aleluia, Aleluia,
   G            D           A7         D
Aleluia, Aleluia!

[Segunda Parte]
   D            F#m         G         D
2. Não só de pão o homem viverá,
   G            D           Em         A7
Mas de toda Palavra
   D            F#m         G         D
Que procede da boca de Deus:
   G            D           A7         D
Aleluia, Aleluia!',
  to_tsvector('portuguese', 'Buscai Primeiro o Reino de Deus (Celina Borges) ' || '')
),
(
  'tony-allysson-purifica-me',
  'Purifica-me',
  'Tony Allysson',
  'Tony Allysson',
  'C',
  68,
  '4/4',
  'Balada de Oração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  8,
  'Ato Penitencial',
  'Quaresma',
  'Sl 50, 12; Is 6, 6-7',
  'liturgica',
  '[Intro] C  G  Am  F9

[Primeira Parte]
C         G
Quero Te buscar, Senhor
        Am         F9
De mãos limpas e de puro coração
C         G
Quero Te encontrar, Senhor
        Am         F9
E descobrir tudo aquilo que tens pra mim

[Refrão]
C         G
Purifica-me, purifica-me
Am         F9
Aquilo que não é de Deus eu não quero pra mim
C         G            Dm         F  G
Eu me esvazio e peço que venhas me encher
C         G
Purifica-me, purifica-me
Am         F9
Aquilo que não é de Deus eu não quero pra mim
C         G            Dm         F  G  C
Eu me esvazio e peço que venhas me encher

[Ponte]
F         G         F
Tudo o que eu quero é dizer que Te amo, Jesus
            G
Eu preciso de Ti
F           G           C      G/B     Am
Do Teu cuidado e abrigo, Senhor meu amado
         F           G
Quero viver meu chamado
F       G     G4    G       C
Sonhar os sonhos que sonhou pra mim, Senhor!',
  to_tsvector('portuguese', 'Purifica-me ' || '')
),
(
  'pe-reginaldo-manzotti-o-grito-de-misericordia',
  'O Grito de Misericórdia',
  'Padre Reginaldo Manzotti',
  'Padre Reginaldo Manzotti',
  'Am',
  70,
  '4/4',
  'Balada Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Ato Penitencial',
  'Quaresma',
  'Sl 50 (51); Lc 18, 13',
  'liturgica',
  '[Intro] Am  Dm  G  C  E7  Am

[Primeira Parte]
Am         Dm
Do fundo do abismo da minha fraqueza
G            C       E7
Elevo a Ti, Senhor, o meu clamor sincero
Am         Dm
Lava minha alma, tira toda a tristeza
F         E7
Pois só no Teu perdão eu vivo e espero

[Refrão]
       Am         Dm
Misericórdia, Senhor, misericórdia!
        G         C    E7
Ouve o grito que brota do meu coração!
       Am         Dm
Pelo Sangue e pela Água do Teu lado aberto
    E7         Am
Derrama sobre nós a salvação!

[Segunda Parte]
Am         Dm
Como o filho pródigo retorno à Tua casa
G          C       E7
Cansado do pecado e sedento de amor
Am         Dm
O Teu abraço santo me aquece e me abrasa
F         E7
Restaura a minha vida, ó meu Redentor

[Refrão]
       Am         Dm
Misericórdia, Senhor, misericórdia!
        G         C    E7
Ouve o grito que brota do meu coração!
       Am         Dm
Pelo Sangue e pela Água do Teu lado aberto
    E7         Am
Derrama sobre nós a salvação!

[Final]
       Dm       E7        Am   F
Jesus, eu confio em Vós!
       Dm       E7        Am
Jesus, eu confio em Vós!',
  to_tsvector('portuguese', 'O Grito de Misericórdia ' || '')
),
(
  'pe-joaozinho-gloria-a-deus-nos-altos-ceus',
  'Glória a Deus nos Altos Céus',
  'Padre Joãozinho, scj',
  'Padre Joãozinho, scj',
  'G',
  112,
  '4/4',
  'Marcha Festiva',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Glória',
  'Tempo Comum',
  'Lc 2, 14; Ap 15, 3-4',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
G         C
Glória a Deus nos altos céus!
D7         G
Paz na terra aos Seus amados!
Em         Am
A Vós louvam, Rei celeste,
D7         G
Os que foram libertados!

[Primeira Parte]
G         C
1. Deus e Pai, nós Vos louvamos,
D7         G
Adoramos, bendizemos,
Em         Am
Damos glória ao Vosso nome,
D7         G
Vossos dons agradecemos!

[Refrão]
G         C
Glória a Deus nos altos céus!
D7         G
Paz na terra aos Seus amados!
Em         Am
A Vós louvam, Rei celeste,
D7         G
Os que foram libertados!

[Segunda Parte]
G         C
2. Senhor nosso, Jesus Cristo,
D7         G
Unigênito do Pai,
Em         Am
Vós, de Deus Cordeiro Santo,
D7         G
Nossas culpas perdoai!

G         C
3. Vós, que estais junto do Pai,
D7         G
Como nosso intercessor,
Em         Am
Acolhei nossos pedidos,
D7         G
Atendei nosso clamor!

G         C
4. Vós somente sois o Santo,
D7         G
O Altíssimo, o Senhor,
Em         Am
Com o Espírito Divino,
D7         G
De Deus Pai no esplendor!

[Final]
C         D7            G   Em
Com o Espírito Divino,
Am        D7            G
De Deus Pai no esplendor! Amém!',
  to_tsvector('portuguese', 'Glória a Deus nos Altos Céus ' || '')
),
(
  'ir-miria-kolling-a-biblia-e-a-palavra-de-deus',
  'A Bíblia É a Palavra de Deus',
  'Irmã Miria T. Kolling',
  'Irmã Miria T. Kolling',
  'D',
  104,
  '4/4',
  'Marcha Bíblica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Sl 118 (119), 105; Hb 4, 12',
  'liturgica',
  '[Intro] D  G  A7  D  A7

[Refrão]
D         A7
A Bíblia é a Palavra de Deus semeada no meio do povo,
Em         A7         D   D7
Que cresceu, cresceu e nos transformou,
G         A7         F#m         Bm
Ensinando a viver um mundo novo,
Em         A7         D
Ensinando a viver um mundo novo!

[Primeira Parte]
D         A7
1. Deus é bom, nos ensina a viver,
         D
Nos revela o caminho a seguir:
D7         G
Só no amor partilhando Seus dons,
       D           A7          D
Sua presença iremos sentir!

[Refrão]
D         A7
A Bíblia é a Palavra de Deus semeada no meio do povo,
Em         A7         D   D7
Que cresceu, cresceu e nos transformou,
G         A7         F#m         Bm
Ensinando a viver um mundo novo,
Em         A7         D
Ensinando a viver um mundo novo!

[Segunda Parte]
D         A7
2. Somos povo, o povo de Deus,
         D
E formamos o Reino de irmãos;
D7         G
E a Palavra que é viva nos guia
       D           A7          D
E alimenta a nossa união!

[Final]
G         A7         F#m         Bm
Ensinando a viver um mundo novo,
Em         A7         D
A Palavra de Deus nos transformou!',
  to_tsvector('portuguese', 'A Bíblia É a Palavra de Deus ' || '')
),
(
  'ziza-fernandes-abre-tua-porta',
  'Abre Tua Porta',
  'Ziza Fernandes',
  'Ziza Fernandes',
  'Dm',
  74,
  '4/4',
  'Balada Contemplativa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  5,
  'Ato Penitencial',
  'Advento',
  'Ap 3, 20; Ct 5, 2',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm  Bb  A7  Dm

[Primeira Parte]
Dm         Gm
Eis que estou à porta e bato suavemente
C         F            A7
Esperando que escutes Minha voz no coração
Dm         Gm
Não forço a fechadura, sou amigo paciente
Bb         A7
Que deseja cear contigo em santa comunhão!

[Refrão]
   Dm         Gm
Abre tua porta, deixa a luz entrar!
   C        F            A7
Deixa o Amor Divino tua casa visitar!
   Dm         Gm
Não tenhas receio da tua imperfeição,
   Bb         A7          Dm
Eu venho fazer morada em teu coração!

[Segunda Parte]
Dm         Gm
Arruma a tua mesa com sinceridade e fé
C         F            A7
Entrega tuas sombras ao calor do Meu olhar
Dm         Gm
Perdoo as tuas faltas e te ponho em pé
Bb         A7
Para que uma vida nova possas começar!

[Refrão]
   Dm         Gm
Abre tua porta, deixa a luz entrar!
   C        F            A7
Deixa o Amor Divino tua casa visitar!
   Dm         Gm
Não tenhas receio da tua imperfeição,
   Bb         A7          Dm
Eu venho fazer morada em teu coração!

[Final]
   Gm         A7          Dm    Bb
Eis que estou à porta e bato por amor:
   Gm         A7          Dm
Abre o coração ao teu Senhor!',
  to_tsvector('portuguese', 'Abre Tua Porta ' || '')
),
(
  'eugenio-jorge-louvor-e-gloria',
  'Louvor e Glória a Ti, Senhor',
  'Eugênio Jorge',
  'Eugênio Jorge',
  'G',
  88,
  '4/4',
  'Balada Solene de Aclamação',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Aclamação ao Evangelho',
  'Quaresma',
  'Jo 6, 68; Mt 4, 4',
  'liturgica',
  '[Intro] G  C  D7  G  D7

[Refrão]
   G         C        D7         G
Louvor e glória a Ti, Senhor,
   Em         Am       D7         G    G7
Cristo Palavra, Cristo Palavra de Deus!
   C         D7       G         Em
Louvor e glória a Ti, Senhor,
   Am         D7       G
Cristo Palavra de Deus!

[Primeira Parte]
   G         C
1. O homem não vive somente de pão,
   D7         G
Mas de toda palavra da boca de Deus!
   Em         Am
Fala, Senhor, que Teu povo escuta,
   D7         G
Tens palavras de vida eterna!

[Refrão]
   G         C        D7         G
Louvor e glória a Ti, Senhor,
   Em         Am       D7         G    G7
Cristo Palavra, Cristo Palavra de Deus!
   C         D7       G         Em
Louvor e glória a Ti, Senhor,
   Am         D7       G
Cristo Palavra de Deus!

[Segunda Parte]
   G         C
2. Convertei-vos a Mim de todo o coração,
   D7         G
Porque o Reino dos Céus está próximo a vós!
   Em         Am
Preparai os caminhos do vosso Senhor,
   D7         G
Acolhei a Palavra que salva!

[Final]
   C         D7       G         Em
Louvor e glória a Ti, Senhor,
   Am         D7       G
Cristo Palavra de Deus!',
  to_tsvector('portuguese', 'Louvor e Glória a Ti, Senhor ' || '')
),
(
  'nelsinho-correa-primeiro-amor',
  'Quero Voltar ao Meu Primeiro Amor',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'A',
  72,
  '4/4',
  'Balada de Conversão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Ato Penitencial',
  'Quaresma',
  'Ap 2, 4-5; Os 2, 16',
  'liturgica',
  '[Intro] A  E/G#  F#m  D  E7  A

[Primeira Parte]
A          E/G#
Senhor, o tempo foi passando e meu coração esfriou
F#m         C#m
Na correria desta vida a minha chama vacilou
D          A/C#
Mas hoje escuto o Teu chamado a me atrair ao deserto
Bm         E7
Para falar ao meu ouvido e ter-me sempre por perto!

[Refrão]
   A          E/G#
Quero voltar ao meu primeiro amor,
   F#m         C#m
Sentir de novo o Teu abraço, meu Senhor!
   D         A/C#        F#m
Reacende em minha alma o fogo da paixão,
   Bm         E7           A
Toma inteiramente o meu coração!

[Segunda Parte]
A          E/G#
Como no dia do batismo e da primeira comunhão
F#m         C#m
Devolve a pureza santa à minha humilde oração
D          A/C#
Sem Ti eu nada posso ser, Tu és a fonte do viver
Bm         E7
Somente aos pés da Tua cruz eu quero permanecer!

[Refrão]
   A          E/G#
Quero voltar ao meu primeiro amor,
   F#m         C#m
Sentir de novo o Teu abraço, meu Senhor!
   D         A/C#        F#m
Reacende em minha alma o fogo da paixão,
   Bm         E7           A
Toma inteiramente o meu coração!

[Final]
   D          E7           F#m   D
Reacende em minha alma o fogo da paixão:
   Bm         E7           A
Volto a Ti, meu primeiro amor!',
  to_tsvector('portuguese', 'Quero Voltar ao Meu Primeiro Amor ' || '')
),
(
  'toda-a-terra-te-exalta',
  'Toda a Terra Te Adore, ó Senhor do Universo',
  'Hinário Litúrgico CNBB (Salmo 65)',
  'Hinário Litúrgico CNBB (Salmo 65)',
  'Am',
  92,
  '4/4',
  'Marcha Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Sl 99 (100); Cl 3, 16',
  'liturgica',
  '[Intro] Am  G  C  Dm  F  E  Am

[Refrão]
Am       G       Am
Toda a terra te adore,
Dm      E        Dm
Ó Senhor do universo,
Am
Os louvores do teu nome
E         Am
Cante o povo em seus versos!
Am       G       Am
Toda a terra te adore,
Dm      E        Dm
Ó Senhor do universo,
Am
Os louvores do teu nome
E         Am
Cante o povo em seus versos!

[Estrofes]
Am       G       Am
1. Venham todos, com alegria,
D            C
Aclamar nosso Senhor,
Dm           Am
Caminhando ao seu encontro,
Dm           E
Proclamando seu louvor.
Dm           Am
Ele é o Rei dos reis
B7            E
E dos deuses o maior!

[Refrão]

Am       G       Am
2. Tudo é dele: abismos, montes,
D         C
Mar e terra ele formou.
Dm           Am
De joelhos adoremos
Dm            E
Este Deus que nos criou,
Dm           Am
Pois nós somos seu rebanho
B7            E
E ele é nosso pastor!

[Refrão]

Am       G       Am
3. Ninguém feche o coração,
D            C
Escutemos sua voz.
Dm           Am
Não sejamos tão ingratos,
Dm           E
Tal e qual nossos avós.
Dm           Am
Mereçamos o que ele
B7            E
Tem guardado para nós!

[Refrão]

Am       G       Am
4. Glória ao Pai que nos acolhe
D            C
E a seu Filho Salvador.
Dm           Am
Igualmente demos glória
Dm           E
Ao Espírito de amor.
Dm           Am
Hoje e sempre, eternamente,
B7            E
Cantaremos seu louvor!

[Refrão Final]
Am       G       Am
Toda a terra te adore,
Dm      E        Dm
Ó Senhor do universo,
Am
Os louvores do teu nome
E         Am
Cante o povo em seus versos!',
  to_tsvector('portuguese', 'Toda a Terra Te Adore, ó Senhor do Universo ' || '')
),
(
  'de-alegria-vibrei-no-senhor',
  'De Alegria Vibrei no Senhor',
  'Pe. Sílvio Milanez / Hinário Litúrgico CNBB',
  'Pe. Sílvio Milanez / Hinário Litúrgico CNBB',
  'A',
  96,
  '4/4',
  'Marcha Rancho / Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Sl 121 (122), 1-2',
  'liturgica',
  '[Intro] E  E7  A

[Refrão]
A         D
De alegria vibrei no Senhor,
E         A
Pois vestiu-me com sua justiça!
F#m         D       E7          A
Adornou-me com joias bonitas,
         E7          A
Como esposa do Rei me elevou!
F#m         D       E7          A
Adornou-me com joias bonitas,
         E7          A
Como esposa do Rei me elevou!

[Estrofes]
F#m      Bm       E         A
1. Transborda o meu coração em belos versos ao Rei,
D        Bm       E         A
Um poema, uma canção com a língua escreverei!
F#m      Bm       E         A
De todos és o mais belo, a graça desabrochou
D        Bm       E         E7        A
Em teu semblante, em teus lábios, pra sempre Deus te abençoou!

[Refrão]

F#m      Bm       E         A
2. Cingi a vossa espada, ó herói, ao vosso lado,
D        Bm       E         A
Vossa glória e majestade no combate aclamado!
F#m      Bm       E         A
Cavalgai pela verdade, pela justiça e pelo bem,
D        Bm       E         E7        A
Vossa destra vos ensine maravilhas também!

[Refrão]

F#m      Bm       E         A
3. Vosso trono, ó Deus, perdura para sempre, sem cessar,
D        Bm       E         A
Cetro de retidão é o cetro do vosso governar!
F#m      Bm       E         A
Amastes a justiça e odiastes a impiedade,
D        Bm       E         E7        A
Por isso Deus vos ungiu com óleo de santidade!

[Refrão Final]
A         D
De alegria vibrei no Senhor,
E         A
Pois vestiu-me com sua justiça!
F#m         D       E7          A
Adornou-me com joias bonitas,
         E7          A
Como esposa do Rei me elevou!',
  to_tsvector('portuguese', 'De Alegria Vibrei no Senhor ' || '')
),
(
  'o-povo-de-deus-no-deserto-andava',
  'O Povo de Deus no Deserto Andava',
  'Tradicional Litúrgico / CNBB',
  'Tradicional Litúrgico / CNBB',
  'D',
  94,
  '4/4',
  'Toada / Caminhada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Entrada',
  'Tempo Comum',
  'Êx 16; Hb 11',
  'liturgica',
  '[Intro] D  A  D

[Primeira Parte]
D         A
1. O povo de Deus no deserto andava,
         G        A      D
Mas à sua frente alguém caminhava.
D         A
O povo de Deus era rico de nada,
         G        A      D
Só tinha a esperança e o pó da estrada.

[Refrão 1]
    D       G       A
Também sou teu povo, Senhor,
         D
E estou nessa estrada:
            A
Somente a tua graça
         D
Me basta e mais nada!
    D       G       A
Também sou teu povo, Senhor,
         D
E estou nessa estrada:
            A
Somente a tua graça
         D
Me basta e mais nada!

[Segunda Parte]
D         A
2. O povo de Deus também vacilava,
         G        A      D
Às vezes custava a crer no amor.
D         A
O povo de Deus, chorando, rezava,
         G        A      D
Pedia perdão e recomeçava.

[Refrão 2]
    D       G       A
Também sou teu povo, Senhor,
         D
E estou nessa estrada:
            A
Perdoa se às vezes
         D
Não creio em mais nada!
    D       G       A
Também sou teu povo, Senhor,
         D
E estou nessa estrada:
            A
Perdoa se às vezes
         D
Não creio em mais nada!

[Terceira Parte]
D         A
3. O povo de Deus também teve fome,
         G        A      D
E tu lhe mandaste o pão lá do céu.
D         A
O povo de Deus, cantando, deu graças,
         G        A      D
Provou teu amor, amor que não passa.

[Refrão 3]
    D       G       A
Também sou teu povo, Senhor,
         D
E estou nessa estrada:
            A
Tu és alimento
         D
Na longa jornada!
    D       G       A
Também sou teu povo, Senhor,
         D
E estou nessa estrada:
            A
Tu és alimento
         D
Na longa jornada!

[Quarta Parte]
D         A
4. O povo de Deus, ao longe avistou
         G        A      D
A terra querida que o amor preparou.
D         A
O povo de Deus corria e cantava,
         G        A      D
E nos seus louvores, seu poder proclamava.

[Refrão 4]
    D       G       A
Também sou teu povo, Senhor,
         D
E estou nessa estrada:
            A
Cada dia mais perto
         D
Da terra esperada!
    D       G       A
Também sou teu povo, Senhor,
         D
E estou nessa estrada:
            A
Cada dia mais perto
         D
Da terra esperada!',
  to_tsvector('portuguese', 'O Povo de Deus no Deserto Andava ' || '')
),
(
  'senhor-quem-entrara-no-santuario',
  'Senhor, Quem Entrará no Santuário pra Te Louvar',
  'Padre Zezinho, scj / Salmo 14',
  'Padre Zezinho, scj / Salmo 14',
  'C',
  88,
  '4/4',
  'Balada Simples',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Sl 23 (24), 3-6',
  'liturgica',
  '[Intro] C  Am  Dm  G  C

[Primeira Parte]
C      Am    Dm       G         C
Senhor quem entrará no Santuário pra Te Louvar?
C      Am    Dm       G         C
Senhor quem entrará no Santuário pra Te Louvar?
       C7     F           G    Em   Am
Quem tem as mãos limpas, e o coração puro
Dm       G           C
Quem não é vaidoso e sabe amar
       C7     F           G    Em   Am
Quem tem as mãos limpas, e o coração puro
Dm       G           C
Quem não é vaidoso e sabe amar

[Segunda Parte]
C      Am    Dm       G         C
Senhor eu quero entrar no Santuário pra Te Louvar
C      Am    Dm       G         C
Senhor eu quero entrar no Santuário pra Te Louvar
    C7     F       G    Em   Am
Ó dai-me mãos limpas e um coração puro
Dm       G         C
Arranca a vaidade, ensina-me a amar
    C7     F       G    Em   Am
Ó dai-me mãos limpas e um coração puro
Dm       G         C
Arranca a vaidade, ensina-me a amar

[Terceira Parte]
C      Am    Dm       G         C
Senhor já posso entrar no Santuário pra Te Louvar
C      Am    Dm       G         C
Senhor já posso entrar no Santuário pra Te Louvar
    C7     F           G    Em   Am
Teu sangue me lava, Teu fogo me queima
Dm       G         C
O Espírito Santo inunda meu ser
    C7     F           G    Em   Am
Teu sangue me lava, Teu fogo me queima
Dm       G         C
O Espírito Santo inunda meu ser',
  to_tsvector('portuguese', 'Senhor, Quem Entrará no Santuário pra Te Louvar ' || '')
),
(
  'eis-o-tempo-de-conversao',
  'Eis o Tempo de Conversão',
  'Pe. José Weber / CNBB',
  'Pe. José Weber / CNBB',
  'D',
  74,
  '4/4',
  'Balada Sóbria',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  '2Cor 6, 2; Jl 2, 12',
  'liturgica',
  '[Intro] D  G  A  D

[Refrão]
D    G       A          D      Bm 
Eis o tempo de conversão, 
Em       A7      D
Eis o dia da salvação!
D7    G           A           F#m 
Ao Pai voltemos, juntos andemos:
Bm   G      A7      D
Eis o tempo de conversão!

[Estrofes]
D          G           A          D
1. Os caminhos do Senhor são verdade, são amor:
Bm          Em          A7         D
Dirigi os passos meus; em Vós espero, ó meu Deus!

[Refrão]

D            G           A          D
2. Muito bom, bastante justo é o Senhor, nosso Deus:
Bm            Em          A7         D
Aos pecadores dá o caminho, na justiça guia os humildes.

[Refrão]

D           G           A          D
3. O Senhor faz aliança com quem guarda a sua lei:
Bm          Em          A7         D
Seus preceitos são fiéis, suas veredas são verdade!

[Refrão]

D           G           A          D
4. Olhai para a minha dor, perdoai os meus pecados:
Bm         Em          A7         D
Protegei a minha alma e livrai-me do perigo!

[Refrão]

D          G           A          D
5. Redimi, ó meu Deus, vosso povo de Israel:
Bm          Em          A7         D
De todas as suas angústias libertai o vosso povo!',
  to_tsvector('portuguese', 'Eis o Tempo de Conversão ' || '')
),
(
  'o-senhor-ressurgiu-aleluia',
  'O Senhor Ressurgiu, Aleluia!',
  'Hinário Litúrgico CNBB (Tempo Pascal)',
  'Hinário Litúrgico CNBB (Tempo Pascal)',
  'D',
  98,
  '4/4',
  'Marcha Festiva Pascal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  6,
  'Entrada',
  'Páscoa',
  '1Cor 5, 7; Ap 5, 12',
  'liturgica',
  '[Intro] F  C  G7  C

[Refrão]
C         F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am         Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!
C         F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am         Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!

[Estrofe 1]
C         F
1. Celebremos a festa da vida,
Dm         G7
Cristo venceu o pecado e a morte!
C         F
Ressuscitou glorioso do túmulo,
Dm            G7            C
Para nos dar a divina esperança e a sorte!

[Refrão]
C         F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am         Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!

[Estrofe 2]
C         F
2. A pedra da morte foi revolvida,
Dm         G7
A aurora pascal sobre nós já raiou!
C         F
Vede o lençol e o sudário dobrados,
Dm          G7            C
Cristo Jesus sobre a morte triunfou!

[Refrão]
C         F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am         Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!

[Estrofe 3]
C         F
3. Não choreis, o Senhor está vivo,
Dm         G7
Ide depressa contar aos irmãos!
C         F
Ele vai para a Galiléia na frente,
Dm         G7            C
Aparecerá aos discípulos cristãos!

[Refrão]
C         F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am         Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!

[Estrofe 4]
C         F
4. Este é o dia que o Senhor preparou,
Dm         G7
Exultemos e nele cantemos louvor!
C         F
Glória a Cristo, autor de nossa vida,
Dm        G7            C
Nosso Pastor, Redentor e Senhor!

[Refrão Final]
C         F           G7            C
O Senhor ressurgiu, aleluia, aleluia!
Am         Dm          G7            C
É o Cordeiro pascal, aleluia, aleluia!',
  to_tsvector('portuguese', 'O Senhor Ressurgiu, Aleluia! ' || '')
),
(
  'da-cepa-brotou-a-rama',
  'Da Cepa Brotou a Rama',
  'Pe. Reginaldo Veloso / CNBB',
  'Pe. Reginaldo Veloso / CNBB',
  'Em',
  82,
  '4/4',
  'Baião / Toada Sóbria',
  '↓  ↓ ↑  ↓ ↑',
  true,
  true,
  true,
  3,
  'Entrada',
  'Advento',
  'Is 11, 1-10',
  'liturgica',
  '​   Em            B7          Em
​Da cepa brotou a rama,  Da rama brotou a flor

​    E7           Am          Em      B7    Em
​Da flor nasceu Maria,  De  Maria,  o Salvador


​        Am       D7          G        C        F#º                   B7
​1- O Espírito de Deus  Sobre ele pousará  De saber, de entendimento

​                Em        Am           D7        G          C
​Este Espírito será  De conselho e fortaleza  De ciência e de temor

​    F#º        B7          Em
​Achará sua alegria  No temor do seu Senhor


​         Am         D7         G               C                 F#º       B7
​2- Não será pela ilusão  Do olhar, do ouvir falar  Que ele irá julgar os homens

​                   Em          Am           D7             G                C
​Como é praxe acontecer  Mas os pobres desta terra  Com justiça julgará

​       F#º        B7          Em
​E dos fracos o direito  Ele é quem defenderá


​       Am           D7        G        C          F#º                  B7
​3- A palavra de sua boca  Ferirá o violento  E o sopro de seus lábios

​            Em          Am       D7             G          C
​Matará o avarento  A justiça é o cinto  Que circunda a sua cintura

​    F#º          B7                  Em
​E o manto da lealdade  É a sua vestidura


​          Am        D7        G            C                 F#º                 B7
​4- Neste dia, neste dia  O incrível, verdadeiro  Coisa que nunca se viu

​                  Em         Am           D7                   G        C
​Morar lobo com cordeiro  A comer do mesmo pasto  Tigre e boi, burro e leão

​         F#º     B7          Em
​Por um menino guiados  Se confraternizarão


​               Am                D7                  G                C              F#º  
​5- Um menino, uma criança  Com as feras a brincar  E nenhum mal nenhum dano

         B7


​          Em        Am                 D7                  G             C
​Mais na terra se fará  Da ciência do Senhor  Cheio o mundo estará

​             F#º               B7          Em
​Como o sol inunda a terra  E as águas enchem o mar


​              Am            D7             G               C           F#º            B7
​6- Neste dia, neste dia  O Senhor estenderá  Sua mão libertadora

​          Em           Am                 D7                 G         
​Pra seu povo resgatar  Estandarte para os povos  O Senhor levantará

      C


​          F#º                 B7          Em
​A seu povo, a sua Igreja  Toda a terra acorrerá


​          Am                D7                 G                   C        F#º           
​7- A inveja, a opressão  Entre irmãos se acabará  E a comunhão de todos

       B7


​          Em          Am                  D7                   G             
​O inimigo vencerá   Poderosa mão de Deus  Fez no Egito o mar secar

      C


​           F#º                B7          Em
​Para o resto do seu povo  Um caminho abrirá',
  to_tsvector('portuguese', 'Da Cepa Brotou a Rama ' || '')
),
(
  'cristaos-vinde-todos-natal',
  'Cristãos, Vinde Todos (Adeste Fideles)',
  'Hino Tradicional de Natal',
  'Hino Tradicional de Natal',
  'G',
  86,
  '4/4',
  'Hino Solene',
  '↓   ↓   ↓   ↓ ↑',
  true,
  true,
  true,
  7,
  'Entrada',
  'Natal',
  'Lc 2, 15',
  'liturgica',
  '[Intro] E

[Primeira Parte]

         B7
Cristãos, vinde todos

 E           B7
Com alegres cantos

     C#m7       B2     F#   B2
Oh! Vinde, oh! Vinde até Belém

[Refrão]

 E7      A2  E  F#         B2
Vede nasci__do vosso Rei eterno

     E
Oh! Vinde e adoremos

Oh! Vinde e adoremos

     A2         B7      E  B7   E    B7
Oh! Vinde e adoremos o sa_____lvador

[Segunda Parte]

   E         B7    E         B7
Humildes pastores deixam seus rebanhos

    C#m7    B2        F#     B2
E alegres acorrem ao rei do céu

[Refrão]

 E7       A2  E   F#           B2
Nós igualmen_te cheios de alegria

E
Oh! Vinde e adoremos

Oh! Vinde e adoremos

     A2         B7      E  B7   E    B7
Oh! Vinde e adoremos o sa_____lvador

[Terceira Parte]

   E        B7     E         B7
O Deus invisível, de eterna grandeza

     C#m7         B2      F#    B2
Sob véus de humildade, podemos ver

[Refrão]

 E7        A2  E   F#         B2
Deus pequeni__no, Deus envolto em faixas

E
Oh! Vinde e adoremos

Oh! Vinde e adoremos

     A2         B7      E  B7   E    B7
Oh! Vinde e adoremos o sa_____lvador',
  to_tsvector('portuguese', 'Cristãos, Vinde Todos (Adeste Fideles) ' || '')
),
(
  'a-escolhida-uma-entre-todas',
  'A Escolhida (Uma Entre Todas Foi a Escolhida)',
  'Pe. Zezinho / Tradicional Mariano',
  'Pe. Zezinho / Tradicional Mariano',
  'D',
  74,
  '4/4',
  'Balada Mariana',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Final',
  'Qualquer',
  'Lc 1, 28-38',
  'liturgica',
  '[Intro] E  A  E  C#m

        F# ( A  B ) E  B

[Primeira Parte]

E         B
Uma entre todas foi a escolhida

 C#m         G#m
Foste tu Maria a serva preferida

 A         E
Mãe do meu Senhor

 F#         B
Mãe do meu salvador

[Refrão]

   E     A         E
Maria, cheia de graça e consolo

 C#m         F#
Venha caminhar com teu povo

 A         B        E  B
Nossa mãe sempre será

   E     A         E
Maria, cheia de graça e consolo

 C#m         F#
Venha caminhar com teu povo

 A         B        E  B
Nossa mãe sempre será

[Segunda Parte]

 E         B
Roga pelos pecadores desta Terra

 C#m         G#m
Roga pelo povo que em seu Deus espera

 A         E
Mãe do meu Senhor

 F#         B
Mãe do meu salvador

[Refrão]

   E     A         E
Maria, cheia de graça e consolo

 C#m         F#
Venha caminhar com teu povo

 A         B        E  B
Nossa mãe sempre será

   E     A         E
Maria, cheia de graça e consolo

 C#m         F#
Venha caminhar com teu povo

 A         B        E  B
Nossa mãe sempre será

[Interlúdio] E  B  C#m  G#m

         A  E  F#  B

[Primeira Parte]

E         B
Uma entre todas foi a escolhida

 C#m         G#m
Foste tu Maria a serva preferida

 A         E
Mãe do meu Senhor

 F#         B
Mãe do meu salvador

[Refrão]

   E     A         E
Maria, cheia de graça e consolo

 C#m         F#
Venha caminhar com teu povo

 A         B        E  B
Nossa mãe sempre será

   E     A         E
Maria, cheia de graça e consolo

 C#m         F#
Venha caminhar com teu povo

 A         B        E  B
Nossa mãe sempre será

   E     A         E
Maria, cheia de graça e consolo

 C#m         F#
Venha caminhar com teu povo

 A         B        E  B
Nossa mãe sempre será

   E     A         E
Maria, cheia de graça e consolo

 C#m         F#
Venha caminhar com teu povo

 A         B        E  B
Nossa mãe sempre será

[Final] E  A  E  C#m

        F# ( A  B ) E  B',
  to_tsvector('portuguese', 'A Escolhida (Uma Entre Todas Foi a Escolhida) ' || '')
),
(
  'dai-nos-a-bencao-o-mae-querida',
  'Dai-nos a Bênção, ó Mãe Querida (Nossa Senhora Aparecida)',
  'Hino Tradicional da Padroeira do Brasil',
  'Hino Tradicional da Padroeira do Brasil',
  'C',
  86,
  '3/4',
  'Valsa Devocional (3/4)',
  '↓   ↑ ↓   ↑ ↓',
  true,
  true,
  true,
  3,
  'Final',
  'Solenidades',
  'Lc 1, 48',
  'liturgica',
  '[Intro] G  D  C  D  G

[Refrão]
G         D
Dai-nos a bênção, ó Mãe querida,
C         D       G
Nossa Senhora Aparecida!
G         D
Dai-nos a bênção, ó Mãe querida,
C         D       G
Nossa Senhora Aparecida!

[Estrofes]
G         C         G
1. Sob este manto do azul do céu,
C         G       D         G
Guardai-nos sempre no vosso amor!
G         C         G
Nós somos filhos da vossa bênção,
C         G       D         G
Mãe do Divino Consolador!

[Refrão]

G         C         G
2. A vossa imagem tão pequenina
C         G       D         G
Nas águas do rio se revelou;
G         C         G
Aos pescadores desanimados
C         G       D         G
A santa graça do céu brotou!

[Refrão]

G         C         G
3. Abençoai a nossa pátria,
C         G       D         G
O nosso povo trabalhador!
G         C         G
Fazei que reine na nossa terra
C         G       D         G
A paz bendita do Redentor!

[Refrão]

G         C         G
4. Na hora santa da despedida,
C         G       D         G
Quando este mundo tiver seu fim,
G         C         G
Vinde buscar-nos com vosso manto,
C         G       D         G
Pra junto a Deus cantarmos assim!

[Refrão Final]
G         D
Dai-nos a bênção, ó Mãe querida,
C         D       G
Nossa Senhora Aparecida!',
  to_tsvector('portuguese', 'Dai-nos a Bênção, ó Mãe Querida (Nossa Senhora Aparecida) ' || '')
),
(
  'ide-pelo-mundo-anunciai-o-evangelho',
  'Ide pelo Mundo, Anunciai o Evangelho',
  'Hinário Litúrgico Missionário',
  'Hinário Litúrgico Missionário',
  'G',
  94,
  '4/4',
  'Marcha de Envio',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Mc 16, 15; Mt 28, 19-20',
  'liturgica',
  '[Intro] G  C  D  G

[Refrão]
G         C         D         G
Ide pelo mundo, anunciai o Evangelho!
Em         Am            D         G
Sede no mundo testemunhas do Senhor!

[Estrofe 1]
G         Em            C         D
1. O Espírito do Senhor sobre mim se derramou,
G         Em            C         D
Para anunciar a paz Ele mesmo me enviou!

[Segunda Parte]
   Em           C         G
2. Onde houver dor e tristeza, levemos consolação,
   Am           D7         G
Onde houver treva e discórdia, semeemos o perdão;
   C            D7         Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am           D7         G
Até que na Pátria eterna voltemos a nos encontrar!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Ide pelo Mundo, Anunciai o Evangelho ' || '')
),
(
  'vem-espirito-santo-pentecostes',
  'Vem, Espírito Santo (Veni Sancte Spiritus)',
  'Sequência de Pentecostes / Litúrgico',
  'Sequência de Pentecostes / Litúrgico',
  'C',
  74,
  '4/4',
  'Balada Orante',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Páscoa',
  'At 2, 1-4',
  'liturgica',
  '[Intro] C  Am  F  G  C

C         Am          F         G
Vem, Espírito Santo, vem, vem iluminar!
C         Am          F      G       C
Nossos caminhos vem guiar, vem nos transformar!

[Estrofe 1]
Am         Em          F         G
1. Pai dos pobres, vem do Céu, doador dos dons de Deus,
Am         Em          F         G
Luz bendita dos corações, Consolador perfeito!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Vem, Espírito Santo (Veni Sancte Spiritus) ' || '')
),
(
  'sim-eu-quero-que-a-luz-de-deus',
  'Sim, Eu Quero que a Luz de Deus',
  'Pe. José Weber',
  'Pe. José Weber',
  'C',
  86,
  '4/4',
  'Balada Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Ap 22, 20; Mt 5, 14-16',
  'liturgica',
  '[Intro] G  C  D  G

[Refrão]
G         C         G
Sim, eu quero que a luz de Deus,
Em         Am            D
Que um dia em mim brilhou,
G         C         G
Jamais se apague e nem perca o fulgor:
Em         Am      D     G
Sim, eu quero caminhar no amor!

[Estrofes]
G         C         G
1. Para ser luz do mundo e sal da terra,
Em         Am            D
O Pai mandou seu Filho Jesus!
G         C         G
Ele é a luz que ilumina a estrada,
Em         Am      D     G
Guiando os passos para a cruz!

[Refrão]

G         C         G
2. Aos pequeninos deu o Seu consolo,
Em         Am            D
Aos oprimidos deu libertação!
G         C         G
E a todos nós pediu em testamento:
Em         Am      D     G
Amai-vos todos como vosso irmão!

[Refrão]

G         C         G
3. Se a tempestade rugir no mar,
Em         Am            D
Se as trevas tentarem sufocar a fé,
G         C         G
A luz de Cristo há de triunfar,
Em         Am      D     G
Pois nosso Deus nos mantém de pé!

[Refrão]

G         C         G
4. Quem segue a Cristo não andará nas trevas,
Em         Am            D
Mas terá a luz da verdadeira vida!
G         C         G
Ide ao mundo levar a esperança
Em         Am      D     G
E a paz de Deus que vence toda lida!',
  to_tsvector('portuguese', 'Sim, Eu Quero que a Luz de Deus ' || '')
),
(
  'pelas-estradas-da-vida-santa-maria-vem',
  'Pelas Estradas da Vida (Santa Maria, Vem)',
  'M. Espinosa / Hinário Mariano',
  'M. Espinosa / Hinário Mariano',
  'C',
  84,
  '4/4',
  'Marcha / Caminhada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Final',
  'Qualquer',
  'At 1, 14; Lc 1, 38',
  'liturgica',
  '[Intro] C  G  Am  F  G7  C

[Primeira Parte]
   C         G
1. Pelas estradas da vida, nunca sozinho estás;
   Am       F           G7
Contigo pelo caminho, Santa Maria vai!

[Refrão]
   C      Em         F      C
Ó vem conosco, vem caminhar,
   Dm     G7       C
Santa Maria vem!
   C      Em         F      C
Ó vem conosco, vem caminhar,
   Dm     G7       C
Santa Maria vem!

[Segunda Parte]
   C         G
2. Mesmo que digam os homens que nada podes mudar,
   Am        F           G7
Luta por um mundo novo de unidade e paz!

[Terceira Parte]
   C         G
3. Se pelo mundo os homens sem trégua brigam sem fim,
   Am         F           G7
Não fiques desanimado: Cristo é a nossa paz!

[Quarta Parte]
   C         G
4. Se parecer tua vida inútil caminhar,
   Am          F           G7
Lembra que outros te seguem: não deves vacilar!',
  to_tsvector('portuguese', 'Pelas Estradas da Vida (Santa Maria, Vem) ' || '')
),
(
  'hosana-ao-filho-de-davi-domingo-de-ramos-cnbb',
  'Hosana ao Filho de Davi (Antífona de Abertura - Domingo de Ramos)',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Hinário Litúrgico CNBB / Missal Romano',
  'D',
  96,
  '4/4',
  'Marcha Processional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Mt 21, 9',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D        G         A7          D
Hosana ao Filho de Davi! Hosana ao Filho de Davi!
   Bm            Em         A7          D
Bendito o que vem em nome do Senhor! Rei de Israel, hosana nas alturas!

[Primeira Parte]
   D        G         A7          D
1. Os filhos dos hebreus, com ramos de oliveira,
   Bm       Em         A7          D
Foram ao encontro do Senhor clamando nas alturas:

[Refrão]
   D        G         A7          D
Hosana ao Filho de Davi! Hosana ao Filho de Davi!
   Bm            Em         A7          D
Bendito o que vem em nome do Senhor! Rei de Israel, hosana nas alturas!

[Segunda Parte]
   D         G         A7          D
2. Ao Senhor pertence a terra e tudo o que ela encerra,
   Bm     Em         A7          D
O mundo inteiro com os seres que o povoam!

[Terceira Parte]
   D         G         A7          D
3. Ó portas, levantai vossos frontões! Elevai-vos bem mais alto, antigas portas,
   Bm     Em         A7          D
A fim de que o Rei da glória possa entrar!',
  to_tsvector('portuguese', 'Hosana ao Filho de Davi (Antífona de Abertura - Domingo de Ramos) ' || '')
),
(
  'os-filhos-dos-hebreus-procissao-de-ramos',
  'Os Filhos dos Hebreus (Procissão de Domingo de Ramos)',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'G',
  98,
  '4/4',
  'Marcha Festiva',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Mt 21, 8-9; Sl 23(24)',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
   G       C         D7          G
Os filhos dos hebreus, com ramos de oliveira,
   Em    Am         D7          G
Saíram ao encontro do Senhor, clamando:
   C            D7          G      Em       Am    D7    G
Hosana, hosana nas alturas! Hosana, hosana nas alturas!

[Primeira Parte]
   G        C         D7          G
1. Ao Senhor pertence a terra e a sua plenitude,
   Em     Am         D7          G
O mundo inteiro e todos os seus habitantes!

[Refrão]
   G       C         D7          G
Os filhos dos hebreus, com ramos de oliveira,
   Em    Am         D7          G
Saíram ao encontro do Senhor, clamando:
   C            D7          G      Em       Am    D7    G
Hosana, hosana nas alturas! Hosana, hosana nas alturas!

[Segunda Parte]
   G          C         D7          G
2. Quem é este Rei da Glória? É o Senhor forte e poderoso,
   Em       Am         D7          G
O Senhor poderoso nas batalhas, o Rei da Glória!',
  to_tsvector('portuguese', 'Os Filhos dos Hebreus (Procissão de Domingo de Ramos) ' || '')
),
(
  'escuta-senhor-a-voz-do-teu-povo-attende-domine',
  'Escuta, Senhor, a Voz do Teu Povo (Attende Domine - Quaresma)',
  'Hinário Litúrgico CNBB / Canto Gregoriano',
  'Hinário Litúrgico CNBB / Canto Gregoriano',
  'Em',
  72,
  '4/4',
  'Balada Sóbria',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Sl 50(51)',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Refrão]
   Em            Am         B7          Em
Escuta, Senhor, a voz do Teu povo, e tem compaixão de nós, pecadores!
   C        Am         B7          Em
Attende, Domine, et miserere, quia peccavimus tibi!

[Primeira Parte]
   Em            Am         B7          Em
1. Ó Rei supremo, Redentor do mundo, a Ti erguemos olhos suplicantes:
   C      Am         B7          Em
Ouve, ó Cristo, a prece dos Teus servos!

[Refrão]
   Em            Am         B7          Em
Escuta, Senhor, a voz do Teu povo, e tem compaixão de nós, pecadores!

[Segunda Parte]
   Em         Am         B7          Em
2. Destra do Pai, pedra angular da Igreja, caminho santo da eterna vida:
   C    Am         B7          Em
Lava as manchas dos nossos pecados!',
  to_tsvector('portuguese', 'Escuta, Senhor, a Voz do Teu Povo (Attende Domine - Quaresma) ' || '')
),
(
  'nos-nos-gloriamos-na-cruz-quinta-feira-santa',
  'Quanto a Nós, Devemos Gloriar-nos na Cruz (Entrada - Quinta-Feira Santa)',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'D',
  84,
  '4/4',
  'Marcha Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Gl 6, 14; Sl 66(67)',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D      G         A7          D
Quanto a nós, devemos gloriar-nos na Cruz
   Bm    Em         A7          D
De nosso Senhor Jesus Cristo!
   G         D         Em    A7    D
Que é nossa salvação, nossa vida, nossa esperança de ressurreição!

[Primeira Parte]
   D      G         A7          D
1. Deus tenha piedade de nós e nos abençoe;
   Bm     Em         A7          D
Faça brilhar sobre nós a luz da Sua face!

[Refrão]
   D      G         A7          D
Quanto a nós, devemos gloriar-nos na Cruz
   Bm    Em         A7          D
De nosso Senhor Jesus Cristo!

[Segunda Parte]
   D        G         A7          D
2. Para que se conheçam na terra os Seus caminhos,
   Bm    Em         A7          D
E entre todas as nações a Sua salvação!',
  to_tsvector('portuguese', 'Quanto a Nós, Devemos Gloriar-nos na Cruz (Entrada - Quinta-Feira Santa) ' || '')
),
(
  'exulte-de-alegria-proclamacao-da-pascoa-exsultet',
  'Exulte de Alegria (Proclamação da Páscoa - Exsultet / Vigília Pascal)',
  'Missal Romano / Hinário Litúrgico CNBB',
  'Missal Romano / Hinário Litúrgico CNBB',
  'Am',
  76,
  '4/4',
  'Recitativo Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Páscoa',
  'Ex 14; Rm 6, 3-11',
  'liturgica',
  '[Intro] Am  G  F  E7

[Primeira Parte]
   Am         G
Exulte de alegria dos anjos a multidão!
   F         E7
Exultemos também nós pelos mistérios de Deus!
   Am         G
E por tão grande vitória, ressoe a trombeta da salvação!
   F         E7          Am
Alegre-se a terra inundada de tanta luz!

[Refrão]
   Am    G         F           E7
Esta é a noite da Páscoa do Senhor!
   Am          G         F     E7    Am
Esta é a noite em que Cristo quebrou as cadeias da morte e surgiu vitorioso!

[Segunda Parte]
   Am         G
Ó noite verdadeiramente feliz, que uniu o céu à terra,
   F           E7
E o ser humano ao seu Criador!
   Am         G
Recebei, ó Pai Santo, o sacrifício vespertino deste incenso,
   F            E7          Am
Na solene oferta desta vela acesa em vossa honra!',
  to_tsvector('portuguese', 'Exulte de Alegria (Proclamação da Páscoa - Exsultet / Vigília Pascal) ' || '')
),
(
  'bendito-seja-deus-pai-santissima-trindade',
  'Bendito Seja Deus Pai (Solenidade da Santíssima Trindade)',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'D',
  92,
  '4/4',
  'Hino Trinitário',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Tb 12, 6; Mt 28, 19',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D      G         A7          D
Bendito seja Deus Pai, e o Filho Unigênito,
   Bm          Em         A7          D
E o Espírito Santo, porque usou de misericórdia para conosco!

[Primeira Parte]
   D        G         A7          D
1. Ó Senhor, nosso Deus, como é grande o vosso Nome
   Bm     Em         A7          D
Por todo o universo, na terra e nos céus!

[Refrão]
   D      G         A7          D
Bendito seja Deus Pai, e o Filho Unigênito,
   Bm          Em         A7          D
E o Espírito Santo, porque usou de misericórdia para conosco!

[Segunda Parte]
   D        G         A7          D
2. Glória ao Pai, e ao Filho, e ao Espírito Santo,
   Bm      Em         A7          D
Como era no princípio, agora e sempre. Amém!',
  to_tsvector('portuguese', 'Bendito Seja Deus Pai (Solenidade da Santíssima Trindade) ' || '')
),
(
  'nasceu-nos-hoje-um-menino-natal-missa-noite',
  'Nasceu-nos Hoje um Menino (Noite de Natal - CNBB)',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'D',
  96,
  '4/4',
  'Marcha Natalina',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Natal',
  'Is 9, 1-6; Lc 2, 1-14',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D        G         A7          D
Nasceu-nos hoje um Menino, e um Filho nos foi dado!
   Bm       Em         A7          D
Grande é este pequenino: Rei da Paz será chamado!
   G            A7          D     Bm        Em    A7    D
Aleluia, aleluia! Rei da Paz será chamado!

[Primeira Parte]
   D      G         A7          D
1. Cantai, cantai ao Senhor um canto novo,
   Bm    Em         A7          D
Cantai ao Senhor, terra inteira!

[Refrão]
   D        G         A7          D
Nasceu-nos hoje um Menino, e um Filho nos foi dado!

[Segunda Parte]
   D    G         A7          D
2. O Senhor anunciou a salvação,
   Bm    Em         A7          D
E às nações revelou Sua justiça!',
  to_tsvector('portuguese', 'Nasceu-nos Hoje um Menino (Noite de Natal - CNBB) ' || '')
),
(
  'dai-nos-a-bencao-o-mae-querida-aparecida',
  'Dai-nos a Bênção, Ó Mãe Querida (Solenidade de Nossa Senhora Aparecida - 12 de Outubro)',
  'Tradicional Mariano / Hinário Mariano Católico',
  'Tradicional Mariano / Hinário Mariano Católico',
  'C',
  96,
  '3/4',
  'Valsa Mariana',
  '↓  ↑ ↑  ↓  ↑ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Jo 2, 1-11; Ap 12, 1',
  'liturgica',
  '[Intro] G  D  C  D  G

[Refrão]
G         D
Dai-nos a bênção, ó Mãe querida,
C         D       G
Nossa Senhora Aparecida!
G         D
Dai-nos a bênção, ó Mãe querida,
C         D       G
Nossa Senhora Aparecida!

[Estrofes]
G         C         G
1. Sob este manto do azul do céu,
C         G       D         G
Guardai-nos sempre no vosso amor!
G         C         G
Nós somos filhos da vossa bênção,
C         G       D         G
Mãe do Divino Consolador!

[Refrão]

G         C         G
2. A vossa imagem tão pequenina
C         G       D         G
Nas águas do rio se revelou;
G         C         G
Aos pescadores desanimados
C         G       D         G
A santa graça do céu brotou!

[Refrão]

G         C         G
3. Abençoai a nossa pátria,
C         G       D         G
O nosso povo trabalhador!
G         C         G
Fazei que reine na nossa terra
C         G       D         G
A paz bendita do Redentor!

[Refrão]

G         C         G
4. Na hora santa da despedida,
C         G       D         G
Quando este mundo tiver seu fim,
G         C         G
Vinde buscar-nos com vosso manto,
C         G       D         G
Pra junto a Deus cantarmos assim!

[Refrão Final]
G         D
Dai-nos a bênção, ó Mãe querida,
C         D       G
Nossa Senhora Aparecida!',
  to_tsvector('portuguese', 'Dai-nos a Bênção, Ó Mãe Querida (Solenidade de Nossa Senhora Aparecida - 12 de Outubro) ' || '')
),
(
  'jesus-cristo-ontem-hoje-e-sempre-cristo-rei',
  'Jesus Cristo Ontem, Hoje e Sempre (Solenidade de Cristo Rei do Universo)',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'G',
  98,
  '4/4',
  'Marcha Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Ap 1, 5-6; Hb 13, 8',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
   G            C         D7          G
Jesus Cristo, ontem, hoje e sempre! Ontem, hoje e sempre, Aleluia!
   Em      Am         D7          G
A Ele a glória e o poder pelos séculos sem fim!

[Primeira Parte]
   G         C         D7          G
1. Digno é o Cordeiro que foi imolado de receber o poder e a divindade,
   Em         Am         D7          G
A sabedoria, a força e a honra pelos séculos dos séculos!

[Refrão]
   G            C         D7          G
Jesus Cristo, ontem, hoje e sempre! Ontem, hoje e sempre, Aleluia!

[Segunda Parte]
   G         C         D7          G
2. Seu Reino é um Reino eterno, e Seu domínio dura de geração em geração:
   Em     Am         D7          G
Cristo vence, Cristo reina, Cristo impera!',
  to_tsvector('portuguese', 'Jesus Cristo Ontem, Hoje e Sempre (Solenidade de Cristo Rei do Universo) ' || '')
),
(
  'alegrai-vos-sempre-no-senhor-todos-os-santos',
  'Alegremo-nos Todos no Senhor (Solenidade de Todos os Santos - 1º de Novembro)',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Hinário Litúrgico CNBB / Missal Romano',
  'D',
  94,
  '4/4',
  'Marcha Festiva',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Ap 7, 9-14; Mt 5, 1-12',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D         G         A7          D
Alegremo-nos todos no Senhor, celebrando a festa de Todos os Santos!
   Bm         Em         A7          D
Conosco se alegram os anjos e glorificam o Filho de Deus!

[Primeira Parte]
   D            G         A7          D
1. Felizes os pobres em espírito, porque deles é o Reino dos Céus!
   Bm         Em         A7          D
Felizes os mansos e puros de coração, porque verão a Deus!

[Refrão]
   D         G         A7          D
Alegremo-nos todos no Senhor, celebrando a festa de Todos os Santos!

[Segunda Parte]
   D         G         A7          D
2. Felizes os que promovem a paz, porque serão chamados filhos de Deus!
   Bm           Em         A7          D
Alegrai-vos e exultai, porque é grande a vossa recompensa nos Céus!',
  to_tsvector('portuguese', 'Alegremo-nos Todos no Senhor (Solenidade de Todos os Santos - 1º de Novembro) ' || '')
),
(
  'dai-lhes-senhor-o-descanso-eterno-finados',
  'Dai-lhes, Senhor, o Descanso Eterno (Comemoração de Todos os Fiéis Defuntos - Finados)',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Dm',
  72,
  '4/4',
  'Balada da Esperança Pascal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  '1Ts 4, 14; Jo 11, 25',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm    Gm         A7          Dm
Dai-lhes, Senhor, o descanso eterno,
   Bb     Gm         A7          Dm
E brilhe para eles a vossa luz perpétua!

[Primeira Parte]
   Dm     Gm         A7          Dm
1. Assim como Jesus morreu e ressuscitou,
   Bb         Gm         A7          Dm
Assim também Deus levará com Jesus os que Nele adormeceram!

[Refrão]
   Dm    Gm         A7          Dm
Dai-lhes, Senhor, o descanso eterno,
   Bb     Gm         A7          Dm
E brilhe para eles a vossa luz perpétua!

[Segunda Parte]
   Dm       Gm         A7          Dm
2. "Eu sou a Ressurreição e a Vida", diz o Senhor;
   Bb          Gm         A7          Dm
"Quem crê em Mim, ainda que tenha morrido, viverá para sempre!"',
  to_tsvector('portuguese', 'Dai-lhes, Senhor, o Descanso Eterno (Comemoração de Todos os Fiéis Defuntos - Finados) ' || '')
),
(
  'estou-pensando-em-deus-pe-zezinho',
  'Estou Pensando em Deus',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'D',
  82,
  '4/4',
  'Balada / Meditação',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  '1Jo 4, 7-16; Mt 22, 37-39',
  'liturgica',
  'E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E
Os homens fogem do amor
E depois que se esvaziam

    A         E
No vazio se angustiam

     B         E
E duvidam de você

       A          E
Você chega perto deles

        B         E
Mesmo assim ninguém tem fé

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E
Eu me angustio quando vejo

Que depois de dois mil anos

        A         E
Entre tantos desenganos

       B         E
Poucos vivem sua fé

        A           E
Muitos falam de esperança

       B           E
Mas esquecem de você

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E
Tudo podia ser melhor
Se meu povo procurasse

      A         E
Nos caminhos onde andasse

        B         E
Pensar mais no seu Senhor

         A          E
Mas você fica esquecido

       B         E
E por isso falta o amor

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E
Tudo seria bem melhor
Se o Natal não fosse um dia

         A            E
E se as mães fossem Maria

        B         E
E se os pais fossem José

         A          E
E se os filhos parecessem

       B          E
Com Jesus de Nazaré

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor

E         F#m
Estou pensando em Deus

B         E
Estou pensando no amor',
  to_tsvector('portuguese', 'Estou Pensando em Deus ' || '')
),
(
  'nova-geracao-pe-zezinho',
  'Nova Geração (Eu Venho do Sul e do Norte)',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'Dm',
  92,
  '4/4',
  'Guarânia / Caminhada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  10,
  'Entrada',
  'Tempo Comum',
  'Is 2, 3; Gl 3, 28',
  'liturgica',
  'Dm         A7         Dm
Eu venho do sul e do norte, do oeste e do leste, de todo lugar

         A7         Dm
Estrada da vida eu percorro levando socorro a quem precisar

   Gm          C         F A
Assunto de paz é meu forte Eu cruzo montanhas e vou aprender

Dm            Gm            Dm           A7         Dm
O mundo não me satisfaz o que eu quero é a paz, o que eu quero é viver

    Gm         Dm        Gm      Dm        A7        Dm
No peito eu levo uma cruz, no meu coração o que disse Jesus

     Gm         Dm       Gm      Dm        A7       Dm
No peito eu levo uma cruz, no meu coração o que disse Jesus

Dm         A7            Dm
Eu sei que não tenho a idade da maturidade de quem já viveu

         A7   Dm
Mas sei que já tenho a idade de ver a verdade o que eu quero ser eu

    Gm          C         F A
O mundo ferido e cansado de um triste passado de guerras sem fim

Dm          Gm          Dm      A7         Dm
Tem medo da bomba que fez, a fé que desfez mas aponta pra mim

    Gm         Dm        Gm      Dm        A7        Dm
No peito eu levo uma cruz, no meu coração o que disse Jesus

     Gm         Dm       Gm      Dm        A7       Dm
No peito eu levo uma cruz, no meu coração o que disse Jesus

  Dm         A7            Dm
Eu venho trazer meu recado, não tenho passado mas sei entender

         A7         Dm
Um jovem foi crucificado por ter ensinado a gente viver

     Gm         Dm
Eu grito ao mundo descrente que eu quero ser gente, que eu creio na cruz

         Gm    Dm        A7    Dm
Eu creio na força do jovem que segue o caminho do Cristo Jesus

    Gm         Dm        Gm      Dm        A7        Dm
No peito eu levo uma cruz, no meu coração o que disse Jesus

     Gm         Dm       Gm      Dm        A7       Dm
No peito eu levo uma cruz, no meu coração o que disse Jesus

[Solo 1]

E|-------------------------------------------------------------------------------------------------------------| 
B|-15-14h15p14h15p14h15p14-15---14-14h15p14h15p14h15p14--15-14-15--14h15p14h15p14h15p14-15---14----------------| 
G|-------------------------------------------------------------------------------------------------------------| 
D|-------------------------------------------------------------------------------------------------------------| 
A|-------------------------------------------------------------------------------------------------------------| 
E|-------------------------------------------------------------------------------------------------------------| 

E|-------------------------------------------------------------------------------------------------------------| 
B|-14h15p14h15p14h15p14--15-14-15--15-17-15-14-15-14-----------------------------------------------------------| 
G|---------------------------------------------------15-14-12-14-12---------------------14---------------------| 
D|-----------------------------------------------------------------15-14-12--12-14-15-12-----------------------| 
A|-------------------------------------------------------------------------------------------------------------| 
E|-------------------------------------------------------------------------------------------------------------| 

[Solo 2]

E|---------------------------------17-15-17-15-13--------------------------------------------------------------| 
B|---15-14-15--14-15-17-15-14-15-------------------------------------------------------------------------------| 
G|-14----------------------------------------------------------------------------------------------------------| 
D|-------------------------------------------------------------------------------------------------------------| 
A|-------------------------------------------------------------------------------------------------------------| 

E|-------------------------------------------------------------------------------------------------------------|',
  to_tsvector('portuguese', 'Nova Geração (Eu Venho do Sul e do Norte) ' || '')
),
(
  'quando-jesus-passar-pe-zezinho',
  'Quando Jesus Passar',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'D',
  94,
  '4/4',
  'Marcha Alegre',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  7,
  'Entrada',
  'Tempo Comum',
  'Lc 19, 1-10',
  'liturgica',
  'D         A    A7         D
Quando Jesus passar, quando Jesus passar,

D7         G       Gm      D      A7    D
Quando Jesus passar, eu quero estar no meu lugar.

D         A7         D         A7         D
No meu telônio ou jogando a rede, sob a figueira ou a caminhar,

D        A7         D    D7       Em         A7      D
Buscando água pra minha sede. Querendo ver meu Senhor passar.

D         A    A7         D
Quando Jesus passar, quando Jesus passar,

D7         G       Gm      D      A7    D
Quando Jesus passar, eu quero estar no meu lugar.

D         A7         D         A7         D
No meu trabalho e na minha casa, no meu estudo e no meu lazer,

          A7         D    D7        Em          A7    D
No compromisso e no meu descanso, no meu direito e no meu dever.

D         A    A7         D
Quando Jesus passar, quando Jesus passar,

D7         G       Gm      D      A7    D
Quando Jesus passar, eu quero estar no meu lugar.

D            A7         D         A7         D
Nos meus projetos olhando em frente, no meu sucesso e na decepção

         A7         D      D7        Em           A7      D
No sofrimento que fere a gente, sonhando o sonho de um mundo irmão.

D         A    A7         D
Quando Jesus passar, quando Jesus passar,

D7         G       Gm      D      A7    D
Quando Jesus passar, eu quero estar no meu lugar.

D          A7         D   A7         D
Com meus amigos, com minha gente, com quem da vida já se cansou.

      A7    D      D7      Em         A7     D
A semear e a espalhar sementes, na terra onde meu Deus andou.',
  to_tsvector('portuguese', 'Quando Jesus Passar ' || '')
),
(
  'cidadao-do-infinito-pe-zezinho',
  'Cidadão do Infinito',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  88,
  '4/4',
  'Toada Missionária',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  7,
  'Final',
  'Tempo Comum',
  'Mt 13, 3-9; Fl 3, 20',
  'liturgica',
  'E
Por escutar uma voz que disse

         B7
Que faltava gente p&#x27;ra semear

Deixei meu lar e parti sorrindo

         E
Assoviando pra não chorar

Fui-me alistar entre os operários

            E7         A
Que deixam tudo pra Te ir levar

         A         E
E fui lutar por um mundo novo

           B7         E
Não tenho lar mas ganhei um povo

B7          E          B7          E
Sou cidadão do infinito, do infinito, do infinito

          B7           E
E levo a paz no meu caminho

        B7         E
No meu caminho, no meu caminho

       F
Eu procurei semear a paz

         C7
E onde fui andando falei de Deus

Abençoei quem fez pouco caso

         F
E espalhou cizânia onde eu semeei

Não recebi condecoração

         F7         A#
Por haver buscado um país irmão

         F
Vou semeando por entre o povo

        C7         F
E vou sonhando este mundo novo',
  to_tsvector('portuguese', 'Cidadão do Infinito ' || '')
),
(
  'mae-do-ceu-morena-pe-zezinho',
  'Mãe do Céu Morena',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'D',
  82,
  '3/4',
  'Valsa / Guarânia',
  '↓  ↑ ↓  ↑ ↓',
  true,
  true,
  true,
  15,
  'Final',
  'Qualquer',
  'Lc 1, 48; Ap 12, 1',
  'liturgica',
  '[Intro]  D  A7/C#  Bm  Bm/A  G  G/F#  Em  Em7  A  A7  G  D

 D            A  D
Mãe do Céu morena

         G  A  D
Senhora da América lati-i-na

      G         A
De olhar e caridade tão divina

    A7         G  D
De cor igual a cor de tantas raças

 D            A  D
Virgem tão serena

         G  A  D
Senhora destes povos tão sofri-i-dos

    G         A
Patrona dos pequenos e oprimidos

   A7         G  D  D7
Derrama sobre nós as tuas graças

   G
Derrama sobre os jovens tua luz

    D         Bm
Aos pobres vem mostrar o teu Jesus

   Em         A
Ao mundo inteiro traz

        G  A7  D  D7
O teu amor de mãe

  G
Ensina quem tem tudo a partilhar

  D         Bm
Ensina quem tem pouco a não cansar

  Em          A
E faz o nosso povo

      G  A7  D
Caminhar em paz

( D  Bm  Bm/A  A  D )

( Bm  Bm/A  G  A  D )

 D            A  D
Mãe do Céu morena

         G  A  D
Senhora da América lati-i-na

      G         A
De olhar e caridade tão divina

    A7         G  D
De cor igual a cor de tantas raças

 D            A  D
Virgem tão serena

         G  A  D
Senhora destes povos tão sofri-i-dos

    G         A
Patrona dos pequenos e oprimidos

   A7         G  D  D7
Derrama sobre nós as tuas graças

   G
Derrama a esperança sobre nós

  D         Bm
Ensina o povo a não calar a voz

   Em           A
Desperta o coração

            G  A7  D  D7
De quem não acordou

  G
Ensina que a justiça é condição

    D         Bm
De construir um mundo mais irmão

  Em           A
E faz o nosso povo

      G  A7  D  G  Gm  D
Conhecer Je-sus',
  to_tsvector('portuguese', 'Mãe do Céu Morena ' || '')
),
(
  'ilumina-ilumina-pe-zezinho',
  'Ilumina, Ilumina',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'Am',
  86,
  '4/4',
  'Toada Profética',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  8,
  'Entrada',
  'Advento',
  'Is 9, 1; Jo 8, 12',
  'liturgica',
  'A
Minha prece de pai é que meus filhos sejam felizes

              Bm  Bm7/A
Minha prece de mãe é que meus filhos vivam em paz

         E/G#             Bm7/F#
Que eles achem os seus caminhos

E              E7/D   E       E/B   A
Amem e sejam amados, vivam iluminados

        A
Nossa prece de filhos é prece de quem agradece

              Bm Bm7/A
Nossa prece é de filhos que sentem orgulho dos pais

         E/G#               Bm7/F#
Que eles trilhem os teus caminhos

E       E7/D   E       E/B    A
Louvem e sejam louvados, sejam recompensados

A     E        A           E    A
  Ilumina, ilumina nossos pais nossos filhos e filhas

    E        A          E       A
Ilumina, ilumina  cada passos das nossas famílias

      A
Minha prece ó Senhor é também pelos meus familiares

              Bm  Bm7/A
Minha prece ó Senhor é por quem tem um pouco de nós

         E/G#               Bm7/F#
Que eles achem os seus caminhos

E      E7/D   E       E/B    A
Amem e sejam amados, vivam iluminados

      A
Nossa prece ó Senhor é também pelos nossos vizinhos

              Bm  Bm7/A
Por quem vive e trabalha e caminha conosco Senhor

         E/G#               Bm7/F#
Que eles achem os seus caminhos

E      E7/D   E       E/B    A
Amem e sejam amados, vivam iluminados',
  to_tsvector('portuguese', 'Ilumina, Ilumina ' || '')
),
(
  'de-la-do-interior-pe-zezinho',
  'De Lá do Interior',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'G',
  88,
  '4/4',
  'Sertanejo / Toada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  6,
  'Entrada',
  'Tempo Comum',
  'Sl 121',
  'liturgica',
  'C7           Gm    C7    F
   Eu vim de lá do interior

         C7
Aonde a religião ainda é importante

         Gm
Lá se alguém passa em frente da matriz

Se benze e pensa em Deus

         C7           F
E não sente vergonha de ter fé

          Gm    C7    F
Eu vim de lá do interior

         Cm
E sei que a religião

         F            Bb
Já não influi mais tanto nas pessoas

         Gm
Sei que a televisão o rádio e o jornal

         C7
Convencem mais cabeças

         F
Do que o padre lá no altar

         Cm
Mas deixa eu lhe dizer

    F         Bb
Que eu ainda creio e quero crer

         F
Que sem religião não sei viver

          C7         F
Não sei viver, não sei viver',
  to_tsvector('portuguese', 'De Lá do Interior ' || '')
),
(
  'rosto-de-cristo-como-sao-belos-pe-zezinho',
  'Como São Belos os Pés do Mensageiro',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'G',
  90,
  '4/4',
  'Marcha Missionária',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  8,
  'Final',
  'Tempo Comum',
  'Is 52, 7; Rm 10, 15',
  'liturgica',
  'G   G7    C        D          G Em
Como são belos os pés do mensageiro

 Am          D G  G7
Que anuncia a paz

    G7            C       D    G Em
Como são belos os pés do mensageiro

 Am           D G  G7
Que anuncia o Senhor

    C   Cm     G  Em
Ele vive, Ele reina

    Am   D     G  Em
Ele é Deus e Senhor

    C   Cm     G  Em
Ele vive, Ele reina

    Am   D       G
Ele é Deus  e Senhor

    G   G7    C        D        G Em
O meu Senhor chegou com toda a glória

   Am          D G   G7
E vivo, eu sei, Ele está

    G   G7    C        D        G Em
Bem junto a nós, Seu corpo santo a nos tocar

    Am          D G   G7
E vivo, eu sei, Ele está

    C   Cm     G  Em
Ele vive, Ele reina

    Am   D     G  Em
Ele é Deus e Senhor

    C   Cm     G  Em
Ele vive, Ele reina

    Am   D       G
Ele é Deus  e Senhor

C   Cm     G  Em
Ele vive, Ele reina

    Am   D     G  Em
Ele é Deus e Senhor

    C   Cm     G  Em
Ele vive, Ele reina

    Am   D       G
Ele é Deus  e Senhor',
  to_tsvector('portuguese', 'Como São Belos os Pés do Mensageiro ' || '')
),
(
  'erguei-as-maos-pe-marcelo-rossi',
  'Erguei as Mãos',
  'Padre Marcelo Rossi',
  'Padre Marcelo Rossi',
  'A',
  118,
  '4/4',
  'Pop Louvor / Animado',
  '↓ ↑ ↓ ↑  ↓ ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Final',
  'Tempo Comum',
  'Sl 133, 2; Gn 12, 1-3',
  'liturgica',
  'D         G            A
Erguei as mãos e dai glória a Deus

    D         G            A
Erguei as mãos e dai glória a Deus

    Bm        G    Em     A     D
Erguei as mãos e cantai como os filhos do Senhor

   D         G        A
Os animaizinhos subiram de dois em dois

   D         G        A
Os animaizinhos subiram de dois em dois

  Bm       G         Em     A     D
O elefante  e os passarinhos como os filhos do Senhor

    D         G            A
Erguei as mãos e dai glória a Deus

    D         G            A
Erguei as mãos e dai glória a Deus

    Bm        G    Em     A     D
Erguei as mãos e cantai como os filhos do Senhor

   D         G        A
Os animaizinhos subiram de dois em dois

   D         G        A
Os animaizinhos subiram de dois em dois

   Bm         G      Em     A     D
A minhoquinha  e os pinguins como os filhos do Senhor

    D         G            A
Erguei as mãos e dai glória a Deus

    D         G            A
Erguei as mãos e dai glória a Deus

    Bm        G    Em     A     D
Erguei as mãos e cantai como os filhos do Senhor

   D         G        A
Os animaizinhos subiram de dois em dois

   D         G        A
Os animaizinhos subiram de dois em dois

   Bm     G        Em     A     D
O canguru   e o sapinho como os filhos do Senhor

    D         G            A
Erguei as mãos e dai glória a Deus

    D         G            A
Erguei as mãos e dai glória a Deus

    Bm        G    Em     A     D
Erguei as mãos e cantai como os filhos do Senhor',
  to_tsvector('portuguese', 'Erguei as Mãos ' || '')
),
(
  'anjos-de-deus-pe-marcelo-rossi',
  'Anjos de Deus (Se Acontecer um Barulho)',
  'Padre Marcelo Rossi / Elizeu Gomes',
  'Padre Marcelo Rossi / Elizeu Gomes',
  'D',
  110,
  '4/4',
  'Country / Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Final',
  'Tempo Comum',
  'Sl 90, 11; Gn 28, 12',
  'liturgica',
  '[Primeira Parte]

 D         A
Se acontecer um barulho perto de você

         G
É um anjo chegando para receber

         Bm  A
Suas orações e leva-las a De___us

   D         A
Então abra o coração e comece a louvar

Sinta o gosto do céu

         G
Que se derrama no altar

Que um anjo já vem

         Bm  A
Com a benção nas mã___os

[Refrão]

 D         A
Tem anjos voando neste lugar

         G
No meio do povo e em cima do altar

Subindo e descendo

         D  A
Em todas as direçõ__es

     D
Não sei se a igreja subiu

         A
Ou se o céu desceu

         G
Só sei que está cheio de anjos de Deus

         A           D  A
Porque o próprio Deus está aqui

 D         A
Tem anjos voando neste lugar

         G
No meio do povo e em cima do altar

Subindo e descendo

         D  A
Em todas as direçõ__es

     D
Não sei se a igreja subiu

         A
Ou se o céu desceu

         G
Só sei que está cheio de anjos de Deus

         A           D  A
Porque o próprio Deus está aqui

[Segunda Parte]

  D
Quando os anjos passeiam

         A
A igreja se alegra

Ela canta, ela chora

         G
Ela ri e congrega

         Bm  A
Abala o inferno e dissipa o mal

 D         A
Sinta o vento das asas dos anjos agora

         G
Confia irmão pois é a tua hora

         Bm  A
A benção chegou e você vai levar

[Refrão]

 D         A
Tem anjos voando neste lugar

         G
No meio do povo e em cima do altar

Subindo e descendo

         D  A
Em todas as direçõ__es

     D
Não sei se a igreja subiu

         A
Ou se o céu desceu

         G
Só sei que está cheio de anjos de Deus

         A           D
Porque o próprio Deus está aqui

[Primeira Parte]

 D         A
Se acontecer um barulho perto de você

         G
É um anjo chegando para receber

         Bm  A
Suas orações e leva-las a De___us

   D         A
Então abra o coração e comece a louvar

Sinta o gosto do céu

         G
Que se derrama no altar

Que um anjo já vem

         Bm  A
Com a benção nas mã___os

[Refrão]

 D         A
Tem anjos voando neste lugar

         G
No meio do povo e em cima do altar

Subindo e descendo

         D  A
Em todas as direçõ__es

     D
Não sei se a igreja subiu

         A
Ou se o céu desceu

         G
Só sei que está cheio de anjos de Deus

         A           D  A
Porque o próprio Deus está aqui

[Segunda Parte]

  D
Quando os anjos passeiam

         A
A igreja se alegra

Ela canta, ela chora

         G
Ela ri e congrega

         Bm  A
Abala o inferno e dissipa o mal

 D         A
Sinta o vento das asas dos anjos agora

         G
Confia irmão pois é a tua hora

         Bm  A
A benção chegou e você vai levar

[Refrão]

 D         A
Tem anjos voando neste lugar

         G
No meio do povo e em cima do altar

Subindo e descendo

         D  A
Em todas as direçõ__es

     D
Não sei se a igreja subiu

         A
Ou se o céu desceu

         G
Só sei que está cheio de anjos de Deus

         A           D
Porque o próprio Deus está aqui',
  to_tsvector('portuguese', 'Anjos de Deus (Se Acontecer um Barulho) ' || '')
),
(
  'senhor-poe-teus-anjos-aqui-pe-marcelo-rossi',
  'Senhor, Põe Teus Anjos Aqui',
  'Padre Marcelo Rossi',
  'Padre Marcelo Rossi',
  'D',
  88,
  '4/4',
  'Balada / Oração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  8,
  'Entrada',
  'Tempo Comum',
  'Sl 90, 11-12; Sl 33, 8',
  'liturgica',
  'E|5-2-2-2-2-0-2-5-2-2-2-2-0-0-2-3-3-3-3-2-0-3-3-5-9-7-5-3-5-7-5-5-2-2-2-0--2-2---2-2-2-3-5-7-7-3-3-3-5-7-5-2-5-9-
B|-----------3-------------3---------------------------------------------3----3-3--------------------------------

E|7-5-3-2-0  
B|---------3 

   D
Senhor, Põe Teus Anjos aqui.

         Em
Senhor, Põe Teus Anjos aqui.

        A7           Em       A7   D     A7
Com a espada desembainhada, Senhor, Põe Teus Anjos aqui.

    D           D7         G
Não deixes que o inimigo escarneça e zombe de nós.

A7         D  Bm      A7        D
Cobre, Senhor, com Teu Sangue. Senhor, Põe Teus Anjos aqui.

( D )
Senhor, Põe Teus Anjos lá fora...
Senhor, Põe Teus Anjos na rua...
Senhor, Põe Teus Anjos lá em casa...
Senhor, Põe Teus Anjos na rádio...',
  to_tsvector('portuguese', 'Senhor, Põe Teus Anjos Aqui ' || '')
),
(
  'maria-da-minha-infancia-pe-marcelo-rossi',
  'Maria da Minha Infância (Eu Era Pequeno, Nem Me Lembro)',
  'Padre Marcelo Rossi / Padre Zezinho, scj',
  'Padre Marcelo Rossi / Padre Zezinho, scj',
  'D',
  82,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Final',
  'Qualquer',
  'Lc 1, 28.42',
  'liturgica',
  'D         A7
Eu era pequeno, nem me lembro

     G         D
Só lembro que à noite, ao pé da cama

    D7         G
Juntava as mãozinhas e rezava apressado

        A7         D
Mas rezava como alguém que ama

       D         A7
Nas Ave-Marias que eu rezava

     G         D
Eu sempre engolia umas palavras

   D7         G
E muito cansado acabava dormindo

      A7         D
Mas dormia como quem amava

        D7            G
Ave-maria, Mãe de Jesus

           A7         D
O tempo passa, não volta mais

          D7         G
Tenho saudade daquele tempo

         A7         D
Que eu te chamava de minha mãe

      D7         G
Ave-maria, Mãe de Jesus

      A7         D
Ave-maria, Mãe de Jesus

  D         A7
Depois fui crescendo, eu me lembro

   G         D
E fui esquecendo nossa amizade

 D7         G
Chegava lá em casa chateado e cansado

    A7         D
De rezar não tinha nem vontade

D         A7
Andei duvidando, eu me lembro

     G         D
Das coisas mais puras que me ensinaram

  D7         G
Perdi o costume da criança inocente

        A7         D
Minhas mãos quase não se ajuntavam

   D7         G
Ave-maria, Mãe de Jesus

        A7         D
O tempo passa, não volta mais

 D7         G
Tenho saudade daquele tempo

           A7         D
Que eu te chamava de minha mãe

     D7         G
Ave-maria, Mãe de Jesus

    A7         D
Ave-maria, Mãe de Jesus

 D         A7
O teu amor cresce com a gente

   G         D
A mãe nunca esquece o filho ausente

 D7         G
Eu chego lá em casa chateado e cansado

    A7         D
Mas eu rezo como antigamente

  D         A7
Nas Ave-Marias que hoje eu rezo

     G         D
Esqueço as palavras e adormeço

 D7         G
E embora cansado, sem rezar como eu devo

        A7         D
Eu de Ti Maria, não me esqueço

 D7         G
Ave-maria, Mãe de Jesus

         A7         D
O tempo passa, não volta mais

  D7         G
Tenho saudade daquele tempo

            A7         D
Que eu te chamava de minha mãe

 D7         G
Ave-maria, Mãe de Jesus

   A7         D
Ave-maria, Mãe de Jesus',
  to_tsvector('portuguese', 'Maria da Minha Infância (Eu Era Pequeno, Nem Me Lembro) ' || '')
),
(
  'reunidos-aqui-pe-marcelo-rossi',
  'Reunidos Aqui Só Pra Louvar o Senhor',
  'Padre Marcelo Rossi / Tradicional Carismático',
  'Padre Marcelo Rossi / Tradicional Carismático',
  'G',
  96,
  '4/4',
  'Marcha Alegre',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Entrada',
  'Tempo Comum',
  'Mt 18, 20; Sl 132, 1',
  'liturgica',
  '[Intro] G  C  D7  G

[Primeira Parte]
   G         D7
Reunidos aqui só pra louvar o Senhor,
   C    D7         G     G7
Novamente aqui, em união!

[Refrão]
   C       G
Algo bom vai acontecer,
   D7    G     G7
Algo bom Deus tem para nós!
   C        G     Em
Reunidos aqui só pra louvar o Senhor,
   Am    D7         G
Novamente aqui, em união!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Reunidos Aqui Só Pra Louvar o Senhor ' || '')
),
(
  'quem-e-esta-que-avanca-como-a-aurora-pe-marcelo',
  'Quem É Esta Que Avança Como a Aurora',
  'Padre Marcelo Rossi / Cântico dos Cânticos 6,10',
  'Padre Marcelo Rossi / Cântico dos Cânticos 6,10',
  'G',
  92,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Final',
  'Qualquer',
  'Ct 6, 10',
  'liturgica',
  '[Intro] G  C  D  G

[Primeira Parte]
   G         C
Quem é esta que avança como a aurora,
   D         G
Temível como exército em ordem de batalha?
   G         C
Brilhante como o sol e como a lua,
   D         G
Mostrando o caminho aos filhos teus?

[Refrão]
   G         C
Ah, minha alma glorifica ao Senhor,
   D         G
Meu espírito exulta em Deus, meu Salvador! (2x)

[Segunda Parte]
   Em           C         G
2. Onde houver dor e tristeza, levemos consolação,
   Am           D7         G
Onde houver treva e discórdia, semeemos o perdão;
   C            D7         Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am           D7         G
Até que na Pátria eterna voltemos a nos encontrar!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Quem É Esta Que Avança Como a Aurora ' || '')
),
(
  'espirito-enche-a-minha-vida-pe-marcelo',
  'Espírito, Enche a Minha Vida',
  'Padre Marcelo Rossi / Quatro Por Um',
  'Padre Marcelo Rossi / Quatro Por Um',
  'C',
  72,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  7,
  'Entrada',
  'Pentecostes',
  'Ef 5, 18; Gl 5, 22',
  'liturgica',
  '[Intro] C  G/B  F  G7

[Primeira Parte]
C            G/B      F         G
Espírito, enche a minha vida, enche-me com o Teu poder
Am          Em          F       C
Pois de Ti eu quero ser, Espírito, enche o meu ser
F         G            C    G7
Espírito, enche o meu ser

C            G/B      F         G
Espírito, enche a minha vida, enche-me com o Teu poder
Am          Em          F       C
Pois de Ti eu quero ser, Espírito, enche o meu ser
F         G7           C    C7
Espírito, enche o meu ser

[Refrão]
F       G       Em      Am
As minhas mãos eu quero levantar
F       G         Am
E em Teu louvor Te adorar
F         G    Em      Am
Meu coração eu quero derramar
F         G        C    C7
Diante do Teu altar

F       G       Em      Am
As minhas mãos eu quero levantar
F       G         Am
E em Teu louvor Te adorar
F         G    Em      Am
Meu coração eu quero derramar
F         G        C
Diante do Teu altar',
  to_tsvector('portuguese', 'Espírito, Enche a Minha Vida ' || '')
),
(
  'cantemos-a-jesus-sacramentado-tradicional',
  'Cantemos a Jesus Sacramentado',
  'Hinário Eucarístico Tradicional',
  'Hinário Eucarístico Tradicional',
  'D',
  86,
  '3/4',
  'Hino / Valsa Sacra',
  '↓  ↑ ↓  ↑ ↓',
  true,
  true,
  true,
  4,
  'Entrada',
  'Qualquer',
  'Jo 6, 51; Sl 147',
  'liturgica',
  '[Intro] D  G  A7  D

[Primeira Parte]
   D         A7         D
1. Cantemos a Jesus Sacramentado! Cantemos ao Senhor!
   G           D         A7          D
Deus está aqui! Dos anjos adorado, adoremos a Cristo Redentor!

[Refrão]
   G         D
Glória a Cristo Jesus! Céus e terra, bendizei ao Senhor!
   A7          D         G           A7      D
Louvor e glória a Ti, ó Rei da glória! Amor pra sempre a Ti, ó Deus de amor!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Cantemos a Jesus Sacramentado ' || '')
),
(
  'podes-reinar-eliana-ribeiro-agnus-dei',
  'Podes Reinar (Senhor, Eu Sei Que É Teu Este Lugar)',
  'Ministério Koinonya / Eliana Ribeiro',
  'Ministério Koinonya / Eliana Ribeiro',
  'G',
  76,
  '4/4',
  'Balada de Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  10,
  'Entrada',
  'Tempo Comum',
  'Sl 23, 7-10; Lc 19, 1-10',
  'liturgica',
  'Intro: G  D  C  G  D  G

    G         D
Senhor eu sei que é Teu este lugar

         C    G  D7
Todos querem Te adorar, toma Tu a direção

          G         D
Sim, oh, vem, ó Santo Espírito os espaços preencher

     C           Am7        D    D7
Reverência a Tua voz vamos fazer

          G      G7    C     Cm
Podes reinar Senhor Jesus ó sim

   G            Em        Am  D7
O Teu poder Teu povo sentirá

            G     G7        C         Cm
Que bom Senhor saber que estás presente aqui

 G        D           C G/B Am G  D7
Reina Senhor neste lugar

   G         D
Visita cada irmão, ó meu Senhor!

         C    G  D7
Dá-lhes paz interior e razões pra Te louvar

    G         D
Desfaz toda tristeza incertezas e desamor

      C         D  D7
Glorifica o Teu nome ó meu Senhor

          G      G7    C     Cm
Podes reinar Senhor Jesus ó sim

   G            Em        Am  D7
O Teu poder Teu povo sentirá

            G     G7        C         Cm
Que bom Senhor saber que estás presente aqui

 G        D           C G/B Am G
Reina Senhor neste lugar

   D7     G      G7    C     Cm
Podes reinar Senhor Jesus ó sim

   G            Em        Am  D7
O Teu poder Teu povo sentirá

            G     G7        C         Cm
Que bom Senhor saber que estás presente aqui

 G        D           C G/B Am G
Reina Senhor neste lugar',
  to_tsvector('portuguese', 'Podes Reinar (Senhor, Eu Sei Que É Teu Este Lugar) ' || '')
),
(
  'perfeito-e-quem-te-criou-vida-reluz',
  'Perfeito É Quem Te Criou',
  'Walmir Alencar / Vida Reluz',
  'Walmir Alencar / Vida Reluz',
  'E',
  74,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  16,
  'Final',
  'Qualquer',
  'Lc 1, 28-38',
  'liturgica',
  '[Intro] F  F7M  Db

      F                F7M
Se um dia um anjo declarou

    Gm         Gm
Que tu eras cheia de Deus

 Am         Dm
Agora penso: Quem sou eu

         Gm          C
Para não te dizer também

         F        Dm
Cheia de graça, ó Mãe

         Gm       C
Cheia de graça, ó Mãe

      F   Db
Agraciada

   F             F7M
Se a palavra ensinou

    Gm         Gm
Que todos hão de concordar

     Am         Dm
E as gerações te proclamar

      Gm          C
Agora eu também direi

          F      Dm
Tu és bendita, ó Mãe

         Gm      C
Tu és bendita, ó Mãe

          Dm
Bem-aventurada

   Db         Ab
Surgiu um grande sinal no céu

 Eb         Bbm     Ab
Uma mulher revestida de sol

  Db          Ab
A lua debaixo de seus pés

  Gm         C    C7
E na cabeça uma coroa

    F                  F7M
Não há com que se comparar

   Gm         Gm
Perfeito é quem te criou

     Am         Dm
Se o Criador te coroou

       Gm      C
Te coroamos, ó Mãe

       F       Dm
Te coroamos, ó Mãe

       Gm      C
Te coroamos, ó Mãe

        Dm
Nossa rainha

       Gm      C
Te coroamos, ó Mãe

        F      Dm
Te coroamos, ó Mãe

       Gm      C
Te coroamos, ó Mãe

        Dm
Nossa rainha

[Solo] Gm7  C  Am  Dm

       Gm7  C  Dm

       Gm7  C  F7M  Dm

       Gm7  C  D

       Gm      C
Te coroamos, ó Mãe

        F      Dm
Te coroamos, ó Mãe

       Gm      C
Te coroamos, ó Mãe

        Dm
Nossa rainha

       Gm      C
Te coroamos, ó Mãe

        F      Dm
Te coroamos, ó Mãe

       Gm      C
Te coroamos, ó Mãe

        Dm9
Nossa rainha',
  to_tsvector('portuguese', 'Perfeito É Quem Te Criou ' || '')
),
(
  'celebra-a-vitoria-walmir-alencar-vida-reluz',
  'Celebra a Vitória (Vê Quem Te Elegeu, Te Ungiu e Consagrou)',
  'Walmir Alencar / Vida Reluz',
  'Walmir Alencar / Vida Reluz',
  'E',
  82,
  '4/4',
  'Balada de Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  14,
  'Final',
  'Qualquer',
  'Is 43, 1-2; Rm 8, 37',
  'liturgica',
  'Intro: Em Em9/D C Am Bm (Bm9)

Em             Em9/D      C          Am
Vê! Quem te elegeu, te ungiu e consagrou

Bm     Em             Em9/D      C
Não temas! Nos lábios santos teu nome ressoou

Em              Em9/D
Não te chamou como um servo qualquer

           C
Mas com carinho, um filho seu

Em                 Em9/D
Te capacitou, toda força te deu

     C          Am Bm
Amparou e acolheu

Em              Em9/D        C
Ergue-te, pois, Deus te fez um vencedor!

      D    C  D G
   Celebra a vitória!

       D/F#             Em
   O Senhor Jesus regressando está

D C D G            D/F#         Em   Am Bm
   Vitória? Canta com unção tua vida!

Em             Em9/D       C           Am
Crê! O tempo é curto e nao da para esperar

Bm      Em        Em9/D       C
tu não vês! O tentador so proucura te enganar!

Em                Em9/D             C
Dizendo que tens mil motivos enfim para tudo abandonar,

Em         Em9/D           C         Am  Bm
abraça o que é teu, permanece fiel, luta sem desanimar.

Em              Em9/D        C
Ergue-te, pois, Deus te fez um vencedor!

      D    C  D G
   Celebra a vitória!

       D/F#             Em
   O Senhor Jesus regressando está

D C D G           D/F#          Em
   Vitória? Canta com unção tua vida!  (2x)

   Em         D         C         Am Bm
      Oh Oh Oh  Oh Oh Oh  Oh Oh Oh (4x)

Em             Em9/D        C           Am
Crê! O tempo é curto e nao da para esperar

Bm      Em        Em9/D       C           (C D)
tu não vês! O tentador so procura te enganar!

Em           Em9/D             C               D
Dizendo que tens mil motivos enfim para tudo abandonar,

Em         Em9/D           C         Am  Bm
abraça o que é teu, permanece fiel, luta sem desanimar.

Em              Em9/D        C
Ergue-te, pois, Deus te fez um vencedor!

      D    C  D G
   Celebra a vitória!

       D/F#             Em
   O Senhor Jesus regressando está

D C D G           D/F#          Em
   Vitória? Canta com unção tua vida!

      E    D  E A
   Celebra a vitória!

       E/G#             F#m
   O Senhor Jesus regressando está

E D E A           E/G#          F#m
   Vitória? Canta com unção tua vida!

      E    D  E A     E/G#   F#m
   Celebra a vitóriaaaaaaaaaaaaa!

E D E A     E/G#    F#m
   Vitóriaaaaaaaaaa ooooooo

      E    D  E A   G#m  E
   Celebra a vitóooriaaaa!',
  to_tsvector('portuguese', 'Celebra a Vitória (Vê Quem Te Elegeu, Te Ungiu e Consagrou) ' || '')
),
(
  'obra-nova-cristo-quer-fazer-vida-reluz',
  'Obra Nova (Cristo Quer Fazer em Mim uma Obra Nova)',
  'Walmir Alencar / Vida Reluz',
  'Walmir Alencar / Vida Reluz',
  'D',
  92,
  '4/4',
  'Pop Jovem / Acolhida',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Entrada',
  'Tempo Comum',
  'Is 43, 19; 2Cor 5, 17',
  'liturgica',
  '[Intro] D  F#m  G  A

        D  F#m  G  A

E|--------------------------------------------| 
G|--------------------------------------------| 
G|--------------------------------------------| 
D|---7---4--7-7---4--7---5-4------------------| 
A|-------------------------------5--5--7------| 
E|--------------------------------------------| 

D         F#m   G          A
Cristo quer fazer em mim    uma obra nova

D          F#m  G            A
E o meu coração  quer modificar

D         F#m   G          A
Cristo quer fazer em mim    uma obra nova

D          F#m  G            A
E o meu coração  quer modificar

F#m         Bm            G
Ele tem muitos planos pra mim

         A   F#m         Bm        G
Vida quer me dar. Basta abrir o coração

          A
E Ele agirá

D         F#m   G         A
Vem, Espírito Santo, vem nos transformar

D         F#m   G         A
Vem, Espírito Santo, teu amor nos dar',
  to_tsvector('portuguese', 'Obra Nova (Cristo Quer Fazer em Mim uma Obra Nova) ' || '')
),
(
  'eis-me-aqui-senhor-aqui-estou',
  'Eis-me Aqui, Senhor (Aqui Estou Pra Fazer Tua Vontade)',
  'Hinário Litúrgico CNBB / Pe. José Weber',
  'Hinário Litúrgico CNBB / Pe. José Weber',
  'G',
  86,
  '4/4',
  'Marcha Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Sl 39, 8-9; Hb 10, 7',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
   G      C         D7         G
Eis-me aqui, Senhor! Eis-me aqui, Senhor!
   Em      Am         D7         G
Pra fazer Tua vontade, pra viver no Teu amor:
   C    D7         G
Eis-me aqui, Senhor!

[Estrofe]
   G         Am         D7         G
1. O Senhor é o Pastor que me conduz, por caminhos nunca vistos me enviou;
   Em            Am         D7         G
Sou chamado a ser fermento, sal e luz, e por isso respondi: aqui estou!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Eis-me Aqui, Senhor (Aqui Estou Pra Fazer Tua Vontade) ' || '')
),
(
  'com-minha-mae-estarei-tradicional',
  'Com Minha Mãe Estarei',
  'Hinário Mariano Tradicional',
  'Hinário Mariano Tradicional',
  'D',
  84,
  '3/4',
  'Valsa Mariana',
  '↓  ↑ ↓  ↑ ↓',
  true,
  true,
  true,
  7,
  'Final',
  'Qualquer',
  'Ap 12, 1; Lc 1, 48',
  'liturgica',
  '[Intro] G  C  G  D7  G

[Refrão]
G
Com minha Mãe estarei,
   C        G
Na santa glória um dia!
   Em       Am
Ao lado de Maria,
   D7       G
No céu triunfarei!
G         D7
No céu, no céu,
         G
Com minha Mãe estarei!
G         D7
No céu, no céu,
         G
Com minha Mãe estarei!

[Estrofe 1]
   G
1. Com minha Mãe estarei,
   C         G
Aos anjos me ajuntando,
   Em            Am
Do Onipotente ao mando,
   D7            G
Hosanas sempre darei!

[Refrão]
G         D7
No céu, no céu,
         G
Com minha Mãe estarei!
G         D7
No céu, no céu,
         G
Com minha Mãe estarei!

[Estrofe 2]
   G
2. Com minha Mãe estarei,
   C         G
E então contemplarei,
   Em            Am
A face do meu Rei,
   D7            G
A quem na terra amei!

[Refrão]
G         D7
No céu, no céu,
         G
Com minha Mãe estarei!
G         D7
No céu, no céu,
         G
Com minha Mãe estarei!

[Estrofe 3]
   G
3. Com minha Mãe estarei,
   C         G
Palmas de paz nas mãos,
   Em            Am
E entre os meus irmãos,
   D7            G
Vitórias cantarei!

[Refrão Final]
G         D7
No céu, no céu,
         G
Com minha Mãe estarei!
G         D7
No céu, no céu,
         G
Com minha Mãe estarei!',
  to_tsvector('portuguese', 'Com Minha Mãe Estarei ' || '')
),
(
  'santa-mae-maria-nessa-travessia',
  'Santa Mãe Maria, Nessa Travessia (Manto Cor de Anil)',
  'José Acácio Santana / Hinário Mariano',
  'José Acácio Santana / Hinário Mariano',
  'C',
  82,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Qualquer',
  'Jo 2, 1-11; At 1, 14',
  'liturgica',
  '[Intro] C  F  G7  C

[Primeira Parte]
   C         G7
1. Santa Mãe Maria, nessa travessia, cubra-nos teu manto cor de anil;
   Dm         G7         C
Guarda nossa vida, Mãe Aparecida, Santa Padroeira do Brasil!

[Refrão]
   C        F       G7      C
Ave, Maria! Ave, Maria!
   C        F       G7      C
Ave, Maria! Ave, Maria!

[Segunda Parte]
   C         G7
2. Mulher peregrina, força feminina, a mais importante que existiu;
   Dm         G7         C
Com justiça queres que nossas mulheres sejam construtoras do Brasil!',
  to_tsvector('portuguese', 'Santa Mãe Maria, Nessa Travessia (Manto Cor de Anil) ' || '')
),
(
  'imaculada-maria-de-deus',
  'Imaculada, Maria de Deus',
  'Frei Fabreti, ofm / Hinário Mariano',
  'Frei Fabreti, ofm / Hinário Mariano',
  'D',
  82,
  '4/4',
  'Balada Mariana Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Advento',
  'Lc 1, 28.38',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D    G         D
Imaculada, Maria de Deus,
   Bm    Em         A7          D
Coração pobre acolhendo Jesus!
   D    G         D
Imaculada, Maria do povo,
   Bm    Em         A7          D
Mãe dos aflitos que estão junto à cruz!

[Estrofes]
   G         A7         D           Bm
1. Um coração que era "Sim" para a vida, um coração que era "Sim" para o irmão,
   Em         A7         D
Um coração que era "Sim" para Deus: Reino de Deus renovando este chão!

[Segunda Parte]
   Bm           G         D
2. Onde houver dor e tristeza, levemos consolação,
   Em           A7         D
Onde houver treva e discórdia, semeemos o perdão;
   G            A7         Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em           A7         D
Até que na Pátria eterna voltemos a nos encontrar!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Imaculada, Maria de Deus ' || '')
),
(
  'salve-rainha-mae-de-misericordia',
  'Salve Rainha, Mãe de Misericórdia',
  'Antífona Mariana Oficial da Igreja',
  'Antífona Mariana Oficial da Igreja',
  'D',
  78,
  '4/4',
  'Hino Mariano Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Lc 1, 42; Jo 19, 27',
  'liturgica',
  '[Intro] D  G  A7  D

[Primeira Parte]
   D       G         D
Salve, Rainha, Mãe de misericórdia,
   G     Em         A7          D
Vida, doçura, esperança nossa, salve!
   D          G         D
A vós bradamos, os degredados filhos de Eva;
   G           Em         A7          D
A vós suspiramos, gemendo e chorando neste vale de lágrimas!

[Segunda Parte]
   G           A7         D           Bm
Eia, pois, Advogada nossa, esses vossos olhos misericordiosos
   Em    A7         D
A nós volvei!
   G         A7         D           Bm
E depois deste desterro, mostrai-nos Jesus, bendito fruto do vosso ventre!
   Em           A7         D
Ó clemente, ó piedosa, ó doce sempre Virgem Maria!',
  to_tsvector('portuguese', 'Salve Rainha, Mãe de Misericórdia ' || '')
),
(
  'povo-de-reis-assembleia-santa-lucien-deiss',
  'Povo de Reis, Assembleia Santa (Povo de Deus, Bendizei o Senhor)',
  'Pe. Lucien Deiss / Hinário Litúrgico CNBB',
  'Pe. Lucien Deiss / Hinário Litúrgico CNBB',
  'G',
  88,
  '4/4',
  'Hino Processional Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  '1Pd 2, 9; Ex 19, 6',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
Dm            Gm            A7            Dm
Povo de reis, assembleia santa, povo sacerdotal,
Dm            Gm            A7            Dm
Povo de Deus, bendizei o vosso Senhor!

[Estrofes]
Dm            Gm            A7            Dm
1. Nós Te cantamos, ó Filho amado do Pai,
Gm            Dm            A7            Dm
Nós Te louvamos, eterna Palavra de Deus!

[Refrão]

Dm            Gm            A7            Dm
2. Nós Te cantamos, caminho, verdade e vida,
Gm            Dm            A7            Dm
Nós Te louvamos, ó Luz que ilumina as nações!

[Refrão]

Dm            Gm            A7            Dm
3. Nós Te cantamos, ó Pão que nos dá a vida eterna,
Gm            Dm            A7            Dm
Nós Te louvamos, Videira de frutos sem fim!

[Refrão]

Dm            Gm            A7            Dm
4. Nós Te cantamos, Pastor que conduz o rebanho,
Gm            Dm            A7            Dm
Nós Te louvamos, rochedo da nossa esperança!

[Refrão]

Dm            Gm            A7            Dm
5. Glória ao Pai, ao Filho e ao Santo Espírito,
Gm            Dm            A7            Dm
Pelos séculos dos séculos, no céu e na terra! Amém!',
  to_tsvector('portuguese', 'Povo de Reis, Assembleia Santa (Povo de Deus, Bendizei o Senhor) ' || '')
),
(
  'um-certo-dia-a-beira-mar-versao-completa-pe-zezinho',
  'Cântico da Paz (Cristo Quero Ser Instrumento)',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'G',
  88,
  '4/4',
  'Marcha',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Mt 5, 9',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
   G           C         D7          G
Vai, leva a paz ao mundo inteiro, sê de Cristo o mensageiro,
   Em    Am         D7          G
Onde houver escuridão, acende a luz!

[Segunda Parte]
   Em           C         G
2. Onde houver dor e tristeza, levemos consolação,
   Am           D7         G
Onde houver treva e discórdia, semeemos o perdão;
   C            D7         Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am           D7         G
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   G           C         D7          G
Vai, leva a paz ao mundo inteiro, sê de Cristo o mensageiro,
   Em    Am         D7          G
Onde houver escuridão, acende a luz!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Cântico da Paz (Cristo Quero Ser Instrumento) ' || '')
),
(
  'o-vira-de-jesus-pe-marcelo-rossi',
  'O Vira de Jesus',
  'Padre Marcelo Rossi',
  'Padre Marcelo Rossi',
  'A',
  120,
  '4/4',
  'Marcha / Folclórico',
  '↓ ↑ ↓ ↑  ↓ ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Final',
  'Tempo Comum',
  'Sl 149, 3',
  'liturgica',
  '[Intro] A  E7  A

[Refrão]
   A         E7
E o cristão dá um pulinho, e o cristão dá um pulinho,
   D      E7         A
E vai girando no amor do Senhor!

[Segunda Parte]
   F#m          D         A
2. Onde houver dor e tristeza, levemos consolação,
   Bm           E7         A
Onde houver treva e discórdia, semeemos o perdão;
   D            E7         F#m
A bênção de Deus Trindade nos acompanhe no andar,
   Bm           E7         A
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   A         E7
E o cristão dá um pulinho, e o cristão dá um pulinho,
   D      E7         A
E vai girando no amor do Senhor!

[Final] A  D  E7  A',
  to_tsvector('portuguese', 'O Vira de Jesus ' || '')
),
(
  'santo-espirito-es-bem-vindo-aqui-pe-marcelo',
  'Santo Espírito, És Bem-Vindo Aqui',
  'Padre Marcelo Rossi / Adoração',
  'Padre Marcelo Rossi / Adoração',
  'D',
  72,
  '4/4',
  'Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Entrada',
  'Pentecostes',
  'Rm 8, 26',
  'liturgica',
  '​[Refrão]


​ D9
​Santo Espírito, és bem-vindo aqui

​    G5(7M)             Em7
​Vem inundar, encher esse lugar

​  D9
​É o desejo do meu coração

​       G5(7M)              Em7
​Sermos inundados por Tua glória, Senhor


​ D9
​Santo Espírito, és bem-vindo aqui

​    G5(7M)             Em7
​Vem inundar, encher esse lugar

​  D9
​É o desejo do meu coração

​       G5(7M)              Em7
​Sermos inundados por Tua glória

​    D9                 G5(7M)
​Senhor, Tua glória Senhor

​           D9  G5(7M)
​Tua glória

​[Primeira Parte]


​D9
​   Não há nada igual

​                G5(7M)
​Não há nada melhor

​          D9
​A que se compara à esperança viva

​           G5(7M)
​Tua presença


​D9
​   Eu provei e vi

​              G5(7M)
​O mais doce amor

​Que liberta o meu ser

​              D9
​E a vergonha desfaz

​           G5(7M)
​Tua presença


​[Refrão]


​ D9
​Santo Espírito, és bem-vindo aqui

​    G5(7M)             Em7
​Vem inundar, encher esse lugar

​  D9
​É o desejo do meu coração

​       G5(7M)              Em7
​Sermos inundados por Tua glória


​ D9
​Santo Espírito, és bem-vindo aqui

​    G5(7M)             Em7
​Vem inundar, encher esse lugar

​  D9
​É o desejo do meu coração

​       G5(7M)              Em7
​Sermos inundados por Tua glória, Senhor


​[Solo] D9  G5(7M)  Em7

​       D9  G5(7M)  Em7


[Tab - Solo]

Parte 1 de 5
E|----------------------------------------------------| 
B|---------------9------------------------------------| 
G|-4/9-9~-9-9h11---11--11-9-9-------------------------| 
D|----------------------------------------------------| 
A|----------------------------------------------------| 
E|----------------------------------------------------| 

Parte 2 de 5
E|----------------------------------------------------| 
B|--------9----10-12----------------------------------| 
G|-9-9h11---11-------9-8------------------------------| 
D|-----------------------9----------------------------| 
A|----------------------------------------------------| 
E|----------------------------------------------------| 

Parte 3 de 5
E|----------------------------------------------------| 
B|----------------------------------------------------| 
G|----------------------------------------------------| 
D|-9/11-9---------------------------------------------| 
A|--------9-9h11-11-11~--11h12-11-11------------------| 
E|----------------------------------------------------| 

Parte 4 de 5
E|----------------------------------------------------| 
B|---------------9-------------------9-------12-------| 
G|-4/9-9-9~-9-11---11--11-9-9-9-9-11---11-11----9~----| 
D|----------------------------------------------------| 
A|----------------------------------------------------| 
E|----------------------------------------------------| 

Parte 5 de 5
E|----------------------------------------------------| 
B|----------------------------------------------------| 
G|-9/11-9---------------------------------------------| 
D|--------9-9h11-11~--7-6~-7--7/14-14~----------------| 
A|----------------------------------------------------| 
E|----------------------------------------------------| 


​[Segunda Parte]


​G5(7M)           D/F#
​       Vamos provar

​       Em7          D/F#
​Quão real é Tua presença

​G5(7M)           D/F#
​       Vamos provar

​        Em7        D/F#
​A Tua glória e bondade

​G5(7M)           D/F#
​       Vamos provar

​       Em7          D/F#
​Quão real é Tua presença

​G5(7M)           D/F#
​       Vamos provar

​        Em7        D/F#
​A Tua glória e bondade


​G5(7M)           D/F#
​       Vamos provar

​       Em7          D/F#
​Quão real é Tua presença

​G5(7M)           D/F#
​       Vamos provar

​        Em7        D/F#
​A Tua glória e bondade

​G5(7M)           D/F#
​       Vamos provar

​       Em7          D/F#
​Quão real é Tua presença

​G5(7M)           D/F#
​       Vamos provar

​        Em7        D/F#     G5(7M)
​A Tua glória e bondade, Senhor

​[Refrão]


​ D9
​Santo Espírito, és bem-vindo aqui

​    G5(7M)             Em7
​Vem inundar, encher esse lugar

​  D9
​É o desejo do meu coração

​       G5(7M)              Em7
​Sermos inundados por Tua glória


​ D9
​Santo Espírito, és bem-vindo aqui

​    G5(7M)             Em7
​Vem inundar, encher esse lugar

​  D9
​É o desejo do meu coração

​       G5(7M)              Em7       D9
​Sermos inundados por Tua glória, Senhor',
  to_tsvector('portuguese', 'Santo Espírito, És Bem-Vindo Aqui ' || '')
),
(
  'tenda-do-senhor-pe-joaozinho',
  'A Tenda do Senhor (Quem Habitará na Tua Casa)',
  'Padre Joãozinho, scj',
  'Padre Joãozinho, scj',
  'G',
  88,
  '4/4',
  'Balada Salmódica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Sl 14, 1-5',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
   G         C         D7          G
Senhor, quem entrará no santuário pra Te louvar? (2x)

[Estrofe]
   C       D7         G           Em
1. Quem tem as mãos limpas e o coração puro,
   Am       D7         G
Quem não é vaidoso e sabe amar! (2x)

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'A Tenda do Senhor (Quem Habitará na Tua Casa) ' || '')
),
(
  'jave-o-deus-dos-pobres-ze-vicente',
  'Javé, o Deus dos Pobres',
  'Zé Vicente / Hinário Litúrgico',
  'Zé Vicente / Hinário Litúrgico',
  'D',
  92,
  '4/4',
  'Baião / Toada Nordestina',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Ex 3, 7-8; Lc 4, 18',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D          G         D
Javé, o Deus dos pobres, do povo sofredor,
   Bm    Em         A7          D
Aqui nos reuniu pra cantar o Seu amor!

[Estrofe]
   G        A7         D           Bm
1. Nos dá força e esperança e faz a gente caminhar,
   Em           A7         D
Construindo um mundo novo onde a paz vai reinar!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Javé, o Deus dos Pobres ' || '')
),
(
  'pai-nosso-dos-martires-caminhada',
  'Bendito Seja Deus Que Nos Reuniu no Amor de Cristo',
  'Hinário Litúrgico CNBB',
  'Hinário Litúrgico CNBB',
  'D',
  90,
  '4/4',
  'Marcha Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Qualquer',
  '1Jo 4, 16; Ef 1, 3',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D          G         A7          D
Bendito seja Deus, que nos reuniu no amor de Cristo! (2x)

[Estrofe]
   Bm         Em         A7          D
1. Temamos e amemos o Deus vivo, e amemo-nos uns aos outros de coração sincero!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Bendito Seja Deus Que Nos Reuniu no Amor de Cristo ' || '')
),
(
  'cristaos-vinde-todos-adeste-fideles-natal',
  'Cristãos, Vinde Todos (Adeste Fideles - Entrada de Natal)',
  'Hino Tradicional Latino de Natal',
  'Hino Tradicional Latino de Natal',
  'G',
  88,
  '4/4',
  'Hino Processional de Natal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  7,
  'Entrada',
  'Natal',
  'Lc 2, 15; Mt 2, 2',
  'liturgica',
  '[Intro] E

[Primeira Parte]

         B7
Cristãos, vinde todos

 E           B7
Com alegres cantos

     C#m7       B2     F#   B2
Oh! Vinde, oh! Vinde até Belém

[Refrão]

 E7      A2  E  F#         B2
Vede nasci__do vosso Rei eterno

     E
Oh! Vinde e adoremos

Oh! Vinde e adoremos

     A2         B7      E  B7   E    B7
Oh! Vinde e adoremos o sa_____lvador

[Segunda Parte]

   E         B7    E         B7
Humildes pastores deixam seus rebanhos

    C#m7    B2        F#     B2
E alegres acorrem ao rei do céu

[Refrão]

 E7       A2  E   F#           B2
Nós igualmen_te cheios de alegria

E
Oh! Vinde e adoremos

Oh! Vinde e adoremos

     A2         B7      E  B7   E    B7
Oh! Vinde e adoremos o sa_____lvador

[Terceira Parte]

   E        B7     E         B7
O Deus invisível, de eterna grandeza

     C#m7         B2      F#    B2
Sob véus de humildade, podemos ver

[Refrão]

 E7        A2  E   F#         B2
Deus pequeni__no, Deus envolto em faixas

E
Oh! Vinde e adoremos

Oh! Vinde e adoremos

     A2         B7      E  B7   E    B7
Oh! Vinde e adoremos o sa_____lvador',
  to_tsvector('portuguese', 'Cristãos, Vinde Todos (Adeste Fideles - Entrada de Natal) ' || '')
),
(
  'entao-e-natal-nasceu-jesus-em-belem',
  'Nasceu-nos Hoje um Menino (Antífona do Dia de Natal - Isaías 9, 5)',
  'Hinário Litúrgico CNBB - Natal do Senhor',
  'Hinário Litúrgico CNBB - Natal do Senhor',
  'D',
  92,
  '4/4',
  'Marcha Festiva de Natal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Natal',
  'Is 9, 5; Sl 97',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D         G         D
Nasceu-nos hoje um Menino, e um Filho nos foi dado!
   Bm       Em         A7          D
Grande é este pequenino: Rei da Paz será chamado!
   G            A7          D
Aleluia, aleluia!

[Estrofes]
   D         G         A7          D
1. Cantai, cantai ao Senhor um canto novo, um louvor!
   Bm       Em         A7          D
Por maravilhas tão grandes que Ele fez por amor!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Nasceu-nos Hoje um Menino (Antífona do Dia de Natal - Isaías 9, 5) ' || '')
),
(
  'cristo-ressuscitou-aleluia-venceu-a-morte',
  'Cristo Ressuscitou, Aleluia! Venceu a Morte Com Amor',
  'Hinário Litúrgico da Páscoa',
  'Hinário Litúrgico da Páscoa',
  'D',
  96,
  '4/4',
  'Marcha Pascal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Páscoa',
  '1Cor 15, 20; Lc 24, 6',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D         G         A7          D
Cristo ressuscitou, aleluia! Venceu a morte com amor!
   Bm         Em         A7          D
Cristo ressuscitou, aleluia! Cantemos glória ao Salvador!

[Estrofe]
   G       A7         D           Bm
1. O sepulcro está vazio, o Senhor ressuscitou;
   Em         A7         D
Da escuridão da morte para a Vida nos levou!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Cristo Ressuscitou, Aleluia! Venceu a Morte Com Amor ' || '')
),
(
  'por-sua-morte-a-morte-viu-o-fim-pascoa',
  'Por Sua Morte, a Morte Viu o Fim',
  'Dom Carlos Alberto Navarro / Waldeci Farias',
  'Dom Carlos Alberto Navarro / Waldeci Farias',
  'D',
  92,
  '4/4',
  'Marcha Pascal Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Páscoa',
  'Rm 6, 9; 1Cor 15, 55',
  'liturgica',
  '[Intro] D  G  A7  D

[Primeira Parte]
   D         Em         A7          D
1. Por Sua morte, a morte viu o fim; do sangue derramado a vida renasceu;
   Bm         Em         A7          D
Seu pé ferido nova estrada abriu, e neste Homem, o homem enfim se descobriu!

[Refrão]
   G     A7         D           Bm
Meu coração me diz: "O Amor me amou,
   Em     A7         D           D7
E se entregou por mim!" Jesus ressuscitou!
   G    A7         D           Bm
Passou a escuridão, o Sol nasceu;
   Em      A7         D
A vida triunfou: Jesus ressuscitou!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Por Sua Morte, a Morte Viu o Fim ' || '')
),
(
  'o-senhor-ressurgiu-aleluia-aleluia',
  'O Senhor Ressurgiu, Aleluia, Aleluia! (Canto de Entrada Pascal)',
  'Pe. Ney Brasil / Hinário Litúrgico CNBB',
  'Pe. Ney Brasil / Hinário Litúrgico CNBB',
  'C',
  96,
  '4/4',
  'Marcha Festiva Pascal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Páscoa',
  'Lc 24, 34; Ap 1, 18',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C        F         C
O Senhor ressurgiu, aleluia, aleluia!
   Am    Dm         G7          C
É o Cordeiro Pascal, aleluia, aleluia!
   C       F         C
Imolado por nós, aleluia, aleluia!
   Am      Dm         G7          C
É o Cristo Senhor, Ele vive e venceu, aleluia!

[Estrofes]
   Am         Em         F           C
1. O Cristo Senhor ressuscitou, a nossa esperança realizou:
   Dm         G7         C
Vencida a morte para sempre, triunfa a vida eternamente!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'O Senhor Ressurgiu, Aleluia, Aleluia! (Canto de Entrada Pascal) ' || '')
),
(
  'da-cepa-brotou-a-rama-advento-natal',
  'Da Cepa Brotou a Rama (Isaías 11, 1-2)',
  'Reginaldo Veloso / Hinário Litúrgico do Advento',
  'Reginaldo Veloso / Hinário Litúrgico do Advento',
  'Em',
  84,
  '4/4',
  'Toada Profética do Advento',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Advento',
  'Is 11, 1-10',
  'liturgica',
  '​   Em            B7          Em
​Da cepa brotou a rama,  Da rama brotou a flor

​    E7           Am          Em      B7    Em
​Da flor nasceu Maria,  De  Maria,  o Salvador


​        Am       D7          G        C        F#º                   B7
​1- O Espírito de Deus  Sobre ele pousará  De saber, de entendimento

​                Em        Am           D7        G          C
​Este Espírito será  De conselho e fortaleza  De ciência e de temor

​    F#º        B7          Em
​Achará sua alegria  No temor do seu Senhor


​         Am         D7         G               C                 F#º       B7
​2- Não será pela ilusão  Do olhar, do ouvir falar  Que ele irá julgar os homens

​                   Em          Am           D7             G                C
​Como é praxe acontecer  Mas os pobres desta terra  Com justiça julgará

​       F#º        B7          Em
​E dos fracos o direito  Ele é quem defenderá


​       Am           D7        G        C          F#º                  B7
​3- A palavra de sua boca  Ferirá o violento  E o sopro de seus lábios

​            Em          Am       D7             G          C
​Matará o avarento  A justiça é o cinto  Que circunda a sua cintura

​    F#º          B7                  Em
​E o manto da lealdade  É a sua vestidura


​          Am        D7        G            C                 F#º                 B7
​4- Neste dia, neste dia  O incrível, verdadeiro  Coisa que nunca se viu

​                  Em         Am           D7                   G        C
​Morar lobo com cordeiro  A comer do mesmo pasto  Tigre e boi, burro e leão

​         F#º     B7          Em
​Por um menino guiados  Se confraternizarão


​               Am                D7                  G                C              F#º  
​5- Um menino, uma criança  Com as feras a brincar  E nenhum mal nenhum dano

         B7


​          Em        Am                 D7                  G             C
​Mais na terra se fará  Da ciência do Senhor  Cheio o mundo estará

​             F#º               B7          Em
​Como o sol inunda a terra  E as águas enchem o mar


​              Am            D7             G               C           F#º            B7
​6- Neste dia, neste dia  O Senhor estenderá  Sua mão libertadora

​          Em           Am                 D7                 G         
​Pra seu povo resgatar  Estandarte para os povos  O Senhor levantará

      C


​          F#º                 B7          Em
​A seu povo, a sua Igreja  Toda a terra acorrerá


​          Am                D7                 G                   C        F#º           
​7- A inveja, a opressão  Entre irmãos se acabará  E a comunhão de todos

       B7


​          Em          Am                  D7                   G             
​O inimigo vencerá   Poderosa mão de Deus  Fez no Egito o mar secar

      C


​           F#º                B7          Em
​Para o resto do seu povo  Um caminho abrirá',
  to_tsvector('portuguese', 'Da Cepa Brotou a Rama (Isaías 11, 1-2) ' || '')
),
(
  'senhor-vem-salvar-teu-povo-advento',
  'Senhor, Vem Salvar Teu Povo (Das Trevas da Escravidão)',
  'Pe. José Weber, svd / Hinário do Advento',
  'Pe. José Weber, svd / Hinário do Advento',
  'Em',
  82,
  '4/4',
  'Canto de Súplica do Advento',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Advento',
  'Is 63, 19; Sl 79',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
Dm         Gm
Senhor, vem salvar teu povo
A7         Dm
Das trevas da escravidão!
Dm         Gm
Só Tu és a nossa esperança,
A7         Dm
És nossa libertação!

[Estrofes]
Dm         Gm
1. Vem, Senhor, nos salvar,
A7         Dm
Vem, sem demora, nos dar a paz!
Dm         Gm
O mundo espera por Tua luz,
A7         Dm
Vem, Salvador, nosso Bom Jesus!

[Refrão]

Dm         Gm
2. Do céu orvalhem as alturas,
A7         Dm
E as nuvens chovam a salvação!
Dm         Gm
Abra-se a terra em louvor,
A7         Dm
Brote o Justo, nosso Redentor!

[Refrão]

Dm         Gm
3. Lembra-te, Senhor, de Tua aliança,
A7         Dm
Que juraste aos pais do passado:
Dm         Gm
Tu suscitas a santa esperança
A7         Dm
No coração do Teu povo amado!

[Refrão]

Dm         Gm
4. Prepara, Senhor, os caminhos,
A7         Dm
Faze as veredas endireitar!
Dm         Gm
Que toda a carne veja a glória
A7         Dm
Do Salvador que há de reinar!',
  to_tsvector('portuguese', 'Senhor, Vem Salvar Teu Povo (Das Trevas da Escravidão) ' || '')
),
(
  'ouvi-o-senhor-o-clamor-do-vosso-povo-quaresma',
  'Volta, Meu Povo, ao Teu Senhor (Canto de Entrada da Quaresma)',
  'Hinário Litúrgico CNBB - Quaresma',
  'Hinário Litúrgico CNBB - Quaresma',
  'Dm',
  78,
  '4/4',
  'Canto Processional Quaresmal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Jl 2, 12-13; Os 14, 2',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm        Gm         A7          Dm
Volta, meu povo, ao teu Senhor, e exultará teu coração;
   Gm       Dm         A7          Dm
Ele será teu condutor, tua esperança de salvação!

[Estrofe]
   D7        Gm         C7          F
1. Rasgai os vossos corações e não as vossas vestes;
   Gm           Dm         A7          Dm
Voltai ao Senhor vosso Deus, porque Ele é compassivo e clemente!

[Final] Dm  F  A7  Dm',
  to_tsvector('portuguese', 'Volta, Meu Povo, ao Teu Senhor (Canto de Entrada da Quaresma) ' || '')
),
(
  'hosana-ao-filho-de-davi-domingo-de-ramos',
  'Hosana Hei, Hosana Há (Domingo de Ramos)',
  'Roberto Malvezzi / Pe. Zezinho, scj',
  'Roberto Malvezzi / Pe. Zezinho, scj',
  'E',
  108,
  '2/4',
  'Marcha Festiva',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Mt 21, 9; Sl 23',
  'liturgica',
  '[Intro] E  C#m  A  B7  E

[Refrão]
E            C#m
Hosana hei, hosana há!
A            B7          E
Hosana hei, hosana hei, hosana há!
E            C#m
Hosana hei, hosana há!
A            B7          E
Hosana hei, hosana hei, hosana há!

[Primeira Parte]
E         A
1. Ele é o Santo, é o Filho de Maria,
B7         E
É o Deus de Israel, é o Filho de Davi
E         A
Santo é o Seu nome, é o Senhor Deus do universo,
B7         E
Glória a Deus de Israel, nosso Rei e Salvador!

[Refrão]
E            C#m
Hosana hei, hosana há!
A            B7          E
Hosana hei, hosana hei, hosana há!

[Segunda Parte]
E         A
2. Vamos a Ele com as flores dos trigais,
B7         E
Com os ramos de oliveira, com alegria e muita paz
E         A
Santo é o Seu nome, é o Senhor Deus do universo,
B7         E
Glória a Deus de Israel, nosso Rei e Salvador!

[Refrão]
E            C#m
Hosana hei, hosana há!
A            B7          E
Hosana hei, hosana hei, hosana há!

[Terceira Parte]
E         A
3. Ele é o Cristo, é o unificador,
B7         E
É Hosana nas alturas, é Hosana no amor
E         A
Santo é o Seu nome, é o Senhor Deus do universo,
B7         E
Glória a Deus de Israel, nosso Rei e Salvador!',
  to_tsvector('portuguese', 'Hosana Hei, Hosana Há (Domingo de Ramos) ' || '')
),
(
  'os-filhos-dos-hebreus-domingo-de-ramos',
  'Os Filhos dos Hebreus, Com Ramos de Oliveira (Antífona Oficial de Ramos)',
  'Missal Romano - Domingo de Ramos',
  'Missal Romano - Domingo de Ramos',
  'D',
  92,
  '4/4',
  'Procissão Solene de Ramos',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Jo 12, 13; Mt 21, 9',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D    G         D
Hosana ao Filho de Davi!
   Bm    Em         A7          D
Bendito o que vem em nome do Senhor!
   G       A7         D
Rei de Israel: Hosana nas alturas!

[Estrofe]
   D        G         A7          D
1. Os filhos dos hebreus, com ramos de oliveira,
   Bm         Em         A7          D
Foram ao encontro do Senhor, clamando: Hosana nas alturas!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Os Filhos dos Hebreus, Com Ramos de Oliveira (Antífona Oficial de Ramos) ' || '')
),
(
  'nos-gloriamos-na-cruz-de-nosso-senhor-quinta-feira-santa',
  'Nós Nos Gloriamos na Cruz de Nosso Senhor (Antífona da Quinta-Feira Santa)',
  'Missal Romano - Quinta-Feira Santa (Gálatas 6, 14)',
  'Missal Romano - Quinta-Feira Santa (Gálatas 6, 14)',
  'Dm',
  82,
  '4/4',
  'Hino Processional Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Gl 6, 14; Sl 66',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão - Gálatas 6, 14]
   Dm        Gm         A7          Dm
Nós nos gloriamos na Cruz de Nosso Senhor Jesus Cristo:
   D7      Gm         C7          F
Nele está a salvação, a vida e a ressurreição;
   Gm    Dm         A7          Dm
Por Ele fomos salvos e libertos!

[Estrofe - Salmo 66]
   Dm      Gm         A7          Dm
1. Que Deus nos dê a Sua graça e Sua bênção,
   Gm     Dm         A7          Dm
E faça resplandecer sobre nós a Sua face!

[Final] Dm  F  A7  Dm',
  to_tsvector('portuguese', 'Nós Nos Gloriamos na Cruz de Nosso Senhor (Antífona da Quinta-Feira Santa) ' || '')
),
(
  'vinde-espirito-criador-veni-creator-spiritus',
  'Vinde, Espírito Criador (Veni Creator Spiritus)',
  'Rábano Mauro (Séc. IX) / Liturgia das Horas',
  'Rábano Mauro (Séc. IX) / Liturgia das Horas',
  'D',
  82,
  '4/4',
  'Hino Litúrgico de Pentecostes',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Pentecostes',
  'At 2; Rm 5, 5',
  'liturgica',
  '[Intro] D  A  Bm  G  A  D

D         A        Bm
1. Vinde, Espírito Criador, a nossa alma visitai
G         D        Em       A       D
E enchei os nossos corações com vossa graça celestial.

D         A        Bm
2. Vós sois chamado o Intercessor, do Deus excelso o dom sem-par,
G          D        Em       A       D
A fonte viva, o fogo, o amor, a unção divina e salutar.

D         A        Bm
3. Sois doador dos sete dons e sois poder da mão de Deus,
G          D        Em       A       D
Do Pai fiel promessa sois, pondo palavras nos lábios meus.

D         A        Bm
4. Iluminai os nossos sentidos e acendei o amor no peito,
G         D        Em       A       D
Da nossa carne a fraqueza fortalecei com vosso preito.

D         A        Bm
5. Afastai pra longe o inimigo, dai-nos depressa a vossa paz;
G          D        Em       A       D
Se Vós nos guiais como piloto, nenhum perigo nos alcançará.

D         A        Bm
6. Fazei-nos conhecer o Pai, e o Filho eterno revelai,
G         D        Em       A       D
E em Vós, Espírito de ambos, façamos fé sem cessar.

D         A        Bm
7. Glória ao Pai que nos criou, e ao Filho ressuscitado,
G          D        Em       A       D
E ao Divino Consolador, por todo o sempre louvado! Amém!',
  to_tsvector('portuguese', 'Vinde, Espírito Criador (Veni Creator Spiritus) ' || '')
),
(
  'regina-caeli-rainha-do-ceu-alegrai-vos-pascoa',
  'Rainha do Céu, Alegrai-vos, Aleluia! (Regina Caeli)',
  'Antífona Mariana Oficial do Tempo Pascal',
  'Antífona Mariana Oficial do Tempo Pascal',
  'D',
  92,
  '4/4',
  'Antífona Mariana Pascal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Final',
  'Páscoa',
  'Lc 24, 34',
  'liturgica',
  '[Intro] D  G  A7  D

[Primeira Parte]
   D         A7
Rainha do Céu, alegrai-vos, aleluia!
   G         A7         D
Porque Aquele que merecestes trazer em vosso seio, aleluia!

[Segunda Parte]
   D            A7
Ressuscitou como disse, aleluia!
   G      A7         D
Rogai a Deus por nós, aleluia!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Rainha do Céu, Alegrai-vos, Aleluia! (Regina Caeli) ' || '')
),
(
  'sub-tuum-praesidium-a-vossa-protecao-recorremos',
  'À Vossa Proteção Recorremos, Santa Mãe de Deus (Sub Tuum Praesidium)',
  'Oração Mariana Mais Antiga da Igreja (Séc. III)',
  'Oração Mariana Mais Antiga da Igreja (Séc. III)',
  'Em',
  76,
  '4/4',
  'Oração Mariana Antiga',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Qualquer',
  'Lc 1, 43',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Oração Integral]
   Em         Am
À vossa proteção recorremos, Santa Mãe de Deus:
   D7         G           B7
Não desprezeis as nossas súplicas em nossas necessidades,
   Em     Am         B7          Em
Mas livrai-nos sempre de todos os perigos,
   Am      B7         Em
Ó Virgem gloriosa e bendita! Amém!

[Segunda Parte]
   D            G         Em
2. Onde houver dor e tristeza, levemos consolação,
   C            B7         Em
Onde houver treva e discórdia, semeemos o perdão;
   G            Am         D
A bênção de Deus Trindade nos acompanhe no andar,
   C            B7         Em
Até que na Pátria eterna voltemos a nos encontrar!

[Oração Integral]
   Em         Am
À vossa proteção recorremos, Santa Mãe de Deus:
   D7         G           B7
Não desprezeis as nossas súplicas em nossas necessidades,
   Em     Am         B7          Em
Mas livrai-nos sempre de todos os perigos,
   Am      B7         Em
Ó Virgem gloriosa e bendita! Amém!

[Final] Em  G  B7  Em',
  to_tsvector('portuguese', 'À Vossa Proteção Recorremos, Santa Mãe de Deus (Sub Tuum Praesidium) ' || '')
),
(
  'forca-de-paz-padre-zezinho',
  'Força de Paz (Paz Inquieta)',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'D',
  88,
  '4/4',
  'Marcha Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Jo 14, 27',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D          G         A7          D
Quero ser força de paz, onde houver guerra levar o amor;
   Bm         Em         A7          D
Ser um cristão que não cansa jamais de anunciar o Senhor!

[Segunda Parte]
   Bm           G         D
2. Onde houver dor e tristeza, levemos consolação,
   Em           A7         D
Onde houver treva e discórdia, semeemos o perdão;
   G            A7         Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em           A7         D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D          G         A7          D
Quero ser força de paz, onde houver guerra levar o amor;
   Bm         Em         A7          D
Ser um cristão que não cansa jamais de anunciar o Senhor!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Força de Paz (Paz Inquieta) ' || '')
),
(
  'louvemos-ao-senhor-pe-marcelo-rossi',
  'Louvemos ao Senhor (Subamos à Montanha do Senhor)',
  'Padre Marcelo Rossi / Adhemar de Campos',
  'Padre Marcelo Rossi / Adhemar de Campos',
  'G',
  104,
  '4/4',
  'Pop Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  22,
  'Entrada',
  'Tempo Comum',
  'Is 2, 3; Sl 99',
  'liturgica',
  '[Intro] Gm7(9)  Bb7M/C  Gm7(9)  Bb7M/C

[Primeira Parte]

Gm7(9)               Bb7M/C
      Louvemos ao Senhor

Gm7(9)               Bb7M/C
      Louvemos ao Senhor

   F            C/E       Dm
Adoremos no seu santo monte

F/C          Bb
Nosso amado pai

    Bm7(5-) Bb7M/C
Seu nome é Santo

( C  Bb  A  Gm7(9) )

 Gm7(9)         Bb7M/C
Louvemos ao Senhor

Gm7(9)              Bb7M/C
      Louvemos ao Senhor

   F            C/E       Dm
Adoremos no seu santo monte

F/C         Bb
Nosso amado pai

    Bm7(5-) Bb/C
Seu nome é Santo

[Refrão]

   F7M(9)       Dm7(9)     Gm7(9)
Louva____________mos ao Senhor

    Bb7M/C             F   Dm7(9)  Gm7(9)  Bb/C
Pois seu nome é Santo

   F7M(9)       Dm7(9)    Gm7(9)
Louva____________mos ao Senhor

    Bb7M/C             F   Dm7(9)
Pois seu nome é Santo

( Gm7  F9/A  Bb/C )

[Segunda Parte]

   F   Am7  Dm7     Gm7(9)  Bb/C
Magnifiquemos ao Senhor

   F        Am7  Dm7     Gm7(9)  Bb/C
Ao rei que é digno de Louvor

  F        C/E          Gm7  F/A Bb  B° Bb/C
Excelso, Supremo, e mui dig__no  de  Louvor

  F        C/E          Gm7  F/A Bb  B° Bb/C
Excelso, Supremo, e mui dig__no  de  Louvor

[Refrão]

    F7M(9)       Dm7(9)     Gm7(9)
Louva____________mos ao Senhor

Bb/C             F   Dm7(9)  Gm7(9)  Bb/C
Pois seu nome é Santo

   F7M(9)        Dm7(9)    Gm7(9)
Louva____________mos ao Senhor

                 F   Dm7(9)
Pois seu nome é Santo

( Gm7  F/A  Bb/C )

[Terceira Parte]

  F       Eb9       Bb      Bb/C  F  Bb/C
Hosana, Hosana, Hosana ao nosso Rei

  F       D#      Bb/D        Bb/C  F  Bb/C
Hosana, Hosana, Hosa__na ao nosso Rei

       F              F/A
Cristo é a nossa vida, o motivo do louvor

   Gm          F/A    Bb/C
Em nosso novo coração

       F              F/A
Pois morreu a nossa morte pra vivermos sua vida

      Gm7         F/A      Bb/C
Nos trouxe grande salvação

[Refrão]

   F7M(9)       Dm7(9)     Gm7(9)
Louva____________mos ao Senhor

Bb/C             F    Dm7(9)  Gm7(9)  Bb/C
Pois seu nome é Santo

  F7M(9)       Dm7(9)     Gm7(9)
Louva____________mos ao Senhor

Bb/C             F    Dm7(9)
Pois seu nome é Santo

( Gm7  F9/A  Bb/C )

[Refrão Final]

   F7M(9)       Dm7(9)     Gm7(9)
Louva____________mos ao Senhor

Bb/C             F    Dm7(9)  Gm7(9)  Bb/C
Pois seu nome é Santo

  F7M(9)       Dm7(9)     Gm7(9)
Louva____________mos ao Senhor

Bb/C             F    Dm7(9)
Pois seu nome é Santo

[Final] Gm7  F9/A  Bb/C',
  to_tsvector('portuguese', 'Louvemos ao Senhor (Subamos à Montanha do Senhor) ' || '')
),
(
  'maranatha-vem-senhor-jesus-advento',
  'Maranathá! Vem, Senhor Jesus! (Apocalipse 22, 20)',
  'Pe. Reginaldo Veloso / Comunidade Shalom',
  'Pe. Reginaldo Veloso / Comunidade Shalom',
  'Am',
  84,
  '4/4',
  'Clamor do Advento',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Advento',
  'Ap 22, 20; 1Cor 16, 22',
  'liturgica',
  '[Intro] Am  Dm  G  C  E7  Am

[Refrão]
   Am    Dm         G           C
Maranathá! Vem, Senhor Jesus!
   Dm    Am         E7          Am
Maranathá! Vem, Senhor Jesus!

[Estrofe]
   Am            Dm         G           C
1. O Espírito e a Esposa dizem: "Vem!" E quem ouve diga também: "Vem!"
   Dm          Am         E7          Am
Vem depressa visitar a Tua vinha, ó Sol nascente da justiça!

[Final] Am  C  E7  Am',
  to_tsvector('portuguese', 'Maranathá! Vem, Senhor Jesus! (Apocalipse 22, 20) ' || '')
),
(
  'mae-da-divina-graca-doce-mae-de-deus',
  'Doce Mãe de Deus, Rainha da Paz',
  'Comunidade Católica Doce Mãe de Deus',
  'Comunidade Católica Doce Mãe de Deus',
  'C',
  78,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Final',
  'Qualquer',
  'Lc 1, 48',
  'liturgica',
  '[Intro] C  Am  Dm  G7  C

[Refrão]
   C      Am         Dm          G7
Doce Mãe de Deus, olha pelos filhos teus,
   Dm        G7         C
Conduze nossos passos ao Reino dos Céus!

[Segunda Parte]
   Am           F         C
2. Onde houver dor e tristeza, levemos consolação,
   Dm           G7         C
Onde houver treva e discórdia, semeemos o perdão;
   F            G         Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm           G7         C
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   C      Am         Dm          G7
Doce Mãe de Deus, olha pelos filhos teus,
   Dm        G7         C
Conduze nossos passos ao Reino dos Céus!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Doce Mãe de Deus, Rainha da Paz ' || '')
),
(
  'hino-campanha-da-fraternidade-2024-amizade-social',
  'Vós Sois Todos Irmãos e Irmãs (Hino da Campanha da Fraternidade 2024)',
  'CNBB - Campanha da Fraternidade 2024 (Fraternidade e Amizade Social)',
  'CNBB - Campanha da Fraternidade 2024 (Fraternidade e Amizade Social)',
  'D',
  82,
  '4/4',
  'Hino Oficial da CF',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Mt 23, 8; Sl 132',
  'liturgica',
  '​[Intro] Gm  F  Em7(5-)  A7

​        Dm7  Bb  Am7  Dm7

​        Gm7  F/A  Bb  C7  F


[Tab - Intro]

Parte 1 de 3
E|------------------------------------------| 
B|------10-8-------8---------6-5------5-3---| 
G|-------------------10---------------------| 
D|-9-10-------8-10-------6-7------5-7-------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 2 de 3
E|------------------10-8--------------------| 
B|-----8/10-8~--7-8-------------------------| 
G|-6-7--------------------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 3 de 3
E|------------------------------------------| 
B|------13-11-10----------------------------| 
G|-9-10----------12----9-10~----------------| 
D|------------------12----------------------| 
A|------------------------------------------| 
E|------------------------------------------| 


​[Primeira Parte]


​      F      C       F
​Conduzidos a este deserto

​           F      F5+    Gm7
​Deus nos chama à libertação

​          Bb   C#     F/C  Dm7
​Da indiferença e divisão

​        G4       G         C4  C
​Onde está tua irmã, teu irmão?

​[Pré-Refrão 1]


​       Em7(5-) A7         Dm7  Bb
​Eis a hora! O Reino está perto

​          F       C7       F
​Crê na Palavra e na conversão

​[Refrão]


​          F       C/E      Dm7
​Vós sois todos irmãos e irmãs

​     Am        Bb          Gm7
​É palavra de Cristo, o Senhor

​                Gm6    C
​Pois a fraternidade humana

​      C/E       C  Dm7  C/E  F
​Deve ser conversão e   va___lor

​     Bb       Bbm      Am7  Dm7
​Seja este um tempo propício

​        Gm7        C7       F
​Para abrir-nos, enfim, ao amor!


​[Solo] F  Gm7  F/A  Bb  C7


[Tab - Solo 1]

E|------------------------------------------| 
B|-10-8----8--------------------------------| 
G|------10----10-9--7--5--------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 


​[Segunda Parte]


​      F          C          F
​A Quaresma nos chama a assumir

​     F         F5+     Gm7
​Um amor que supera barreiras

​     Bb       C#         C  Dm7
​Desejando abraçar e acolher

​         G4     G           C4  C
​Se estendendo além das frontei_ras

​[Pré-Refrão 2]


​    Em7(5-)    A7         Dm7  Bb
​Rompendo as cadeias que isolam

​       F         C7        F
​Construindo relações verdadeiras

​[Refrão]


​          F       C/E      Dm7
​Vós sois todos irmãos e irmãs

​     Am        Bb          Gm7
​É palavra de Cristo, o Senhor

​                Gm6    C
​Pois a fraternidade humana

​      C/E       C  Dm7  C/E  F
​Deve ser conversão e   va___lor

​     Bb       Bbm      Am7  Dm7
​Seja este um tempo propício

​        Gm7        C7       F
​Para abrir-nos, enfim, ao amor!


​( F  Gm7  F/A  Bb  C7 )

​[Terceira Parte]


​       F         C         F
​Misericórdia, pecamos, Senhor

​                F5+         Gm7
​Sem no outro um irmão enxergar

​        Bb       C#          F/C  Dm7
​Mas queremos vencer os conflitos

​         G4        G        C4  C
​Pela cultura do encontro lutar

​[Pré-Refrão 3]


​       Em7(5-)  A7    Dm7  Bb
​Em unidade na pluralidade

​       F        C7       F
​Um só corpo queremos formar!

​[Refrão]


​          F       C/E      Dm7
​Vós sois todos irmãos e irmãs

​     Am        Bb          Gm7
​É palavra de Cristo, o Senhor

​                Gm6    C
​Pois a fraternidade humana

​      C/E       C  Dm7  C/E  F
​Deve ser conversão e   va___lor

​     Bb       Bbm      Am7  Dm7
​Seja este um tempo propício

​        Gm7        C7       F  F4  F
​Para abrir-nos, enfim, ao amor!


​[Solo 2] Dm7  Bb  Am7  Dm7

​         Gm7  F/A  Bb  C7  F


[Tab - Solo 2]

Parte 1 de 3
E|------------------------------------------| 
B|---------8-6~-----------------------------| 
G|-----5-7----------------------------------| 
D|-5-7--------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 2 de 3
E|----------------10-8----------------------| 
B|-----10-8---7-8---------------------------| 
G|-6-7--------------------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 3 de 3
E|------------------------------------------| 
B|------13-11-10----------------------------| 
G|-9-10----------12----9-10~----------------| 
D|------------------12----------------------| 
A|------------------------------------------| 
E|------------------------------------------| 


​[Quarta Parte]


​      F          C     F
​O Senhor nos propõe aliança

​        F        F5+     G#m7
​E nos trata com terno carinho

​     Bb        C#         F/C  Dm7
​Superemos divisões, extremis__mos

​         G4        G      C4  C
​Ninguém vive o chamado sozi_nho

​[Pré - Refrão 4]


​     Em7(5-)    A7      Dm7  Bb
​Só assim plantaremos a paz

​            F        C7      F
​Corações ardentes e pés a caminho

​[Refrão]


​          F       C/E      Dm7
​Vós sois todos irmãos e irmãs

​     Am        Bb          Gm7
​É palavra de Cristo, o Senhor

​                Gm6    C
​Pois a fraternidade humana

​      C/E       C  Dm7  C/E  F
​Deve ser conversão e   va___lor

​     Bb       Bbm      Am7  Dm7
​Seja este um tempo propício

​        Gm7        C7       F
​Para abrir-nos, enfim, ao amor!


​( F  Gm7  F/A  Bb  C7 )

​[Quinta Parte]


​ F          C      F
​Alarga o espaço da tenda

​     F         F5+      Gm7
​E promove a amizade social

​          Bb          C#       F/C  Dm7
​Vence as sombras dum mundo fechado

​      G4       G        C4  C
​Construindo igreja sinodal

​[Pré-Refrão 5]


​       Em7(5-)    A7      Dm7  Bb
​Convertidos, renovados veremos

​      F         C7        F
​Novo céu, nova terra, afinal

​[Refrão]


​          F       C/E      Dm7
​Vós sois todos irmãos e irmãs

​     Am        Bb          Gm7
​É palavra de Cristo, o Senhor

​                Gm6    C
​Pois a fraternidade humana

​      C/E       C  Dm7  C/E  F
​Deve ser conversão e   va___lor

​     Bb       Bbm      Am7  Dm7
​Seja este um tempo propício

​        Gm7        C7       F  Db7
​Para abrir-nos, enfim, ao amor!


​          Gb      Db/F     Ebm7
​Vós sois todos irmãos e irmãs

​     Bbm7      B           Abm7
​É palavra de Cristo, o Senhor

​                Abm6   Db
​Pois a fraternidade humana

​      Db/F      Db  Ebm7  Db/F  Gb
​Deve ser conversão  e    va____lor

​     B        Bm       Bbm7  Ebm7
​Seja este um tempo propício

​        Abm7       Db7      Gb
​Para abrir-nos, enfim, ao amor!

​     B        Bm       Bbm7  Ebm7
​Seja este um tempo propício

​        Abm7       Db7      Gb
​Para abrir-nos, enfim, ao amor!


​[Final] Gb  Abm7  Gb/Bb

​        B  Db7  Gb',
  to_tsvector('portuguese', 'Vós Sois Todos Irmãos e Irmãs (Hino da Campanha da Fraternidade 2024) ' || '')
),
(
  'hino-campanha-da-fraternidade-2022-educacao',
  'Fala Com Sabedoria, Ensina Com Amor (CF 2022)',
  'Pe. José Weber, svd / Fr. Telles Ramon / CNBB',
  'Pe. José Weber, svd / Fr. Telles Ramon / CNBB',
  'C',
  76,
  '4/4',
  'Balada Catequética',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Entrada',
  'Quaresma',
  'Pv 31, 26; Mc 10, 14',
  'liturgica',
  '[Intro] C  Em  F  G  C

[Refrão]
C         Em
E quem fala com sabedoria
F         C
É aquele que ensina com amor
F         E7       Am    Am/G
Sua vida em total maestria
F         G          C      (C7)
É pra nós, luz, caminho, vigor!

[Primeira Parte]
C         G
1. O Senhor nos convoca a educar
F         C
No caminho da fé e do perdão
Am         Em
Cada jovem e criança acolher
F         G
Como irmãos no mesmo coração!

[Refrão]
C         Em
E quem fala com sabedoria
F         C
É aquele que ensina com amor
F         E7       Am    Am/G
Sua vida em total maestria
F         G          C
É pra nós, luz, caminho, vigor!

[Segunda Parte]
C         G
2. Escutar com paciência e bondade,
F         C
Construindo a justiça e a paz;
Am         Em
O saber que liberta o irmão
F         G
É a graça que o Evangelho nos traz!',
  to_tsvector('portuguese', 'Fala Com Sabedoria, Ensina Com Amor (CF 2022) ' || '')
),
(
  'hino-campanha-da-fraternidade-2013-juventude-eis-me-aqui',
  'Eis-me Aqui, Envia-me! (Hino da Campanha da Fraternidade 2013 - Juventude)',
  'CNBB - Campanha da Fraternidade 2013 (Isaías 6, 8)',
  'CNBB - Campanha da Fraternidade 2013 (Isaías 6, 8)',
  'D',
  90,
  '4/4',
  'Marcha Jovem Litúrgica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Quaresma',
  'Is 6, 8; Jr 1, 7',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D    G         A7          D
Quem enviarei? Quem irá por nós?
   Bm    Em         A7          D
"Eis-me aqui, Senhor, envia-me a mim!"

[Segunda Parte]
   Bm           G         D
2. Onde houver dor e tristeza, levemos consolação,
   Em           A7         D
Onde houver treva e discórdia, semeemos o perdão;
   G            A7         Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em           A7         D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D    G         A7          D
Quem enviarei? Quem irá por nós?
   Bm    Em         A7          D
"Eis-me aqui, Senhor, envia-me a mim!"

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Eis-me Aqui, Envia-me! (Hino da Campanha da Fraternidade 2013 - Juventude) ' || '')
),
(
  'fiat-faca-se-em-mim-laura-salvador',
  'Fiat (Faça-se em Mim Segundo a Tua Palavra)',
  'Laura Salvador',
  'Laura Salvador',
  'C',
  74,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Advento',
  'Lc 1, 38',
  'liturgica',
  '[Intro] C  G  Am  F

[Refrão]
   C     G         Am
Eis aqui a serva do Senhor:
   F        G         C
Faça-se em mim segundo a Tua Palavra!

[Segunda Parte]
   Am           F         C
2. Onde houver dor e tristeza, levemos consolação,
   Dm           G7         C
Onde houver treva e discórdia, semeemos o perdão;
   F            G         Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm           G7         C
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   C     G         Am
Eis aqui a serva do Senhor:
   F        G         C
Faça-se em mim segundo a Tua Palavra!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Fiat (Faça-se em Mim Segundo a Tua Palavra) ' || '')
),
(
  'maria-passa-a-frente-olivia-ferreira',
  'Maria Passa à Frente',
  'Olívia Ferreira',
  'Olívia Ferreira',
  'D',
  76,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Qualquer',
  'Jo 2, 1-11',
  'liturgica',
  '[Intro] D  A  Bm  G

[Refrão]
   D         A         Bm
Maria, passa à frente, vai abrindo estradas e caminhos;
   G            A7         D
Onde Maria põe a mão, Jesus derrama a Sua bênção!

[Segunda Parte]
   Bm           G         D
2. Onde houver dor e tristeza, levemos consolação,
   Em           A7         D
Onde houver treva e discórdia, semeemos o perdão;
   G            A7         Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em           A7         D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D         A         Bm
Maria, passa à frente, vai abrindo estradas e caminhos;
   G            A7         D
Onde Maria põe a mão, Jesus derrama a Sua bênção!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Maria Passa à Frente ' || '')
),
(
  'o-senhor-e-a-minha-forca-salette-ferreira',
  'Tudo Pode Ser Mudado',
  'Salette Ferreira / Canção Nova',
  'Salette Ferreira / Canção Nova',
  'E',
  78,
  '4/4',
  'Balada de Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  9,
  'Entrada',
  'Tempo Comum',
  'Ne 8, 10; Sl 27, 7',
  'liturgica',
  '[Intro] E  A/E  E/G#  C#m  D6  A/B

[Primeira Parte]
E         A/E          E/G#  C#m
Com Jesus tudo pode ser mudado
D6          A/B         E
Pela força da oração
          A/E          E/G#  C#m
Com Jesus tudo pode ser mudado
D6          A/B         C#m  B9
Pela força da oração

[Refrão]
A       Aº      E      C#m
Tenha fé, acredite no poder
F#m      B9       E7
De Deus, meu irmão
A       Aº      E      C#m
Tenha fé, acredite no poder
D9        A/B       E
De Deus, meu irmão!

[Segunda Parte]
E         A/E          E/G#  C#m
Com Jesus tudo pode ser mudado
D6          A/B         E
Pela força da oração
          A/E          E/G#  C#m
Com Jesus tudo pode ser mudado
D6          A/B         C#m  B9
Pela força da oração

A        Aº       E     C#m
Creia sim, como Maria, que
F#m      B9       E7
No poder de Deus confiou
A        Aº       E     C#m
Creia sim, como Maria, que
D9        A/B         E
No poder de Deus confiou!',
  to_tsvector('portuguese', 'Tudo Pode Ser Mudado ' || '')
),
(
  'sopra-espirito-emanuel-stenio',
  'Queremos Ser Teus (Sopra Neste Lugar)',
  'Emanuel Stênio / Canção Nova',
  'Emanuel Stênio / Canção Nova',
  'E',
  72,
  '4/4',
  'Balada Worship',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  7,
  'Entrada',
  'Pentecostes',
  'Ez 37, 9',
  'liturgica',
  '[Intro] E  A  C#m  G#m  A

[Primeira Parte]
E          B          C#m
Vem, vem Santo Espírito de Deus
            G#m      A
Tocar os corações com Teu poder
E          C#m        F#m     B
Vem saciar a nossa sede do céu
E          B          C#m
Vem, vem Santo Espírito de Deus
            G#m      A
Orar em nosso favor com Teu poder
E         F#m
Nos convencer da verdade
        A        B
Da vontade de Deus

[Refrão]
A          B
Sopra neste lugar
            G#m        C#m
O Teu Santo Espírito, Senhor
A          F#m        B
Preenche os vazios que há em nós
A          B
Sopra neste lugar
            G#m        A
O Teu Santo Espírito, Senhor
         F#m        B
Preenche os vazios que há em nós
E      E  G#m  A
Queremos ser Teus!',
  to_tsvector('portuguese', 'Queremos Ser Teus (Sopra Neste Lugar) ' || '')
),
(
  'reunidos-em-teu-nome-amor-e-adoracao',
  'Vamos Celebrar (Todos Reunidos na Casa de Deus)',
  'Ministério Amor e Adoração / Canção Nova',
  'Ministério Amor e Adoração / Canção Nova',
  'E',
  116,
  '4/4',
  'Pop Católico Animado',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Mt 18, 20',
  'liturgica',
  '[Intro] E  A9  E  A9  B9

[Primeira Parte]
E         A9        E
Todos reunidos na casa de Deus
         A9    B9
Com cantos de alegria e grande louvor
         A9    B9
Vamos celebrar os feitos do Senhor
         A9    E
E Sua bondade que nunca tem fim!

[Refrão]
E            A9
Vamos celebrar, Deus está aqui!
E            A9
Vamos celebrar, Deus está aqui!
B9         E    A9
No meio de nós!
E            A9
Vamos celebrar, Deus está aqui!
E            A9
Vamos celebrar, Deus está aqui!
B9         A9    B9    E
No meio de nós! (Ele está presente aqui!)

[Segunda Parte]
E          A9         E
Quando estamos juntos, unidos a Ti
         A9    B9
Para elevar a nossa oração
         A9    B9
Um canto de alegria surge entre nós
         A9    E
Em adoração ao Teu eterno amor!',
  to_tsvector('portuguese', 'Vamos Celebrar (Todos Reunidos na Casa de Deus) ' || '')
),
(
  'no-teu-altar-pai-eterno-pe-robson',
  'No Teu Altar, Senhor',
  'Ir. Míria T. Kolling',
  'Ir. Míria T. Kolling',
  'G',
  74,
  '3/4',
  'Valsa Litúrgica de Ofertório',
  '↓  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Entrada',
  'Tempo Comum',
  'Sl 121',
  'liturgica',
  '[Intro] G  C  D7  G

[Refrão]
G         C         D7          G
No Teu altar, Senhor, coloco a minha vida em oração!
G         C         D7          G
No Teu altar, Senhor, coloco a minha vida em oração!

[Primeira Parte]
G          C           G
1. A alegria de Te amar e ser amado
Am         D7       G      A7    D7
Quero em Tuas mãos depositar!

[Refrão]
G         C         D7          G
No Teu altar, Senhor, coloco a minha vida em oração!

[Segunda Parte]
G          C          G
2. O desejo de ser bom e generoso
Am      D7       G     A7    D7
Faz-me viver com mais amor!

[Refrão]
G         C         D7          G
No Teu altar, Senhor, coloco a minha vida em oração!

[Terceira Parte]
G            C            G
3. Os amigos que me deste e que são Teus
Am       D7     G      A7    D7
Tudo entrego a Ti, Senhor!',
  to_tsvector('portuguese', 'No Teu Altar, Senhor ' || '')
),
(
  'passa-na-frente-maria-pe-rodrigo-natal',
  'Nossa Senhora do Caminho',
  'Padre Rodrigo Natal',
  'Padre Rodrigo Natal',
  'C',
  80,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Final',
  'Qualquer',
  'Lc 1, 45',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C    F         G7          C
Caminha conosco, ó Mãe do Senhor,
   Am    Dm         G7          C
Ensina teus filhos a viver no amor!

[Segunda Parte]
   Am           F         C
2. Onde houver dor e tristeza, levemos consolação,
   Dm           G7         C
Onde houver treva e discórdia, semeemos o perdão;
   F            G         Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm           G7         C
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   C    F         G7          C
Caminha conosco, ó Mãe do Senhor,
   Am    Dm         G7          C
Ensina teus filhos a viver no amor!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Nossa Senhora do Caminho ' || '')
),
(
  'doce-coracao-de-maria-irma-ines-de-jesus',
  'Doce Coração de Maria, Sede a Minha Salvação',
  'Irmã Inês de Jesus / Tradicional Mariano',
  'Irmã Inês de Jesus / Tradicional Mariano',
  'D',
  82,
  '3/4',
  'Valsa Mariana',
  '↓ ↑ ↓ ↑ ↓',
  true,
  true,
  true,
  3,
  'Final',
  'Qualquer',
  'Lc 2, 19.51',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D           G         D
Doce Coração de Maria, sede a minha salvação!
   Bm      Em         A7          D
Doce Coração de Maria, sede a minha salvação!

[Segunda Parte]
   Bm           G         D
2. Onde houver dor e tristeza, levemos consolação,
   Em           A7         D
Onde houver treva e discórdia, semeemos o perdão;
   G            A7         Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em           A7         D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D           G         D
Doce Coração de Maria, sede a minha salvação!
   Bm      Em         A7          D
Doce Coração de Maria, sede a minha salvação!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Doce Coração de Maria, Sede a Minha Salvação ' || '')
),
(
  'mais-que-vencedores-banda-romanos',
  'Em Cristo Somos Mais Que Vencedores (Romanos 8, 37)',
  'Banda Romanos',
  'Banda Romanos',
  'E',
  92,
  '4/4',
  'Rock Acústico',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Rm 8, 37',
  'liturgica',
  '[Intro] E  B  C#m  A

[Refrão]
   E           B         C#m
Em todas as coisas somos mais que vencedores,
   A      B7         E
Por Aquele que nos amou na Cruz!

[Segunda Parte]
   C#m          A         E
2. Onde houver dor e tristeza, levemos consolação,
   F#m          B7         E
Onde houver treva e discórdia, semeemos o perdão;
   A            B7         C#m
A bênção de Deus Trindade nos acompanhe no andar,
   F#m          B7         E
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   E           B         C#m
Em todas as coisas somos mais que vencedores,
   A      B7         E
Por Aquele que nos amou na Cruz!

[Final] E  A  B7  E',
  to_tsvector('portuguese', 'Em Cristo Somos Mais Que Vencedores (Romanos 8, 37) ' || '')
),
(
  'sao-miguel-arcanjo-defendei-nos-no-combate-arkanjos',
  'São Miguel Arcanjo, Defendei-nos no Combate',
  'Banda Arkanjos / Oração de Leão XIII',
  'Banda Arkanjos / Oração de Leão XIII',
  'Em',
  86,
  '4/4',
  'Hino a São Miguel',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Ap 12, 7-9; Dn 12, 1',
  'liturgica',
  '[Intro] Em  C  D  Em

[Refrão]
   Em      C         D           Em
São Miguel Arcanjo, defendei-nos no combate!
   C        D         B7          Em
Sede o nosso refúgio contra as ciladas do inimigo:
   Am    D         B7          Em
Quem como Deus? Ninguém é como Deus!

[Segunda Parte]
   D            G         Em
2. Onde houver dor e tristeza, levemos consolação,
   C            B7         Em
Onde houver treva e discórdia, semeemos o perdão;
   G            Am         D
A bênção de Deus Trindade nos acompanhe no andar,
   C            B7         Em
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   Em      C         D           Em
São Miguel Arcanjo, defendei-nos no combate!
   C        D         B7          Em
Sede o nosso refúgio contra as ciladas do inimigo:
   Am    D         B7          Em
Quem como Deus? Ninguém é como Deus!

[Final] Em  G  B7  Em',
  to_tsvector('portuguese', 'São Miguel Arcanjo, Defendei-nos no Combate ' || '')
),
(
  'a-cruz-sagrada-seja-a-minha-luz-ricardo-sa',
  'A Cruz Sagrada Seja a Minha Luz (Oração de São Bento)',
  'Ricardo Sá / Canção Nova',
  'Ricardo Sá / Canção Nova',
  'Em',
  82,
  '4/4',
  'Balada Sacra',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Quaresma',
  'Gl 6, 14',
  'liturgica',
  '[Intro] Em  Am  D  G  B7  Em

[Refrão]
   Em         Am
A Cruz Sagrada seja a minha luz,
   D     G         B7
Não seja o dragão o meu guia!
   Em         Am
Retira-te, satanás! Nunca me aconselhes coisas vãs!
   C         B7         Em
É mau o que tu me ofereces: bebe tu mesmo os teus venenos!

[Segunda Parte]
   D            G         Em
2. Onde houver dor e tristeza, levemos consolação,
   C            B7         Em
Onde houver treva e discórdia, semeemos o perdão;
   G            Am         D
A bênção de Deus Trindade nos acompanhe no andar,
   C            B7         Em
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   Em         Am
A Cruz Sagrada seja a minha luz,
   D     G         B7
Não seja o dragão o meu guia!
   Em         Am
Retira-te, satanás! Nunca me aconselhes coisas vãs!
   C         B7         Em
É mau o que tu me ofereces: bebe tu mesmo os teus venenos!

[Final] Em  G  B7  Em',
  to_tsvector('portuguese', 'A Cruz Sagrada Seja a Minha Luz (Oração de São Bento) ' || '')
),
(
  'senhor-em-tua-presenca-pe-wallison-rodrigues',
  'Em Tua Presença (Um Mendigo Sentado à Mesa de um Rei)',
  'Pe. Wallison Rodrigues / Pe. Delton Filho',
  'Pe. Wallison Rodrigues / Pe. Delton Filho',
  'G',
  70,
  '4/4',
  'Balada de Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  8,
  'Entrada',
  'Tempo Comum',
  'Sl 99, 2',
  'liturgica',
  '[Intro] G  D/F#  Em  C  D

[Primeira Parte]
G          D/F#
Em Tua presença eu me sinto
      Em         Bm
Um mendigo sentado à mesa de um rei
      C                  G/B
E sem ter como pagar tamanha refeição
      Am         D7
Só posso dar-Te eterna gratidão

G          D/F#
O cálice e a hóstia eram um
       Em         Bm
Meu desejo também era com eles ser um

[Refrão]
      C              D/G
Ser um só coração, meu Senhor!
      C                 D/G
O mesmo sangue nas veias, Senhor!
      C    D         G
Tua carne em minha carne, Senhor
      C       D         G
O Teu sangue em meu sangue, ó meu Salvador!',
  to_tsvector('portuguese', 'Em Tua Presença (Um Mendigo Sentado à Mesa de um Rei) ' || '')
),
(
  'cristo-luz-do-mundo-frei-telles-ramon',
  'Ó Cristo Luz, Cristo Jesus',
  'Frei Telles Ramon / Frei Décio Pacheco Bezerra',
  'Frei Telles Ramon / Frei Décio Pacheco Bezerra',
  'Cm',
  78,
  '4/4',
  'Litúrgico Quaresmal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  7,
  'Entrada',
  'Advento',
  'Jo 8, 12',
  'liturgica',
  '[Intro] Cm  Eb  Fm  Gm7  Cm

[Primeira Parte]
Cm        Eb       Cm
1. Ó Cristo Luz, Cristo Jesus,
     Fm    Ab
Com Tua cruz,
      Eb       Cm
Que é nossa cruz,
       Fm       Gm7
Caminhamos contigo
      Cm
Pra festa da Luz!

[Segunda Parte]
Cm        Eb       Cm
2. Ó Cristo Luz, Cristo Jesus,
     Fm    Ab
Com Tua cruz,
     Eb       Cm
Sinal de amor,
       Fm       Gm7
Revivemos Teus passos
        Cm
De entrega e de dor!

[Terceira Parte]
Cm        Eb       Cm
3. Ó Cristo Luz, Cristo Jesus,
     Fm    Ab
Com Tua cruz,
     Eb      Cm    Fm
Madeiro santo, vem, renova a Igreja
Gm         Cm
Que entoa seu canto!

[Quarta Parte]
Cm        Eb       Cm
4. Ó Cristo Luz, Cristo Jesus,
     Fm    Ab
Com Tua cruz,
     Eb       Cm    Fm
Que é nossa cruz. Tu és a estrada
   Gm          Cm
Que ao Pai nos conduz!

[Final]
Fm  Eb  Db  Gm  Cm
A---------------mém!',
  to_tsvector('portuguese', 'Ó Cristo Luz, Cristo Jesus ' || '')
),
(
  'bendito-o-que-vem-em-nome-do-senhor-pe-lucas',
  'Santo (Bendito o Que Vem em Nome do Senhor)',
  'Pe. Lucas de Paula Almeida, CM',
  'Pe. Lucas de Paula Almeida, CM',
  'D',
  96,
  '2/4',
  'Marcha Solene Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  5,
  'Entrada',
  'Advento',
  'Sl 117, 26',
  'liturgica',
  '[Intro] D  A  D

[Primeira Parte]
D         F#m
Santo, Santo, Santo,
Em         A7        D
Senhor Deus do Universo!
Bm         F#m
O céu e a terra proclamam
Em            A7       D
A vossa glória!

[Refrão]
G         D
Hosana, hosana!
G         D
Hosana, hosana!
G      Em     A7       D
Hosana nas alturas!

[Segunda Parte]
Bm       A         G    A7
Bendito o que vem em nome do Senhor!
G         D
Hosana, hosana!
G         D
Hosana, hosana!
G      Em     A7       D
Hosana nas alturas!',
  to_tsvector('portuguese', 'Santo (Bendito o Que Vem em Nome do Senhor) ' || '')
),
(
  'deus-conosco-emanuel-comunidade-emanuel',
  'Emmanuel (Hino Oficial da JMJ 2000 Roma)',
  'Marco Mammoli / Pe. Delton Filho / Versão CNBB',
  'Marco Mammoli / Pe. Delton Filho / Versão CNBB',
  'E',
  88,
  '4/4',
  'Hino Jovem Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  false,
  7,
  'Entrada',
  'Advento',
  'Is 7, 14; Mt 1, 23',
  'liturgica',
  '[Intro] E  B  C#m  A  B

[Primeira Parte]
E         B
Da mesma terra onde a vida começou
C#m         A
Nasceu a história que o mundo transformou
E         B
A Boa Nova que aos pobres proclamou
C#m         A           B
Que Deus conosco para sempre habitou!

[Refrão]
E         B       C#m       A
Siamo qui, sotto la stessa luce
E         B       C#m       A
Sotto la Tua croce, cantando ad una voce:
E            B          C#m          A
Emmanuel, Emmanuel, Emmanuel,
E            B          E
Emmanuel, Emmanuel!

[Segunda Parte]
E         B
A morte foi vencida na ressurreição
C#m         A
E a vida eterna brilha no meu coração
E         B
Jovens do mundo, sois sentinelas da manhã:
C#m        A           B
Levai a todos a esperança cristã!',
  to_tsvector('portuguese', 'Emmanuel (Hino Oficial da JMJ 2000 Roma) ' || '')
),
(
  'ser-como-maria-missao-maria-de-nazare',
  'Ser Como Maria no Meio do Mundo',
  'Comunidade Missão Maria de Nazaré',
  'Comunidade Missão Maria de Nazaré',
  'C',
  78,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Final',
  'Qualquer',
  'Lc 1, 38',
  'liturgica',
  '[Intro] C  G  Am  F

[Refrão]
   C         G         Am
Quero ser como Maria, guardar Tua Palavra no coração,
   F           G         C
E levar Jesus ao mundo em cada gesto de doação!

[Segunda Parte]
   Am           F         C
2. Onde houver dor e tristeza, levemos consolação,
   Dm           G7         C
Onde houver treva e discórdia, semeemos o perdão;
   F            G         Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm           G7         C
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   C         G         Am
Quero ser como Maria, guardar Tua Palavra no coração,
   F           G         C
E levar Jesus ao mundo em cada gesto de doação!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Ser Como Maria no Meio do Mundo ' || '')
),
(
  'alegria-de-servir-pe-delair-cuerva',
  'Que Alegria É o Teu Servir (Aroma da Flor)',
  'Movimento EJC (Encontro de Jovens com Cristo)',
  'Movimento EJC (Encontro de Jovens com Cristo)',
  'D',
  80,
  '4/4',
  'Balada EJC',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  false,
  6,
  'Entrada',
  'Tempo Comum',
  'Sl 99, 1-5',
  'liturgica',
  '[Intro] D  G7M  F#m  Bm  Em  A  D

[Primeira Parte]
D                 G7M
Pai, quanto tempo eu precisei de Você
F#m         Bm
Sem saber por onde caminhar
Em         A
Agora que encontrei Tua santa luz
Em        A           D
Quero a minha vida Te entregar!

[Refrão]
D              G7M
Que alegria é o Teu servir
F#m         Bm
E viver o Aroma da Flor!
Em         A
Tudo o que sou entrego aqui
Em         A         D
Consagrado ao Teu eterno amor!',
  to_tsvector('portuguese', 'Que Alegria É o Teu Servir (Aroma da Flor) ' || '')
),
(
  'maria-do-sim-pe-evaldo-cesar',
  'Maria do Sim, Ensina-nos a Dizer Sim',
  'Padre Evaldo César',
  'Padre Evaldo César',
  'D',
  80,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Final',
  'Advento',
  'Lc 1, 38',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D    G         A7          D
Maria do Sim, ensina-nos a escutar,
   Bm      Em         A7          D
E a fazer tudo aquilo que Jesus nos ordenar!

[Segunda Parte]
   Bm           G         D
2. Onde houver dor e tristeza, levemos consolação,
   Em           A7         D
Onde houver treva e discórdia, semeemos o perdão;
   G            A7         Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em           A7         D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D    G         A7          D
Maria do Sim, ensina-nos a escutar,
   Bm      Em         A7          D
E a fazer tudo aquilo que Jesus nos ordenar!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Maria do Sim, Ensina-nos a Dizer Sim ' || '')
),
(
  'hino-campanha-da-fraternidade-2025-ecologia-integral',
  'Deus Viu Que Tudo Era Muito Bom (Hino da Campanha da Fraternidade 2025)',
  'CNBB - Campanha da Fraternidade 2025 (Fraternidade e Ecologia Integral)',
  'CNBB - Campanha da Fraternidade 2025 (Fraternidade e Ecologia Integral)',
  'G',
  82,
  '4/4',
  'Hino Oficial da CF 2025',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Quaresma',
  'Gn 1, 31; Sl 103',
  'liturgica',
  '​[Intro] D  D#°  Em  F°

​        D/F#  B/D#  Em

​        A  D

​[Primeira Parte]


​Dm          A7/C#      Dm
​   O Cristo-Deus se fez humano nesta terra

​          Gm7         C/E       F
​E às criaturas deu valor e atenção

​         Em7(5-)      A7            Bb  F/A
​A vida plena, que no mundo já se espera

​          Gm7                   A7(4)  A7
​Ganha sentido com a nossa redenção

​[Refrão]


​         D        D#°           Em
​Ao entregar o paraíso ao ser humano

​             A7        A/C#        D
​Deus contemplou sua beleza e seus dons

​         C6         D7/F#      G  G#°
​Louvado seja nosso Pai, o Criador

​              D/A       A7         D
​Deus viu que tudo, tudo era muito bom!

​[Segunda Parte]


​Dm          A7/C#     Dm
​   No universo tudo está interligado

​        Gm7            C/E        F
​Nele vivemos e, com todos, “somos um”

​          Em7(5-)        A7            Bb   F/A
​Nesta quaresma, à conversão, somos chamados

​          Gm7          A7(4)  A7
​Cuidemos todos desta casa, que é comum!

​[Refrão]


​         D        D#°           Em
​Ao entregar o paraíso ao ser humano

​             A7        A/C#        D
​Deus contemplou sua beleza e seus dons

​         C6         D7/F#      G  G#°
​Louvado seja nosso Pai, o Criador

​              D/A       A7         D
​Deus viu que tudo, tudo era muito bom!

​[Terceira Parte]


​Dm          A7/C#       Dm
​   Há muito tempo, o louvor das criaturas

​         Gm7       C/E         F
​Já se ouvia em um canto universal

​         Em7(5-)         A7          Bb  F/A
​O seu autor, nova expressão ele inaugura

​          Gm7                  A7(4)  A7
​“Fraternidade e ecologia integral”

​[Refrão]


​         D        D#°           Em
​Ao entregar o paraíso ao ser humano

​             A7        A/C#        D
​Deus contemplou sua beleza e seus dons

​         C6         D7/F#      G  G#°
​Louvado seja nosso Pai, o Criador

​              D/A       A7         D
​Deus viu que tudo, tudo era muito bom!


​[Interlúdio] D  D#°  Em  F°

​             D/F#  B/D#  Em

​             A  D

​[Quarta Parte]


​Dm          A7/C#         Dm
​   O ser humano transformou a realidade

​              Gm7         C/E         F
​Causou maus-tratos, destruindo a natureza

​       Em7(5-)      A7            Bb  F/A
​Abandonou a lei de Deus e sua verdade

​          Gm7          A7(4)  A7
​Desrespeitando a criação e sua beleza

​[Refrão]


​         D        D#°           Em
​Ao entregar o paraíso ao ser humano

​             A7        A/C#        D
​Deus contemplou sua beleza e seus dons

​         C6         D7/F#      G  G#°
​Louvado seja nosso Pai, o Criador

​              D/A       A7         D
​Deus viu que tudo, tudo era muito bom!

​[Quinta Parte]


​Dm          A7/C#
​    De toda a terra em nossas mãos

​          Dm
​Eis o cuidado

​             Gm7       C/E         F
​Nós somos todos responsáveis pela vida

​            Em7(5-)   A7           Bb   F/A
​Enquanto aqui peregrinamos na esperança

​       Gm7          A7(4)  A7
​A criação em nova páscoa é renascida

​[Refrão]


​         D        D#°           Em
​Ao entregar o paraíso ao ser humano

​             A7        A/C#        D
​Deus contemplou sua beleza e seus dons

​         C6         D7/F#      G  G#°
​Louvado seja nosso Pai, o Criador

​              D/A       A7         D
​Deus viu que tudo, tudo era muito bom!


​         D        D#°           Em
​Ao entregar o paraíso ao ser humano

​             A7        A/C#        D
​Deus contemplou sua beleza e seus dons

​         C6         D7/F#      G  G#°
​Louvado seja nosso Pai, o Criador

​              D/A       A7         D   Bb  C  D
​Deus viu que tudo, tudo era muito bom!',
  to_tsvector('portuguese', 'Deus Viu Que Tudo Era Muito Bom (Hino da Campanha da Fraternidade 2025) ' || '')
),
(
  'catequese-caminho-para-o-discipulado',
  'Catequese, Caminho Para o Discipulado',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'G',
  96,
  '4/4',
  'Marcha / Hino Catequético',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Entrada',
  'Qualquer',
  'Lc 24, 13-35; Mt 28, 19-20',
  'liturgica',
  '[Intro] G  D/F#  Em7  C9  Am7  D7  G

[Primeira Parte]
   G          D/F#
1. Como os discípulos no caminho de Emaús,
   Em7         Bm7
Sentimos arder o nosso coração,
   C9              G/B
Quando escutamos a Palavra de Jesus,
   Am7     D4      D7
E O reconhecemos ao partir o Pão!

[Refrão]
          G                 D/F#
Catequese, caminho para o discipulado,
        Em7         Bm7
Encontro vivo com Cristo Ressuscitado!
       C9                   G/B
Na comunidade aprendemos a viver,
       Am7        D7        G
Na fé, na esperança e no amor crescer!

[Segunda Parte]
   G          D/F#
2. Iniciação à vida cristã em missão,
   Em7         Bm7
Fonte batismal, Crisma e Altar,
   C9              G/B
Família e paróquia em santa comunhão,
   Am7         D4      D7
Formando discípulos para o mundo transformar!

[Final]
       C9                   G/B
Na comunidade aprendemos a viver,
       Am7        D7        G9
Catequese é a fé florescer!',
  to_tsvector('portuguese', 'Catequese, Caminho Para o Discipulado ' || '')
),
(
  'catequese-deixa-a-luz-do-ceu-entrar',
  'Deixa a Luz do Céu Entrar',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'D',
  100,
  '4/4',
  'Marcha / Infantil',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Qualquer',
  'Jo 8, 12; Ap 3, 20',
  'liturgica',
  '[Intro] D  A7  D  G  A7  D

[Primeira Parte]
   D         A7
1. Tu anseias, eu bem sei, por salvação,
         D
Tens desejo de banir a escuridão;
         G
Abre, pois, de par em par teu coração,
        D          A7         D    D7
E deixa a luz do céu entrar!

[Refrão]
          G         D
Deixa a luz do céu entrar,
          A7         D    D7
Deixa a luz do céu entrar!
          G         D    Bm7
Abre bem as portas do teu coração,
        Em7        A7         D
E deixa a luz do céu entrar!

[Segunda Parte]
   D         A7
2. Cristo, a luz do céu, em ti quer habitar,
         D
Para as trevas do pecado dissipar;
         G
Teu caminho e coração iluminar,
        D          A7         D    D7
E deixa a luz do céu entrar!

[Final]
          G         D    Bm7
Abre bem as portas do teu coração,
        Em7        A7         D9
E deixa a luz do céu entrar!',
  to_tsvector('portuguese', 'Deixa a Luz do Céu Entrar ' || '')
),
(
  'catequese-aperte-a-minha-mao',
  'Aperte a Minha Mão (A Paz do Senhor)',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'G',
  104,
  '4/4',
  'Pop Infantil / Acolhida',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Qualquer',
  'Sl 133, 1; Rm 15, 7',
  'liturgica',
  '[Intro] G  D7  G  C  D7  G

[Primeira Parte]
   G         D7
1. Aperte a minha mão, irmão, quero te dar a paz,
         G
Do meu Senhor que nos uniu e tão feliz nos faz!
   G7         C
Que alegria estar aqui na casa do Senhor,
        G          D7         G
Cantando juntos este hino de amor!

[Refrão]
          C         G
Aperte a minha mão, irmão,
          D7         G    G7
Com um sorriso no coração!
          C         G    Em7
Somos família de Jesus Salvador,
        Am7        D7         G
Vivendo unidos na paz do Senhor!

[Segunda Parte]
   G         D7
2. Olhe pro seu irmão ao lado e diga com fervor:
         G
Que Deus te abençoe sempre com o Seu amor!
   G7         C
Na mesa da Palavra e na fração do Pão,
        G          D7         G
Crescemos como Igreja em comunhão!

[Final]
          C         G    Em7
Somos família de Jesus Salvador,
        Am7        D7         G9
Vivendo unidos na paz do Senhor!',
  to_tsvector('portuguese', 'Aperte a Minha Mão (A Paz do Senhor) ' || '')
),
(
  'catequese-por-dentro-fora-alto-e-baixo',
  'Por Dentro, Fora, Alto e Baixo Sempre Sou Feliz',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'G',
  120,
  '4/4',
  'Infantil Animado',
  '↓  ↑ ↓ ↑  ↓ ↑',
  true,
  true,
  true,
  3,
  'Final',
  'Qualquer',
  '1Cor 6, 19; Fl 4, 4',
  'liturgica',
  '[Intro] G  D7  G  C  D7  G

[Primeira Parte]
   G         D7
1. Por dentro, fora, alto e baixo sempre sou feliz!
         G
Por dentro, fora, alto e baixo sempre sou feliz!
   G7         C
Aqui Jesus entrou, meu coração limpou,
        G          D7         G
Por dentro, fora, alto e baixo sempre sou feliz!

[Refrão]
          C         G
Sempre sou feliz com Jesus no coração,
          D7         G    G7
Caminhando junto com o meu irmão!
          C         G    Em7
Por dentro, fora, alto e baixo vou cantar,
        Am7        D7         G
A alegria de a Deus amar!

[Segunda Parte]
   G         D7
2. Na minha casa, na escola e na igreja eu vou,
         G
Testemunhar a todo mundo o amor do Salvador!
   G7         C
Guardando a Palavra que na catequese ouvi,
        G          D7         G
Por dentro, fora, alto e baixo sempre sou feliz!

[Final]
          C         G    Em7
Aqui Jesus entrou, meu coração limpou,
        Am7        D7         G9
Por dentro, fora, alto e baixo sempre sou feliz!',
  to_tsvector('portuguese', 'Por Dentro, Fora, Alto e Baixo Sempre Sou Feliz ' || '')
),
(
  'catequese-crianca-feliz-jesus-ama',
  'Criança Feliz (Jesus Ama as Crianças)',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'G',
  108,
  '4/4',
  'Marcha Festiva Infantil',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Qualquer',
  'Mt 19, 14; Mc 10, 13-16',
  'liturgica',
  '[Intro] G  C  D7  G  D7

[Primeira Parte]
   G         Em7
1. Deixai vir a Mim as criancinhas,
   C         D7
Assim falou o Mestre Jesus!
   G         Em7
Porque delas é o Reino dos Céus,
   Am7        D7         G     G7
Criança feliz caminha na luz!

[Refrão]
          C         D7
Sou criança feliz porque Jesus me ama,
        Bm7         Em7
Pelo meu nome na Igreja me chama!
       Am7         D7
Com Papai e Mamãe venho ao altar,
       C          D7        G
Para o nome do Senhor louvar!

[Segunda Parte]
   G         Em7
2. Jesus abraçou e abençoou os pequenos,
   C         D7
Mostrando a pureza do coração.
   G         Em7
Na catequese aprendo a rezar e a servir,
   Am7        D7         G     G7
Levando alegria a cada irmão!

[Final]
       Am7    D7        Em7  C
Deixai vir a Mim as criancinhas,
       Am7        D7        G9
Criança feliz com Jesus e Maria!',
  to_tsvector('portuguese', 'Criança Feliz (Jesus Ama as Crianças) ' || '')
),
(
  'pe-joaozinho-vento-do-espirito',
  'Vento do Espírito',
  'Padre Joãozinho, scj',
  'Padre Joãozinho, scj',
  'Am',
  110,
  '4/4',
  'Pop Litúrgico / Baião Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Páscoa',
  'At 2, 1-11; Jo 20, 22',
  'liturgica',
  '[Intro] Am  Dm  G  C  E7  Am

[Refrão]
Am         Dm
Sopra, Vento do Espírito!
G         C       E7
Vem renovar a face da terra!
Am         Dm
Acende em nós o fogo do amor
E7         Am
Que toda tristeza e medo destrói e encerra!

[Primeira Parte]
Am         Dm
1. Como no dia de Pentecostes
G         C       E7
Reunidos com Maria em oração
Am         Dm
Desce sobre a Tua Igreja santa
E7         Am
E faz de nós um só coração!

[Refrão]
Am         Dm
Sopra, Vento do Espírito!
G         C       E7
Vem renovar a face da terra!
Am         Dm
Acende em nós o fogo do amor
E7         Am
Que toda tristeza e medo destrói e encerra!

[Segunda Parte]
Am         Dm
2. Dá-nos sabedoria e fortaleza
G         C       E7
Ciência, conselho e temor de Deus
Am         Dm
Piedade e entendimento verdadeiro
E7         Am
Para anunciar a paz aos filhos Teus!

[Final]
Dm         E7         Am   F
Vem, Espírito Santo de Deus!
Dm         E7         Am
Vem renovar o coração dos filhos Teus!',
  to_tsvector('portuguese', 'Vento do Espírito ' || '')
),
(
  'ir-miria-kolling-quero-ouvir-teu-apelo',
  'Quero Ouvir Teu Apelo',
  'Irmã Miria T. Kolling',
  'Irmã Miria T. Kolling',
  'G',
  84,
  '4/4',
  'Canção Vocacional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Final',
  'Tempo Comum',
  'Is 6, 8; Mc 1, 16-20',
  'liturgica',
  '[Intro] G  C  D7  G  Em  Am  D7  G

[Primeira Parte]
G         Bm
1. Quero ouvir Teu apelo, Senhor,
C         G
Ao Teu chamado de amor responder!
C         G        Em
Na alegria Te quero servir
Am            D7          G      G7
E anunciar o Teu Reino de amor!

[Refrão]
   C      D7         G         Em
E pelo mundo eu vou, cantando o Teu amor,
   Am      D7         G         G7
Pois disponível estou para servir-Te, Senhor!
   C      D7         G         Em
E pelo mundo eu vou, cantando o Teu amor,
   Am         D7         G
Pois disponível estou para servir-Te, Senhor!

[Segunda Parte]
G         Bm
2. Dia a dia Tua graça me dás,
C         G
Nela se apoia o meu caminhar!
C         G        Em
Se estás a meu lado, Senhor,
Am            D7          G      G7
O que, então, poderei eu temer?

[Refrão]
   C      D7         G         Em
E pelo mundo eu vou, cantando o Teu amor,
   Am      D7         G         G7
Pois disponível estou para servir-Te, Senhor!
   C      D7         G         Em
E pelo mundo eu vou, cantando o Teu amor,
   Am         D7         G
Pois disponível estou para servir-Te, Senhor!

[Final]
   Am    D7         G   C   G
Pois disponível estou para servir-Te, Senhor!',
  to_tsvector('portuguese', 'Quero Ouvir Teu Apelo ' || '')
),
(
  'ze-vicente-e-missao-de-todos-nos',
  'É Missão de Todos Nós',
  'Zé Vicente',
  'Zé Vicente',
  'G',
  98,
  '4/4',
  'Baião / Marcha Missionária',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Gn 1, 28; Mc 16, 15',
  'liturgica',
  '[Intro] G  C  D7  G  D7

[Primeira Parte]
G         Bm
1. O Deus que me criou, me quis, me consagrou
C         D7         G       G7
Para anunciar o Seu amor!
C          G          Em
Eu sou como a chuva em terra seca,
Am            D7         G          G7
Pra saciar, fazer brotar eu vivo pra amar e pra servir!
C          G          Em
Eu sou como a chuva em terra seca,
Am            D7         G
Pra saciar, fazer brotar eu vivo pra amar e pra servir!

[Refrão]
   D7         G
É missão de todos nós, Deus chama, eu quero ouvir a Sua voz!
   D7         G           G7
É missão de todos nós, Deus chama, eu quero ouvir a Sua voz!
   C            G          Em
Proclamar a libertação, construir a nova criação,
   Am         D7         G
É missão de todos nós!

[Segunda Parte]
G         Bm
2. Em casa e no trabalho, na rua e na igreja
C         D7         G       G7
Eu vou testemunhar o meu Senhor!
C        G          Em
Semeando a paz e a esperança,
Am            D7         G          G7
Onde houver dor e solidão eu levo a alegria do irmão!

[Refrão]
   D7         G
É missão de todos nós, Deus chama, eu quero ouvir a Sua voz!
   D7         G           G7
É missão de todos nós, Deus chama, eu quero ouvir a Sua voz!
   C            G          Em
Proclamar a libertação, construir a nova criação,
   Am         D7         G
É missão de todos nós!

[Final]
   C          D7         G   Em
Construir a nova criação:
   Am         D7         G
É missão de todos nós!',
  to_tsvector('portuguese', 'É Missão de Todos Nós ' || '')
),
(
  'ze-vicente-de-todos-os-cantos-viemos',
  'De Todos os Cantos Viemos',
  'Zé Vicente',
  'Zé Vicente',
  'C',
  104,
  '4/4',
  'Baião / Marcha de Romaria',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Is 2, 2-5; Sl 121 (122)',
  'liturgica',
  '[Intro] C  F  G7  C  G7

[Refrão]
   C         F
De todos os cantos viemos, para louvar o Senhor,
   G7          C         C7
Pai de eterna bondade, Deus de infinito amor!
   F          C          Am
Todo o povo reunido num só canto de louvor,
   Dm         G7         C
Louvado seja o Senhor!

[Primeira Parte]
   C         G7
1. Trazemos a nossa lida, o suor de cada irmão,
   F          G7         C
A esperança florida que brota no coração!
   C7         F
Na mesa da Eucaristia o Reino já começou,
   Dm         G7         C
Louvado seja o Senhor!

[Refrão]
   C         F
De todos os cantos viemos, para louvar o Senhor,
   G7          C         C7
Pai de eterna bondade, Deus de infinito amor!
   F          C          Am
Todo o povo reunido num só canto de louvor,
   Dm         G7         C
Louvado seja o Senhor!

[Segunda Parte]
   C         G7
2. Mulheres, homens, crianças, jovens e anciãos na fé,
   F          G7         C
Cantando a nova aliança, Igreja viva e de pé!
   C7         F
O Espírito nos anima na força do Seu amor,
   Dm         G7         C
Louvado seja o Senhor!

[Final]
   F          C          Am
Todo o povo reunido num só canto de louvor,
   Dm         G7         C
Louvado seja o Senhor!',
  to_tsvector('portuguese', 'De Todos os Cantos Viemos ' || '')
),
(
  'ze-vicente-agua-sagrada',
  'Água Sagrada',
  'Zé Vicente',
  'Zé Vicente',
  'E',
  88,
  '4/4',
  'Toada Batismal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Páscoa',
  'Ez 36, 25-26; Jo 4, 14',
  'liturgica',
  '[Intro] E  A  B7  E  B7

[Refrão]
   E         A
Água sagrada, fonte da vida,
   B7      E          E7
Lava este povo que quer renascer!
   A      E          C#m
Água bendita que traz alegria,
   F#m        B7         E
Faz a semente do Reino crescer!

[Primeira Parte]
   E         B7
1. Desde o princípio pairava o Espírito
   A          B7         E
Sobre as águas da criação!
   E7         A
No Rio Jordão foi Jesus batizado,
   F#m        B7         E
Abrindo os céus à nossa salvação!

[Refrão]
   E         A
Água sagrada, fonte da vida,
   B7      E          E7
Lava este povo que quer renascer!
   A      E          C#m
Água bendita que traz alegria,
   F#m        B7         E
Faz a semente do Reino crescer!

[Segunda Parte]
   E         B7
2. Quem desta água beber com fé viva
   A          B7         E
Nunca mais sede no peito terá!
   E7         A
Pois do seu íntimo jorram nascentes
   F#m        B7         E
Para a vida eterna que Deus nos dá!

[Final]
   A      E          C#m
Água bendita que traz alegria,
   F#m        B7         E
Faz a semente do Reino crescer!',
  to_tsvector('portuguese', 'Água Sagrada ' || '')
),
(
  'ze-vicente-baiao-das-comunidades',
  'Baião das Comunidades',
  'Zé Vicente',
  'Zé Vicente',
  'A',
  112,
  '4/4',
  'Baião Nordestino',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'At 2, 42-47; Sl 132 (133)',
  'liturgica',
  '[Intro] A  D  E7  A  E7

[Refrão]
   A            E7
Somos gente nova vivendo a união,
   D      E7         A         A7
Somos povo semente de uma nova nação, ê, ê!
   D      A         F#m
Somos gente nova vivendo o amor,
   Bm        E7         A
Somos comunidade, povo do Senhor, ê, ê!

[Primeira Parte]
   A         E7
1. Vou convidar os meus irmãos trabalhadores,
   D            E7         A
Operários, lavradores, biscateiros e outros mais!
   A7         D
E juntos vamos celebrar a confiança,
   Bm         E7         A
Nossa luta na esperança de ter terra, pão e paz, ê, ê!

[Refrão]
   A            E7
Somos gente nova vivendo a união,
   D      E7         A         A7
Somos povo semente de uma nova nação, ê, ê!
   D      A         F#m
Somos gente nova vivendo o amor,
   Bm        E7         A
Somos comunidade, povo do Senhor, ê, ê!

[Segunda Parte]
   A         E7
2. Vamos chamar os jovens, mulheres e crianças,
   D            E7         A
Construindo a aliança que o Evangelho nos propôs!
   A7         D
Partindo o pão e escutando a Palavra,
   Bm         E7         A
Nossa fé jamais se acaba, pois Jesus está entre nós, ê, ê!

[Final]
   D      A         F#m
Somos gente nova vivendo o amor,
   Bm        E7         A
Somos comunidade, povo do Senhor, ê, ê!',
  to_tsvector('portuguese', 'Baião das Comunidades ' || '')
),
(
  'ziza-fernandes-alma-missionaria',
  'Alma Missionária (Senhor, Toma Minha Vida Nova)',
  'Ziza Fernandes',
  'Ziza Fernandes',
  'C',
  82,
  '4/4',
  'Balada Missionária',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Final',
  'Tempo Comum',
  'Is 6, 8; Rm 10, 14-15',
  'liturgica',
  '[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C              G/B
Senhor, toma minha vida nova
Am         Em
Antes que a espera desgaste anos em mim
F              C/E
Estou disposto ao que queiras,
Dm         G7
Não importa o que seja, Tu chamas-me a servir!

[Refrão]
   C              G/B
Leva-me aonde os homens necessitem Tua Palavra,
   Am         Em
Necessitem de força de viver!
   F           C/E         Am
Onde falte a esperança, onde tudo seja triste
   Dm      G7          C
Simplesmente por não saber de Ti!

[Segunda Parte]
C              G/B
Te dou meu coração sincero
Am         Em
Para gritar sem medo: formoso é Teu amor!
F              C/E
Senhor, tenho alma missionária,
Dm         G7
Conduze-me à terra que tenha sede de Ti!

[Refrão]
   C              G/B
Leva-me aonde os homens necessitem Tua Palavra,
   Am         Em
Necessitem de força de viver!
   F           C/E         Am
Onde falte a esperança, onde tudo seja triste
   Dm      G7          C
Simplesmente por não saber de Ti!

[Final]
   F    G7          Am    F
Assim, em marcha irei cantando,
   Dm        G7          C
Por povos pregando Tua grandeza, Senhor!',
  to_tsvector('portuguese', 'Alma Missionária (Senhor, Toma Minha Vida Nova) ' || '')
),
(
  'ziza-fernandes-celebra-a-vida',
  'Celebra a Vida',
  'Ziza Fernandes',
  'Ziza Fernandes',
  'A',
  112,
  '4/4',
  'Pop Acústico Festivo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  5,
  'Entrada',
  'Páscoa',
  'Sl 117 (118), 24; Jo 10, 10',
  'liturgica',
  '[Intro] A  E/G#  F#m  D  E7  A

[Primeira Parte]
A          E/G#
Acorda, olha o dia que o Senhor já fez brilhar
F#m         C#m
A graça se renova em cada passo do andar
D          A/C#
Deixa a tristeza fora, abre a janela à luz
Bm         E7
Pois a vida inteira é dom das mãos de Jesus!

[Refrão]
   A          E/G#
Celebra a vida, canta um canto de louvor!
   F#m         D
Bendize ao Pai que nos criou por Seu amor!
   A          E/G#         F#m
Em cada instante Ele nos chama a renascer,
   Bm         E7          A
Celebra a vida que Deus deu a você!

[Segunda Parte]
A          E/G#
Mesmo se houver espinhos pelo chão a caminhar
F#m         C#m
O perfume da esperança não deixará de exalar
D          A/C#
Com os irmãos unidos ao redor do mesmo altar
Bm         E7
A festa da alegria vamos juntos celebrar!

[Refrão]
   A          E/G#
Celebra a vida, canta um canto de louvor!
   F#m         D
Bendize ao Pai que nos criou por Seu amor!
   A          E/G#         F#m
Em cada instante Ele nos chama a renascer,
   Bm         E7          A
Celebra a vida que Deus deu a você!

[Final]
   D          E7          F#m   D
Em cada instante Ele nos chama a renascer,
   Bm         E7          A
Celebra a vida no Senhor!',
  to_tsvector('portuguese', 'Celebra a Vida ' || '')
),
(
  'eugenio-jorge-eis-que-faco-novas',
  'Eis Que Faço Novas Todas as Coisas',
  'Eugênio Jorge',
  'Eugênio Jorge',
  'D',
  104,
  '4/4',
  'Marcha Pascal / Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Entrada',
  'Páscoa',
  'Ap 21, 5; 2Cor 5, 17',
  'liturgica',
  '[Intro] D  G  A7  D  G  A7

[Refrão]
   D         G
Eis que faço novas todas as coisas,
         D
Que faço novas todas as coisas,
         A7         D     A7
Que faço novas todas as coisas!

[Primeira Parte]
   D         G
1. É vida que brota da vida, é fruto que cresce do amor,
   D         A7
É vida que vence a morte, é vida que vem do Senhor!
   D         G
 É vida que brota da vida, é fruto que cresce do amor,
   D         A7         D
É vida que vence a morte, é vida que vem do Senhor!

[Refrão]
   D         G
Eis que faço novas todas as coisas,
         D
Que faço novas todas as coisas,
         A7         D     A7
Que faço novas todas as coisas!

[Segunda Parte]
   D         G
2. Deixei o sepulcro vazio, a morte não me segurou,
   D         A7
A pedra que então me prendia no terceiro dia rolou!
   D         G
Deixei o sepulcro vazio, a morte não me segurou,
   D         A7         D
A pedra que então me prendia no terceiro dia rolou!

   D         G
3. Eu hoje lhe dou vida nova, renovo em ti o amor,
   D         A7
Lhe dou uma nova esperança, tudo o que era velho passou!

[Final]
   G    A7         D   Bm
Tudo o que era velho já passou:
   Em      A7         D
Eis que faço novas todas as coisas!',
  to_tsvector('portuguese', 'Eis Que Faço Novas Todas as Coisas ' || '')
),
(
  'sabes-senhor-o-que-temos',
  'Sabes, Senhor, o que Temos É Tão Pouco pra Dar',
  'Pe. Lindberg Pires',
  'Pe. Lindberg Pires',
  'D',
  70,
  '6/8',
  'Balada 6/8 Suave',
  '↓  ↑ ↓ ↑  ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Mc 12, 42-44; Jo 6, 9',
  'liturgica',
  '[Intro] D  Em  A7  D  A7

[Refrão]
    D      Em 
Sabes, Senhor, 
    A7         D    A7
O que temos é tão pouco pra dar.
    D      G      A7
Mas este pouco, nós queremos
    D
Com os irmãos compartilhar.

[Estrofes]
    G      Em       A7        F#m
1. Queremos nesta hora, diante dos irmãos,
    B7     Em       A7        D    A7
Comprometer a vida, buscando a união.

[Refrão]

    G      Em       A7        F#m
2. Sabemos que é difícil, os bens compartilhar,
    Bm     Em       A7        D    A7
Mas com a tua graça, Senhor, queremos dar.

[Refrão]

    G      Em       A7        F#m
3. Olhando o teu exemplo, Senhor, vamos seguir,
    Bm     Em       A7        D    A7
Fazendo o bem a todos, sem nada exigir.

[Refrão Final]
    D      Em 
Sabes, Senhor, 
    A7         D    A7
O que temos é tão pouco pra dar.
    D      G      A7
Mas este pouco, nós queremos
    D
Com os irmãos compartilhar.',
  to_tsvector('portuguese', 'Sabes, Senhor, o que Temos É Tão Pouco pra Dar ' || '')
),
(
  'venho-senhor-minha-vida-oferecer',
  'Venho, Senhor, Minha Vida Oferecer',
  'Repertório Litúrgico Popular',
  'Repertório Litúrgico Popular',
  'G',
  68,
  '4/4',
  'Balada Lenta',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Ofertório',
  'Tempo Comum',
  'Rm 12, 1',
  'liturgica',
  '[Intro] G  D  Em  C  D  G

G         D          Em         Bm
Venho, Senhor, minha vida oferecer
C         G          Am         D
Como oferta de amor e sacrifício:
G         D          Em         Bm
Quero minha vida a Ti entregar
C         D          G     G7
Como oferta viva em teu altar!

[Refrão]
C        D          G      Em
Pois pra te adorar foi que eu nasci,
C        D          G      G7
Cumpre em mim o teu querer!
C        D          G      Em
Faça o que está em teu coração,
C        D         G
E que a cada dia eu queira mais e mais
Am       D          G
Estar ao teu lado, Senhor!',
  to_tsvector('portuguese', 'Venho, Senhor, Minha Vida Oferecer ' || '')
),
(
  'meu-coracao-e-para-ti-senhor',
  'Meu Coração É para Ti, Senhor (Pão e Vinho)',
  'Tradicional Litúrgico',
  'Tradicional Litúrgico',
  'E',
  74,
  '4/4',
  'Balada Simples',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Sl 115',
  'liturgica',
  '[Intro] E  B  C#m  A  B  E

[Refrão]
E         B            C#m
Meu coração é para Ti, Senhor!
A         B            E
Meu coração é para Ti, Senhor!
E         B            C#m
Meu coração é para Ti, Senhor!
A         B            E
Meu coração é para Ti!

[Estrofes]
E         B            C#m
1. Porque Tu me deste a vida,
A         B            E
Porque Tu me deste o existir!
E         B            C#m
Porque Tu me deste o carinho,
A         B            E
Me deste o amor!

[Refrão]

E         B            C#m
2. Pão e vinho são pra Ti, Senhor!
A         B            E
Pão e vinho são pra Ti, Senhor!
E         B            C#m
Frutos do nosso suor no altar,
A         B            E
Dons do Teu amor!

[Refrão]

E         B            C#m
3. Nossas vidas são pra Ti, Senhor!
A         B            E
Nossas vidas são pra Ti, Senhor!
E         B            C#m
Nossas dores e nossa alegria,
A         B            E
Tudo para Ti!

[Refrão]

E         B            C#m
4. Esta prece é para Ti, Senhor!
A         B            E
Esta prece é para Ti, Senhor!
E         B            C#m
Que a Tua Igreja unida celebre
A         B            E
O eterno louvor!',
  to_tsvector('portuguese', 'Meu Coração É para Ti, Senhor (Pão e Vinho) ' || '')
),
(
  'bendito-sejais-senhor-deus-do-universo',
  'Bendito Sejais, Senhor Deus do Universo (Bendito e Louvado)',
  'Missal Romano / Fórmula Litúrgica',
  'Missal Romano / Fórmula Litúrgica',
  'Am',
  76,
  '4/4',
  'Toada Litúrgica',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Qualquer',
  'Br 2; Sl 103',
  'liturgica',
  '[Intro] Am  Dm  E7  Am

Am         Dm
1. Bendito sejais, Senhor Deus do universo,
G         C          E7
Pelo pão que recebemos de vossa bondade:
Am         Dm
Fruto da terra e do trabalho humano,
E7         Am
Que agora vos apresentamos, e para nós se vai tornar
Dm          E7       Am
O Pão da Vida!

[Refrão]
Dm          G        C        Am
Bendito seja Deus para sempre!
Dm          E7       Am
Bendito seja Deus para sempre!

Am         Dm
2. Bendito sejais, Senhor Deus do universo,
G         C          E7
Pelo vinho que recebemos de vossa bondade:
Am         Dm
Fruto da videira e do trabalho humano,
E7         Am
Que agora vos apresentamos, e para nós se vai tornar
Dm          E7       Am
O Vinho da Salvação!',
  to_tsvector('portuguese', 'Bendito Sejais, Senhor Deus do Universo (Bendito e Louvado) ' || '')
),
(
  'o-pao-da-vida-a-comunhao',
  'O Pão da Vida, a Comunhão',
  'Pe. José Weber',
  'Pe. José Weber',
  'D',
  76,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  false,
  6,
  'Comunhão',
  'Tempo Comum',
  'Jo 6, 35; 1Cor 10, 16-17',
  'liturgica',
  '[Intro] D  Em  A7  D

[Refrão]
    D       Em    A7    D
O pão da vida, a comunhão
         Em    A7    D
Nos une a Cristo e aos irmãos
    G       D
E nos ensina a abrir as mãos para
    Em    A7    D    D7
partir, repartir o pão
    G       D
E nos ensina a abrir as mãos para
    Em    A7    D
partir, repartir o pão

[Estrofes]
    F#7     Bm    B7
1. Lá no deserto a multidão com fome
    Em
segue o bom pastor
    Bm          F#
Com sede busca a nova palavra: Jesus
    G    A    Bm
tem pena e reparte o pão

    F#7     Bm    B7
2. Na páscoa nova da nova lei, quando
    Em
amou-nos até o fim
    Bm          F#    G
Partiu o pão disse: "isto é meu
    A    Bm    A
corpo por vós doado: tomai, comei!" ',
  to_tsvector('portuguese', 'O Pão da Vida, a Comunhão ' || '')
),
(
  'vejam-eu-andei-pelas-vilas',
  'Vejam, Eu Andei Pelas Vilas',
  'Frei Fabreti',
  'Frei Fabreti',
  'D',
  74,
  '4/4',
  'Balada Eucarística',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  'Lc 22, 19; Mt 25, 35',
  'liturgica',
  '[Intro] D  Bm  F#  Bm  Em  A7  D

[Primeira Parte]
D
1. Vejam: eu andei pelas vilas,
Bm
Apontei as saídas como o Pai me pediu.
F#         Bm
Portas, eu cheguei para abri-las,
Em         A7          D
Eu curei as feridas como nunca se viu!

[Refrão]
Am   G        A         F#m    Bm
Por onde formos também nós que brilhe a tua luz!
Em        A          G       D
Fala, Senhor, na nossa voz, em nossa vida!
D/F#         G    A         F#m    Bm
Nosso caminho então conduz, queremos ser assim:
Em         A           D     A
Que o Pão da Vida nos revigore no nosso "SIM"!

[Segunda Parte]
D
2. Vejam: fiz de novo a leitura
Bm
Das raízes da vida que meu Pai vê melhor.
F#         Bm
Luzes, acendi com brandura
Em         A7          D
Para a ovelha perdida não medi meu suor!

[Refrão]

[Terceira Parte]
D
3. Vejam: procurei bem aqueles
Bm
A quem ninguém queria e lhes dei meu amor.
F#         Bm
Pobres, a esperança que é deles
Em         A7          D
Eu não quis ver escrava de um poder repressor!

[Refrão]

[Quarta Parte]
D
4. Vejam: semeei consciência
Bm
Nos caminhos do povo, pois o Pai quer assim.
F#         Bm
Tramas, enfrentei prepotência
Em         A7          D
Dos que temem o novo qual perigo sem fim!

[Refrão]

[Quinta Parte]
D
5. Vejam: eu quebrei as algemas,
Bm
Levantei os caídos, do meu Pai fui as mãos.
F#         Bm
Laços, recusei os esquemas:
Em         A7          D
Eu não quero oprimidos, quero um povo de irmãos!

[Refrão]

[Sexta Parte]
D
6. Vejam: procurei ser bem claro:
Bm
O meu Reino é diverso, não precisa de rei.
F#         Bm
Tronos, outro jeito mais raro
Em         A7          D
De juntar o disperso o meu Pai tem por lei!

[Refrão]

[Sétima Parte]
D
7. Vejam: do meu Pai a vontade
Bm
Eu cumpri passo a passo, foi pra isso que eu vim.
F#         Bm
Dores, enfrentei a maldade,
Em         A7          D
Mesmo frente ao fracasso eu mantive o meu "SIM"!

[Refrão Final]
Am   G        A         F#m    Bm
Por onde formos também nós que brilhe a tua luz!
Em        A          G       D
Fala, Senhor, na nossa voz, em nossa vida!
D/F#         G    A         F#m    Bm
Nosso caminho então conduz, queremos ser assim:
Em         A         D
Que o Pão da Vida nos revigore no nosso "SIM"!',
  to_tsvector('portuguese', 'Vejam, Eu Andei Pelas Vilas ' || '')
),
(
  'eu-vim-para-que-todos-tenham-vida',
  'Eu Vim para que Todos Tenham Vida',
  'Pe. José Weber / CNBB',
  'Pe. José Weber / CNBB',
  'Em',
  72,
  '4/4',
  'Toada Suave',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Jo 10, 10; Jo 6, 51',
  'liturgica',
  '[Intro] B7  Em  Am  B7  Em

[Refrão]
B7        Em         Am
Eu vim para que todos tenham vida,
B7        Em
Que todos tenham vida plenamente!

[Estrofes]
Em         C        Am         B7
1. Reconstrói a tua vida em comunhão com teu Senhor,
Em         B7
Reconstrói a tua vida em comunhão com teu irmão:
E7        Am
Onde está o teu irmão,
D7        G        (B7)
Eu estou presente nele!

[Refrão]

Em         C        Am         B7
2. Eu passei fazendo o bem, eu curei todos os males;
Em         B7
Hoje és minha presença junto a todo sofredor:
E7        Am
Onde sofre o teu irmão,
D7        G        (B7)
Eu estou sofrendo nele!

[Refrão]

Em         C        Am         B7
3. Entreguei a minha vida pela salvação de todos;
Em         B7
Reconstrói, protege a vida de indefesos e inocentes:
E7        Am
Onde morre o teu irmão,
D7        G        (B7)
Eu estou morrendo nele!

[Refrão]

Em         C        Am         B7
4. Vim buscar e vim salvar o que estava já perdido;
Em         B7
Acolhei com paciência o que vós considerais pecador:
E7        Am
Onde julgas teu irmão,
D7        G        (B7)
Tu me julgas nele!

[Refrão]

Em         C        Am         B7
5. Eu não vim chamar os justos, vim chamar os pecadores;
Em         B7
Hoje és o mensageiro do perdão e do amor:
E7        Am
Onde perdoas teu irmão,
D7        G        (B7)
Eu perdoo nele!

[Refrão]

Em         C        Am         B7
6. Este pão que recebestes é meu corpo entregue a vós;
Em         B7
Ide ao mundo e anunciai o Evangelho da verdade:
E7        Am
Quem acolhe o teu irmão,
D7        G        (B7)
Acolhe a mim nele!',
  to_tsvector('portuguese', 'Eu Vim para que Todos Tenham Vida ' || '')
),
(
  'pelos-prados-e-campinas-verdejantes',
  'Pelos Prados e Campinas Verdejantes',
  'Frei Fabreti',
  'Frei Fabreti',
  'C',
  74,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Sl 22 (23); Jo 10, 11',
  'liturgica',
  '[Intro] C  Am  F  G  C

[Primeira Parte]
C         Am         F      Fm
1. Pelos prados e campinas verdejantes 
    C   Am
Eu vou!
    Em        F       Dm      G7
É o Senhor que me leva a descansar.
C         Am         F       Fm
Junto às fontes de águas puras 
    C   Am
Repousantes, 
    Em        F       G    G7
Eu vou.
    Em        F       Dm      G7
Minhas forças o Senhor vai animar!

[Refrão]
F      G      Em    Am
Tu és Senhor o meu pastor!
          Dm     G       C   C7
Por isso nada em minha vida faltará!
F      G      Em    Am
Tu és Senhor o meu pastor!
          Dm     G       C
Por isso nada em minha vida faltará!

[Segunda Parte]
C         Am         F      Fm
2. Nos caminhos mais seguros e da paz
    C   Am
Eu vou!
    Em        F       Dm      G7
Pra fazer o Seu Nome bendizer.
C         Am         F       Fm
Mesmo se eu passar pelo vale da morte
    C   Am
Eu vou,
    Em        F       G    G7
Nenhum mal temerei ao caminhar!
    Em        F       Dm      G7
Com Teu cajado a me defender!

[Refrão]

[Terceira Parte]
C         Am         F      Fm
3. Preparas uma mesa farta e bela
    C   Am
Pra mim,
    Em        F       Dm      G7
À vista dos que querem meu penar.
C         Am         F       Fm
Com óleo perfumado me unges
    C   Am
A fronte,
    Em        F       G    G7
Senhor!
    Em        F       Dm      G7
E meu cálice transborda sem cessar!

[Refrão]

[Quarta Parte]
C         Am         F      Fm
4. Tua bondade e Tua graça hão de seguir
    C   Am
Meus passos,
    Em        F       Dm      G7
Por todos os meus dias e além!
C         Am         F       Fm
E na Casa do Senhor habitarei
    C   Am
Na paz,
    Em        F       G    G7
Senhor!
    Em        F       Dm      G7
Pelos tempos que não têm mais fim!

[Refrão Final]
F      G      Em    Am
Tu és Senhor o meu pastor!
          Dm     G       C   C7
Por isso nada em minha vida faltará!
F      G      Em    Am
Tu és Senhor o meu pastor!
          Dm     G       C
Por isso nada em minha vida faltará!',
  to_tsvector('portuguese', 'Pelos Prados e Campinas Verdejantes ' || '')
),
(
  'eu-quisera-jesus-adorado',
  'Eu Quisera, Jesus Adorado',
  'Hino Eucarístico Tradicional (Congresso Eucarístico)',
  'Hino Eucarístico Tradicional (Congresso Eucarístico)',
  'C',
  72,
  '3/4',
  'Valsa Sacra (3/4)',
  '↓   ↑ ↓   ↑ ↓',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Solenidades',
  'Jo 6, 56',
  'liturgica',
  '[Intro] C  G  C

C         G
1. Eu quisera, Jesus adorado, teu sacrário de amor rodear
Dm         G         C     G
De almas puras, florinhas mimosas, perfumando teu santo Altar!

[Refrão]
C            F         G    C
O desejo de ver-te adorado tanto invade o meu coração,
Am         Dm         G   C
Que eu quisera estar noite e dia a teus pés em humilde oração!

C         G
2. Pelas almas, as mais pecadoras, eu te peço, Jesus, o perdão;
Dm            G         C     G
Dá-lhes todo o amor e carinho, todo o afeto do teu coração!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Eu Quisera, Jesus Adorado ' || '')
),
(
  'muitos-graos-de-trigo',
  'Muitos Grãos de Trigo se Tornaram Pão',
  'José Acácio Santana',
  'José Acácio Santana',
  'C',
  78,
  '4/4',
  'Balada Simples',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Jo 12, 24; Didaqué 9, 4',
  'liturgica',
  '[Intro] C  G7  C

[Primeira Parte]
C    G7   C   C7    F    G    C
1. Muitos grãos de trigo se tornaram pão,
Am    Dm    G    C
Hoje são teu Corpo, ceia e comunhão.
Am    Dm    G7   C
Muitos grãos de trigo se tornaram pão!

[Refrão]
C    C7    F
Toma, Senhor, nossa vida em ação,
G    C    G
Para mudá-la em fruto e missão!
C    C7    F
Toma, Senhor, nossa vida em ação,
G    G7    C
Para mudá-la em missão!

[Segunda Parte]
C    G7   C   C7    F    G    C
2. Muitos cachos de uva se tornaram vinho,
Am    Dm    G    C
Hoje são teu Sangue, força no caminho.
Am    Dm    G7   C
Muitos cachos de uva se tornaram vinho!

[Refrão]

[Terceira Parte]
C    G7   C   C7    F    G    C
3. Muitas são as vidas feitas vocação,
Am    Dm    G    C
Hoje oferecidas em consagração.
Am    Dm    G7   C
Muitas são as vidas feitas vocação!

[Refrão Final]
C    C7    F
Toma, Senhor, nossa vida em ação,
G    C    G
Para mudá-la em fruto e missão!
C    C7    F
Toma, Senhor, nossa vida em ação,
G    G7    C
Para mudá-la em missão!',
  to_tsvector('portuguese', 'Muitos Grãos de Trigo se Tornaram Pão ' || '')
),
(
  'antes-da-morte-e-ressurreicao',
  'Antes da Morte e Ressurreição de Jesus',
  'Hinário Litúrgico CNBB (Quinta-Feira Santa)',
  'Hinário Litúrgico CNBB (Quinta-Feira Santa)',
  'Dm',
  70,
  '4/4',
  'Toada Solene',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Quaresma',
  '1Cor 11, 23-26; Jo 13, 1-15',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

Dm         Gm
1. Antes da morte e ressurreição de Jesus,
C         F          A7
Ele, na Ceia, quis se entregar:
Dm         Gm
Deu-se em comida e bebida pra nos salvar!

[Refrão]
Dm        Gm         C         F     A7
E quando amanhecer o dia eterno, a plena visão,
Dm        Gm         A7         Dm
Ressuscitaremos por crer nesta vida escondida no Pão!

[Final] Dm  F  A7  Dm',
  to_tsvector('portuguese', 'Antes da Morte e Ressurreição de Jesus ' || '')
),
(
  'ofertas-singelas-pao-e-vinho',
  'Ofertas Singelas, Pão e Vinho sobre a Mesa',
  'Repertório Litúrgico Paroquial',
  'Repertório Litúrgico Paroquial',
  'C',
  76,
  '4/4',
  'Balada Simples',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Sl 115',
  'liturgica',
  '​ D        D#°            Em             A        D     A7
​Ofertas singelas, pão e vinho, sobre a mesa colocamos

​ D        D#°            Em        A         D
​Sinais do trabalho que fizemos e aqui depositamos

​  Em                  A7   G
​É teu também nosso coração

​  G      A/G           F#m7(11)     Bm7 B7          Em7
​Aceita, Senhor a nossa oferta, que será depois, na certa, o teu

​A    A7   D  D7
​Próprio ser

​ G       A/G           F#m7(11)     Bm7 B7          Em7
​Aceita, Senhor a nossa oferta, que será depois, na certa, o teu

​A    A7   D D7
​Próprio ser


​ D        D#°         Em          A   A7    D     A7
​Recebe Senhor da Natureza todo fruto que colhemos

​ D        D#°             Em           A           D
​Recebe o louvor de nossas obras e o progresso que fizemos

​   Em               A   A7    G
​É teu também nosso coração


​  G      A/G           F#m7(11)     Bm7 B7          Em7
​Aceita, Senhor a nossa oferta, que será depois, na certa, o teu

​ A   A7   D  D7
​Próprio ser

​  G      A/G           F#m7(11)     Bm7 B7          Em7
​Aceita, Senhor a nossa oferta, que será depois, na certa, o teu

​ A   A7   D
​Próprio ser


​ D          D#°       Em                 A         D     A7
​Sabemos que tudo tem valor depois que a terra visitaste

​ D       D#°          Em           A             D
​Embora tivéssemos pecado, foi bem mais o que pagaste

​   Em               A    A7    G
​É teu também nosso coração


​  G      A/G          F#m7(11)      Bm7 B7           Em7
​Aceita, Senhor a nossa oferta, que será depois, na certa, o teu

​A    A7   D  D7
​Próprio ser

​  G      A/G          F#m7(11)      Bm7 B7           Em7
​Aceita, Senhor a nossa oferta, que será depois, na certa, o teu

​A    A7  D
​Próprio ser',
  to_tsvector('portuguese', 'Ofertas Singelas, Pão e Vinho sobre a Mesa ' || '')
),
(
  'estar-em-tuas-maos-o-pai',
  'Estar em Tuas Mãos, ó Pai (No Teu Altar)',
  'Pe. José Weber / CNBB',
  'Pe. José Weber / CNBB',
  'Em',
  68,
  '4/4',
  'Toada Sóbria',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Quaresma',
  'Jo 12, 24; Lc 23, 46',
  'liturgica',
  '[Intro] D  A/C#  Bm  G  A  D

[Refrão]
D            A/C#     Bm
Estar em Tuas mãos, ó Pai,
G            Em       A
Descansar no Teu altar!
D            A/C#     Bm
Minha vida em Tuas mãos,
G            A        D
Tudo a Ti consagrar!

[Estrofes]
D            A/C#     Bm
1. O pão e o vinho no altar trazemos,
G            Em       A
Fruto da terra e do trabalho:
D            A/C#     Bm
Que sejam vida e salvação,
G            A        D
Penhor do Teu eterno orvalho!

[Refrão]

D            A/C#     Bm
2. A juventude, os dons, a esperança,
G            Em       A
Alegrias, dores e oração:
D            A/C#     Bm
Recebe em Tuas santas mãos,
G            A        D
Ó Pai de toda a criação!

[Refrão]

D            A/C#     Bm
3. Que nesta mesa santa e bendita
G            Em       A
Seja selada a nossa união:
D            A/C#     Bm
Formando um só corpo em Cristo,
G            A        D
Na fé, no amor e na comunhão!',
  to_tsvector('portuguese', 'Estar em Tuas Mãos, ó Pai (No Teu Altar) ' || '')
),
(
  'pao-da-vida-na-comunhao-jesus-se-da',
  'Na Comunhão, Jesus Se Dá no Pão',
  'Hinário Litúrgico / Catequese',
  'Hinário Litúrgico / Catequese',
  'C',
  76,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Jo 6, 51-58',
  'liturgica',
  '[Intro] C  Am  Dm  G  C

[Refrão]
C       Am         Dm         G
Na Comunhão, Jesus se dá no Pão,
C     Am         Dm      G      C
O Cordeiro Imolado é refeição!
F       G         Em         Am
Nosso alimento de amor e salvação,
Dm         G         C
Em torno deste Altar somos irmãos!

[Estrofe 1]
C         Am
1. O Pão da Vida és Tu, Jesus, o Pão do Céu,
Dm         G
O Caminho, a Verdade, nossa Luz!
C         Am
Não haverá fome nem sede jamais
Dm         G         C
Para quem de Ti se alimentar em paz!',
  to_tsvector('portuguese', 'Na Comunhão, Jesus Se Dá no Pão ' || '')
),
(
  'cantar-a-beleza-da-vida',
  'Cantar a Beleza da Vida',
  'Pe. José Weber / CNBB',
  'Pe. José Weber / CNBB',
  'C',
  78,
  '4/4',
  'Balada Litúrgica',
  '↓   ↓ ↑   ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Jo 6, 51; Jo 13, 34',
  'liturgica',
  '[Intro] C  G/B  Am  F  G  C

[Refrão]
C              G/B           Am
Cantar a beleza da vida,
F         Dm            G
Presente do amor sem igual:
C              G/B           Am
Missão do cristão na lida,
F         G         C
De Deus o projeto final!

[Estrofes]
C         Em            F           C
1. Por amor Deus o mundo criou com primor,
Dm         Am            D7          G
A terra, as matas, o mar e a flor.
C         Em            F           C
E ao homem chamou para ser o guardião,
F         C         G           C
Cuidando da vida de cada irmão!

[Refrão]

C         Em            F           C
2. O grito dos pobres no mundo ecoou,
Dm         Am            D7          G
O clamor dos fracos a Deus alcançou.
C         Em            F           C
Justiça e paz nos chamou a plantar,
F         C         G           C
E a terra de novo no amor recriar!

[Refrão]

C         Em            F           C
3. Jesus veio ao mundo e nos ensinou,
Dm         Am            D7          G
Que a vida é mais bela no amor que doou.
C         Em            F           C
Na cruz e na glória vitória nos deu,
F         C         G           C
E as portas da vida com Ele se abriu!

[Refrão]

C         Em            F           C
4. A Igreja caminha guiada na luz,
Dm         Am            D7          G
Levando a esperança que brota da cruz.
C         Em            F           C
No pão e no vinho queremos brindar
F         C         G           C
A vida bendita no Santo Altar!',
  to_tsvector('portuguese', 'Cantar a Beleza da Vida ' || '')
),
(
  'mudai-o-vosso-coracao-imposicao-das-cinzas',
  'Mudai o Vosso Coração (Imposição das Cinzas - Quaresma)',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'Hinário Litúrgico CNBB / Pe. José Weber, SVD',
  'Am',
  76,
  '4/4',
  'Balada Penitencial',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Quaresma',
  'Jl 2, 12-18; Mt 6, 1-6',
  'liturgica',
  '[Intro] Am  Dm  E7  Am

[Refrão]
   Am      Dm         G           C
Mudai o vosso coração, convertei-vos ao Senhor:
   Dm        Am         E7          Am
Ele é benigno e compassivo, paciente e rico em amor!

[Primeira Parte]
   Am          Dm         G           C
1. Lembrai-vos, ó homem, que sois pó, e ao pó haveis de voltar;
   Dm      Am         E7          Am
Convertei-vos e crede no Evangelho da salvação!

[Refrão]
   Am      Dm         G           C
Mudai o vosso coração, convertei-vos ao Senhor:
   Dm        Am         E7          Am
Ele é benigno e compassivo, paciente e rico em amor!

[Segunda Parte]
   Am         Dm         G           C
2. Criai em mim um coração que seja puro, dai-me de novo um espírito decidido;
   Dm     Am         E7          Am
Restituí-me a alegria da vossa salvação!',
  to_tsvector('portuguese', 'Mudai o Vosso Coração (Imposição das Cinzas - Quaresma) ' || '')
),
(
  'eu-vos-dou-um-novo-mandamento-lava-pes',
  'Eu Vos Dou um Novo Mandamento (Rito do Lava-Pés - Quinta-Feira Santa)',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Hinário Litúrgico CNBB / Missal Romano',
  'C',
  78,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Quaresma',
  'Jo 13, 1-15.34-35',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C           F         G7          C
Eu vos dou um novo mandamento: que vos ameis uns aos outros,
   Am    Dm         G7          C
Assim como Eu vos amei, disse o Senhor!

[Primeira Parte]
   C        F         G7          C
1. Levantou-se Jesus da Ceia, pôs água numa bacia
   Am           Dm         G7          C
E começou a lavar os pés dos Seus discípulos, dando-lhes o exemplo.

[Refrão]
   C           F         G7          C
Eu vos dou um novo mandamento: que vos ameis uns aos outros,
   Am    Dm         G7          C
Assim como Eu vos amei, disse o Senhor!

[Segunda Parte]
   C        F         G7          C
2. Nisto todos conhecerão que sois Meus discípulos:
   Am        Dm         G7          C
Se tiverdes amor uns pelos outros, como Eu vos amei!',
  to_tsvector('portuguese', 'Eu Vos Dou um Novo Mandamento (Rito do Lava-Pés - Quinta-Feira Santa) ' || '')
),
(
  'onde-ha-caridade-e-amor-ubi-caritas-quinta-santa',
  'Onde Há Caridade e Amor, Aí Está Deus (Ubi Caritas - Quinta-Feira Santa)',
  'Hinário Litúrgico CNBB / Canto Gregoriano',
  'Hinário Litúrgico CNBB / Canto Gregoriano',
  'F',
  76,
  '4/4',
  'Balada Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Quaresma',
  '1Jo 4, 16; 1Cor 13',
  'liturgica',
  '[Intro] F  Bb  C7  F

[Refrão]
   F        Bb         C7          F
Onde há caridade e amor, onde há caridade e amor,
   Dm    Gm         C7          F
Aí está Deus! Aí está Deus!

[Primeira Parte]
   F       Bb         C7          F
1. O amor de Cristo nos reuniu num só rebanho;
   Dm     Gm         C7          F
Exultemos de alegria e Nele nos alegremos!

[Refrão]
   F        Bb         C7          F
Onde há caridade e amor, onde há caridade e amor,
   Dm    Gm         C7          F
Aí está Deus! Aí está Deus!

[Segunda Parte]
   F    Bb         C7          F
2. Temamos e amemos o Deus vivo,
   Dm      Gm         C7          F
E amemo-nos uns aos outros de coração sincero!',
  to_tsvector('portuguese', 'Onde Há Caridade e Amor, Aí Está Deus (Ubi Caritas - Quinta-Feira Santa) ' || '')
),
(
  'meu-povo-que-te-fiz-eu-improperios-sexta-santa',
  'Meu Povo, Que Te Fiz Eu? (Impropérios - Sexta-Feira Santa)',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Hinário Litúrgico CNBB / Missal Romano',
  'Em',
  68,
  '4/4',
  'Lamento Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Quaresma',
  'Mq 6, 3-4',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Refrão]
   Em       Am         B7          Em
Meu povo, que te fiz Eu? Ou em que te contristei?
   C    Am         B7          Em
Responde-Me! Responde-Me!
   G       D         Am    B7    Em
Deus Santo, Deus Forte, Deus Imortal, tende piedade de nós!

[Primeira Parte]
   Em    Am         B7          Em
1.Porque te tirei da terra do Egito,
   C      Am         B7          Em
Tu preparaste uma Cruz para o teu Salvador!

[Refrão]
   Em       Am         B7          Em
Meu povo, que te fiz Eu? Ou em que te contristei?
   C    Am         B7          Em
Responde-Me! Responde-Me!

[Segunda Parte]
   Em         Am         B7          Em
2. Porque te guiei quarenta anos pelo deserto e te sustentei com o maná,
   C      Am         B7          Em
Tu preparaste uma Cruz para o teu Salvador!

[Terceira Parte]
   Em          Am         B7          Em
3. Porque te plantei como a Minha vinha mais bela e escolhida,
   C         Am         B7          Em
Tu Me deste vinagre na Minha sede e transpassaste o lado do teu Salvador!',
  to_tsvector('portuguese', 'Meu Povo, Que Te Fiz Eu? (Impropérios - Sexta-Feira Santa) ' || '')
),
(
  'fiel-madeiro-da-santa-cruz-crux-fidelis-sexta-santa',
  'Fiel Madeiro da Santa Cruz (Crux Fidelis - Sexta-Feira Santa)',
  'Hinário Litúrgico CNBB / Venâncio Fortunato',
  'Hinário Litúrgico CNBB / Venâncio Fortunato',
  'Dm',
  72,
  '4/4',
  'Hino da Paixão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ação de Graças',
  'Quaresma',
  'Gl 6, 14',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm      Gm         A7          Dm
Fiel Madeiro da Santa Cruz, árvore sem igual!
   Bb       Gm         A7          Dm
Nenhuma selva produz flor, folha ou fruto igual:
   Gm        Dm         A7          Dm
Doce lenho, doces cravos, que sustentam tão doce peso!

[Primeira Parte]
   Dm           Gm         A7          Dm
1. Cantai, ó língua, o glorioso combate e o triunfo nobre da Cruz:
   Bb        Gm         A7          Dm
O Redentor do mundo, imolado, venceu a morte por amor!

[Refrão]
   Dm      Gm         A7          Dm
Fiel Madeiro da Santa Cruz, árvore sem igual!
   Gm        Dm         A7          Dm
Doce lenho, doces cravos, que sustentam tão doce peso!',
  to_tsvector('portuguese', 'Fiel Madeiro da Santa Cruz (Crux Fidelis - Sexta-Feira Santa) ' || '')
),
(
  'como-o-sol-nasce-da-aurora-advento-cnbb',
  'Como o Sol Nasce da Aurora (Tempo do Advento - CNBB)',
  'Hinário Litúrgico CNBB / Reginaldo Veloso',
  'Hinário Litúrgico CNBB / Reginaldo Veloso',
  'Em',
  80,
  '4/4',
  'Balada do Advento',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Advento',
  'Lc 1, 26-38.78',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em      Am         B7          Em
1. Como o sol nasce da aurora, de Maria nascerá
   C       Am         B7          Em
Aquele que a terra seca em jardim converterá!
   G        D         Am          B7
Ó Belém, abre teus braços ao Pastor que a ti virá!

[Refrão]
   Em      Am         D           G
Emanuel, Deus conosco, vem ao nosso mundo, vem!
   C       Am         B7          Em
Emanuel, Deus conosco, vem ao nosso mundo, vem!

[Segunda Parte]
   Em         Am         B7          Em
2. Ouve, ó Pastor do Teu povo, vem do alto céu onde estás!
   C      Am         B7          Em
Desperta o Teu poder e vem para nos salvar!',
  to_tsvector('portuguese', 'Como o Sol Nasce da Aurora (Tempo do Advento - CNBB) ' || '')
),
(
  'minha-vida-tem-sentido-pe-zezinho',
  'Minha Vida Tem Sentido',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'D',
  80,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Ofertório',
  'Tempo Comum',
  'Rm 12, 1; Mt 5, 23-24',
  'liturgica',
  '[Intro] D  A  D  A

       D    A     D
Minha vida tem sentido

Bm      Em         A7      D  A7
  Cada vez que eu venho aqui

      D      A    D    Bm
E te faço o meu pedido

          Em    A7     D A7
De não me esquecer de ti

      D         A7
Meu amor é como este pão

          D   Bm         Em
Que era trigo    que alguém plantou

A7            D  A7
   Depois colheu

           D       A7
E depois tornou-se salvação

            D    Bm     Em      A
E deu mais vida     e alimentou

        D A7
O povo meu

        D           A7
Eu te ofereço este pão

       Em       A7   D
Eu te ofereço o meu amor

       D            A7
Eu te ofereço este pão

          Em   A7   D   A7
Eu te ofereço o meu amor

       D    A     D
Minha vida tem sentido

Bm      Em         A7      D  A
  Cada vez que eu venho aqui

      D      A  D    Bm
E te faço o meu pedido

          Em    A7     D A
De não me esquecer de ti

      D         A7
Meu amor é como este vinho

          D   Bm
Que era fruto    que alguém plantou

A7            D
   Depois colheu

   D         A7
E depois encheu-se de carinho

            D    Bm       Em  A7         D A
E deu mais vida     e saciou     o povo meu

          D           A7
Eu te ofereço vinho e pão

         Em     A7    D  A
Eu te ofereço o meu amor

        D         A7
Eu te ofereço vinho e pão

         Em     A7    D
Eu te ofereço o meu amor',
  to_tsvector('portuguese', 'Minha Vida Tem Sentido ' || '')
),
(
  'sabes-senhor-pe-zezinho',
  'Sabes, Senhor (Deus É Pai)',
  'Padre Zezinho, scj / Lindberg Pires',
  'Padre Zezinho, scj / Lindberg Pires',
  'D',
  76,
  '4/4',
  'Dedilhado / Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Jo 6, 9; At 4, 32',
  'liturgica',
  '​ D        Em
​Sabes, senhor

​       A7          D  A7
​O que temos é tão pouco pra dar

​ D        G             A7
​Mas esse pouco, nós queremos

​          D
​Com os irmãos compartilhar


​   G           Em      A7         F#m
​Queremos nesta hora, diante dos irmãos

​    B7        Em        A7        D A7
​Comprometer a vida, buscando a união


​ D        Em
​Sabes, senhor

​       A          D A7
​O que temos é tão pouco pra dar

​ D        G             A7
​Mas esse pouco, nós queremos

​          D
​Com os irmãos compartilhar



​   G             Em        A7           F#m
​Sabemos que é difícil, os bens compartilhar

​     Bm        Em        A7            D A7
​Mas com a tua graça, senhor, queremos dar


​ D        Em
​Sabes, senhor

​       A7          D A7
​O que temos é tão pouco pra dar

​ D        G             A7
​Mas esse pouco, nós queremos

​          D
​Com os irmãos compartilhar


​   G           Em          A7           F#m
​Olhando o teu exemplo, senhor, vamos seguir

​   Bm           Em          A7      D A7
​Fazendo o bem a todos, sem nada exigir


​ D        Em
​Sabes, senhor

​       A7          D
​O que temos é tão pouco pra dar

​ D        G             A7
​Mas esse pouco, nós queremos

​          D
​Com os irmãos compartilhar',
  to_tsvector('portuguese', 'Sabes, Senhor (Deus É Pai) ' || '')
),
(
  'vocacao-se-ouvires-a-voz-do-vento-pe-zezinho',
  'Vocação (Se Ouvires a Voz do Vento)',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'Em',
  78,
  '4/4',
  'Balada / Dedilhado',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  11,
  'Comunhão',
  'Tempo Comum',
  'Is 6, 8; Mt 9, 37-38',
  'liturgica',
  '[Intro] Am  G  F  E  Am

        Am  G  F  E  Am

        Am  G/B  C  G  Am

        Am  G/B  C  G  Am

        Am  B7  E7  Am

[Primeira Parte]

      Am         E
Se ouvires a voz do vento

    E7           Am
Chamando sem cessar

         E
Se ouvires a voz do tempo

    E7        Am
Mandando esperar

[Refrão]

Am     G     Am
A decisão é tua

Am     G     Am E Am
A decisão é tu__u_a

     Dm    G7      C
São muitos os convidados

     Dm    G7      C
São muitos os convidados

  E         Am
Quase ninguém tem tempo

  E         Am E  Am
Quase ninguém tem te__empo

[Primeira Parte]

      Am         E
Se ouvires a voz de Deus

    E7           Am
Chamando sem cessar

         E
Se ouvires a voz do mundo

    E7           Am
Querendo te enganar

[Refrão]

Am     G     Am
A decisão é tua

Am     G     Am E Am
A decisão é tu__u_a

     Dm    G7      C
São muitos os convidados

     Dm    G7      C
São muitos os convidados

  E         Am
Quase ninguém tem tempo

  E         Am E  Am
Quase ninguém tem te__empo

( Am  G  F  E  Am )

( Am  G  F  E  Am )

( Am  G/B  C  G  Am )

( Am  G/B  C  G  Am )

( Am  B7  E7  Am )

[Ponte]

    Am            E
O trigo já se perdeu

     E7         Am
Cresceu ninguém colheu

         E
E o mundo passando fome

    E7            Am
Passando fome de Deus

[Refrão Final]

Am     G     Am
A decisão é tua

Am     G    Am E Am
A decisão é tu-u-a',
  to_tsvector('portuguese', 'Vocação (Se Ouvires a Voz do Vento) ' || '')
),
(
  'cantiga-por-sao-francisco-pe-zezinho',
  'Cantiga por São Francisco',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  82,
  '4/4',
  'Balada Franciscana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Mt 5, 3-12',
  'liturgica',
  '​      A     Bm           C#m
​Meu amigo deixou seu dinheiro

​       Bm           E7           A
​Sua herança e os direitos que tinha

​        A   Bm7      C#m7
​Era jovem demais o menino!

​          Bm     E7          A
​Disse o pai, o vizinho e a vizinha

​     E7                  A
​Meu amigo encontrou a verdade

​           E7              A
​E em seu rosto banhado de luz

​        A      Bm   C#m
​Pelas ruas de sua cidade

​     Bm      E7     A
​Meu amigo imitava Jesus


​        A          F#m
​Irmão vento, irmão sol, irmã lua

​       C#m             D
​Irmão lobo tu és meu irmão

​   A        F#m       Bm         E7
​Rouxinol, sabiá, criaturas de Deus

​        D   E7       A
​Somos obras de suas mãos


​      A     Bm           C#m
​Meu amigo viveu sem ter nada

​       Bm      E7        A
​Por esposa escolheu a pobreza

​        A   Bm7      C#m7
​Era jovem demais o menino!

​       Bm      E7       A
​Não podia ter tanta certeza

​     E7          A
​Foi assim que ele abriu um caminho

​       E7                   A
​Para quem quer viver só de amor

​      A           Bm    C#m
​Não ficou muito tempo sozinho

​      Bm       E7          A
​Gente nova o seguiu com fervor


​        A          F#m
​Irmão vento, irmão sol, irmã lua

​       C#m             D
​Irmão lobo tu és meu irmão

​   A        F#m       Bm         E7
​Rouxinol, sabiá, criaturas de Deus

​        D   E7       A
​Somos obras de suas mãos


​         A       Bm          C#m
​Hoje em dia nos jovens que eu vejo

​      Bm          E7       A
​Irrequietos, num mundo infeliz

​       A       Bm7         C#m7
​Eu renovo a esperança e o desejo

​     Bm          E7         A
​De topar com Francisco de Assis

​      E7          A
​Calça Lee, pé no chão, mundo novo

​      E7             A
​Mil idéias de renovação

​     A        Bm       C#m
​Ele são consciência do povo

​       Bm             E7        A
​Queira Deus que eles cresçam irmãos


​        A          F#m
​Irmão vento, irmão sol, irmã lua

​       C#m             D
​Irmão lobo tu és meu irmão

​   A        F#m       Bm         E7
​Rouxinol, sabiá, criaturas de Deus

​        D   E7       A
​Somos obras de suas mãos',
  to_tsvector('portuguese', 'Cantiga por São Francisco ' || '')
),
(
  'amar-e-doar-se-pe-zezinho',
  'Amar É Doar-se',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'G',
  78,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Jo 15, 13',
  'liturgica',
  '[Intro] G  Em  Am  D7  G

[Refrão]
G         Em          Am         D7
Amar é doar-se sem medir o que se dá,
Am            D7          G
É fazer da própria vida um eterno ofertar!

[Estrofe]
   C       D7         G           Em
1. Com o pão e com o vinho colocamos no altar
   Am         D7         G
Nossa lida, nosso sonho e a vontade de amar!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Amar É Doar-se ' || '')
),
(
  'a-minha-vida-e-do-mestre-pe-marcelo-rossi',
  'Meu Mestre (A Minha Vida É do Mestre)',
  'Padre Marcelo Rossi',
  'Padre Marcelo Rossi',
  'G',
  80,
  '4/4',
  'Balada de Entrega',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  17,
  'Ofertório',
  'Tempo Comum',
  'Rm 14, 8; Mc 4, 39',
  'liturgica',
  '[Intro] D  Bm  A/C#  Am6

        E/G#  F#/A#  Am6  E

        C#m  B/D#  F#m  C#m

        C  G  B4  B7

E         E4  E
A minha vida é do Mestre

         B7     B4  B
Meu coração é do meu Mestre

          F#m   E/G#
O meu caminho é do Mestre

A          C#m   B/D#  E
Minha esperança é meu Mestre

         B7
A Deus eu entreguei

         F#m
O barco do meu ser

         C#m  B7  E
E entrei no mar a fora

         B7
Pra longe eu naveguei

         F#m
Não vejo mais o cais

         C#m  B7  E
Só Deus e eu agora

E         E4  E
A minha vida é do Mestre

         B7     B4 B
Meu coração é do meu Mestre

          F#m   E/G#
O meu caminho é do Mestre

A          C#m   B/D#  E
Minha esperança é meu Mestre

         B7
Na solidão da vida

         F#m
Eu pude perceber

         C#m  B7  E
O quanto Deus me ama

E         B7
As ondas grandes vêm

         F#m
Tentando me arrastar

         C#m  B7  E
Pra longe da presença

E         E4  E
A minha vida é do Mestre

         B7     B4  B
Meu coração é do meu Mestre

          F#m   E/G#
O meu caminho é do Mestre

A          C#m   B/D#  E
Minha esperança é meu Mestre

[Final] E4  E',
  to_tsvector('portuguese', 'Meu Mestre (A Minha Vida É do Mestre) ' || '')
),
(
  'batiza-me-senhor-no-teu-espirito-pe-marcelo',
  'Batiza-me, Senhor, no Teu Espírito (Vem, Espírito Santo)',
  'Padre Marcelo Rossi / Tradicional',
  'Padre Marcelo Rossi / Tradicional',
  'Em',
  78,
  '4/4',
  'Balada Orante',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Pentecostes',
  'At 2, 1-4; Jo 20, 22',
  'liturgica',
  '[Intro] Em  B7  Em

[Primeira Parte]
   Em         B7
1. Batiza-me, Senhor, no Teu Espírito,
         Em
Batiza-me, Senhor, no Teu Espírito,
         B7
Batiza-me, Senhor, no Teu Espírito,
   Am          B7         Em      E7
E deixa-me sentir Teu fogo de amor, aqui no coração, Senhor!

[Refrão]
   Am    D7         G       Em
Vem, Espírito Santo, vem sobre nós,
   Am    B7         Em      E7
Como em Pentecostes, vem sobre nós!
   Am     D7         G       Em
Transforma-me, Senhor, ilumina-me, Senhor,
   Am     B7         Em
Inunda-me, Senhor, no Teu amor!',
  to_tsvector('portuguese', 'Batiza-me, Senhor, no Teu Espírito (Vem, Espírito Santo) ' || '')
),
(
  'so-por-ti-jesus-eugenio-jorge',
  'Só Por Ti, Jesus (Quero Me Consumir)',
  'Eugênio Jorge / Canção Nova',
  'Eugênio Jorge / Canção Nova',
  'D',
  70,
  '4/4',
  'Dedilhado Contemplativo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  12,
  'Ofertório',
  'Qualquer',
  'Fl 2, 17; Sl 62',
  'liturgica',
  'E7M       E6
Só por Ti, Jesus

              C#m7 B/C# C#m7
Quero me consumir

    B/C#        A7M          F#m7
Como vela que queima no altar

                 A/B
Me consumir de amor

       E7M       E6
Só em Ti, Jesus

              C#m7 B/C# C#m7
Quero me derramar

    B/C#        A7M          A/B
Como o rio se entrega ao mar

                 E7M E6 E7M E6
Me derramar de amor

       E7M       E6
Só por Ti, Jesus

              C#m7 B/C# C#m7
Quero me consumir

    B/C#        A7M           F#m7
Como vela que queima no altar

                A/B
Me consumir de amor

       E7M      E6
Só em Ti, Jesus

              C#m7 B/C# C#m7
Quero me derramar

    B/C#        A7M          A/B
Como o rio se entrega ao mar

                 E7M E7
Me derramar de amor

        A7M        B/A
Pois Tu és o meu amparo e o meu refúgio

                  C#m7 B/C# C#m7 B/C#
És alegria de minh&#x27;alma

       7+          B/A
Só em Ti repousa a minha esperança

         G#m7         C#m7
Não vacilarei, e mesmo na dor

         F#m7       D A/C# A/B
Quero seguir até o fim

       E7M       E6
Só por Ti, Jesus

       E7M       E6
Só por Ti, Jesus

       E7M       E6
Só por Ti, Jesus

              C#m7 B/C# C#m7
Quero me consumir

    B/C#        A7M          F#m7
Como vela que queima no altar

                 A/B
Me consumir de amor

       E7M       E6
Só em Ti, Jesus

              C#m7 B/C# C#m7
Quero me derramar

    B/C#        A7M          A/B
Como o rio se entrega ao mar

                 E7M E6 E7M E6
Me derramar de amor',
  to_tsvector('portuguese', 'Só Por Ti, Jesus (Quero Me Consumir) ' || '')
),
(
  'barco-a-vela-eliana-ribeiro',
  'Barco a Vela',
  'Eliana Ribeiro / Canção Nova',
  'Eliana Ribeiro / Canção Nova',
  'G',
  76,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  14,
  'Comunhão',
  'Pentecostes',
  'Jo 3, 8; Rm 8, 14',
  'liturgica',
  'D         G
Insisto em perseguir meus desejos

         Bm
Insisto em só fazer do meu jeito

    A    G  F#m  Em
Me perco querendo ser Deus de mim

   D         G
Escolhe mal quem escolhe só

         Bm
Quem deixa Deus ser Deus, vê melhor

   A         G
Aquilo que os olhos não podem ver

 Gm         D
Por isso deixo aqui meu querer

 Gm         A    A7
Por isso deixo aqui meu querer

   D     A         G
Guia-me Senhor pra onde aprouver

   D       A         G
Calo meu querer para ouvir o que Deus quer

 Bm           A          G
Barco à vela solto pelo mar

 Bm           A           G
Vou para onde o vento do Senhor levar

( B5  C#5 D5  E5 F# A5 )

( B5  C#5 D5  E5 F# A5 )

( B5  C#5 D5  E5 F# A5 )

( B5  C#5 D5  E5 F# A5 )

   D     A         G
Guia-me Senhor pra onde aprouver

   D       A         G
Calo meu querer para ouvir o que Deus quer

 Bm           A          G
Barco à vela solto pelo mar

 Bm           A           G
Vou para onde o vento do Senhor levar

   D     A         G
Guia-me Senhor pra onde aprouver

   D       A         G
Calo meu querer para ouvir o que Deus quer

 Bm           A          G
Barco à vela solto pelo mar

 Bm           A           G
Vou para onde o vento do Senhor levar',
  to_tsvector('portuguese', 'Barco a Vela ' || '')
),
(
  'gloria-a-jesus-na-hostia-santa',
  'Glória a Jesus na Hóstia Santa',
  'Hinário Eucarístico Tradicional',
  'Hinário Eucarístico Tradicional',
  'G',
  82,
  '4/4',
  'Hino Eucarístico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Jo 6, 35',
  'liturgica',
  '[Intro] G  C  D7  G

[Primeira Parte]
   G         D7         G
1. Glória a Jesus na Hóstia Santa, que se consagra sobre o altar,
   C         G         D7          G
E aos nossos olhos se levanta para o Brasil abençoar!

[Refrão]
   C         G
Que o Santo Sacramento, que é o próprio Cristo Jesus,
   D7     G         C           D7      G
Seja adorado e seja amado nesta terra de Santa Cruz!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Glória a Jesus na Hóstia Santa ' || '')
),
(
  'como-es-lindo-vida-reluz',
  'Como És Lindo (Que Bom, Senhor, Ir ao Teu Encontro)',
  'Walmir Alencar / Vida Reluz',
  'Walmir Alencar / Vida Reluz',
  'D',
  74,
  '4/4',
  'Balada Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Qualquer',
  'Sl 26, 4; Sl 83',
  'liturgica',
  '[Intro] D  Bm  G  A

[Primeira Parte]
D         A/C#      Bm   Bm/A
1. Que bom, Senhor, ir ao Teu encontro,
G       A        D     (A/C#)
Poder chegar e adentrar a Tua casa.
Bm        F#m       G           A
Sentar-me Contigo e partilhar da mesma mesa.

[Refrão]
D         F#m       Bm    F#m
Te olhar, te tocar
G        A        D     (A/C#)
E te dizer: meu Deus, como és lindo!
Bm        F#m       Bm    F#m
Te olhar, te tocar
G           A           D
E te dizer: meu Deus, como és lindo!

[Segunda Parte]
D         A/C#      Bm   Bm/A
2. É bom, Senhor, estar em Tua presença,
G      A       D     (A/C#)
Sentir Teu amor a nos envolver.
Bm        F#m       G      A
Tua paz me invade e renova o meu ser.

[Refrão]

[Terceira Parte]
D         A/C#      Bm   Bm/A
3. Neste banquete celeste do Teu amor,
G       A       D     (A/C#)
Tu te dás a nós em comunhão real.
Bm        F#m       G       A
Bendito sejas para sempre, meu Senhor!

[Refrão Final]
D         F#m       Bm    F#m
Te olhar, te tocar
G        A        D     (A/C#)
E te dizer: meu Deus, como és lindo!
Bm        F#m       Bm    F#m
Te olhar, te tocar
G           A           D
E te dizer: meu Deus, como és lindo!',
  to_tsvector('portuguese', 'Como És Lindo (Que Bom, Senhor, Ir ao Teu Encontro) ' || '')
),
(
  'em-teu-altar-adoracao-e-vida',
  'Em Teu Altar',
  'Walmir Alencar / Ministério Adoração e Vida',
  'Walmir Alencar / Ministério Adoração e Vida',
  'G',
  76,
  '4/4',
  'Balada de Ofertório',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  16,
  'Ofertório',
  'Qualquer',
  'Rm 12, 1',
  'liturgica',
  '[Intro] G#m  A  B/D#  E

        B  C#m  A  B/D#  A/C#

        E  C#m  B  A9

E|-----11-12--9-7-9-7------------------------9-7--------11-12--9-7-----------------------| 
B|-9-9-----------------7-9-10-9------------9-----10-9-9------------9--7-9-10-9-----------| 
G|------------------------------9-----------------------------------------------9--------| 
D|--------------------------------9-9/11------------------------------------------9-9/11-| 
A|---------------------------------------------------------------------------------------| 
E|---------------------------------------------------------------------------------------| 

 E9               G#m       E/G#        A             C#m B
Diante de Tua presença me encontro, Senhor, Deus infinito

E         G#m    E/G#        A
O Teu olhar me acompanha e sabes quem sou

E        G#m       E/G#     A            C#m B
Ao enxergar Tua grandeza e minha pequenez, eu reconheço

E            G#m         A9
Que minha história é nada sem o Teu amor

          G#m        C#m
Por isso venho Te buscar

         F#m    B4      B
Porque eu preciso, meu Deus, em Teus braços estar

G#m         C#m        F#m7   C#m B
Morar em Teu coração e entregar-me a Ti, inteiramente

    G#m      A    B/D#    E
Me abandonarei em Ti, Senhor

G#m            A
Em Ti repousarei

   B/D#  A/C#      E
A Tua ternura me acolhe

     G#m         A
Um refúgio seguro encontrei

  G#m      A          B/D#   E
O meu coração venho a Ti render

 G#m         A
Toma meu ser, meu querer

   B/D#     A/C#       E
Recebe, Senhor, minha vida

      G#m            A
Como prova viva de amor

          C#m  B  E/G# A B/D# E B C#m A D A/C# A9
Em Teu altar, Senhor

          G#m         C#m
Por isso venho Te buscar

         F#m    B4      B
Porque eu preciso, meu Deus, em Teus braços estar

   G#m           C#m         F#m7         C#m B
Morar em Teu coração e entregar-me a Ti, inteiramente

    G#m     A     B/D#    E
Me abandonarei em Ti, Senhor

G#m           A
Em Ti repousarei

   B/D#   A/C#     E
A Tua ternura me acolhe

     G#m         A
Um refúgio seguro encontrei

G#m        A          B/D#   E
O meu coração venho a Ti render

G#m         A
Toma meu ser, meu querer

   B/D#    A/C#        E
Recebe, Senhor, minha vida

      G#m            A
Como prova viva de amor

          C#m  B  F#m7
Em Teu altar, Senhor

            E/G#        A
Me abandonarei no Teu amor

          C#m  B  F#m7
Em Teu altar, Senhor

            E/G#        A
Me abandonarei no Teu amor

          C#m B  E A B/D# E B C#m A9
Em Teu altar Senhor',
  to_tsvector('portuguese', 'Em Teu Altar ' || '')
),
(
  'invade-minh-alma-walmir-alencar-vida-reluz',
  'Invade Minh''Alma',
  'Walmir Alencar / Vida Reluz',
  'Walmir Alencar / Vida Reluz',
  'C',
  74,
  '4/4',
  'Balada Orante',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Pentecostes',
  'Rm 5, 5; Jo 14, 23',
  'liturgica',
  '[Intro] C  G/B  Am  F  Dm  G7

[Primeira Parte]
   C            G/B             Am
1. Vem, Senhor, visitar o interior do meu coração,
   F           Dm         G7
Onde há sede de paz, derrama a Tua consolação!
   C          G/B             Am
Sem a Tua presença eu nada posso realizar,
   F        G7         C       C7
Só o Teu Espírito Santo me ensina a perdoar e amar!

[Refrão]
   F         G7         Em          Am
Invade minh''alma, Senhor, preenche todo o meu viver,
   Dm      G7         C           C7
Quero ser morada santa onde habita o Teu poder!
   F        G7         Em          Am
Invade minh''alma, Senhor, com Tua graça e Tua luz,
   Dm           G7         C
Para que o mundo veja em mim a Tua face, ó Jesus!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Invade Minh''Alma ' || '')
),
(
  'oferta-de-amor-venho-senhor-minha-vida-oferecer',
  'Oferta de Amor (Venho, Senhor, Minha Vida Oferecer)',
  'Ministério Koinonya / Comunidade Shalom',
  'Ministério Koinonya / Comunidade Shalom',
  'G',
  74,
  '4/4',
  'Balada de Ofertório',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Qualquer',
  'Rm 12, 1',
  'liturgica',
  '[Intro] G  D  Em  C  D7  G

[Primeira Parte]
   G        D         Em
1. Venho, Senhor, minha vida oferecer
   C    G         Am          D7
Como oferta de amor e sacrifício:
   G      D         Em
Quero minha vida a Ti entregar
   C    D7         G           G7
Como oferta viva em Teu altar!

[Refrão]
   C     D7         G           Em
Pois pra Te adorar foi que eu nasci,
   C    D7         G           Em
Cumpre em mim o Teu querer!
   C    D7         G           Em
Faça o que está em Teu coração,
   C        D7         G
E que a cada dia eu queira mais e mais
   Am           D7          G
Estar ao Teu lado, Senhor!',
  to_tsvector('portuguese', 'Oferta de Amor (Venho, Senhor, Minha Vida Oferecer) ' || '')
),
(
  'estrangeiro-aqui-comunidade-shalom',
  'Estrangeiro Aqui (O Céu É o Meu Lugar)',
  'Comunidade Católica Shalom / Missionário Shalom',
  'Comunidade Católica Shalom / Missionário Shalom',
  'G',
  78,
  '4/4',
  'Balada Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Fl 3, 20; Hb 13, 14',
  'liturgica',
  '​[Intro] G  Am7  C  D

​        G  Am7  C  D

​        G  Am7  C  G

​[Primeira Parte]


​G          Em7
​Eu tenho os meus pés no chão

​                 D          Am7      G/B
​Mas sei que o meu coração está muito além do céu

​        C            D
​E do que se possa ver

​G          Em7
​Busco o que no alto está

​               D          Am7
​Busco o que não passará jamais

​      G/B      C       D
​Minha vida está  escondida

​         G
​Em Jesus

​[Refrão]


​G          D/F#     Em7            C
​Sou estrangeiro aqui,   o Céu é o meu lugar

​Am7          G/B           C
​É de onde vim,  é pra onde vou

​      D             G
​É lá onde eu vou morar

​G          D/F#     Em7            C
​Sou estrangeiro aqui,   o Céu é o meu lugar

​Am7          G/B           C
​É de onde vim,  é pra onde vou

​      D             G Am7 C
​É lá onde eu vou morar


​[Segunda Parte]


​E          C#m
​Eu tenho os meus pés no chão

​                 B         F#m7      E/G#
​Mas sei que o meu coração está muito além do céu

​        A          B7
​E do que se possa ver

​ E          C#m                B           F#m7
​Busco o que no alto está,    busco o que não passará jamais

​      E/G#    A        B7
​Minha vida está  escondida

​       E
​Em Jesus

​[Refrão]


​E          B/D#     C#m7           A
​Sou estrangeiro aqui,   o Céu é o meu lugar

​F#m7         E/G#              A      B              E
​É de onde vim,  é pra onde vou,  é lá onde eu vou morar

​ E         B/D#     C#m7           A
​Sou estrangeiro aqui,   o céu é o meu lugar

​F#m7         E/G#              A      B              E B A
​É de onde vim,  é pra onde vou,  é lá onde eu vou morar


​E                F#m7           A               B
​O Senhor é minha Luz e Salvação, de quem terei medo?

​F#m              E/G#           A
​O Senhor é a segurança da minha vida

​E                F#m7           A               B
​O Senhor é minha Luz e Salvação, de quem terei medo?

​F#m              E/G#           A
​O Senhor é a segurança da minha vida

​   C#m          B
​A quem eu temerei?

​[Terceira Parte]


​G          D/F#     Em7            C
​Sou estrangeiro aqui,   o Céu é o meu lugar

​Am7          G/B           C
​É de onde vim,  é pra onde vou

​      D             G
​É lá onde eu vou morar

​G          D/F#     Em7            C
​Sou estrangeiro aqui,   o Céu é o meu lugar

​Am7          G/B           C
​É de onde vim,  é pra onde vou

​      D             G Am7 C G
​É lá onde eu vou morar

​[Final]


​G          D/F#     Em7            C
​Sou estrangeiro aqui,   o Céu é o meu lugar

​Am7          G/B           C
​É de onde vim,  é pra onde vou

​      D             G
​É lá onde eu vou morar

​G          D/F#     Em7            C
​Sou estrangeiro aqui,   o Céu é o meu lugar

​Am7          G/B           C
​É de onde vim,  é pra onde vou

​      D             G  D/F#  Em7
​É lá onde eu vou morar


​C              G  D/F#  Em7
​Onde eu vou morar

​C              G
​Onde eu vou morar',
  to_tsvector('portuguese', 'Estrangeiro Aqui (O Céu É o Meu Lugar) ' || '')
),
(
  'cristo-quero-ser-instrumento-oracao-sao-francisco',
  'Oração de São Francisco (Senhor, Fazei-me Instrumento de Vossa Paz)',
  'Pe. Irala, sj / Tradicional Franciscano',
  'Pe. Irala, sj / Tradicional Franciscano',
  'Em',
  78,
  '4/4',
  'Dedilhado / Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Qualquer',
  'Mt 5, 9; Gl 6, 14',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em         B7
1. Senhor, fazei-me instrumento de Vossa paz:
   Am       B7         Em
Onde houver ódio, que eu leve o amor;
         B7
Onde houver ofensa, que eu leve o perdão;
   Am         B7         Em
Onde houver discórdia, que eu leve a união;
   E7    Am         D7          G
Onde houver dúvida, que eu leve a fé!

[Segunda Parte]
   Em         B7
2. Onde houver erro, que eu leve a verdade;
   Am          B7         Em
Onde houver desespero, que eu leve a esperança;
         B7
Onde houver tristeza, que eu leve a alegria;
   E7    Am         B7          Em
Onde houver trevas, que eu leve a luz!

[Refrão]
   E7    Am         D7          G
Ó Mestre, fazei que eu procure mais
   B7         Em
Consolar que ser consolado;
   E7    Am         D7          G
Compreender que ser compreendido;
   B7    Em         E7
Amar que ser amado!
   Am         D7         G           Em
Pois é dando que se recebe, é perdoando que se é perdoado,
   Am         B7         Em
E é morrendo que se vive para a vida eterna!',
  to_tsvector('portuguese', 'Oração de São Francisco (Senhor, Fazei-me Instrumento de Vossa Paz) ' || '')
),
(
  'vos-sois-o-caminho-a-verdade-e-a-vida',
  'Vós Sois o Caminho, a Verdade e a Vida',
  'Lindberg Pires / Hinário Litúrgico CNBB',
  'Lindberg Pires / Hinário Litúrgico CNBB',
  'D',
  82,
  '4/4',
  'Canto Processional de Comunhão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Jo 14, 6; Jo 6, 51',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D         G         D
Vós sois o Caminho, a Verdade e a Vida,
   Bm    Em         A7          D
O Pão da alegria descido do Céu! (2x)

[Estrofes]
   Bm       F#m         G           D
1. Nós somos caminheiros que marcham para os céus,
   Em        A7         D
Jesus é o Caminho que nos conduz a Deus!

   Bm      F#m         G           D
2. Da noite da mentira, das trevas para a luz,
   Em        A7         D
Busquemos a Verdade, Verdade é só Jesus!

   Bm      F#m         G           D
3. Pecar é não ter vida, pecar é não ter luz;
   Em         A7         D
Tem vida só quem segue os passos de Jesus!',
  to_tsvector('portuguese', 'Vós Sois o Caminho, a Verdade e a Vida ' || '')
),
(
  'pelos-prados-e-campinas-salmo-22',
  'Pelos Prados e Campinas Verdejantes Eu Vou (O Senhor É o Pastor)',
  'Frei Fabreti, ofm / Salmo 22 (23)',
  'Frei Fabreti, ofm / Salmo 22 (23)',
  'D',
  80,
  '4/4',
  'Balada Pastoral',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  11,
  'Comunhão',
  'Qualquer',
  'Sl 22, 1-6; Jo 10, 11',
  'liturgica',
  '[Intro] C  Am  F  Fm  C  G7  C

[Refrão]
C       G         Am  Em
Tu és, Senhor, o meu pastor!
    F         G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 1]
         C          Am           F   Fm
1. Pelos prados e campinas verdejantes
       C   Am
Eu vou!
    Em            F          D7   G7
É o Senhor que me leva a descansar!
         C         Am          F   Fm
Junto às fontes de águas puras repousantes
       C   Am
Eu vou!
        Em       F          G     G7
Minhas forças o Senhor vai animar!

[Refrão]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 2]
         C         Am            F   Fm
2. Nos caminhos da justiça e da verdade
       C   Am
Eu vou!
       Em        F           D7   G7
Pelo amor do seu nome Ele me guia!
          C         Am          F   Fm
Mesmo quando pela morte ameaçado
       C   Am
Eu vou!
        Em         F            G    G7
Sem temor, pois o Senhor comigo está!

[Refrão]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 3]
       C          Am          F   Fm
3. Com seu cajado e o báculo seguro
       C   Am
Eu vou!
      Em            F        D7   G7
És o meu conforto na tribulação!
     C         Am         F   Fm
Uma mesa bem farta me preparas
       C   Am
Eu vou!
      Em         F            G    G7
Sob a vista do inimigo me acolhes!

[Refrão]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 4]
        C           Am           F   Fm
4. Com óleo santo ungiste a minha fronte
       C   Am
Eu vou!
      Em         F         D7   G7
O meu cálice transborda de alegria!
       C           Am         F   Fm
Tua bondade e tua graça me acompanham
       C   Am
Eu vou!
        Em            F            G    G7
Todos os dias da minha vida aqui na terra!

[Refrão]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!

[Estrofe 5]
        C            Am          F   Fm
5. E na tua santa casa habitarei
       C   Am
Eu vou!
        Em            F            D7   G7
Pelos tempos que não findam cantarei!
       C           Am         F   Fm
Glória ao Pai, e ao Filho, e ao Santo Espírito
       C   Am
Eu vou!
       Em         F          G    G7
Pelos séculos dos séculos, sem fim!

[Refrão Final]
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C  C7
Por isso nada em minha vida faltará!
    F   G         Em  Am
Tu és, Senhor, o meu pastor!
    Dm            G       C
Por isso nada em minha vida faltará!
F        C
Nada faltará!',
  to_tsvector('portuguese', 'Pelos Prados e Campinas Verdejantes Eu Vou (O Senhor É o Pastor) ' || '')
),
(
  'andavam-pensando-tao-tristes-emaus',
  'Andavam Pensando Tão Tristes (Discípulos de Emaús)',
  'Padre João Carlos / Discípulos de Emaús',
  'Padre João Carlos / Discípulos de Emaús',
  'G',
  82,
  '4/4',
  'Balada Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Páscoa',
  'Lc 24, 13-35',
  'liturgica',
  '[Intro] G  Am  D  C  G  D

[Primeira Parte]
G         Am
1. Andavam pensando, tão tristes,
    D         C   G   D
De Jerusalém a Emaús,
G         Am
Os dois seguidores de Cristo,
    C         Am   D
Logo após o episódio da cruz.
    C         D
Enquanto falavam das coisas
    G         Em
Que tinham acabado de ver,
    Am            D
Jesus se achegou de repente
    C         D       G
E pós-se com eles a correr.

[Refrão]
G        Em
Fica conosco, Senhor,
C          D
É tarde e a noite já vem!
G        Em
Fica conosco, Senhor,
C        D        G
Somos Teus seguidores também!

[Segunda Parte]
G         Am
2. Jesus perguntou: "O que tendes?
    D         C   G   D
Por que ides tristes assim?"
G         Am
Cleófas parou e respondeu:
    C         Am   D
"Não sabes do trágico fim?
    C         D
Não sabes o que aconteceu
    G         Em
Com o Santo Profeta Jesus,
    Am            D
Que os nossos sumos sacerdotes
    C         D       G
Mataram pregado na cruz?"

[Refrão]

[Terceira Parte]
G         Am
3. "Nós tínhamos tanta esperança
    D         C   G   D
Que fosse o Libertador!
G         Am
Mas hoje já é o terceiro dia
    C         Am   D
Que a morte roubou nosso amor!
    C         D
Mulheres da nossa cidade
    G         Em
Disseram que o túmulo acharam vazio,
    Am            D
Dizendo que anjos falaram
    C         D       G
Que Ele vive e a morte venceu!"

[Refrão]

[Quarta Parte]
G         Am
4. E disse Jesus aos dois homens:
    D         C   G   D
"Como sois demorados na fé!
G         Am
Não era preciso que o Cristo
    C         Am   D
Sofresse pra estar onde estiver?"
    C         D
E abrindo as santas Escrituras,
    G         Em
Falou dos profetas e a lei:
    Am            D
Ouvindo as palavras do Mestre,
    C         D       G
O peito ardia em santa afeição!

[Refrão]

[Quinta Parte]
G         Am
5. Chegando na aldeia de Emaús,
    D         C   G   D
Jesus fez que ia passar;
G         Am
Os dois insistiram dizendo:
    C         Am   D
"Vem logo conosco ficar!
    C         D
É tarde e a noite já desce,
    G         Em
Entra em nossa humilde morada!"
    Am            D
E Ele aceitou o convite,
    C         D       G
Entrando com eles na estrada.

[Refrão]

[Sexta Parte]
G         Am
6. Sentado com eles à mesa,
    D         C   G   D
Tomou em Suas mãos o pão,
G         Am
Benzeu-o, partiu e entregou-lhes:
    C         Am   D
Abriram-se os olhos na refeição!
    C         D
Mas Ele sumiu de suas vistas,
    G         Em
Deixando o mistério da fé:
    Am            D
"Não ardia o nosso peito
    C         D       G
Enquanto na estrada Ele falava?"

[Refrão]

[Sétima Parte]
G         Am
7. E logo voltaram correndo
    D         C   G   D
Aonde a Igreja rezava;
G         Am
Gritaram: "É certo! O Senhor
    C         Am   D
Voltou e a morte derrotou!
    C         D
Nós vimos o Mestre na estrada,
    G         Em
Falou-nos com tanto calor;
    Am            D
E nós o reconhecemos
    C         D       G
Ao partir do pão no amor!"

[Refrão Final]
G        Em
Fica conosco, Senhor,
C          D
É tarde e a noite já vem!
G        Em
Fica conosco, Senhor,
C        D        G
Somos Teus seguidores também!',
  to_tsvector('portuguese', 'Andavam Pensando Tão Tristes (Discípulos de Emaús) ' || '')
),
(
  'um-coracao-para-amar-ofertorio',
  'Um Coração Para Amar',
  'Pe. Zezinho, scj / Hinário de Ofertório',
  'Pe. Zezinho, scj / Hinário de Ofertório',
  'G',
  84,
  '4/4',
  'Balada de Ofertório',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  17,
  'Ofertório',
  'Tempo Comum',
  'Ez 36, 26; Mt 20, 28',
  'liturgica',
  '[Intro] G  F  C/E  C

        Am  D  Bm

        G  Am  G/B

        Cm  F  G

[Primeira parte]

G
  Um coração para amar

         Am  D7
Pra perdoar e sentir

 Am      D7       Am
Para chorar e sorrir

D7         G
Ao me criar tu me deste

Um coração pra sonhar

         Am  D7
Inquieto e sempre a bater

Am       D7    Am
Ansioso por entender

D7         G
As coisas que tu disseste

[Refrão]

G7         C
Eis o que eu venho te dar

D          G  D/F#
Eis o que eu ponho no altar

 Em         Am
Toma senhor que ele é teu

 D         F  G7
Meu coração não é meu

         C
Eis o que eu venho te dar

D          G  D/F#
Eis o que eu ponho no altar

 Em         Am  D
Toma senhor que ele é teu

 Am      D         G  G7
Meu coração não é meu

[Interlúdio] C  G/B  Am  G

             C  G/B  D7  G

[Tab - Interlúdio]

Parte 1 de 2

   C   G/B Am  G        C        G/B   D7       G
E|------------------------------------------------| 
B|------------------------------------------------| 
G|----------------------------------0-----0--2--0-| 
D|-2---0-----------------------2-0-----4----------| 
A|---------3---2--0---------3---------------------| 
E|-------------------3--0-3-----------------------| 

Parte 2 de 2

E|------------------------------------------------| 
B|------------------------------------------------| 
G|------------------------------------------------| 
D|-0--2p0---2-0-----------------------------------| 
A|--------2-------5\4-3-2-------------------------| 
E|------------------------------------------------| 

[Segunda parte]

  G
Quero que o meu coração

         Am  D7
Seja tão cheio de paz

 Am         D7      Am
Que não se sinta capaz

 D7         G
De sentir ódio ou rancor

Quero que a minha oração

         Am  D7
Possa me amadurecer

 Am        D7      Am
Leve-me a compreender

          D           G
As consequências do amor

[Refrão Final]

G7         C
Eis o que eu venho te dar

D          G  D/F#
Eis o que eu ponho no altar

 Em         Am
Toma senhor que ele é teu

 D         F  G7
Meu coração não é meu

G/D           G7       C
Eis o que eu venho te dar

D7          G  D/F#
Eis o que eu ponho no altar

 Em         Am  D
Toma senhor que ele é teu

 Am      D         G  G/B
Meu coração não é meu

G/D           G7       C
Eis o que eu venho te dar

D7          G  D/F#
Eis o que eu ponho no altar

 Em         Am  D
Toma senhor que ele é teu

 Am      D         G
Meu coração não é meu

[Final] C  G',
  to_tsvector('portuguese', 'Um Coração Para Amar ' || '')
),
(
  'conheco-um-coracao-pe-joaozinho',
  'Conheço um Coração Tão Manso, Humilde e Sereno',
  'Padre Joãozinho, scj',
  'Padre Joãozinho, scj',
  'C',
  80,
  '4/4',
  'Balada do Sagrado Coração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Mt 11, 29; Jo 19, 34',
  'liturgica',
  '[Intro] C  Em  Dm  G7  C

[Primeira Parte]
   C         Em
1. Conheço um Coração tão manso, humilde e sereno,
   F         G7
Que louva o Pai por revelar Seu Nome aos pequenos;
   F      G7         C           Am
Que tem o dom de amar, que sabe perdoar,
   Dm    G7         C           C7
E deu a vida para nos salvar!

[Refrão]
   F         G7         C           Am
Jesus, manda Teu Espírito para transformar meu coração!
   F         G7         C           C7
Jesus, manda Teu Espírito para transformar meu coração!

[Segunda Parte]
   C         Em
2. Às vezes no meu peito bate um coração de pedra,
   F         G7
Magoado, frio, sem vida, aqui dentro ele me aperta;
   F      G7         C           Am
Não quer saber de amar, nem sabe perdoar,
   Dm    G7         C           C7
Quer tudo e não sabe partilhar!',
  to_tsvector('portuguese', 'Conheço um Coração Tão Manso, Humilde e Sereno ' || '')
),
(
  'bendito-e-louvado-seja-o-pai-nosso-criador',
  'Bendito e Louvado Seja o Pai Nosso Criador (Ofertório)',
  'Hinário Litúrgico CNBB',
  'Hinário Litúrgico CNBB',
  'D',
  84,
  '4/4',
  'Toada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  7,
  'Ofertório',
  'Tempo Comum',
  'Sl 103',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
D         G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm         Em          A7            D
O pão que nós recebemos é dom do seu amor!
D         G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm         Em          A7            D
O pão que nós recebemos é dom do seu amor!

[Estrofe 1]
D         G
1. O pão que se transforma no Corpo de Jesus,
A7         D
E o vinho no seu Sangue vertido lá na cruz!
Bm         Em
O trigo germinado na terra com suor,
A7         D
Torna-se hóstia santa no altar do Redentor!

[Refrão]
D         G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm         Em          A7            D
O pão que nós recebemos é dom do seu amor!

[Estrofe 2]
D         G
2. O vinho que ofertamos com júbilo e louvor,
A7         D
É fruto da videira, colhido com amor!
Bm         Em
Recebe, ó Pai celeste, os frutos do labor,
A7         D
Que o povo consagrado entrega ao Senhor!

[Refrão]
D         G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm         Em          A7            D
O pão que nós recebemos é dom do seu amor!

[Estrofe 3]
D         G
3. As nossas alegrias, angústias e aflições,
A7         D
Colocamos no altar em nossas oblações!
Bm         Em
Unidos a Jesus na ceia do amor,
A7         D
Sejamos oferenda perfeita ao Criador!

[Refrão]
D         G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm         Em          A7            D
O pão que nós recebemos é dom do seu amor!

[Estrofe 4]
D         G
4. A Igreja em caminhada proclama com fervor:
A7         D
Bendito seja Deus, nosso amado Pastor!
Bm         Em
Ao Pai e ao Filho eterno, e ao Espírito de luz,
A7         D
Louvor eterno e glória no Reino de Jesus!

[Refrão Final]
D         G           A7            D
Bendito e louvado seja o Pai nosso Criador!
Bm         Em          A7            D
O pão que nós recebemos é dom do seu amor!',
  to_tsvector('portuguese', 'Bendito e Louvado Seja o Pai Nosso Criador (Ofertório) ' || '')
),
(
  'de-maos-estendidas-ofertamos-waldeci-farias',
  'De Mãos Estendidas Ofertamos',
  'Waldeci Farias / Hinário de Ofertório',
  'Waldeci Farias / Hinário de Ofertório',
  'Dm',
  82,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  '1Cr 29, 14',
  'liturgica',
  '​D7              Gm   A7    Dm              Gm  A7   Dm   D7
​   De mãos estendidas,ofertamos O que de graça    recebemos


​D7              Gm   A7    Dm              Gm  A7   Dm   D7
​   De mãos estendidas, ofertamos O que de graça recebemos


​  D7               Gm    C          F
​   A natureza tão bela   Que é louvor, que é serviço

​Dm          Gm     A7          Dm
​O sol que ilumina as trevas  Transformando-as em luz

​ D7          Gm   C          F
​   O dia que nos traz o pão   e a noite que nos dá repouso

​Dm             Gm   A                 Dm
​Ofertemos ao Senhor o louvor da criação


​  D7          Gm     C               F
​   Nossa vida toda inteira   Ofertamos ao Senhor

​Dm                 Gm  A                Dm
​Como prova de amizade  Como prova de amor

​  D7          Gm   C                 F
​   Com o vinho e com o pão   Ofertemos ao Senhor

​ Dm                  Gm    A                 Dm
​Nossa vida toda inteira  O louvor da criação',
  to_tsvector('portuguese', 'De Mãos Estendidas Ofertamos ' || '')
),
(
  'os-graos-que-formam-a-espiga-ofertorio',
  'Os Grãos Que Formam a Espiga',
  'Frei Luiz Turra / Hinário Litúrgico',
  'Frei Luiz Turra / Hinário Litúrgico',
  'C',
  82,
  '4/4',
  'Balada Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  7,
  'Ofertório',
  'Qualquer',
  '1Cor 10, 17',
  'liturgica',
  '[Intro] F  C  G7  C

[Refrão]
C         F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am         Dm          G7            C
Os homens que são Igreja se unem pela oblação!
C         F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am         Dm          G7            C
Os homens que são Igreja se unem pela oblação!

[Estrofe 1]
C         F
1. Diante do teu altar, Senhor, a nossa oferta trazemos;
Dm         G7
Acolhe com teu amor o pão e o vinho que temos!
C         F
O pão é fruto da terra e do trabalho do homem,
Dm         G7            C
Alimento que dá vida aos povos que te adoram!

[Refrão]
C         F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am         Dm          G7            C
Os homens que são Igreja se unem pela oblação!

[Estrofe 2]
C         F
2. Os cachos de uva colhidos se tornam em vinho puro;
Dm         G7
O povo de Deus reunido caminha firme e seguro!
C         F
Bebida da salvação na mesa da Eucaristia,
Dm            G7            C
Converte a nossa fraqueza em perene alegria!

[Refrão]
C         F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am         Dm          G7            C
Os homens que são Igreja se unem pela oblação!

[Estrofe 3]
C         F
3. O pão e o vinho no altar serão sacrifício santo;
Dm         G7
A vida dos filhos de Deus se eleva em doce canto!
C         F
A dor de quem nada tem, a luta de quem trabalha,
Dm         G7            C
Encontram na tua graça a força que nunca falha!

[Refrão]
C         F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am         Dm          G7            C
Os homens que são Igreja se unem pela oblação!

[Estrofe 4]
C         F
4. Senhor, que a nossa oferta se una à oferta do Filho,
Dm         G7
E a todos conceda a graça de ver o eterno brilho!
C         F
Ao Pai bendito e clemente, a Cristo o Redentor,
Dm         G7            C
E ao Espírito Consolador, tributo de santo amor!

[Refrão Final]
C         F           G7            C
Os grãos que formam a espiga se unem pra serem pão!
Am         Dm          G7            C
Os homens que são Igreja se unem pela oblação!',
  to_tsvector('portuguese', 'Os Grãos Que Formam a Espiga ' || '')
),
(
  'a-mesa-santa-que-preparamos-ofertorio',
  'A Mesa Santa Que Preparamos',
  'Pe. José Weber / Hinário CNBB',
  'Pe. José Weber / Hinário CNBB',
  'D',
  84,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  7,
  'Ofertório',
  'Tempo Comum',
  'Sl 22, 5; Lc 22, 19',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
D         G           A7            D
A mesa santa que preparamos, mãos estendidas no altar de Deus!
Bm         Em          A7            D
Pão e vinho nós ofertamos, frutos da terra e do trabalho!
D         G           A7            D
Bendito sejais, Senhor, Deus do universo,
Bm         Em          A7            D
Pelo pão e pelo vinho que hoje vos apresentamos!

[Estrofe 1]
D         G
1. Ofertamos as nossas dores, a esperança do nosso irmão;
A7         D
Acolhei, Senhor compassivo, nossa prece e nossa união!
Bm         Em
Tudo o que somos e temos depositamos aqui,
A7         D
Pra renascer renovados e consagrados a Ti!

[Refrão]
D         G           A7            D
A mesa santa que preparamos, mãos estendidas no altar de Deus!
Bm         Em          A7            D
Pão e vinho nós ofertamos, frutos da terra e do trabalho!

[Estrofe 2]
D         G
2. Com o Filho bem-amado queremos nos consagrar;
A7         D
Fazei de nós um só corpo pra vossa glória cantar!
Bm         Em
O vinho vertido no cálice e o pão repartido no amor,
A7         D
Sejam sustento e remédio para todo pecador!

[Refrão]
D         G           A7            D
A mesa santa que preparamos, mãos estendidas no altar de Deus!
Bm         Em          A7            D
Pão e vinho nós ofertamos, frutos da terra e do trabalho!

[Estrofe 3]
D         G
3. Ao Deus Uno e Trino louvemos com júbilo e gratidão,
A7         D
Que acolhe em sua mesa a santa celebração!
Bm         Em
Ao Pai Criador da vida, ao Verbo que se humilhou,
A7         D
E ao Espírito Santificador que a Igreja confirmou!

[Refrão Final]
D         G           A7            D
A mesa santa que preparamos, mãos estendidas no altar de Deus!
Bm         Em          A7            D
Pão e vinho nós ofertamos, frutos da terra e do trabalho!',
  to_tsvector('portuguese', 'A Mesa Santa Que Preparamos ' || '')
),
(
  'noite-feliz-stille-nacht-natal',
  'Noite Feliz (Canto Tradicional da Noite de Natal)',
  'Pe. Joseph Mohr / Franz Gruber',
  'Pe. Joseph Mohr / Franz Gruber',
  'A',
  68,
  '3/4',
  'Valsa Sacra de Natal',
  '↓  ↑ ↓  ↑ ↓',
  true,
  true,
  true,
  3,
  'Comunhão',
  'Natal',
  'Lc 2, 7-14',
  'liturgica',
  '[Intro] A  E7  A

[Primeira Parte]
   A
1. Noite feliz! Noite feliz!
   E7         A
Ó Senhor, Deus de amor,
   D         A
Pobrezinho nasceu em Belém;
   D         A
Eis na lapa Jesus, nosso bem!
   E7    A       F#m
Dorme em paz, ó Jesus!
   A            E7          A
Dorme em paz, ó Jesus!

[Segunda Parte]
   A
2. Noite feliz! Noite feliz!
   E7         A
Ó Jesus, Deus da luz,
   D         A
Quão afável é Teu coração,
   D         A
Que quiseste nascer nosso irmão,
   E7    A       F#m
E a nós todos salvar!
   A            E7          A
E a nós todos salvar!',
  to_tsvector('portuguese', 'Noite Feliz (Canto Tradicional da Noite de Natal) ' || '')
),
(
  'antes-da-morte-e-ressurreicao- de-jesus-comunhao',
  'Antes da Morte e Ressurreição de Jesus (Isto É o Meu Corpo)',
  'Dom Carlos Alberto Navarro / Waldeci Farias',
  'Dom Carlos Alberto Navarro / Waldeci Farias',
  'Dm',
  78,
  '4/4',
  'Balada Eucarística Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Quaresma',
  'Lc 22, 19-20; 1Cor 11, 23-26',
  'liturgica',
  '[Intro] F  C  G7  C

[Refrão]
C         F           G7            C
Isto é o meu Corpo que é dado por vós!
Am         Dm          G7            C
Isto é o meu Sangue derramado por vós!
C         F           G7            C
Fazei isto em memória de mim,
Am         Dm          G7            C
Até que eu venha no Reino sem fim!

[Estrofe 1]
C         F
1. Antes da morte e ressurreição de Jesus,
Dm         G7
Ele, na Ceia, quis se entregar:
C         F
Deu-se em comida e deu-se em bebida,
Dm           G7            C
Para os homens da terra remir e salvar!

[Refrão]
C         F           G7            C
Isto é o meu Corpo que é dado por vós!
Am         Dm          G7            C
Isto é o meu Sangue derramado por vós!

[Estrofe 2]
C         F
2. Estando à mesa, tomou o pão santo,
Dm         G7
Deu graças ao Pai e o partiu aos seus:
C         F
"Tomai e comei, isto é o meu Corpo,
Dm          G7            C
O Pão da Aliança que desce dos céus!"

[Refrão]
C         F           G7            C
Isto é o meu Corpo que é dado por vós!
Am         Dm          G7            C
Isto é o meu Sangue derramado por vós!

[Estrofe 3]
C         F
3. Depois da ceia, tomou o cálice,
Dm         G7
Deu graças de novo e a todos entregou:
C         F
"Tomai e bebei, Sangue da Aliança,
Dm         G7            C
Que pelos pecados de todos jorrou!"

[Refrão]
C         F           G7            C
Isto é o meu Corpo que é dado por vós!
Am         Dm          G7            C
Isto é o meu Sangue derramado por vós!

[Estrofe 4]
C         F
4. Quem come deste pão e bebe deste vinho
Dm         G7
Terá vida eterna, não há de morrer;
C         F
Eu o ressuscitarei no último dia,
Dm         G7            C
Para com o Pai no esplendor viver!

[Refrão]
C         F           G7            C
Isto é o meu Corpo que é dado por vós!
Am         Dm          G7            C
Isto é o meu Sangue derramado por vós!

[Estrofe 5]
C         F
5. Somos a Igreja reunida no amor,
Dm         G7
Corpo místico vivo do Redentor;
C         F
Pelo Pão sagrado e pelo Sangue bendito,
Dm         G7            C
Sejamos no mundo reflexo do amor!

[Refrão Final]
C         F           G7            C
Isto é o meu Corpo que é dado por vós!
Am         Dm          G7            C
Isto é o meu Sangue derramado por vós!
C         F           G7            C
Fazei isto em memória de mim,
Am         Dm          G7            C
Até que eu venha no Reino sem fim!',
  to_tsvector('portuguese', 'Antes da Morte e Ressurreição de Jesus (Isto É o Meu Corpo) ' || '')
),
(
  'eu-vim-para-que-todos-tenham-vida-comunhao',
  'Eu Vim Para Que Todos Tenham Vida (João 10, 10)',
  'Pe. José Weber, svd / Hinário Litúrgico CNBB',
  'Pe. José Weber, svd / Hinário Litúrgico CNBB',
  'Em',
  80,
  '4/4',
  'Canto Processional de Comunhão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Jo 10, 10; Jo 6, 51',
  'liturgica',
  '[Intro] B7  Em  Am  B7  Em

[Refrão]
B7        Em         Am
Eu vim para que todos tenham vida,
B7        Em
Que todos tenham vida plenamente!

[Estrofes]
Em         C        Am         B7
1. Reconstrói a tua vida em comunhão com teu Senhor,
Em         B7
Reconstrói a tua vida em comunhão com teu irmão:
E7        Am
Onde está o teu irmão,
D7        G        (B7)
Eu estou presente nele!

[Refrão]

Em         C        Am         B7
2. Eu passei fazendo o bem, eu curei todos os males;
Em         B7
Hoje és minha presença junto a todo sofredor:
E7        Am
Onde sofre o teu irmão,
D7        G        (B7)
Eu estou sofrendo nele!

[Refrão]

Em         C        Am         B7
3. Entreguei a minha vida pela salvação de todos;
Em         B7
Reconstrói, protege a vida de indefesos e inocentes:
E7        Am
Onde morre o teu irmão,
D7        G        (B7)
Eu estou morrendo nele!

[Refrão]

Em         C        Am         B7
4. Vim buscar e vim salvar o que estava já perdido;
Em         B7
Acolhei com paciência o que vós considerais pecador:
E7        Am
Onde julgas teu irmão,
D7        G        (B7)
Tu me julgas nele!

[Refrão]

Em         C        Am         B7
5. Eu não vim chamar os justos, vim chamar os pecadores;
Em         B7
Hoje és o mensageiro do perdão e do amor:
E7        Am
Onde perdoas teu irmão,
D7        G        (B7)
Eu perdoo nele!

[Refrão]

Em         C        Am         B7
6. Este pão que recebestes é meu corpo entregue a vós;
Em         B7
Ide ao mundo e anunciai o Evangelho da verdade:
E7        Am
Quem acolhe o teu irmão,
D7        G        (B7)
Acolhe a mim nele!',
  to_tsvector('portuguese', 'Eu Vim Para Que Todos Tenham Vida (João 10, 10) ' || '')
),
(
  'onde-ha-caridade-e-amor-ubi-caritas-lava-pes',
  'Onde Há Caridade e Amor, Aí Está Deus (Ubi Caritas - Lava-Pés)',
  'Missal Romano - Quinta-Feira Santa',
  'Missal Romano - Quinta-Feira Santa',
  'D',
  78,
  '4/4',
  'Hino do Lava-Pés e Ofertório',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Quaresma',
  '1Jo 4, 16; Jo 13, 34',
  'liturgica',
  '​( E            G#m7       F#m7       E/F# C#m     B F#m     E/G# )  A/C# B7 E
​Onde o amor e    a   ca.......ri....da..de,      Deus  aí     está! (bis)


​( E   G#m   E/B F#m     G#m/F#      E/F# G#m  F#m )    Bsus4   G#m  A    E         
​Congregou-nos num só cor......po    o amor de Cris...to / exultemos, pois, e nele 

G#m     A F# B4 E/G#
jubilemos.

​                  A6    E/G#     F#m            A         B   E  C#m E7+      A        
​Ao Deus vivo nós temamos, mas amemos. /    E, sinceros, uns aos outros, nos queiramos.

F#m           B         F#m7     Bsus4 E



​( E   G#m    E/B  F#m     G#m/F#      E/F# G#m   F#m )    Bsus4 G#m     A     E   G#m
​Todos jun..tos  num só cor......po,  com..gre...ga....dos: / pela mente não sejamos 

     A   F# B4 E/G#
separados!

​          A6    E/G#     F#m      A  B    E C#m   E7+    A   F#m           B   F#m7 Bsus4 E
​Cessem lutas, cessem rixas, dissensões, / mas esteja em nosso meio Cristo Deus!


​( E   G#m  E/B  F#m     G#m/F#      E/F#  G#m    F#m    Bsus4 ) G#m      A   E    G#m
​Junto um dia, com os elei......tos, nós   ve.....ja....mos / tua face gloriosa, 

   A   F# B4 E/G#
Cristo Deus:

​          A6   E/G#    F#m         A   B      E  C#m  E7+    A       F#m   B F#m7 Bsus4 E
​Gáudio puro, que é imenso e que ainda vem, / pelos séculos dos séculos. Amém',
  to_tsvector('portuguese', 'Onde Há Caridade e Amor, Aí Está Deus (Ubi Caritas - Lava-Pés) ' || '')
),
(
  'povo-meu-que-te-fiz-eu-improperios-sexta-feira-santa',
  'Povo Meu, Que Te Fiz Eu? (Impropérios da Adoração da Santa Cruz)',
  'Missal Romano - Sexta-Feira da Paixão do Senhor',
  'Missal Romano - Sexta-Feira da Paixão do Senhor',
  'Em',
  70,
  '4/4',
  'Impropérios da Santa Cruz',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Quaresma',
  'Mq 6, 3-4; Is 5, 1-4',
  'liturgica',
  '[Intro] Em  Am  B7  Em

[Refrão]
   Em       Am
Povo meu, que te fiz Eu?
   D7        G
Dize: em que te contristei?
   Am         Em         B7          Em
Por que à morte me entregaste? Dize: em que te contristei?

[Triságio Sagrado]
   Am         Em         B7          Em
Deus Santo, Deus Forte, Deus Imortal, tende piedade de nós!

[Estrofes]
   Em           Am         D7          G
1. Eu te tirei do Egito, e por quarenta anos te guiei no deserto,
   Am      Em         B7          Em
E tu preparaste uma cruz para o teu Salvador!',
  to_tsvector('portuguese', 'Povo Meu, Que Te Fiz Eu? (Impropérios da Adoração da Santa Cruz) ' || '')
),
(
  'fiel-madeiro-da-santa-cruz-sexta-feira-santa',
  'Fiel Madeiro da Santa Cruz (Crux Fidelis)',
  'Venâncio Fortunato (Séc. VI) / Missal Romano',
  'Venâncio Fortunato (Séc. VI) / Missal Romano',
  'Dm',
  72,
  '4/4',
  'Hino da Adoração da Cruz',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Quaresma',
  'Gl 6, 14; 1Pd 2, 24',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm      Gm         C7          F
Fiel Madeiro da Santa Cruz, ó árvore sem rival!
   Gm         Dm         A7          Dm
Que selva outro lenho produz, que traga em si fruto igual?
   Gm     Dm         A7          Dm
Quão doce peso conduz o lenho celestial!

[Refrão]
   Dm      Gm         C7          F
Fiel Madeiro da Santa Cruz, ó árvore sem rival!
   Gm         Dm         A7          Dm
Que selva outro lenho produz, que traga em si fruto igual?
   Gm     Dm         A7          Dm
Quão doce peso conduz o lenho celestial!

[Final] Dm  F  A7  Dm',
  to_tsvector('portuguese', 'Fiel Madeiro da Santa Cruz (Crux Fidelis) ' || '')
),
(
  'te-deum-a-vos-o-deus-louvamos',
  'A Vós, Ó Deus, Louvamos (Hino Te Deum de Ação de Graças)',
  'Santo Ambrósio e Santo Agostinho (Séc. IV) / Missal Romano',
  'Santo Ambrósio e Santo Agostinho (Séc. IV) / Missal Romano',
  'D',
  88,
  '4/4',
  'Hino Solene de Ação de Graças',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Is 6, 3; Sl 144',
  'liturgica',
  '[Intro] D  G  A7  D

[Primeira Parte]
   D         G         A7          D
1. A Vós, ó Deus, louvamos, a Vós, Senhor, cantamos;
   Bm    Em         A7          D
A Vós, Eterno Pai, adora toda a terra!

[Refrão]
   G       A7         D           Bm
Santo, Santo, Santo, Senhor Deus do universo!
   Em         A7         D
Em Vós, Senhor, esperamos: não sejamos confundidos para sempre!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'A Vós, Ó Deus, Louvamos (Hino Te Deum de Ação de Graças) ' || '')
),
(
  'deus-e-amor-pe-zezinho',
  'Deus É Amor (1 João 4, 8)',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  80,
  '4/4',
  'Balada Bíblica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  '1Jo 4, 7-16',
  'liturgica',
  '[Intro] C  Am  Dm  G7  C

[Refrão]
   C          Am         Dm          G7
Deus é Amor, Deus é Amor: quem vive no amor vive em Deus,
   Dm       G7         C
E Deus vive nele, porque Deus é Amor!

[Refrão]
   C          Am         Dm          G7
Deus é Amor, Deus é Amor: quem vive no amor vive em Deus,
   Dm       G7         C
E Deus vive nele, porque Deus é Amor!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Deus É Amor (1 João 4, 8) ' || '')
),
(
  'eis-me-aqui-senhor-comunidade-shalom',
  'Eis-me Aqui (Comunidade Shalom)',
  'Comunidade Católica Shalom',
  'Comunidade Católica Shalom',
  'C',
  74,
  '4/4',
  'Balada Vocacional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Is 6, 8',
  'liturgica',
  '[Intro] C  G  Am  F

[Refrão]
   C          G         Am
Eis-me aqui, Senhor, pra fazer Tua vontade,
   F          G         C
Toma a minha vida, consagra o meu coração!

[Refrão]
   C          G         Am
Eis-me aqui, Senhor, pra fazer Tua vontade,
   F          G         C
Toma a minha vida, consagra o meu coração!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Eis-me Aqui (Comunidade Shalom) ' || '')
),
(
  'fogo-abrasador-comunidade-shalom',
  'Fogo Abrasador',
  'Comunidade Católica Shalom / Suely Façanha',
  'Comunidade Católica Shalom / Suely Façanha',
  'D',
  74,
  '4/4',
  'Balada de Consagração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Pentecostes',
  'Ct 8, 6; Lc 12, 49',
  'liturgica',
  '​[Intro] E9  B  C#m  G#m

​        A  E/G#  F#m  E9


​E9       B               C#m
​Se Tu inflamas o meu coração

​        G#m                 A
​Se Tu somente és a minha razão

​    E/G#    F#m  B4
​De viver e amar

​E9       B                C#m
​Em tuas mãos minha vida estar

​        G#m                 A
​Teu coração é onde quero morar

​   E/G#       F#m
​E unir-me em amor

​[Refrão]


​         B          A      C#m
​Como um fogo abrasador inflama

​      F#m          B          A       C#m
​Faz subir tuas centelhas de amor em chamas

​      F#m        B            A
​No teu coração aberto meu Senhor


​E9       B                 C#m
​Seja adorado pra sempre Senhor

​          G#m                A
​Quero te amar como amado eu sou

​     E/G#      F#m  B4
​Em louvor me darei

​E9     B               C#m
​Tua vontade e a minha, uma só

​        G#m                   A
​Teu coração e o meu sejam um só

​   E/G#       F#m
​Movimento de Amor


​         B          A      C#m
​Como um fogo abrasador inflama

​      F#m          B          A       C#m
​Faz subir tuas centelhas de amor em chamas

​      F#m        B            A
​No teu coração aberto meu Senhor


​E9       B                 C#m
​Seja adorado pra sempre Senhor

​          G#m                A
​Quero te amar como amado eu sou

​     E/G#      F#m  B4
​Em louvor me darei

​E9     B               C#m
​Tua vontade e a minha, uma só

​        G#m                   A
​Teu coração e o meu sejam um só

​   E/G#       F#m
​Movimento de Amor


​[Final] A  E/G#  F#m

​        E/G#  C#m  G#m  A',
  to_tsvector('portuguese', 'Fogo Abrasador ' || '')
),
(
  'hino-campanha-da-fraternidade-2023-fome',
  'Dai-lhes Vós Mesmos de Comer (Hino da Campanha da Fraternidade 2023)',
  'CNBB - Campanha da Fraternidade 2023 (Fraternidade e Fome)',
  'CNBB - Campanha da Fraternidade 2023 (Fraternidade e Fome)',
  'G',
  84,
  '4/4',
  'Toada Litúrgica da CF',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Quaresma',
  'Mt 14, 13-21; Jo 6, 1-15',
  'liturgica',
  '​[Intro] F  F#º  Em/G  A7(4)

​        Dm7  G4  C


[Tab - Intro]

E|--8-------------10-8----------------------| 
B|----10-10-8-10--------10-10--8-8-6-8------| 
G|------------------------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

E|------------------------------------------| 
B|-6-6-6-6-6-5---5--------------------------| 
G|-------------7---5------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 


​[Primeira Parte]


​     C        G/B      Am  Am/G
​Vocação e missão da Igreja

​       F       A7         Dm  Dm/C  G/B
​Responder ao apelo do Senhor

​    C         G          C   Dm  C/E
​De sermos no mundo a certeza

​ F     C    Am    Dm        G  G4  G
​Da partilha,   milagre do amor

​[Refrão]


​       Am        Am/G     F
​Ó Bom Mestre, a vós recorremos

​  C/E  Dm        A7      Dm  Dm/C
​Aju___dai-nos a fome vencer

​ Bm7(5-)  E7                  Am   F
​Recor____dai-nos o que nós devemos

​  G          C   Am
​“Dai-lhes vós mesmos de comer”

​  Dm           G           C
​“Dai-lhes vós mesmos de comer”


​( Dm/F  G  C )

​[Segunda Parte]


​        C          G/B      Am  Am/G
​Jesus Cristo, Pão da vida plena

​        F        A7       Dm  Dm/C  G/B
​Em sua mesa nos faz assentar

​     C     G        C
​E sacia a nossa pobreza

​ F       C          Dm       G  G4
​Para um mundo mais justo formar

​[Refrão]


​Am  G/B  Am        Am/G     F
​Ó  Bom  Mestre, a vós recorremos

​  C/E  Dm        A7      Dm  Dm/C
​Aju___dai-nos a fome vencer

​ Bm7(5-)  E7                  Am   F
​Recor____dai-nos o que nós devemos

​  G          C   Am
​“Dai-lhes vós mesmos de comer”

​  Dm           G           C
​“Dai-lhes vós mesmos de comer”


​( Dm/F  G  C )

​[Terceira Parte]


​  C           G/B      Am   Am/G
​Unidos nesse tempo propício

​      F       A7       Dm  Dm/C  G/B
​De jejum, oração, caridade

​      C          G         C
​Recordemos, pois é nosso ofício

​ F    C  Am     Dm       G   G4  G
​Cultivar e plantar a bondade

​[Refrão]


​       Am        Am/G     F
​Ó Bom Mestre, a vós recorremos

​  C/E  Dm        A7      Dm  Dm/C
​Aju___dai-nos a fome vencer

​ Bm7(5-)  E7                  Am   F
​Recor____dai-nos o que nós devemos

​  G          C   Am
​“Dai-lhes vós mesmos de comer”

​  Dm           G           C
​“Dai-lhes vós mesmos de comer”


​( Dm/F  G  A )

​[Quarta Parte]


​     D          A/C#   Bm  Bm/A
​A ausência da fraternidade

​     G      B7          Em  A
​Nos leva a desviar o olhar

​      D           A      D
​Do irmão que tem necessidade

​ G    D   Bm  Em        A  A9  A
​De valor, alimento e lugar

​[Refrão]


​       Bm        Bm7/A    G
​Ó Bom Mestre, a vós recorremos

​  B7/F#  Em        B7      Em  Em/D
​Aju_____dai-nos a fome vencer

​ C#m7(5-)  F#7                 Bm   G
​Recor_____dai-nos o que nós devemos

​  A7(4/9)      A7          D   Bm
​“Dai-lhes vós mesmos de comer”

​  Em           A7          D
​“Dai-lhes vós mesmos de comer”


​( Em  A  D )

​[Quinta Parte]


​   D        A/C#    Bm   Bm/A
​A fome agravada no mundo

​       G      B7      Em   A
​Vem de uma visão arrogante

​     D          A           D
​A carência do amor mais profundo

​  G      D  A/C#  Em/B        A
​Que nos torna  irmãos tão distantes

​[Refrão]


​       Bm        Bm7/A    G
​Ó Bom Mestre, a vós recorremos

​  B7/F#  Em        B7      Em  Em/D
​Aju_____dai-nos a fome vencer

​ C#m7(5-)  F#7                 Bm   G
​Recor_____dai-nos o que nós devemos

​  A7          D   Bm
​“Dai-lhes vós mesmos de comer”

​  Em           A7          D
​“Dai-lhes vós mesmos de comer”


​( Em  A  D )

​[Sexta Parte]


​       D          A/C#   Bm  Bm/A
​Nas cidades e em todo lugar

​       G       B7        Em  A
​Que se abra o nosso coração

​       D        A         D
​À alegria de poder partilhar

​G      D    A/C#  Em/B   A
​O pão nosso em feliz oração

​[Refrão]


​       Bm        Bm7/A    G
​Ó Bom Mestre, a vós recorremos

​  B7/F#  Em        B7      Em  Em/D
​Aju_____dai-nos a fome vencer

​ C#m7(5-)  F#7                 Bm   G
​Recor_____dai-nos o que nós devemos

​  A7(4)        A7          D   Bm
​“Dai-lhes vós mesmos de comer”

​  Em           A7          D
​“Dai-lhes vós mesmos de comer”


​[Final] G  G#º  D/A  B7

​        Em  A7(4/9)  D


[Tab - Final]

E|-10-------------12-10---------------------| 
B|----12-12-10-12-------12-12--10-10-8-10---| 
G|------------------------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

E|------------------------------------------| 
B|-8-8-8-8-8-7---7--------------------------| 
G|-------------9---7------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 


​E|------------------------------------------|',
  to_tsvector('portuguese', 'Dai-lhes Vós Mesmos de Comer (Hino da Campanha da Fraternidade 2023) ' || '')
),
(
  'hino-campanha-da-fraternidade-2020-vida-dom-e-compromisso',
  'Viu, Sentiu Compaixão e Cuidou Dele (Hino da Campanha da Fraternidade 2020)',
  'CNBB - Campanha da Fraternidade 2020 (Fraternidade e Vida: Dom e Compromisso)',
  'CNBB - Campanha da Fraternidade 2020 (Fraternidade e Vida: Dom e Compromisso)',
  'Dm',
  78,
  '4/4',
  'Balada Quaresmal da CF',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Quaresma',
  'Lc 10, 25-37',
  'liturgica',
  '​[Intro] Fm  Bb  Eb  Ab

​        Fm  Gbº  G7

​[Primeira Parte]


​          Cm          Fm     G7    Cm
​Deus de amor e de ternura, contemplamos

​      Eb           Ab     Bb      Eb
​Este mundo tão bonito que nos deste

​       Fm            Bb          Eb
​Desse dom, fonte da vida, recordamos

​      Fm          F#º           G
​Cuidadores, guardiões tu nos fizeste

​[Refrão]


​      Cm   C          Fm
​Peregrinos,  aprendemos nesta estrada

​         Bb          G7       Cm  C7
​O que o “bom samaritano” ensinou

​      Fm           G7       Cm
​Ao passar por uma vida ameaçada

​       Db9         Ab7    G7    Cm
​Ele a viu, compadeceu-se e cuidou


​( Ab  G7 )

​[Segunda Parte]


​      Cm           Fm     G7    Cm
​Toda vida é um presente e é sagrada

​        Eb         Ab     Bb   Eb
​Seja humana, vegetal ou animal

​       Fm            Bb            Eb
​É pra sempre ser cuidada e respeitada

​      Fm          F#º             G
​Desde o início até seu termo natural


​[Refrão]


​      Cm   C          Fm
​Peregrinos,  aprendemos nesta estrada

​         Bb          G7       Cm  C7
​O que o “bom samaritano” ensinou

​      Fm           G7       Cm
​Ao passar por uma vida ameaçada

​       Db9         Ab7    G7    Cm
​Ele a viu, compadeceu-se e cuidou


​( Fm  Bb  Eb  Ab )

​( Fm  F#º  G7 )

​[Terceira Parte]


​      Cm              Fm    G7      Cm
​Tua glória é o homem vivo, Deus da vida

​       Eb             Ab       Bb    Eb
​Ver felizes os teus filhos, tuas filhas

​        Fm        Bb            Eb
​É a justiça para todos, sem medida

​      Fm          F#º         G
​É formarmos, no amor, bela família

​[Refrão]


​      Cm   C          Fm
​Peregrinos,  aprendemos nesta estrada

​         Bb          G7       Cm  C7
​O que o “bom samaritano” ensinou

​      Fm           G7       Cm
​Ao passar por uma vida ameaçada

​       Db9         Ab7    G7    Cm
​Ele a viu, compadeceu-se e cuidou


​( Ab  G7 )

​[Quarta Parte]


​        Cm           Fm    G7   Cm
​Mata a vida o vírus torpe da ganância

​       Eb             Ab      Bb      Eb
​Da violência, da mentira e da ambição

​        Fm          Bb              Eb
​Mas também o preconceito, a intolerância

​     Fm           F#º          G
​O caminho é a justiça e conversão

​[Refrão]


​      Cm   C          Fm
​Peregrinos,  aprendemos nesta estrada

​         Bb          G7       Cm  C7
​O que o “bom samaritano” ensinou

​      Fm           G7       Cm
​Ao passar por uma vida ameaçada

​       Db9         Ab7    G7    Cm  Ab
​Ele a viu, compadeceu-se e cuidou

​[Quinta Parte]


​      C#m  C#          F#m
​Peregrinos,   aprendemos nesta estrada

​          B        Ab7        C#m  C#7
​O que o “bom samaritano” ensinou

​       F#m         Ab7       C#m
​Ao passar por uma vida ameaçada

​       D9          A    Ab7    C#m
​Ele a viu, compadeceu-se e cuidou


​[Final] C#m  A  B  C#m',
  to_tsvector('portuguese', 'Viu, Sentiu Compaixão e Cuidou Dele (Hino da Campanha da Fraternidade 2020) ' || '')
),
(
  'hino-campanha-da-fraternidade-2015-eu-vim-para-servir',
  'Eu Vim Para Servir (Hino da Campanha da Fraternidade 2015)',
  'CNBB - Campanha da Fraternidade 2015 (Marcos 10, 45)',
  'CNBB - Campanha da Fraternidade 2015 (Marcos 10, 45)',
  'G',
  82,
  '4/4',
  'Balada Litúrgica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Quaresma',
  'Mc 10, 45; Jo 13, 14',
  'liturgica',
  '​Intro: C  G/B  Am  Dm  G  G/B  C  C4  C


​  C             A7                  Dm
​1. Em meio às angústias, vitórias e lidas,

​G7          C
​   no palco do mundo, onde a história se faz,

​Am          Dm
​   sonhei uma Igreja a serviço da vida.

​G          C
​   Eu fiz do meu povo os atores da paz!

​Em               F        G        C
​   Eu fiz do meu povo os atores da paz!

​Refrão:


​F             G/F       Em
​   Quero uma Igreja solidária,

​        A7           Dm
​   servidora e missionária,

​G7          C (Dm Em)
​   que anuncia e saiba ouvir.

​F                   Am
​   A lutar por dignidade,

​Dm          Em   G          C
​   por justiça e igualdade, pois "Eu vim para servir".


​Passagem: C   G7  C  F  C


​ C             A7                 Dm
​2. Os grandes oprimem, exploram o povo,

​G7          C  G/B
​   mas entre vocês bem diverso há de ser.

​Am          Dm
​   Quem quer ser o grande se faça de servo:

​G          C
​   Deus ama o pequeno e despreza o poder

​Em              F          G         C
​   Deus ama o pequeno e despreza o poder! (Refrão)


​ C            A7               Dm
​3. Preciso de gente que cure feridas,

​G7          C  G/B
​   que saiba escutar, acolher, visitar.

​Am          Dm
​   Eu quero uma Igreja em constante saída,

​G          C
​   de portas abertas, sem medo de amar!

​Em            F           G        C
​   de portas abertas, sem medo de amar! (Refrão)


​   C      A7          Dm
​4. O meu mandamento é antigo e tão novo:

​G7          C  G/B
​   Amar e servir como faço a vocês.

​Am          Dm
​   Sou mestre que escuta e cuida seu povo,

​G          C
​   um Deus que se inclina e que lava seus pés!

​Em                  F           G         C
​   um Deus que se inclina e que lava seus pés! (Refrão)


​ C              A7              Dm
​5. As chagas do ódio e da intolerância

​G7          C  G/B
​   se curam com o óleo do amor-compaixão.

​Am          Dm
​   Na luz do Evangelho, acende a esperança.

​G          C
​   Vem! Calça as sandálias, assume a missão!

​Em                  F         G         C
​   Vem! Calça as sandálias, assume a missão! (Refrão)',
  to_tsvector('portuguese', 'Eu Vim Para Servir (Hino da Campanha da Fraternidade 2015) ' || '')
),
(
  'a-forca-do-amor-marcio-todeschini',
  'A Força do Amor',
  'Márcio Todeschini / Canção Nova',
  'Márcio Todeschini / Canção Nova',
  'D',
  76,
  '4/4',
  'Balada Eucarística',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  6,
  'Comunhão',
  'Tempo Comum',
  'Rm 8, 35-39',
  'liturgica',
  'D9
Deus colocou no meu coração

 Bm7    G9
Uma grande força e uma direção…

D9
Para levar uma Nova Canção…

Bm7    G9
A todos os povos e nações

Bm7         A
Mesmo que me calem,

    G9
Mesmo que eu sofra, sempre vou cantar…

Bm7 A
Se eu desanimar,

       G9
E o coração endurecer, eu vou cantar…

D9         A         Bm7      A      G9
É a força do amor que me faz prosseguir

           A
E não desistir!

    D9      A        Bm7      A  G9
A Força do Amor que me faz ser feliz

              A       Bm7  D/F#  G9
Que me faz cantar…o seu amor

Bm7 D/F# G9       Bm7  G9        A
Pa   -   ra    sempre  eu    vou cantar

Bm7 D/F#  G9      Bm7    G9       A
Com minha vida eu sempre vou cantar…

Bm7 D/F#  G9       Bm7  G9        A
en  -   to  -   ando      a Nova Canção…

Bm7 D/F# G9       Bm7       G9      A
Com Tua força         no meu coração!

D9         A         Bm7       A    G9
É a força do amor que me faz prosseguir

            A
E não desistir!

    D9      A        Bm7        A    G9
A Força do Amor que me faz ser feliz

              A       Bm7  D/F#  G9
Que me faz cantar…o seu amor',
  to_tsvector('portuguese', 'A Força do Amor ' || '')
),
(
  'quem-me-tocou-pe-joao-carlos',
  'Quem Me Tocou? (Pela Fé Eu Vou Tocar no Manto de Jesus)',
  'Padre João Carlos',
  'Padre João Carlos',
  'Dm',
  78,
  '4/4',
  'Balada Evangélica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Mc 5, 25-34',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm        Gm         C7          F
Olhou Jesus ao Seu redor e perguntou: "Quem Me tocou?"
   Gm      Dm         A7          Dm
Foi a fé daquela mulher que a salvou e a curou!

[Refrão]
   Dm        Gm         C7          F
Olhou Jesus ao Seu redor e perguntou: "Quem Me tocou?"
   Gm      Dm         A7          Dm
Foi a fé daquela mulher que a salvou e a curou!

[Final] Dm  F  A7  Dm',
  to_tsvector('portuguese', 'Quem Me Tocou? (Pela Fé Eu Vou Tocar no Manto de Jesus) ' || '')
),
(
  'simplesmente-amar-nadia-santolli',
  'Simplesmente Amar',
  'Nádia Santolli',
  'Nádia Santolli',
  'D',
  74,
  '4/4',
  'Dedilhado Suave',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  '1Cor 13, 1-13',
  'liturgica',
  '​[Intro]  A  E6/G#  G7M  Esus4  E  Bm  A  E  D/F#  E/G#


​A       C#m              Bm      Esus4/E   E
​O amor nasceu em meio ao frio de uma noite

​          A         C#m           Bm     E D/F# E/G#
​Sem um lugar para ficar... desaconchego sim

​Bm        C#m          C#/F    F#m  E9      D7M         G7M  E/G#
​Palhas pra deitar  e ao seu redor    os animais que ali moravam

​Bm        C#m  C#/F      F#m       E9      D7M    G7M
​Mesmo sendo Rei,   pobre se fez,     só por amor


​Esus4/E E   A              C#m         F#m     Esus4  D
​Simplesmente amar, é o que importa para quem quiser servir

​           E   A     C#m               F#m   Esus4     D
​Simplesmente amar, é a condição maior, suprema    do servir

​  A/C#       Bm9      Esus4/E  E             (A  E6/G# G7M Esus4 E)
​Eis a     verdadeira vocação       simplesmente amar


​A       C#m              Bm       E9        A
​O amor cresceu em meio a nós e ao homem se igualou

​     C#m        Bm     E  D/F#  E/G#
​Não procurou seus interesses, não...

​Bm          C#m   C#/F    F#m    E9 D7M       G7M     E/G#
​Do próximo quis lavar os pés como sinal de igualdade

​Bm        C#m   C#/F  F#m      E9    D7M   G7M
​Na cruz se entregou e perdoou só por amor


​Esus4/E E   A              C#m         F#m    Esus4  D
​Simplesmente amar, é o que importa para quem quiser servir

​     E        A         C#m           F#m   Esus4     D
​Simplesmente amar, é a condição maior, suprema    do servir

​  A/C#       Bm9      Esus4/E  E               A  A7 G/A
​Eis a     verdadeira vocação       simplesmente amar


​D7M  A7M               D             C#m  D7M
​Como dizer “Senhor, te amo" sem mesmo vê-lo

​        A7M              D              C#m         D
​E ser incapaz de amar o outro que está ao lado e se pode ver?!

​A6/C#   Bm             Bsus4/F# F#
​O que não ama não conhece a Deus

​         B
​Porque Deus é amor!


​              B          D#m        G#m   F#sus4    E
​Simplesmente amar, é o que importa para quem quiser servir

​        E/F#  B       D#m         G#m      F#sus4    E
​Simplesmente amar, é a condição maior, suprema      do servir

​       C#m9     E/F#  D#m7 E7M G B
​Eis a verdadeira vocação

​        B       D#m        G#m   F#sus4    E
​Simplesmente amar, é o que importa para quem quiser servir

​   E/F#  B       D#m         G#m   F#sus4    E
​Simplesmente amar, é a condição maior, suprema      do servir

​       C#m9     Bsus4(9)             B D#m7   E7M G B
​Eis a verdadeira vocação    simplesmente amar.',
  to_tsvector('portuguese', 'Simplesmente Amar ' || '')
),
(
  'basta-uma-palavra-luciana-antunes',
  'Senhor, Eu Não Sou Digno (Basta uma Palavra)',
  'Luciana Antunes',
  'Luciana Antunes',
  'C',
  72,
  '4/4',
  'Balada Eucarística',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Qualquer',
  'Mt 8, 8',
  'liturgica',
  '[Intro] C  G  Am  F

[Refrão]
   C         G         Am
Senhor, eu não sou digno de que entreis em minha morada,
   F        Dm         G7          C
Mas dizei uma só palavra e a minh''alma será curada!

[Refrão]
   C         G         Am
Senhor, eu não sou digno de que entreis em minha morada,
   F        Dm         G7          C
Mas dizei uma só palavra e a minh''alma será curada!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Senhor, Eu Não Sou Digno (Basta uma Palavra) ' || '')
),
(
  'oferta-agradavel-guilherme-pontes',
  'Oferta Agradável a Ti',
  'Guilherme Pontes / Missionário Shalom',
  'Guilherme Pontes / Missionário Shalom',
  'D',
  76,
  '4/4',
  'Balada de Ofertório',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Qualquer',
  'Fl 4, 18; Rm 12, 1',
  'liturgica',
  '[Intro] D  A  Bm  G

[Refrão]
   D            A         Bm
Que a nossa vida junto ao pão e ao vinho no altar
   G       A7         D
Seja oferta agradável a Ti, Senhor!

[Refrão]
   D            A         Bm
Que a nossa vida junto ao pão e ao vinho no altar
   G       A7         D
Seja oferta agradável a Ti, Senhor!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Oferta Agradável a Ti ' || '')
),
(
  'bendito-sejais-senhor-deus-do-universo-eurivaldo',
  'Bendito Sejais, Senhor, Pelos Dons do Pão e do Vinho',
  'Eurivaldo Silva Ferreira / Hinário Litúrgico CNBB',
  'Eurivaldo Silva Ferreira / Hinário Litúrgico CNBB',
  'C',
  82,
  '4/4',
  'Toada Litúrgica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Sl 103',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C         F         G7          C
Bendito sejais, Senhor, pelos dons que apresentamos:
   Am        Dm         G7          C
O pão e o vinho da terra que com amor compartilhamos!

[Refrão]
   C         F         G7          C
Bendito sejais, Senhor, pelos dons que apresentamos:
   Am        Dm         G7          C
O pão e o vinho da terra que com amor compartilhamos!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Bendito Sejais, Senhor, Pelos Dons do Pão e do Vinho ' || '')
),
(
  'toda-semente-e-um-anseio-de-frutificar-ofertorio',
  'Toda Semente É um Anseio de Frutificar',
  'Pe. José Cândido da Silva / Hinário Litúrgico CNBB',
  'Pe. José Cândido da Silva / Hinário Litúrgico CNBB',
  'D',
  82,
  '4/4',
  'Balada Litúrgica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Jo 12, 24',
  'liturgica',
  '[Intro] D  G  A7  D

[Refrão]
   D     G         A7          D
Toda semente é um anseio de frutificar,
   Bm     Em         A7          D
E todo fruto é uma forma de a gente se dar!

[Refrão]
   D     G         A7          D
Toda semente é um anseio de frutificar,
   Bm     Em         A7          D
E todo fruto é uma forma de a gente se dar!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Toda Semente É um Anseio de Frutificar ' || '')
),
(
  'felizes-os-convidados-para-a-ceia-do-senhor-gilson-celerino',
  'Felizes os Convidados Para a Ceia do Senhor (Apocalipse 19, 9)',
  'Gilson Celerino / Hinário Litúrgico',
  'Gilson Celerino / Hinário Litúrgico',
  'C',
  80,
  '4/4',
  'Processional de Comunhão',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Ap 19, 9; Jo 1, 29',
  'liturgica',
  '[Intro] C  F  G7  C

[Refrão]
   C       F         G7          C
Felizes os convidados para a Ceia do Senhor!
   Am       Dm         G7          C
Eis o Cordeiro de Deus, que tira o pecado do mundo!

[Refrão]
   C       F         G7          C
Felizes os convidados para a Ceia do Senhor!
   Am       Dm         G7          C
Eis o Cordeiro de Deus, que tira o pecado do mundo!

[Final] C  F  G7  C',
  to_tsvector('portuguese', 'Felizes os Convidados Para a Ceia do Senhor (Apocalipse 19, 9) ' || '')
),
(
  'minha-familia-no-altar-pe-marcos-rogerio',
  'Minha Família no Altar',
  'Padre Marcos Rogério',
  'Padre Marcos Rogério',
  'D',
  76,
  '4/4',
  'Balada de Ofertório',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Sl 127',
  'liturgica',
  '[Intro] D  A  Bm  G

[Refrão]
   D           A         Bm
Coloco minha família sobre o Teu santo altar,
   G           A7         D
Com o pão e com o vinho para a vida consagrar!

[Refrão]
   D           A         Bm
Coloco minha família sobre o Teu santo altar,
   G           A7         D
Com o pão e com o vinho para a vida consagrar!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Minha Família no Altar ' || '')
),
(
  'sopro-de-vida-danilo-casemiro',
  'Sopro de Vida (Vem, Espírito Criador)',
  'Danilo Casemiro',
  'Danilo Casemiro',
  'D',
  74,
  '4/4',
  'Balada de Pentecostes',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  false,
  true,
  4,
  'Comunhão',
  'Pentecostes',
  'Jo 20, 22',
  'liturgica',
  '[Intro] D  A  Bm  G

[Refrão]
   D         A         Bm
Sopra em mim Teu Sopro de Vida, ó Espírito de Amor,
   G          A7         D
Renova a minha alma na presença do Senhor!

[Refrão]
   D         A         Bm
Sopra em mim Teu Sopro de Vida, ó Espírito de Amor,
   G          A7         D
Renova a minha alma na presença do Senhor!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Sopro de Vida (Vem, Espírito Criador) ' || '')
),
(
  'todo-teu-senhor-gustavo-osterno-msh',
  'Todo Teu, Senhor (Missionário Shalom)',
  'Gustavo Osterno / Missionário Shalom',
  'Gustavo Osterno / Missionário Shalom',
  'G',
  80,
  '4/4',
  'Pop Acústico',
  '↓ ↓ ↑ ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Rm 12, 1',
  'liturgica',
  '[Intro] G  D  Em  C

[Refrão]
   G            D         Em
Sou todo Teu, Senhor, minha vida Te dou no altar,
   C          D         G
Transforma meu coração para sempre Te amar!

[Refrão]
   G            D         Em
Sou todo Teu, Senhor, minha vida Te dou no altar,
   C          D         G
Transforma meu coração para sempre Te amar!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Todo Teu, Senhor (Missionário Shalom) ' || '')
),
(
  'catequese-vocacao-de-catequista',
  'Vocação de Catequista',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'D',
  76,
  '4/4',
  'Balada Pastoral',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Ofertório',
  'Qualquer',
  'Is 6, 8; 1Cor 9, 16',
  'liturgica',
  '[Intro] D  A/C#  Bm7  G9  Em7  A7  D

[Primeira Parte]
   D          A/C#
1. Chamaste-me pelo nome na comunidade,
   Bm7         F#m7
Para semear a Tua Palavra de luz.
   G9          D/F#
Com paciência, ternura e fidelidade,
   Em7        A4      A7
Conduzir os pequenos ao encontro de Jesus!

[Refrão]
          G9                A/G
Ser catequista é vocação de amor,
        F#m7         Bm7
Ser eco fiel da voz do Bom Pastor!
       Em7         A7
Eis-me aqui, Senhor, envia-me a servir,
       G9         A7        D
Tua Igreja viva ajudar a construir!

[Segunda Parte]
   D          A/C#
2. Mais do que ensinar doutrinas no papel,
   Bm7         F#m7
É testemunhar com a própria vida o Evangelho.
   G9          D/F#
Guiados por Maria, a Catequista fiel,
   Em7      A4      A7
Do amor do Pai queremos ser espelho!

[Final]
       Em7        A7        Bm7  G9
Ser catequista é vocação de amor,
       Em7        A7        D9
Abençoa os catequistas, ó Senhor!',
  to_tsvector('portuguese', 'Vocação de Catequista ' || '')
),
(
  'catequese-o-amor-de-deus-e-maravilhoso',
  'O Amor de Deus É Maravilhoso',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'C',
  112,
  '4/4',
  'Infantil / Gestos',
  '↓  ↑ ↓ ↑  ↓ ↑',
  true,
  true,
  true,
  3,
  'Ação de Graças',
  'Qualquer',
  'Ef 3, 18-19; Sl 103, 11',
  'liturgica',
  '[Intro] C  G7  C  F  G7  C

[Primeira Parte]
   C            G7
1. O amor de Deus é maravilhoso,
         C
O amor de Deus é maravilhoso,
   C7         F
O amor de Deus é maravilhoso,
        C          G7         C
Grande é o amor de Deus!

[Refrão]
   C         G7
Tão alto que eu não posso estar mais alto do que Ele,
         C
Tão baixo que eu não posso estar mais baixo do que Ele,
   C7         F
Tão amplo que eu não posso estar fora dele,
        C          G7         C
Grande é o amor de Deus!

[Segunda Parte]
   C         G7
2. Nos braços do Papai do Céu seguro estou,
         C
Pois Seu Filho amado por nós Ele enviou!
   C7         F
Por isso batemos palmas com muita alegria,
        C          G7         C
Cantando o amor de Deus todo dia!

[Final]
   F         C          Am7
Grande, imenso, maravilhoso,
   Dm7      G7     C9
Grande é o amor de Deus!',
  to_tsvector('portuguese', 'O Amor de Deus É Maravilhoso ' || '')
),
(
  'catequese-pedro-tiago-joao-no-barquinho',
  'Pedro, Tiago, João no Barquinho',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'D',
  116,
  '4/4',
  'Marcha Infantil',
  '↓  ↑ ↓ ↑  ↓ ↑',
  true,
  true,
  true,
  3,
  'Ação de Graças',
  'Qualquer',
  'Lc 5, 1-11; Jo 21, 1-6',
  'liturgica',
  '[Intro] D  A7  D  G  A7  D

[Primeira Parte]
   D         A7
1. Pedro, Tiago, João no barquinho,
         D
Pedro, Tiago, João no barquinho,
   D7           G
Pedro, Tiago, João no barquinho,
        D          A7         D
No mar da Galileia!

[Refrão]
   D         A7
Jogaram a rede, mas não pegaram peixe,
         D
Jogaram a rede, mas não pegaram peixe,
   D7         G
Jogaram a rede, mas não pegaram peixe,
        D          A7         D
No mar da Galileia!

[Segunda Parte]
   D         A7
2. Jesus mandou jogar do outro lado,
         D
Jesus mandou jogar do outro lado,
   D7           G
Jesus mandou jogar do outro lado,
        D          A7         D
No mar da Galileia!
   D         A7
Puxaram a rede cheia de peixinhos,
         D
Puxaram a rede cheia de peixinhos,
   D7         G
Pois quem obedece a Jesus é abençoado,
        D          A7         D
No mar da Galileia!

[Final]
   G          A7         D    Bm7
Com Jesus no nosso barquinho,
   Em7        A7         D9
Seguimos sempre no bom caminho!',
  to_tsvector('portuguese', 'Pedro, Tiago, João no Barquinho ' || '')
),
(
  'catequese-tres-palavrinhas-so',
  'Três Palavrinhas Só (Deus É Amor)',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'C',
  104,
  '4/4',
  'Infantil Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  3,
  'Ação de Graças',
  'Qualquer',
  '1Jo 4, 8.16',
  'liturgica',
  '[Intro] C  Dm7  G7  C  G7

[Primeira Parte]
   C         Dm7
1. Três palavrinhas só,
   G7         C
Eu aprendi de cor:
   C7         F
Deus é Amor!
   Dm7        G7            C
Trá-lá-lá-lá-lá-lá-lá-lá!

[Refrão]
          F         C
Deus é Amor, diz a Bíblia Sagrada,
          G7         C    C7
Deus é Amor, luz da nossa caminhada!
          F         C    Am7
Três palavrinhas guardadas no coração:
        Dm7        G7         C
Deus é Amor e nossa Salvação!

[Segunda Parte]
   C         Dm7
2. Quem ama o seu irmão,
   G7         C
Vive em comunhão,
   C7         F
Pois Deus é Amor!
   Dm7        G7            C
E nos deu Jesus, o Salvador!

[Final]
          F         C    Am7
Três palavrinhas só eu aprendi de cor:
        Dm7        G7         C9
Deus é Amor, Deus é Amor!',
  to_tsvector('portuguese', 'Três Palavrinhas Só (Deus É Amor) ' || '')
),
(
  'catequese-meu-barco-e-pequeno',
  'Meu Barco É Pequeno',
  'Catequese Católica / CNBB',
  'Catequese Católica / CNBB',
  'F',
  88,
  '4/4',
  'Balada Infantil',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão',
  'Qualquer',
  'Mc 4, 35-41; Sl 23, 4',
  'liturgica',
  '[Intro] F  Bb  C7  F  C7

[Primeira Parte]
   F         Gm7
1. Meu barco é pequeno e tão grande é o mar,
   C7         F      C7
Jesus segura minha mão!
   F         Bb
Ele é meu Piloto e tudo vai bem,
   F          C7            F      F7
Na viagem para Jerusalém!

[Refrão]
          Bb         F
Com Jesus no barco tudo vai muito bem,
          C7         F      F7
Não tenho medo da tempestade que vem!
          Bb         F      Dm7
Ele segura firme a minha mão,
        Gm7        C7         F
E guia em paz o meu coração!

[Segunda Parte]
   F         Gm7
2. Se as ondas subirem e o vento soprar,
   C7         F      C7
A voz de Jesus faz o mar acalmar!
   F         Bb
Com a Mãe do Céu e os amigos da fé,
   F          C7            F      F7
Navegamos firmes rumo a Nazaré!

[Final]
          Bb         F      Dm7
Ele é meu Piloto e tudo vai bem,
        Gm7        C7         F9
Na viagem para Jerusalém! Amém!',
  to_tsvector('portuguese', 'Meu Barco É Pequeno ' || '')
),
(
  'pe-joaozinho-conheco-um-coracao',
  'Conheço um Coração',
  'Padre Joãozinho, scj',
  'Padre Joãozinho, scj',
  'C',
  76,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  'Mt 11, 28-30; Jo 19, 34',
  'liturgica',
  '[Intro] C  Em  F  G7  C  G7

[Primeira Parte]
   C         Em
1. Conheço um coração tão manso, humilde e sereno
   F         G7
Que louva o Pai por revelar Seu nome aos pequenos
   F     G7         C          Am
Que tem o dom de amar, que sabe perdoar
   Dm         F          G7
E deu a vida para nos salvar!

[Refrão]
   F      G7          C          Am
Jesus, manda Teu Espírito
   Dm         G7         C     C7
Para transformar meu coração!
   F      G7          C          Am
Jesus, manda Teu Espírito
   Dm         G7         C
Para transformar meu coração!

[Segunda Parte]
   C         Em
2. Às vezes no meu peito bate um coração de pedra
   F         G7
Magoado, frio, sem vida, aqui dentro ele me aperta
   F      G7         C            Am
Não quer saber de amar, nem sabe perdoar
   Dm         F          G7
Quer tudo e não sabe partilhar!

   C         Em
3. Lava, purifica e restaura-me de novo
   F         G7
Serás o nosso Deus e nós seremos o Teu povo
   F    G7         C           Am
Derrama sobre nós a água do amor
   Dm         F          G7
O Espírito de Deus, nosso Senhor!

[Refrão]
   F      G7          C          Am
Jesus, manda Teu Espírito
   Dm         G7         C     C7
Para transformar meu coração!
   F      G7          C          Am
Jesus, manda Teu Espírito
   Dm         G7         C
Para transformar meu coração!

[Final]
   Dm         G7         C   Am
Para transformar meu coração!
   Dm         G7         C
Manda Teu Espírito, Senhor!',
  to_tsvector('portuguese', 'Conheço um Coração ' || '')
),
(
  'pe-joaozinho-mestre-bom-e-estarmos-aqui',
  'Mestre (Bom É Estarmos Aqui)',
  'Padre Joãozinho, scj',
  'Padre Joãozinho, scj',
  'D',
  74,
  '4/4',
  'Balada / Dedilhado',
  'P  I  M  A  M  I',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Quaresma',
  'Mt 17, 1-9; Mc 9, 2-10; Lc 9, 28-36',
  'liturgica',
  '[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D          A/C#
Mestre, bom é estarmos aqui
Bm         F#m
Reunidos bem perto de Ti
G          D/F#
No silêncio e na paz deste monte
Em         A7
Contemplando a Tua glória sem fim!

[Refrão]
   D              A/C#           Bm      F#m
Mas precisamos descer da montanha
   G              D/F#           Em      A7
Voltar para a vida, servir aos irmãos
   D              A/C#           Bm      G
Levando no rosto a luz do Tabor
   D         A7         D
E no coração a Tua missão!

[Segunda Parte]
D          A/C#
Mestre, ouvimos a voz de Deus Pai:
Bm         F#m
"Este é o Meu Filho amado, escutai!"
G          D/F#
Tua Palavra transforma o viver
Em         A7
Dá-nos coragem pra nunca temer!

[Refrão]
   D              A/C#           Bm      F#m
Mas precisamos descer da montanha
   G              D/F#           Em      A7
Voltar para a vida, servir aos irmãos
   D              A/C#           Bm      G
Levando no rosto a luz do Tabor
   D         A7         D
E no coração a Tua missão!

[Final]
   G         A7         Bm   G
Levando no rosto a luz do Tabor
   D         A7         D
E no coração a Tua missão!',
  to_tsvector('portuguese', 'Mestre (Bom É Estarmos Aqui) ' || '')
),
(
  'ir-miria-kolling-os-olhos-jamais-contemplaram',
  'Os Olhos Jamais Contemplaram',
  'Irmã Miria T. Kolling',
  'Irmã Miria T. Kolling',
  'D',
  78,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Páscoa',
  '1Cor 2, 9; Is 64, 3',
  'liturgica',
  '[Intro] D  G  A7  D  Bm  Em  A7  D

[Refrão]
   D         G
Os olhos jamais contemplaram,
   A7         D        Bm
Ninguém sabe explicar o que Deus preparou
   Em         A7
Aquele que em vida O amar!
   D         G
Os olhos jamais contemplaram,
   A7         D        Bm
Ninguém sabe explicar o que Deus preparou
   Em        A7          D
Aquele que em vida O amar!

[Primeira Parte]
   Bm         F#m
1. Subiu além das nuvens a nossa oração
   G         D
Chegou até o trono do Pai a louvação
   Em    A7         D     Bm
Na mesa da Eucaristia provamos o penhor
   E7         A7
Da glória prometida no Reino do Senhor!

[Refrão]
   D         G
Os olhos jamais contemplaram,
   A7         D        Bm
Ninguém sabe explicar o que Deus preparou
   Em        A7          D
Aquele que em vida O amar!

[Segunda Parte]
   Bm         F#m
2. Quem come deste Pão viverá eternamente
   G         D
Pois traz dentro do peito a divina semente
   Em    A7         D     Bm
Caminha na esperança até o dia chegar
   E7         A7
Em que face a face a Deus há de contemplar!

[Final]
   G         A7          D    Bm
O que Deus preparou por amor
   Em        A7          D
Aquele que em vida O amar!',
  to_tsvector('portuguese', 'Os Olhos Jamais Contemplaram ' || '')
),
(
  'ir-miria-kolling-a-forca-da-eucaristia',
  'A Força da Eucaristia',
  'Irmã Miria T. Kolling',
  'Irmã Miria T. Kolling',
  'C',
  80,
  '4/4',
  'Balada Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  'Jo 6, 51-58; 1Cor 10, 16-17',
  'liturgica',
  '[Intro] C  F  G7  C  Am  Dm  G7  C

[Primeira Parte]
C         Em
1. Quando te aproximas do altar do Senhor
F         G7
Para receber o Pão da Vida e do Amor
Am         Em
Não vens sozinho, trazes contigo o irmão
Dm         G7        C         C7
Formando em Cristo um só corpo e coração!

[Refrão]
   F         G7         C           Am
É a força da Eucaristia que nos faz caminhar
   Dm         G7         C           C7
Partilhando a esperança, aprendendo a amar!
   F         G7         C           Am
É a força da Eucaristia que transforma o viver
   Dm         G7         C
Em oferta viva pra o Reino crescer!

[Segunda Parte]
C         Em
2. Este Pão do Céu é alimento dos fortes
F         G7
Vence o egoísmo e destrói toda morte
Am         Em
Une os pequenos ao redor do Senhor
Dm         G7        C         C7
Numa aliança eterna de paz e louvor!

[Refrão]
   F         G7         C           Am
É a força da Eucaristia que nos faz caminhar
   Dm         G7         C           C7
Partilhando a esperança, aprendendo a amar!
   F         G7         C           Am
É a força da Eucaristia que transforma o viver
   Dm         G7         C
Em oferta viva pra o Reino crescer!

[Final]
   Dm         G7         C   F   C
Em oferta viva pra o Reino crescer!',
  to_tsvector('portuguese', 'A Força da Eucaristia ' || '')
),
(
  'ir-miria-kolling-glorifica-minha-alma-magnificat',
  'Glorifica Minha Alma ao Senhor (Magnificat)',
  'Irmã Miria T. Kolling',
  'Irmã Miria T. Kolling',
  'F',
  96,
  '4/4',
  'Marcha Festiva / Cântico Bíblico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Ação de Graças',
  'Advento',
  'Lc 1, 46-55',
  'liturgica',
  '[Intro] F  Bb  C7  F  Dm  Gm  C7  F

[Refrão]
F         Bb
Glorifica minha alma ao Senhor,
C7         F
Exulta meu espírito em Deus, meu Salvador!
Dm         Gm
Porque olhou a humildade de Sua serva,
C7         F
Doravante as gerações me chamarão bem-aventurada!

[Primeira Parte]
F         Bb
1. O Todo-Poderoso fez em mim maravilhas,
C7         F
Santo, eternamente Santo é o Seu Nome!
Dm         Gm
Seu amor se estende de geração em geração
C7         F
Sobre todos aqueles que O temem de coração!

[Refrão]
F         Bb
Glorifica minha alma ao Senhor,
C7         F
Exulta meu espírito em Deus, meu Salvador!
Dm         Gm
Porque olhou a humildade de Sua serva,
C7         F
Doravante as gerações me chamarão bem-aventurada!

[Segunda Parte]
F         Bb
2. Manifestou o poder do Seu braço forte,
C7         F
Derrubou os poderosos de seus tronos e exaltou os humildes!
Dm         Gm
Saciou de bens os famintos e despediu os ricos sem nada,
C7         F
Socorreu Israel, Seu servo, lembrado de Sua misericórdia!

[Final]
Bb        C7         Am   Dm
Glória ao Pai e ao Filho e ao Espírito Santo,
Gm        C7         F
Pelos séculos dos séculos. Amém!',
  to_tsvector('portuguese', 'Glorifica Minha Alma ao Senhor (Magnificat) ' || '')
),
(
  'ze-vicente-pai-nosso-dos-martires',
  'Pai Nosso dos Mártires',
  'Zé Vicente',
  'Zé Vicente',
  'Am',
  80,
  '4/4',
  'Toada / Canção das CEBs',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Quaresma',
  'Mt 6, 9-13; Ap 6, 9-11',
  'liturgica',
  '[Intro] Am  Dm  G  C  E7  Am

[Refrão]
Am         Dm
Pai nosso dos pobres marginalizados,
G            C         E7
Pai nosso dos mártires, dos torturados!
Am         Dm
Teu Nome é santificado naqueles que morrem defendendo a vida,
G         C         E7
Teu Nome é glorificado quando a justiça é nossa medida!
Dm         G         C         Am
Teu Reino é de liberdade, de fraternidade, paz e comunhão,
Dm         E7         Am
Maldita toda violência que devora a vida pela repressão!

[Primeira Parte]
Am         G
1. Queremos fazer Tua vontade, és o verdadeiro Deus libertador!
F         E7
Não vamos seguir as doutrinas corrompidas pelo poder opressor!
Am         G
Pedimos-Te o pão da vida, o pão da segurança, o pão das multidões,
F         E7
O pão que traz humanidade, que constrói o homem em vez de canhões!

[Refrão]
Am         Dm
Pai nosso dos pobres marginalizados,
G            C         E7
Pai nosso dos mártires, dos torturados!
Dm         G         C         Am
Teu Reino é de liberdade, de fraternidade, paz e comunhão,
Dm         E7         Am
Maldita toda violência que devora a vida pela repressão!

[Segunda Parte]
Am         G
2. Perdoa-nos quando por medo ficamos calados diante da morte,
F         E7
Perdoa e destrói os reinos em que a corrupção é a lei mais forte!
Am         G
Protege-nos da crueldade, do esquadrão da morte, dos prevalecidos,
F         E7
Pai nosso revolucionário, parceiro dos pobres, Deus dos oprimidos!

[Final]
Dm         E7         Am   F
Pai nosso dos mártires, Deus dos oprimidos!
Dm         E7         Am
Vem fazer justiça aos Teus escolhidos!',
  to_tsvector('portuguese', 'Pai Nosso dos Mártires ' || '')
),
(
  'ze-vicente-as-mesmas-maos',
  'As Mesmas Mãos que Plantaram a Semente',
  'Zé Vicente',
  'Zé Vicente',
  'D',
  92,
  '4/4',
  'Toada Nordestina',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Sl 103 (104), 14-15; At 2, 42-47',
  'liturgica',
  '[Intro] D  G  A7  D  A7

[Refrão]
   D         A7
As mesmas mãos que plantaram a semente aqui estão!
   Em         A7         D   D7
O mesmo pão que a mulher preparou aqui está!
   G         A7         F#m         Bm
O vinho novo que a uva sangrou jorrará
   Em         A7         D
No nosso altar!

[Primeira Parte]
   D         A7
1. A liberdade haverá, a igualdade haverá,
   G         A7         D
E nesta festa onde a gente é irmão,
   D7         G
O Deus da vida se faz comunhão!
   D         A7         D
O Deus da vida se faz comunhão!

[Refrão]
   D         A7
As mesmas mãos que plantaram a semente aqui estão!
   Em         A7         D   D7
O mesmo pão que a mulher preparou aqui está!
   G         A7         F#m         Bm
O vinho novo que a uva sangrou jorrará
   Em         A7         D
No nosso altar!

[Segunda Parte]
   D         A7
2. Na flor do altar o sonho da paz mundial,
   G         A7         D
A luz acesa é a fé que palpita hoje em nós!
   D7         G
Do livro aberto o amor se derrama total,
   D         A7         D
No Santo sacrifício de Cristo Jesus!

[Final]
   G         A7         F#m         Bm
O vinho novo que a uva sangrou jorrará
   Em         A7         D
No nosso altar!',
  to_tsvector('portuguese', 'As Mesmas Mãos que Plantaram a Semente ' || '')
),
(
  'ziza-fernandes-me-faz-capaz',
  'Me Faz Capaz',
  'Ziza Fernandes',
  'Ziza Fernandes',
  'E',
  76,
  '4/4',
  'Balada de Entrega',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  false,
  true,
  5,
  'Ofertório',
  'Tempo Comum',
  '2Cor 3, 5; Fl 4, 13',
  'liturgica',
  '[Intro] E  B/D#  C#m  A  B7  E

[Primeira Parte]
E          B/D#
Olho para as minhas mãos tão pequenas, Senhor
C#m         G#m
Diante da grandeza da missão do Teu amor
A          E/G#
Mas sei que não escolhes os que já prontos estão
F#m         B7
Capacitas os chamados com a força de Tua mão!

[Refrão]
   E          B/D#
A Tua graça me faz capaz de ir além,
   C#m         A
De ofertar a minha vida para o bem!
   E         B/D#         C#m
Toma o meu nada e transforma em comunhão,
   F#m        B7          E
Eis-me aqui em Tuas mãos!

[Segunda Parte]
E          B/D#
Dependo no Teu altar meu suor e meu cansaço
C#m         G#m
No pão e no vinho encontro a paz do Teu abraço
A          E/G#
Tudo posso Naquele que me fortalece assim
F#m         B7
Vivo não mais eu, mas Cristo vive em mim!

[Refrão]
   E          B/D#
A Tua graça me faz capaz de ir além,
   C#m         A
De ofertar a minha vida para o bem!
   E         B/D#         C#m
Toma o meu nada e transforma em comunhão,
   F#m        B7          E
Eis-me aqui em Tuas mãos!

[Final]
   A          B7          C#m   A
Toma o meu nada e transforma em comunhão,
   F#m        B7          E
Tua graça me faz capaz, Senhor!',
  to_tsvector('portuguese', 'Me Faz Capaz ' || '')
),
(
  'eugenio-jorge-sonda-me-senhor',
  'Sonda-me, Senhor (Tu Me Conheces)',
  'Eugênio Jorge',
  'Eugênio Jorge',
  'Am',
  72,
  '4/4',
  'Balada Salmódica',
  'P  I  M  A  M  I',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  'Sl 138 (139), 1-24',
  'liturgica',
  '[Intro] Am  Dm  G  C  E7  Am

[Primeira Parte]
Am         Dm
Senhor, Tu me sondas e me conheces
G         C        E7
Sabes quando me sento e quando me levanto
Am         Dm
De longe penetras os meus pensamentos
F         E7
Percebes meus passos e o meu descanso!

[Refrão]
   Am         Dm
Sonda-me, Senhor, e conhece o meu coração!
   G         C        E7
Prova-me os sentimentos na Tua clara visão!
   Am         Dm
Vê se estou no caminho da iniquidade
   E7         Am
E conduz-me pelo caminho da eternidade!

[Segunda Parte]
Am         Dm
Para onde irei longe do Teu Espírito?
G         C        E7
Para onde fugirei da Tua santa face?
Am         Dm
Se subo até os céus, lá estás comigo,
F         E7
Tua mão direita sempre me conduz e abraça!

[Refrão]
   Am         Dm
Sonda-me, Senhor, e conhece o meu coração!
   G         C        E7
Prova-me os sentimentos na Tua clara visão!
   Am         Dm
Vê se estou no caminho da iniquidade
   E7         Am
E conduz-me pelo caminho da eternidade!

[Final]
   Dm         E7           Am   F
Pões sobre mim a Tua santa mão:
   Dm         E7           Am
Sonda-me, Senhor, e guarda o meu coração!',
  to_tsvector('portuguese', 'Sonda-me, Senhor (Tu Me Conheces) ' || '')
),
(
  'a-barca-tu-te-abeiraste-da-praia',
  'A Barca (Tu Te Abeiraste da Praia)',
  'Cesáreo Gabaráin',
  'Cesáreo Gabaráin',
  'G',
  76,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  '',
  'liturgical',
  '[Intro] G  D/F#  Em  C  D  G

[Primeira Parte]
G     D/F#  Em
1. Tu, te abeiraste da praia,
Am
Não buscaste
D           D7
Nem sábios nem ricos:
G           D/F#
Somente queres
Em        Dm7  G7
Que eu te siga!

[Refrão]
C           Bm   Em
Senhor, Tu me olhaste nos olhos,
Am     D7    G    G7
A sorrir, pronunciaste meu nome!
C           Bm   Em
Lá na praia, eu deixei o meu barco,
Am         D7    G
Junto a Ti, buscarei outro mar!

[Segunda Parte]
G     D/F#  Em
2. Tu, sabes bem o que tenho:
Am
Em meu barco
D           D7
Não há ouro nem prata,
G           D/F#
Somente redes
Em        Dm7  G7
E o meu trabalho!

[Refrão]

[Terceira Parte]
G     D/F#  Em
3. Tu, minhas mãos solicitas,
Am
Meu cansaço
D           D7
Que a outros descanse,
G           D/F#
Amor que almeja
Em        Dm7  G7
Seguir amando!

[Refrão]

[Quarta Parte]
G     D/F#  Em
4. Tu, pescador de outros lagos,
Am
Ânsia eterna
D           D7
De almas que esperam,
G           D/F#
Bondoso amigo
Em        Dm7  G7
Que assim me chamas!

[Refrão Final]
C           Bm   Em
Senhor, Tu me olhaste nos olhos,
Am     D7    G    G7
A sorrir, pronunciaste meu nome!
C           Bm   Em
Lá na praia, eu deixei o meu barco,
Am         D7    G
Junto a Ti, buscarei outro mar!',
  to_tsvector('portuguese', 'A Barca (Tu Te Abeiraste da Praia) ' || '')
),
(
  'pao-e-vinho-te-apresentamos',
  'Pão e Vinho Te Apresentamos Nesse Altar',
  'Ministério Amor e Adoração / Canção Nova',
  'Ministério Amor e Adoração / Canção Nova',
  'A',
  84,
  '4/4',
  'Guarânia Suave',
  '↓  ↓ ↑  ↑ ↓',
  true,
  true,
  true,
  5,
  'Ofertório',
  'Tempo Comum',
  '',
  'liturgical',
  '[Intro] D  E  C#m  Bm  E

[Primeira Parte]
A          E         F#m
Pão e vinho te apresentamos nesse altar
          C#m     D           C#m
Como sinal que tu recolhes nossa oferta
Bm         E
Tudo o que somos deixamos aqui
A          E         F#m
Pão e vinho te apresentamos nesse altar
          C#m     D           C#m
Como sinal que tu recolhes nossa oferta
Bm         E
Tudo o que somos deixamos aqui

[Refrão]
A/C#  D          C#m
É um milagre que se dá
      D          F#m
O pão e o vinho em corpo e sangue
Bm          E
Vão se transformar
A/C#  D          C#m
Não há limites para o amor
      D          F#m
Vem transformar também minha vida
Bm          E         A
Oh Senhor, é teu esse milagre de amor',
  to_tsvector('portuguese', 'Pão e Vinho Te Apresentamos Nesse Altar ' || '')
),
(
  'alma-de-cristo-santificai-me',
  'Alma de Cristo, Santificai-me (Anima Christi)',
  'Santo Inácio de Loyola / Marco Frisina',
  'Santo Inácio de Loyola / Marco Frisina',
  'D',
  60,
  '4/4',
  'Oração Meditativa Íntima',
  '↓   ↑ ↓   ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Jo 19, 34; Gl 2, 20',
  'popular',
  '[Intro] D  A  Bm  G  D  A  D

D        A       Bm     G
Alma de Cristo, santificai-me.
D        A       Em     A
Corpo de Cristo, salvai-me.
D         A        Bm        G
Sangue de Cristo, inebriai-me.
D       G         A        D
Água do lado de Cristo, lavai-me.

D        A        Bm       G
Paixão de Cristo, confortai-me.
D       A        Em    A
Ó bom Jesus, ouvi-me.
D           A       Bm       G
Dentro de vossas chagas, escondei-me.
D            G          A         D
Não permitais que me separe de vós.

D        A        Bm      G
Do inimigo maligno, defendei-me.
D        A         Em     A
Na hora da minha morte, chamai-me.
D        A         Bm     G
E mandai-me ir para vós,
D         G          A        D
Para que vos louve com os vossos Santos,
G          D        A        D
Pelos séculos dos séculos. Amém!',
  to_tsvector('portuguese', 'Alma de Cristo, Santificai-me (Anima Christi) ' || '')
),
(
  'estas-entre-nos-tu-es-minha-vida',
  'Estás Entre Nós (Tu És Minha Vida, Outro Deus Não Há)',
  'Pe. Jonas Abib / Tradicional',
  'Pe. Jonas Abib / Tradicional',
  'Em',
  74,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓ ↑',
  false,
  true,
  true,
  40,
  'Comunhão',
  'Tempo Comum',
  'Jo 14, 6; Fl 1, 21',
  'popular',
  '[Intro] D9  Dm  D5+(9)  D9  Dm

        Gm/D  Bb9  Bb  Em7(5-)  A

 Dm          Bb/D  C/E             F  C/E
Tu és minha vida   outro Deus não há

 Dm         Bb    C    C/E   F    D/F#
Tu és minha estrada a minha verdade

Gm      C      F   C/E    Dm
Em Tua palavra eu caminharei

Bb           C/Bb         F/A   Eº    Dm   D/F#
Enquanto eu viver e até quando Tu quiseres

 Gm7          C        F    C/E   Dm
Já não sentirei temor pois estás aqui

 Bb          C    Am  Dm
Tu estás no meio de  nós

  Dm         Bb/D    C/E        F  C/E
Creio em Ti Senhor, vindo de Maria

 Dm             Bb     C     C/E  F  D/F#
Filho eterno e santo, homem como nós

 Gm          C         F   C/E      Dm
Tu morreste por amor, vivo estás em nós

Bb      C/Bb          F/A  Eº    Dm  D/F#
Unidade Trina com o Espírito e o Pai

Gm7       C          F   C/E    Dm
E um dia eu bem sei Tu retornarás

Bb           C     Am  Dm
E abrirás o Reino do  Céu

 Dm          Bb/D  C/E             F  C/E
Tu és minha força  outro Deus não há

 Dm          Bb   C     C/E  F   D/F#
Tu és minha paz, minha liberdade

 Gm         C    F   C/E   Dm
Nada nesta vida nos separará

Bb            C/Bb          F/A   Eº   Dm  D/F#
Em Tuas mãos seguras minha vida guardarás

Gm7         C         F     C/E  Dm
Eu não temerei o mal Tu me livrarás

Bb        C          G/B
E no Teu perdão viverei

[Solo] F  F7M  F4  F

       F7M  F4  C#9  Bb9  Dm7

       C#  Eb/C#  C#  Eb/C#

       C#  Eb/C#  C9

Fm           Db/F  Eb/G           Ab7M  Eb/G
Ó Senhor da vida creio sempre em Ti

 Fm         C#  Eb    Eb/G    Ab  F/A
Filho Salvador  eu espero em Ti

 Bbm       Eb       Ab  Eb/G  Fm
Santo Espírito de amor desce sobre nós

 C#          Eb/Db         Ab/C  E/G#   F/A  F
Tu de mil caminhos nos conduzes  a uma fé

Bbm           Eb   Ab      Eb/G   Fm
E por mil estradas onde andarmos nós

  C#          Eb    Cm  Fm
Qual semente nos levará

Bbm           Eb   Ab      Eb/G   Fm
E por mil estradas onde andarmos nós

  F5+         Bbm/F   F
Qual semente nos levará',
  to_tsvector('portuguese', 'Estás Entre Nós (Tu És Minha Vida, Outro Deus Não Há) ' || '')
),
(
  'sacramento-da-comunhao-nelsinho',
  'Sacramento da Comunhão (Senhor, Quando Te Vejo)',
  'Diácono Nelsinho Corrêa / Comunidade Canção Nova',
  'Diácono Nelsinho Corrêa / Comunidade Canção Nova',
  'D',
  68,
  '4/4',
  'Balada Eucarística Lenta',
  '↓   ↓ ↑   ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  'Jo 17, 21; 1Cor 10, 17',
  'popular',
  '[Intro] D  A/C#  Bm  G  A  D

[Primeira Parte]
D       A/C#        Bm       Bm/A
1. Senhor, quando te vejo no sacramento da comunhão,
G         Em          A
Sinto o céu se abrir e uma luz a me atingir,
D       A/C#        Bm       Bm/A
Esfriando minha cabeça e esquentando meu coração!
G         Em          A
Senhor, graças e louvores sejam dados a todo momento,
D       A/C#        Bm       Bm/A
Quero te louvar na dor, na alegria e no sofrimento,
G          Em          A
E se em meio à tribulação eu me esquecer de ti,
G          A          D
Ilumina minhas trevas com tua luz!

[Refrão]
D               A/C#      Bm    Bm/A
Jesus, fonte de misericórdia
          G      A
Que jorra do templo!
           F#m   Bbº    Bm
Jesus, o Filho da Rainha!
G          D       Em     A     D
Jesus, rosto divino do homem!
G          D       Em     A     D
Jesus, rosto humano de Deus!

[Segunda Parte]
D       A/C#        Bm       Bm/A
2. Chego muitas vezes em tua casa, meu Senhor,
G         Em          A
Triste, abatido, precisando de amor,
D       A/C#        Bm       Bm/A
Mas tu me olhas nos olhos e acalmas minha dor!
G         Em          A
E quando estendo as minhas mãos para te receber,
D       A/C#        Bm       Bm/A
Não sou eu que te seguro, és tu que me sustentas,
G          Em          A
Pois no meu peito habitas em consagração de amor,
G          A          D
Dando vida nova a quem em ti crer!

[Refrão]

[Terceira Parte]
D       A/C#        Bm       Bm/A
3. Que este Teu Corpo e Teu Sangue que agora recebi
G         Em          A
Sejam força no caminho e alimento até o fim!
D       A/C#        Bm       Bm/A
Que eu leve a Tua paz a quem vive na escuridão,
G          A          D
Sendo presença viva do Teu Santo Coração!

[Refrão Final]
D               A/C#      Bm    Bm/A
Jesus, fonte de misericórdia
          G      A
Que jorra do templo!
           F#m   Bbº    Bm
Jesus, o Filho da Rainha!
G          D       Em     A     D
Jesus, rosto divino do homem!
G          D       Em     A     D
Jesus, rosto humano de Deus!',
  to_tsvector('portuguese', 'Sacramento da Comunhão (Senhor, Quando Te Vejo) ' || '')
),
(
  'obrigado-senhor-porque-es-meu-amigo',
  'Obrigado, Senhor, Porque És Meu Amigo',
  'Pe. Zezinho / Tradicional',
  'Pe. Zezinho / Tradicional',
  'G',
  68,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Tempo Comum',
  'Jo 15, 15; Sl 135',
  'popular',
  '[Intro] G  C  D  G

[Refrão]
G         C
Obrigado, Senhor, porque és meu amigo,
D         G
Porque sempre comigo Tu estás a falar!
G         C
No perfume das flores, na harmonia das cores,
D         G
E no mar que murmura o teu Nome a rezar!

[Estrofe 1]
Em         Bm
1. Escondido Tu estás no verde das florestas,
C         G
Nas aves em festa, no sol a brilhar!
Em         Bm
Na sombra que abriga, na brisa amiga,
C           D         G
Na fonte que corre ligeira a cantar!',
  to_tsvector('portuguese', 'Obrigado, Senhor, Porque És Meu Amigo ' || '')
),
(
  'oracao-pela-familia-pe-zezinho',
  'Oração pela Família',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'D',
  76,
  '4/4',
  'Guarânia / Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  16,
  'Ação de Graças',
  'Qualquer',
  'Ef 5, 21-33; Cl 3, 12-21',
  'popular',
  '[Intro] D  A7  D

[Tab - Intro Violão Base]

  D
E|-------2-----2-----2------------------------| 
B|-----3---3-----3-----3----------------------| 
G|---2-------2-----2-----2--------------------| 
D|-0------------------------------------------| 
A|--------------------------------------------| 
E|--------------------------------------------| 

[Tab - Intro Violão Solo]

 Parte 1 de 2

E|---5-7-5---7-5---7-5---7-5------------5-7-5-| 
B|-7-------7-----7-----7----------5-7-8-------| 
G|---------------------------7-6--------------| 
D|--------------------------------------------| 
A|--------------------------------------------| 
E|--------------------------------------------| 

Parte 2 de 2

E|--------------------------------------------| 
B|-5-5----------------------------------------| 
G|-----7-6-7----------------------------------| 
D|--------------------------------------------| 
A|--------------------------------------------| 
E|--------------------------------------------| 

[Primeira Parte]

        D
Que nenhuma família comece

         A7
Em qualquer de repente

Que nenhuma família termine

         D
Por falta de amor

Que o casal seja um para o outro

         A7
De corpo e de mente

E que nada no mundo separe

         D
Um casal sonhador

Que nenhuma família

         A7
Se abrigue debaixo da ponte

Que ninguém interfira no lar

         D
E na vida dos dois

Que ninguém os obrigue

         A7
A viver sem nenhum horizonte

Que eles vivam do ontem

         D
Do hoje e em função de um depois

[Pré-Refrão]

Que a família comece

      D/F#              Em  Em7M  Em7
E termine sabendo onde vai

         A7                A/C#
E que o homem carregue nos ombros

               D  D7M  D2  D
A graça de um pai

          D/F#
Que a mulher seja um céu de ternura

               Em  Em7M  Em7
Aconchego e calor

          D
E que os filhos conheçam

   A7                  D  D7M  D2  D
A força que brota do amor

[Refrão]

         A7
Abençoa, Senhor, as famílias! amém!

     G       A7         D
Abençoa, Senhor, a minha também

         A7
Abençoa, Senhor, as famílias! amém!

     G       A7         D
Abençoa, Senhor, a minha também

( D7M  D2  D )

( D2  D4  D )

[Segunda Parte]

       D
Que marido e mulher tenham força

         A7
De amar sem medida

Que ninguém vá dormir sem pedir

         D
Ou sem dar seu perdão

Que as crianças aprendam no colo

         A7
O sentido da vida

Que a família celebre a partilha

         D
Do abraço e do pão

Que marido e mulher não se traiam

         A7
Nem traiam seus filhos

Que o ciúme não mate

         D
A certeza do amor entre os dois

Que no seu firmamento

         A7
A estrela que tem maior brilho

Seja a firme esperança de um céu

         D
Aqui mesmo e depois

[Pré-Refrão]

Que a família comece

      D/F#              Em  Em7M  Em7
E termine sabendo onde vai

         A7                A/C#
E que o homem carregue nos ombros

               D  D7M  D2  D
A graça de um pai

          D/F#
Que a mulher seja um céu de ternura

               Em  Em7M  Em7
Aconchego e calor

          D
E que os filhos conheçam

   A7                  D  D7M  D9  D
A força que brota do amor

[Refrão]

         A7
Abençoa, Senhor, as famílias! amém!

     G       A7         D
Abençoa, Senhor, a minha também

         A7
Abençoa, Senhor, as famílias! amém!

     G       A7         D
Abençoa, Senhor, a minha também

( G  A7  A7/E  D )

         A7
Abençoa, Senhor, a minha também

[Final]  D  D4  D  D2  D',
  to_tsvector('portuguese', 'Oração pela Família ' || '')
),
(
  'maria-de-nazare-pe-zezinho',
  'Maria de Nazaré',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'E',
  72,
  '3/4',
  'Valsa Sacra',
  '↓  ↑ ↓  ↑ ↓',
  false,
  true,
  true,
  8,
  'Final',
  'Qualquer',
  'Lc 1, 26-56; Jo 19, 25-27',
  'popular',
  '[Intro] E

[Primeira Parte]

         F#m7  B7         E
Maria de Nazaré, Maria me cativou

         F#m7
Fez mais forte a minha fé

   B7         E
E por filho me adotou

[Refrão 1]

    Bm7      E      A
Às vezes eu paro e fico a pensar

   Am         E
E sem perceber me vejo a rezar

   C#m            F#m7
E meu coração se põe a cantar

     B7            E
Pra virgem de Nazaré

   Bm7      E     A
Menina que Deus amou e escolheu

     Am         E
Pra mãe de Jesus, o filho de Deus

   C#m         F#m7
Maria que o povo inteiro elegeu

    B7            E  B7
Senhora e mãe do céu

( E  F#m7  B7  E )

( F#m7  B7  E  B7 )

[Segunda Parte]

   E         F#m7
Maria que eu quero bem

   B7           E
Maria do puro amor

         F#m7
Igual a você, ninguém

     B7         E
Mãe pura do meu Senhor

[Refrão 2]

    Bm7     E         A
Em cada mulher que a terra criou

     Am         E
Um traço de Deus Maria deixou

    C#m            F#m7
Um sonho de mãe Maria plantou

     B7         E
Pro mundo encontrar a paz

    Bm7    E      A
Maria que fez o Cristo falar

   Am            E
Maria que fez Jesus caminhar

   C#m          F#m7
Maria que só viveu pra seu Deus

   B7          E  B7
Maria do povo meu

[Final] E  F#m7  B7  E

        F#m7  B7  E  B7

        E  F#m7  B7  E

        F#m7  B7  E  B7

        E  F#m7  B7  E

        F#m7  B7  E',
  to_tsvector('portuguese', 'Maria de Nazaré ' || '')
),
(
  'utopia-pe-zezinho',
  'Utopia (Das Muitas Coisas do Meu Tempo de Criança)',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  82,
  '4/4',
  'Toada / Dedilhado',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  14,
  'Ação de Graças',
  'Qualquer',
  'Dt 6, 6-7; Pv 22, 6',
  'popular',
  '[Intro] C7  F7M  C7  F

        C7  F7M  C7  F

[Tab - Solo Intro]

Parte 1 de 4
E|------------------------------------------| 
B|----8-9/10-10--8--11-10-------------------| 
G|-10---------------------10----------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 2 de 4
E|------------------------------------------| 
B|-----8-9-9/10--8-8------------------------| 
G|-10----------------10---------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 3 de 4
E|------------------------------------------| 
B|----8-9/10-10--8--11-10-------------------| 
G|-10---------------------10----------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 4 de 4
E|------------------------------------------| 
B|-----8-9-9/10--8--------------------------| 
G|-10--------------10-----------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

[Primeira Parte]

            F
Das muitas coisas

        C7         F
Do meu tempo de criança

        C7          F
Guardo vivo na lembrança

        F7          Bb
O aconchego do meu lar

           Gm
No fim da tarde

        C7           Gm
Quando tudo se aquietava

     C7        Gm
A família se ajuntava

         C7         F  C7
Lá no alpendre a conversar

         F
Meus pais não tinham

       C         F
Nem escola e nem dinheiro

        C           F
Todo o dia o ano inteiro

       F7          Bb
Trabalhavam sem parar

         F
Faltava tudo mas a gente nem ligava

        Dm           Gm
O importante não faltava

        C7           F
Seu sorriso e seu olhar

[Solo] C7  F7M  C7  F

       C7  F7M  C7  F

[Tab - Solo]

Parte 1 de 4
E|------------------------------------------| 
B|-----8-9-9/10--8--11-10-------------------| 
G|-10---------------------10----------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 2 de 4
E|------------------------------------------| 
B|-----8-9-9/10--8-8--6---------------------| 
G|-10-----------------10--------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 3 de 4
E|------------------------------------------| 
B|-----8-9-9/10--8--11-10-------------------| 
G|-10---------------------10----------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 4 de 4
E|------------------------------------------| 
B|-----8-9-9/10--8--------------------------| 
G|-10--------------10-----------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

[Segunda Parte]

           F
Eu tantas vezes

        C7            F
Vi meu pai chegar cansado

       C7          F
Mas aquilo era sagrado

       F7         Bb
Um por um ele afagava

         Gm          C7          Gm
E perguntava quem fizera estripolia

     C7           Gm
E mamãe nos defendia

            C7            F   C7
E tudo aos poucos se ajeitava

          F         C7         F
O sol se punha, a viola alguém trazia

      C7            F
Todo mundo então pedia

       F7         Bb
Pro papai cantar com a gente

         F
Desafinado meio rouco voz cansada

        Dm        Gm
Ele cantava mil toadas

       C7          F    C7
Seu olhar ao sol poente

[Solo] C7  F7M  C7  F

       C7  F7M  C7  F

[Terceira Parte]

          F
Correu o tempo

           C7         F
E hoje eu vejo a maravilha

       C7        F
De se ter uma família

        F7           Bb
Quando tantos não a têm

       Gm           C7        Gm
Agora falam do desquite do divórcio

    C7           Gm
O amor virou consórcio

       C7           F  C7
Compromisso de ninguém

           F
Há tantos filhos

         C7         F
Que bem mais do que um palácio

      C7           F
Gostariam de um abraço

        F7         Bb
E do carinho entre seus pais

         Am
Se os pais amassem o divórcio não viria

        Dm          Gm
Chame a isso de Utopia

     C7          F
Eu a isso chamo paz

[Final] C7  F7M  C7  F

        C7  F7M  C7  F',
  to_tsvector('portuguese', 'Utopia (Das Muitas Coisas do Meu Tempo de Criança) ' || '')
),
(
  'amar-como-jesus-amou-pe-zezinho',
  'Amar Como Jesus Amou',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'Eb',
  86,
  '4/4',
  'Balada Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Comunhão',
  'Tempo Comum',
  'Jo 13, 34-35; Jo 15, 12',
  'popular',
  'Eb         Bb7
Um dia uma criança me parou

         Eb
Olhou-me nos meus olhos a sorrir

         Bb7
Caneta e papel na sua mão

         Eb
Tarefa escolar para cumprir

   Eb7         Ab
E perguntou no meio de um sorriso

            Eb        Bb7    Eb
O que é preciso para ser  feliz?

  Eb7         Ab
Amar como Jesus amou

    Bb7         Eb
Sonhar como Jesus sonhou

    Cm7         Bb7
Pensar como Jesus pensou

         Eb
Viver como Jesus viveu

   Eb7         Ab
Sentir o que Jesus sentia

    Bb7         Gm7
Sorrir como Jesus sorria

  Cm7         Fm
E ao chegar ao fim do dia

         Bb7    Eb
Eu sei que dormiria muito mais feliz

   Eb7         Ab
Sentir o que Jesus sentia

    Bb7         Gm7
Sorrir como Jesus sorria

  Cm7         Fm
E ao chegar ao fim do dia

         Bb7    Eb
Eu sei que dormiria muito mais feliz

   Eb         Bb7
Ouvindo o que eu falei ela me olhou

         Eb
E disse que era lindo o que eu falei

         Bb7
Pediu que eu repetisse por favor

         Eb
Que não falasse tudo de uma vez

   Eb7         Ab
E perguntou de novo num sorriso

            Eb        Bb7     Eb
O que é preciso para ser   feliz?

  Eb7         Ab
Amar como Jesus amou

    Bb7         Eb
Sonhar como Jesus sonhou

    Cm7         Bb7
Pensar como Jesus pensou

         Eb
Viver como Jesus viveu

   Eb7         Ab
Sentir o que Jesus sentia

    Bb7         Gm7
Sorrir como Jesus sorria

  Cm7         Fm
E ao chegar ao fim do dia

         Bb7    Eb
Eu sei que dormiria muito mais feliz

   Eb7         Ab
Sentir o que Jesus sentia

    Bb7         Gm7
Sorrir como Jesus sorria

  Cm7         Fm
E ao chegar ao fim do dia

         Bb7    Eb
Eu sei que dormiria muito mais feliz

   Eb         Bb7
Depois que eu terminei de repetir

         Eb
Seus olhos não saíam do papel

         Bb7
Toquei no seu rostinho e a sorrir

         Eb
Pedi que ao transmitir fosse fiel

  Eb7         Ab
E ela deu-me um beijo demorado

          Eb         Bb7     Eb
E ao meu lado foi dizendo assim

  Eb7         Ab
Amar como Jesus amou

    Bb7         Eb
Sonhar como Jesus sonhou

    Cm7         Bb7
Pensar como Jesus pensou

         Eb
Viver como Jesus viveu

   Eb7         Ab
Sentir o que Jesus sentia

    Bb7         Gm7
Sorrir como Jesus sorria

  Cm7         Fm
E ao chegar ao fim do dia

         Bb7    Eb
Eu sei que dormiria muito mais feliz

   Eb7         Ab
Sentir o que Jesus sentia

    Bb7         Gm7
Sorrir como Jesus sorria

  Cm7         Fm
E ao chegar ao fim do dia

         Bb7    Eb
Eu sei que dormiria muito mais feliz',
  to_tsvector('portuguese', 'Amar Como Jesus Amou ' || '')
),
(
  'um-certo-galileu-pe-zezinho',
  'Um Certo Galileu',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  96,
  '4/4',
  'Marcha / Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  18,
  'Aclamação ao Evangelho',
  'Tempo Comum',
  'Mt 4, 18-22; Mc 1, 16-20',
  'popular',
  'C           Dm
Um certo dia a beira-mar

        G         C
Apareceu um jovem galileu

         Dm
Ninguém podia imaginar

         G
Que alguém pudesse amar

         C
Do jeito que ele amava

         Dm
Seu jeito simples de conversar

         G
Tocava o coração

         C
De quem o escutava

         A7           Dm
E seu nome era Jesus de Nazaré

     G7    C  F   Em   G7
Sua fama se espalhou e todos vinham ver

   C          A7          Dm/F
O fenômeno do jovem pregador

           C/E   G    C
Que tinha tanto  a...mor

         C          Dm
Naquelas praias naquele mar

        G         C
Naquele rio em casa do Zaqueu

         Dm
Naquela estrada naquele sol

         G
E o povo a escutar

         C
Histórias tão bonitas

         Dm
Seu jeito amigo de se expressar

         G
Enchia o coração

         C
De paz tão infinita

         A7          Dm
E seu nome era Jesus de Nazaré

     G7    C  F   Em   G7
Sua fama se espalhou e todos vinham ver

   C          A7         Dm/F
O fenômeno do jovem pregador

           C/E   G    C
Que tinha tanto  a...mor

C         Dm
Naquelas ruas naquele chão

         G           C
Naquele poço em casa do Simão

         Dm
Naquela relva no entardecer

         G
O mundo viu nascer

         C
A paz de uma esperança

         Dm
Seu jeito puro de perdoar

         G
Fazia o coração

         C
Voltar a ser criança

         A7           Dm
E seu nome era Jesus de Nazaré

     G7    C  F   Em   G7
Sua fama se espalhou e todos vinham ver

   C          A7          Dm/F
O fenômeno do jovem pregador

           C/E   G    C   C#
Que tinha tanto  a...mor

         D#m
Um certo dia ao tribunal

           G#         C#
Alguém levou o jovem galileu

         D#m
Ninguém sabia qual foi o mal

         G#
E o crime que ele fez

         C#
Quais foram seus pecados

         D#m
Seu jeito honesto de denunciar

         G#
Mexeu na posição

         C#
De alguns privilegiados

            A#7         D#m
E mataram a Jesus de Nazaré

 G#       C#   F#m     Fm
E no meio de ladrões puseram su...a   cruz

       C#         A#7        D#m
Mas o mundo ainda tem medo de Jesus

           C#   G#   A   E  D  C
Que tinha tanto  a...mor

       D         Em
Vitorioso Ressuscitou

         A         D
E após três dias a vida ele voltou

         Em
Ressuscitado não morre mais

         A     D
E está junto do Pai pois Ele é o Filho eterno

         Em
Mas Ele vive em cada lar

         A         D
E onde se encontrar um coração fraterno

         Em  A
Proclamamos que Jesus de Nazaré

     Em          A           D        G  F#m
Glorioso e triunfante Deus co...nosco está

          D              Em/G
Ele é o Cristo é a razão da nossa fé

      D/F#  A       A#  F  D#  D
E um dia vol...tará',
  to_tsvector('portuguese', 'Um Certo Galileu ' || '')
),
(
  'paz-inquieta-paz-de-cristo-pe-zezinho',
  'Paz, Paz de Cristo',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'E',
  86,
  '4/4',
  'Balada Comunitária',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Tempo Comum',
  'Jo 14, 27',
  'popular',
  'Intro: Em Am B7 Em Am B7

Em         B7     Em
        Eu trago esta paz inquieta,

Am        B7          Em
Feita de trevas e de luz.

Am         Em
Desde que eu sigo os caminhos.

         C       B7     Em
De um profeta chamado Jesus

         Am
Desde que eu sigo os caminhos.

         C       B7     Em
De um profeta chamado Jesus

         B7      Em
Na treva eu me sinto inquieto,

    Am        B7     Em
Na luz eu me sinto capaz.

  Am         Em
E pelos caminhos do mundo,

           C           B7    Em
Eu sigo inquieto, mas vou em paz.

         Am
E pelos caminhos do mundo,

            C         B7     Em
Eu sigo inquieto, mas vou em paz.

Intr.: Em Am B7 Em Am B7

Em         B7    Em
        Inquieto pelo inocente,

Am      B7      Em
Pelo culpado também.

Am         Em
Triste por ver tanta gente,

         C            B7     Em
Que não sabe o que a vida contém.

         Am
Triste por ver tanta gente,

        C            B7      Em
Que não sabe o que a vida contém.

         B7   Em
Inquieto pela injustiça,

       Am        B7     Em
Que eu vejo aumentar e doer.

   Am         Em
Inquieto por esta cobiça,

         C           B7      Em
Que não deixa o meu povo crescer.

         Am
Inquieto por esta cobiça,

         C          B7       Em
Que não deixa o meu povo crescer.

Intr.: Em Am B7 Em Am B7

Em         B7     Em
        Em paz pelos homens justos,

Am        B7       Em
Que por saber e sonhar.

Am         Em
Pagam com preço de sangue,

    C        B7       Em
A coragem de não se calar.

         Am
Pagam com preço de sangue,

    C        B7       Em
A coragem de não se calar.

            B7  Em
Em paz pela esperança,

    Am       B7     Em
Que faz esta vida valer.

   Am         Em
Em paz por quem nunca se cansa,

        C         B7        Em
De os caminhos da paz percorrer.

         Am
Em paz por quem nunca se cansa,

         C        B7        Em
De os caminhos da paz percorrer.

Intr.: Em Am B7 Em Am B7

Em         B7  Em
        Em paz pela juventude,

Am     B7         Em
Pelos adultos também.

Am         Em
E por aquelas virtudes,

        C        B7       Em
Que meu povo nem sabe que tem.

         Am
E por aquelas virtudes,

        C        B7       Em
Que meu povo nem sabe que tem.

         B7    Em
Inquieto por tanta gente,

    Am        B7      Em
Que não se inquieta jamais.

  Am         Em
E pelos caminhos do mundo,

           C          B7     Em
Eu sigo inquieto, mas vou em paz.

  Am         Em
E pelos caminhos do mundo,

           C           B7       Em  ( 4x)
Eu sigo inquieto, mas vooou em paaaaaaz.',
  to_tsvector('portuguese', 'Paz, Paz de Cristo ' || '')
),
(
  'aguia-pequena-pe-zezinho',
  'Águia Pequena',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'D',
  78,
  '4/4',
  'Dedilhado / Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  12,
  'Ação de Graças',
  'Tempo Comum',
  'Is 40, 31; Sl 90',
  'popular',
  'D         Bm
Tu me fizeste uma das tuas criaturas

            Em
Com ânsia de amar

        A         A7
Águia pequena que nasceu para as alturas

            D
Com ânsia de voar.

          Am          D7
E eu percebi que as minhas penas já cresceram

          Am7         D7       G
E que eu preciso abrir as asas e tentar

         Gm    F#m Bm
Se eu não tentar, não saberei como se voa

           Em           A7         D
Não foi à toa que eu nasci para voar

  D         Bm
Pequenas águias correm risco quando voam

         Em
Mas devem arriscar

         A        A7
Só que é preciso olhar os pais como eles voam

           D
E aperfeiçoar

         D7
Haja mau tempo, haja correntes traiçoeiras

           Am7          D7      G
Se já tem asas, seu destino é voar

     Gm      F#m   Bm
Tem que sair e regressar ao mesmo ninho

         Em         A7        D
E outro dia, outra vez recomeçar

     D         Bm
Tu me fizeste amar o risco das alturas

            Em
Com ânsia de chegar

        A            A7
E, embora eu seja como as outras criaturas

         D
Não sei me rebaixar

         Am        D7
Não vou brincar de não ter sonhos, se eu os tenho

         Am7           D7       G
Sou da montanha e na montanha eu vou ficar

         Gm    F#m    Bm
Igual a meus pais, vou construir também meu ninho

         Em            A7       D
Mas não sou águia se lá em cima eu não morar

     D         Bm
Tenho uma prece que eu repito suplicante

         Em
Por mim, por meu irmão

        A           A7
Dá-me esta graça de viver a todo instante

         D
A minha vocação

         Am       D7
Eu quero amar um outro alguém do jeito certo

           Am7         D7       G
Não vou trair meus ideais para ser feliz

         Gm    F#m  Bm
Não vou descer nem jogar fora meu projeto

          Em          A7        D
Vou ser quem sou e sendo assim serei feliz',
  to_tsvector('portuguese', 'Águia Pequena ' || '')
),
(
  'noites-traicoeiras-pe-marcelo-rossi',
  'Noites Traiçoeiras (Deus Está Aqui Neste Momento)',
  'Padre Marcelo Rossi / Carlos Papae',
  'Padre Marcelo Rossi / Carlos Papae',
  'G',
  74,
  '4/4',
  'Balada / Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  9,
  'Ação de Graças',
  'Qualquer',
  'Sl 29, 6; Mt 28, 20',
  'popular',
  '[Intro] G  Bm  C  D

G         Bm
Deus está aqui nesse momento

       C         D
Sua presença, é real em meu viver

G         Bm
Entregue sua vida e os seus problemas

          C    D  G Em
Fale com Deus ele vai ajudar você  ooooooooh

         C
Deus te trouxe aqui

           D               G        D9/F# Em
Para aliviar os teus sofrimentos

         C
É ele o autor da fé

         D
Do princípio ao fim

         G       G7
E de todos os teus momentos

         C         D
E ainda se vier, noites traiçoeiras

         Bm
Se a cruz pesada for

         Em
Cristo estará contigo

         Am         D
O mundo pode até, fazer você chorar

         G
Mas Deus te quer sorrindo',
  to_tsvector('portuguese', 'Noites Traiçoeiras (Deus Está Aqui Neste Momento) ' || '')
),
(
  'basta-querer-pe-marcelo-rossi',
  'Basta Querer (Meu Pensamento Vive em Você)',
  'Padre Marcelo Rossi / Jorge Guedes',
  'Padre Marcelo Rossi / Jorge Guedes',
  'G',
  76,
  '4/4',
  'Balada Romântica Sacra',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  13,
  'Ação de Graças',
  'Tempo Comum',
  'Ap 3, 20; Sl 26',
  'popular',
  'G                 D/G        G   D/G
  Meu pensamento vive em você, a luz do meu

     G  G/B     C
Viver, Senhor

G            D/G            G
  Basta entrar, e eu me abrir pra Te amar

       D/G          G   G/B  C G/B
Nem precisa perguntar, Te amo!

Am         C     D
   Há um clima todo diferente

Am        G/B           C          D4   
   Que aquece e mexe com o coração da gente

G                D/G
  É como um sonho,  é como um sonho

      Am        Am/G          C        D
Eu me dou por inteiro, Teu é o meu coração

G                D/G              Am
  E ao Teu lado,   eu sempre sigo, já não há

Mais talvez

         C/D              G
Basta querer pra Te ver outra vez

G         D      Em     D
  Meu pensamento vive em você, a luz do meu

    Em     C
Viver, Senhor

G         D           Em
  Basta entrar, e eu me abrir pra Te amar

       D        Em        C
Nem precisa perguntar, Te amo!

Am        Am    D
  Há um clima todo diferente

C       Am         D
  Que aquece e mexe com o coração da gente

( D4  D )

G                 D/F#
  É como um sonho,  é como um sonho

       C/E        Am             C       D
Eu me dou por inteiro, Teu é o meu coração

G         D           C
  E ao Teu lado,   eu sempre sigo, já não há

           Am
Mais talvez

        C           D          G
Basta querer pra Te ver outra vez',
  to_tsvector('portuguese', 'Basta Querer (Meu Pensamento Vive em Você) ' || '')
),
(
  'quero-te-dar-a-paz-pe-marcelo-rossi',
  'Paz (Quero Te Dar a Paz do Meu Senhor)',
  'Padre Marcelo Rossi',
  'Padre Marcelo Rossi',
  'D',
  84,
  '4/4',
  'Balada Fraterna',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  10,
  'Ação de Graças',
  'Qualquer',
  'Jo 14, 27; Rm 12, 10',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7

[Primeira Parte]
   D          A/C#
1. Quero te dar a paz do meu Senhor,
   Bm         F#m
Essa paz que o mundo não pode dar!
   G          D/F#
Quero te abraçar com o amor de Deus,
   Em         A7
Que veio a todos nós transformar!

[Refrão]
   D          A/C#
A paz do Senhor Jesus seja contigo!
   Bm         F#m
A paz do Senhor Jesus, meu irmão!
   G          D/F#
Que o amor de Deus encha tua vida,
   Em           A7          D
E habite para sempre em teu coração!',
  to_tsvector('portuguese', 'Paz (Quero Te Dar a Paz do Meu Senhor) ' || '')
),
(
  'forca-e-vitoria-pe-marcelo-rossi',
  'Força e Vitória (Todo Joelho Se Dobrará)',
  'Padre Marcelo Rossi / Eliana Ribeiro',
  'Padre Marcelo Rossi / Eliana Ribeiro',
  'B',
  78,
  '4/4',
  'Balada Forte',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  14,
  'Ação de Graças',
  'Tempo Comum',
  'Fl 2, 9-11; Rm 8, 37',
  'popular',
  '[Intro] Bm  G7M  Em  F#  Bm

       Em            A4 A7
Todo joelho se dobrará

        D          A/C#   Bm
E toda língua procla____mará

       Em        F#/A#      Bm
Que Jesus Cristo é o     Senhor)2x

          Em Em/D   A
Nada poderá   me abalar

          D     A/C#    Bm
Nada poderá me derrotar

            C#m7(5-)   F#
Pois minha força e   vitória

         Bm
Tem um nome

A/C#  B/D#
É  Jesus

          Em Em/D   A
Nada poderá me   abalar

          D     A/C#    G7M
Nada poderá me derrotar

           C#m7(5-)   F#
Pois minha força e vitória

     Bm
É Jesus

         Em        A4   A7
Quero viver tua palavra

            D       A/C#  Bm
Quero ser cheio do Teu Espírito

           Em    F#/A#       Bm
Mas só te peço, livra-me do mal)2X

          Em Em/D   A
Nada poderá   me abalar

          D     A/C#    Bm
Nada poderá me derrotar

            C#m7(5-)    F#
Pois minha força e   vitória

         Bm
Tem um nome

A/C#  B/D#
É  Jesus

          Em Em/D   A
Nada poderá me   abalar

          D     A/C#    G7M
Nada poderá me derrotar

           C#m7(5-)    F#
Pois minha força e  vitória

     Bm
É Jesus

 Em   A  Bm
Jesus!

 Em   A  Bm
Jesus!

 Em   A  Bm
Jesus!

          Em Em/D   A
Nada poderá   me abalar

          D     A/C#    Bm
Nada poderá me derrotar

            C#m7(5-)   F#
Pois minha força e   vitória

         Bm
Tem um nome

A/C#  B/D#
É  Jesus

          Em Em/D   A
Nada poderá me   abalar

          D     A/C#    G7M
Nada poderá me derrotar

           C#m7(5-)    F#
Pois minha força e  vitória

     Bm
É Jesus',
  to_tsvector('portuguese', 'Força e Vitória (Todo Joelho Se Dobrará) ' || '')
),
(
  'derrama-o-teu-amor-aqui-pe-marcelo-rossi',
  'Derrama o Teu Amor Aqui',
  'Padre Marcelo Rossi / Celina Borges',
  'Padre Marcelo Rossi / Celina Borges',
  'GB',
  92,
  '4/4',
  'Pop Rock Litúrgico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Entrada',
  'Pentecostes',
  'Rm 5, 5; Ef 5, 14',
  'popular',
  '[Intro] G/B  C  D  Em

        C  D  G/B  Em

        Am  G/B  C  D

        Em  D/F#  G  G4  G

[Solo]

G         D    Em         C
Senhor, eu quero obedecer    a Tua voz

G          D          Em         C
Derrama o Teu Espírito (uh, uh) sobre todos nós

G          D        Em         C
  Senhor, eu quero mergulhar,   me comprometer

G         D    Em         C
  Entrar na intimida----de do Teu coração

           D          G
Derrama em nós Tua unção

         D
Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C       D
Faz chover sobre nós Água Viva

G         D
  Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C       D
Faz chover sobre nós Água Viva

( C  D  G/B  C )

( Am  G/B  C  D )

         D      Em        C
Senhor, eu quero obedecer    a Tua voz

G          D          Em         C
Derrama o Teu Espírito (uh, uh) sobre todos nós

G          D        Em         C
  Senhor, eu quero mergulhar,   me comprometer

G         D    Em         C
  Entrar na intimida----de do Teu coração

           D          G
Derrama em nós Tua unção

         D
Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C       D
Faz chover sobre nós Água Viva

G         D
  Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C        D
Faz chover sobre nós Água Viva

G         D
  Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C        D
Faz chover sobre nós Água Viva

G         D
  Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C       D
Faz chover sobre nós Água Viva

Em         D
   Uma Igreja renovada

Em         D
   Povo santo reunido

Em         D
   Famílias restauradas

Em         C
   Pelo poder do Teu Espírito

         G
Derrama o Teu amor aqui

         D
Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C       D
Faz chover sobre nós Água Viva

G/B              D
    Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

                  C   G/B  C  D  G
Faz chover sobre nós Água Viva

         D
Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C        D
Faz chover sobre nós Água Viva

G/B              D
    Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C       D
Faz chover sobre nós Água Viva

         D
Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C       D
Faz chover sobre nós Água Viva

G         D
  Derrama o teu amor aqui

         Em
Derrama o teu amor aqui

         C        D    C D C D C D        G
Faz chover sobre nós Água Viva              Sobre nós!

( G  D  Em  C )',
  to_tsvector('portuguese', 'Derrama o Teu Amor Aqui ' || '')
),
(
  'tudo-e-do-pai-pe-marcelo-rossi',
  'Tudo É do Pai (Eu Pensava Que Podia Viver Por Mim Mesmo)',
  'Padre Marcelo Rossi / Frederico Cruz',
  'Padre Marcelo Rossi / Frederico Cruz',
  'B',
  74,
  '4/4',
  'Balada / Dedilhado',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  17,
  'Ação de Graças',
  'Quaresma',
  'Lc 15, 11-32; Tg 1, 17',
  'popular',
  '[Intro] B  F#/A#  G#m  E

        C#m  F#4  F#

[Tab - Intro]

Parte 1 de 2
     B      F#/A#     G#m   E
E|-----------------------------------| 
B|----------------------------5-5~---| 
G|-3/4--3h4-3~--3-3h4-1~--1-1--------| 
D|-----------------------------------| 
A|-----------------------------------| 
E|-----------------------------------| 

Parte 2 de 2
       C#m         F#4      F#
E|-----------------------------------| 
B|-----------------------------------| 
G|---4/6~--6-8h9p8-6---3/4--4-4\3-3~-| 
D|-2---------------------------------| 
A|-----------------------------------| 
E|-----------------------------------| 

[Primeira Parte]

       B               F#/A#
Eu pensei que podia viver

         G#m  B/F#
Por mim mesmo

       C#m                  C#m/B
Eu pensei que as coisas do mundo

      F#
Não iriam me derrubar

     B           F#/A#
O orgulho tomou conta

        G#m  B/F#
Do meu ser

       C#m       C#m/B       F#
E o pecado devastou o meu viver

[Pré-Refrão]

       E         F#
Fui embora, disse ao Pai

         D#m  G#m
Dá-me o que é meu

         C#m
Dá-me a parte

        F#           B  B7
Que me cabe da herança

         E         F#
Fui pro mundo, gastei tudo

       D#7   Gº   G#m
Me restou só o pecado

           C#m            F#
E hoje eu sei que nada é meu

           B  F#
Tudo é do Pai

[Refrão]

           B
Tudo é do Pai

      F#/A#           G#m
Toda honra e toda a glória

   B/F#     C#m
É dEle a vitória

      C#m/B         F#
Alcançada em minha vida

           B
Tudo é do Pai

         F#/A#      G#m
Se sou fraco e pecador

          B/F#             C#m
Bem mais forte é o meu Senhor

        F#        B  F#
Que me cura por amor

           B
Tudo é do Pai

      F#/A#           G#m
Toda honra e toda a glória

   B/F#     C#m
É dEle a vitória

      C#m/B         F#
Alcançada em minha vida

           B
Tudo é do Pai

         F#/A#      G#m
Se sou fraco e pecador

          B/F#             C#m
Bem mais forte é o meu Senhor

        F#        B  E9/F#
Que me cura por amor

[Primeira Parte]

       B               F#/A#
Eu pensei que podia viver

         G#m  B/F#
Por mim mesmo

       C#m                  C#m/B
Eu pensei que as coisas do mundo

      F#
Não iriam me derrubar

     B           F#/A#
O orgulho tomou conta

        G#m  B/F#
Do meu ser

       C#m       C#m/B       F#
E o pecado devastou o meu viver

[Pré-Refrão]

       E         F#
Fui embora, disse ao Pai

         D#m  G#m
Dá-me o que é meu

         C#m
Dá-me a parte

        F#           B  B7
Que me cabe da herança

         E         F#
Fui pro mundo, gastei tudo

       D#7   Gº   G#m
Me restou só o pecado

           C#m            F#
E hoje eu sei que nada é meu

           B  F#
Tudo é do Pai

[Refrão Final]

           B
Tudo é do Pai

      F#/A#           G#m
Toda honra e toda a glória

   B/F#     C#m
É dEle a vitória

      C#m/B         F#
Alcançada em minha vida

           B
Tudo é do Pai

         F#/A#      G#m
Se sou fraco e pecador

          B/F#             C#m
Bem mais forte é o meu Senhor

        F#        B  F#
Que me cura por amor

           B
Tudo é do Pai

      F#/A#           G#m
Toda honra e toda a glória

   B/F#     C#m
É dEle a vitória

      C#m/B         F#
Alcançada em minha vida

           B
Tudo é do Pai

         F#/A#      G#m
Se sou fraco e pecador

          B/F#             C#m
Bem mais forte é o meu Senhor

        F#        E   B/D#  C#m  B
Que me cura por amor',
  to_tsvector('portuguese', 'Tudo É do Pai (Eu Pensava Que Podia Viver Por Mim Mesmo) ' || '')
),
(
  'eu-navegarei-pe-marcelo-rossi',
  'Eu Navegarei no Oceano do Espírito',
  'Padre Marcelo Rossi / Adoração',
  'Padre Marcelo Rossi / Adoração',
  'G#',
  74,
  '4/4',
  'Balada Contemplativa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  11,
  'Ação de Graças',
  'Pentecostes',
  'Ez 47, 1-9; Jo 4, 24',
  'popular',
  '[Intro] G#m7  F#6  E7M

        C#m7(9)  D#  D#4  D#

[Primeira Parte]

          G#m7
Eu navegarei

         F#6
No oceano do Espírito

            E7M  C#m7
E ali adorarei

         D#  D#4  D#
Ao Deus do meu amor

         G#m7
Eu adorarei

         F#6
Ao Deus da minha vida

                E7M  C#m7
Que me compreendeu

         D#  D#4  D#
Sem nenhuma explicação

[Refrão]

         G#m7
Espírito, Espírito

         F#6
Que desce como fogo

                  E7M   C#m7
Vem como em pentecostes

         D#  D#4  D#
E enche-me de novo

         G#m7
Espírito, Espírito

         F#6
Que desce como fogo

                  E7M   C#m7
Vem como em pentecostes

         D#  D#4  D#
E enche-me de novo

[Primeira Parte]

          G#m7
Eu navegarei

         F#6
No oceano do Espírito

            E7M(9)  C#m7
E ali adorarei

         D#  D#4  D#
Ao Deus do meu amor

         G#m7
Eu adorarei

         F#6
Ao Deus da minha vida

                E7M(9)  C#m7
Que me compreendeu

         D#  D#4  D#
Sem nenhuma explicação

[Refrão]

         G#m7
Espírito, Espírito

         F#6
Que desce como fogo

                  E7M(9)  C#m7
Vem como em pentecostes

         D#  D#4  D#
E enche-me de novo

         G#m7
Espírito, Espírito

         F#6
Que desce como fogo

                  E7M(9)  C#m7
Vem como em pentecostes

         D#  D#4  D#
E enche-me de novo

[Solo] G#m7  F#6  E7M

       C#m7  D#  D#4  D#

       G#m7  F#6  E7M

       C#m7  D#  D#4  D#

[Tab - Solo]

E|--12-11-12-11-----------------------------|      
B|-----------------12-14--------------------|      
G|------------------------------------------| (5x) 
D|------------------------------------------|      
A|------------------------------------------|      
E|------------------------------------------|      

E|--12-11-12-11-----------------------------| 
B|-----------------12-14-11~~---------------| 
G|------------------------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

[Refrão]

         G#m7
Espírito, Espírito

         F#9
Que desce como fogo

                  E7M   C#m7(9)
Vem como em pentecostes

         D#  D#4  D#
E enche-me de novo

         G#m7
Espírito, Espírito

         F#9
Que desce como fogo

                  E7M   C#m7(9)
Vem como em pentecostes

         D#  D#4  D#
E enche-me de novo

[Interlúdio] G#m7  F#6  E7M

         C#m7  D#  D#4  D#

             G#m7  F#6  E7M

         C#m7  D#  D#4  D#

         G#m7
Espírito, Espírito

         F#6
Que desce como fogo

                  E7M   C#m7
Vem como em pentecostes

         D#  D#4  D#  G#m7
E enche-me de novo',
  to_tsvector('portuguese', 'Eu Navegarei no Oceano do Espírito ' || '')
),
(
  'te-agradeco-pe-marcelo-rossi',
  'Te Agradeço (Por Tudo o Que Tens Feito)',
  'Padre Marcelo Rossi',
  'Padre Marcelo Rossi',
  'F',
  84,
  '4/4',
  'Balada de Gratidão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  13,
  'Ação de Graças',
  'Qualquer',
  '1Ts 5, 18; Sl 102',
  'popular',
  '[Intro] F  Bb9  F/C  C#º

        Dm  C/E  F  Bb9

[Primeira Parte]

F         C
  Eu Te agradeço, Deus

         Dm7
Por se lembrar de mim

         Bb9
E pelo Teu favor

         F
E o que me faz crescer

         C
Eu vivo pela fé, e não vacilo

Dm7
    Eu não paro, eu não desisto

Bb9
    Eu sou de Deus, eu sou de Cristo

[Interlúdio] F  C  Dm7  Bb9

         F  C  Dm7  Bb9

F         C
  Eu Te agradeço, Deus

         Dm7
Por se lembrar de mim

         Bb9
E pelo Teu favor

         F
E o que me faz crescer

         C
Eu vivo pela fé, e não vacilo

Dm7
    Eu não paro, eu não desisto

Bb9
    Eu sou de Deus, eu sou de Cristo

[Pré-Refrão]

F            C
  Você mudou a minha história

Dm7
    E fez o que ninguém

Bb9
    Podia imaginar

F         C
 Você acreditou e isso é tudo

Dm7
    Só vivo para você

Bb9
    Não sou do mundo, não

[Refrão]

F          C         Dm7
  A honra, a glória, a força

 Bb9
Todo louvor a Deus

F         C         Dm7
  E o levantar   das minhas mãos

         Bb9         F
É pra dizer que Te pertenço, Deus

[Segunda Parte]

F         C
  Eu te agradeço a Deus

Que no deserto

 Dm7         Bb9
Não me deixou morrer

E nem desanimar

F         C
  E como aquela mãe que não desiste

Dm7         Bb9
    Você não se esqueceu     você insiste

[Pré-Refrão]

F            C
  Você mudou a minha história

Dm7
    E fez o que ninguém

Bb9
    Podia imaginar

F         C
  Você acreditou e isso é tudo

Dm7
    Só vivo para você

Bb9
    Não sou do mundo, não

[Refrão]

F          C         Dm7
  A honra, a glória, a força

 Bb9
Todo louvor a Deus

F         C         Dm7
  E o levantar   das minhas mãos

         Bb9         F
É pra dizer que Te pertenço, Deus

[Solo]

[Tab - Solo]

E|------------------------------------------| 
B|---------------------11-10~---13--11~-----| 
G|-10~----10--10h12----------10-------------| 
D|-----10------------10---------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

E|------------------------------------------| 
B|---------------------11-10~------13b15~---| 
G|-10~----10--10h12-----------10------------| 
D|-----10------------10---------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

F           C
Oh! oh, oh, oh

        Dm7/A
Oh, oh, oh

        Bb9
Oh, oh, oh

F           C
Oh! oh, oh, oh

        Dm7/A
Oh, oh, oh

        Bb9
Oh, oh, oh

[Pré-Refrão]

F            C
  Você mudou   a minha história

Dm7
    E fez o que ninguém

Bb9
    Podia imaginar

F         C
  Você acreditou   e isso é tudo

Dm7
    Só vivo pra você

Bb9
    Não sou do mundo, não

[Refrão]

F         C         Dm7
 A honra, a glória, a força

 Bb9
Todo louvor a Deus

F         C         Dm7
  E o levantar   das minhas mãos

         Bb9         F
É pra dizer que Te pertenço, Deus

          C         Dm7
 A honra, a glória, a força

 Bb9
Todo louvor a Deus

F         C         Dm7
  E o levantar   das minhas mãos

         Bb9         F
É pra dizer que Te pertenço, Deus

[Final] F  C  Dm7  Bb9

        F  C  Dm7  Bb9

        F  C  Dm7  Bb9

        F  C  Dm7  Bb9  F',
  to_tsvector('portuguese', 'Te Agradeço (Por Tudo o Que Tens Feito) ' || '')
),
(
  'a-ele-a-gloria-eugenio-jorge',
  'A Ele a Glória (Alfa, Ômega, Princípio e Fim)',
  'Eugênio Jorge / Ministério Missão Mensagem Brasil',
  'Eugênio Jorge / Ministério Missão Mensagem Brasil',
  'Em',
  72,
  '4/4',
  'Adoração Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Rm 11, 36; Ap 1, 8',
  'popular',
  '[Intro] Em  C  D  Em

[Primeira Parte]
   Em         C
Alfa, Ômega, Princípio e Fim,
   D     G       B7
Sim, Ele é! Sim, Ele é! (2x)
   Em           C
Lírio do Vale, Estrela da Manhã,
   D         Em
Para sempre cantarei o Seu louvor!

[Refrão]
   C         D
A Ele a glória, a Ele o louvor,
   G         Em
A Ele o domínio, Ele é o Senhor!
   C         D
A Ele a glória, a Ele o louvor,
   B7         Em
A Ele o domínio, Ele é o Senhor!

[Ponte Bíblica - Romanos 11,36]
   C         D
Porque Dele, por Ele, para Ele são todas as coisas!
   G         Em
Porque Dele, por Ele, para Ele são todas as coisas!',
  to_tsvector('portuguese', 'A Ele a Glória (Alfa, Ômega, Princípio e Fim) ' || '')
),
(
  'ninguem-te-ama-como-eu-martin-valverde',
  'Ninguém Te Ama Como Eu',
  'Martín Valverde / Eugênio Jorge',
  'Martín Valverde / Eugênio Jorge',
  'C',
  68,
  '4/4',
  'Balada / Dedilhado',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Quaresma',
  'Jo 15, 13; Gl 2, 20',
  'popular',
  '[Intro] C  G/B  Am  F  G  C

[Primeira Parte]
C         G/B       Am
1. Tenho esperado este momento,
      Dm         G
Tenho esperado que viesses a mim.
C         G/B       Am
Tenho esperado que me fales,
      Dm         G
Tenho esperado que estivesses assim.
C         G/B        Am
Eu sei bem o que tens vivido,
      Dm         G
Sei também por que tens chorado;
C         G/B        Am
Eu sei bem o que tens sofrido,
      Dm         G
Pois permaneço sempre ao teu lado!

[Refrão]
C         G/B        Am
Ninguém te ama como eu!
F         G
Ninguém te ama como eu!
C         G/B             Am
Olhe pra cruz, esta é a minha grande prova:
F         G
Ninguém te ama como eu!
C         G/B        Am
Ninguém te ama como eu!
F         G
Ninguém te ama como eu!
C         G/B             Am
Olhe pra cruz, foi por ti, porque te amo:
F         G          C
Ninguém te ama como eu!

[Segunda Parte]
C         G/B       Am
2. Eu sei bem o que me dizes,
      Dm         G
Ainda que nunca me fales.
C         G/B       Am
Eu sei bem o que tens sentido,
      Dm         G
Ainda que nunca me reveles.
C         G/B        Am
A teu lado tenho caminhado,
      Dm         G
Junto a ti eu sempre tenho estado;
C         G/B        Am
Pelo braço eu te tenho segurado,
      Dm         G
Pois sou teu amigo mais achegado!

[Refrão]

[Terceira Parte]
C         G/B       Am
3. Eu sei bem o que procuras,
      Dm         G
Em tantos caminhos sem paz.
C         G/B       Am
Descansa em mim tua alma,
      Dm         G
Pois o meu amor te refaz!
C         G/B        Am
Neste altar eu me dou em alimento,
      Dm         G
Pra curar o teu sofrimento:
C         G/B        Am
Vem a mim sem receio e sem medo,
      Dm         G
Pois sou teu Salvador e sustento!

[Refrão Final]
C         G/B        Am
Ninguém te ama como eu!
F         G
Ninguém te ama como eu!
C         G/B             Am
Olhe pra cruz, foi por ti, porque te amo:
F         G          C
Ninguém te ama como eu!',
  to_tsvector('portuguese', 'Ninguém Te Ama Como Eu ' || '')
),
(
  'chuva-de-graca-eliana-ribeiro',
  'Chuva de Graça',
  'Eliana Ribeiro / Canção Nova',
  'Eliana Ribeiro / Canção Nova',
  'B',
  82,
  '4/4',
  'Balada Carismática',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Entrada',
  'Pentecostes',
  'Ez 34, 26; Jl 3, 1',
  'popular',
  'B  F#/Bb  G#m  E  B  F#  E

(solo 2x) B  F#  G#m  E

B         F#
Há uma chuva de graça aqui

G#m         E
Está chovendo sobre todos nós

B         F#
E quem mais se entregar

E
Mais se molhará

B         F#
Há uma semente pra germinar

G#m         E
E muitos frutos a se produzir

B         F#
Na terra do coração

E
Derrama tua graça

B         F#
Chuva de graça pedimos a ti

G#m         E
Chuva de graça derrama em nós

B         F#
Chuva de graça neste lugar

E
Derrama!

[Solo]

B        F#        G#m        E
Ô, ô, ô, ô, ô, ô, ô, ô

B        F#        G#m        E
Ô, ô, ô, ô, ô, ô, ô, ô',
  to_tsvector('portuguese', 'Chuva de Graça ' || '')
),
(
  'sacramento-da-comunhao-diacono-nelsinho-correa',
  'Sacramento da Comunhão (Senhor, Quando Te Vejo no Sacramento)',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'D',
  74,
  '4/4',
  'Balada Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Comunhão',
  'Qualquer',
  'Jo 17, 21; 1Cor 10, 17',
  'popular',
  '[Intro] D  A/C#  Bm  G  A  D

[Primeira Parte]
D       A/C#        Bm       Bm/A
1. Senhor, quando te vejo no sacramento da comunhão,
G         Em          A
Sinto o céu se abrir e uma luz a me atingir,
D       A/C#        Bm       Bm/A
Esfriando minha cabeça e esquentando meu coração!
G         Em          A
Senhor, graças e louvores sejam dados a todo momento,
D       A/C#        Bm       Bm/A
Quero te louvar na dor, na alegria e no sofrimento,
G          Em          A
E se em meio à tribulação eu me esquecer de ti,
G          A          D
Ilumina minhas trevas com tua luz!

[Refrão]
D               A/C#      Bm    Bm/A
Jesus, fonte de misericórdia
          G      A
Que jorra do templo!
           F#m   Bbº    Bm
Jesus, o Filho da Rainha!
G          D       Em     A     D
Jesus, rosto divino do homem!
G          D       Em     A     D
Jesus, rosto humano de Deus!

[Segunda Parte]
D       A/C#        Bm       Bm/A
2. Chego muitas vezes em tua casa, meu Senhor,
G         Em          A
Triste, abatido, precisando de amor,
D       A/C#        Bm       Bm/A
Mas tu me olhas nos olhos e acalmas minha dor!
G         Em          A
E quando estendo as minhas mãos para te receber,
D       A/C#        Bm       Bm/A
Não sou eu que te seguro, és tu que me sustentas,
G          Em          A
Pois no meu peito habitas em consagração de amor,
G          A          D
Dando vida nova a quem em ti crer!

[Refrão]

[Terceira Parte]
D       A/C#        Bm       Bm/A
3. Que este Teu Corpo e Teu Sangue que agora recebi
G         Em          A
Sejam força no caminho e alimento até o fim!
D       A/C#        Bm       Bm/A
Que eu leve a Tua paz a quem vive na escuridão,
G          A          D
Sendo presença viva do Teu Santo Coração!

[Refrão Final]
D               A/C#      Bm    Bm/A
Jesus, fonte de misericórdia
          G      A
Que jorra do templo!
           F#m   Bbº    Bm
Jesus, o Filho da Rainha!
G          D       Em     A     D
Jesus, rosto divino do homem!
G          D       Em     A     D
Jesus, rosto humano de Deus!',
  to_tsvector('portuguese', 'Sacramento da Comunhão (Senhor, Quando Te Vejo no Sacramento) ' || '')
),
(
  'diante-do-rei-vida-reluz',
  'Diante do Rei (Vem, Senhor Jesus, o Coração Já Bate Forte)',
  'Walmir Alencar / Vida Reluz',
  'Walmir Alencar / Vida Reluz',
  'A',
  72,
  '4/4',
  'Adoração ao Santíssimo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  19,
  'Ação de Graças',
  'Qualquer',
  'Sl 94, 6; Fl 2, 10',
  'popular',
  '[Primeira Parte]

 A9          E/G#
Vem, Senhor Jesus!

       F#m7         C#m7
O coração já bate forte ao te ver

        D7M           Bm7      C#m7
A Tua graça hoje eu quero receber

       Bm7         E4
Sem a benção do Senhor não sei viver

 A9           E/G#
Vem Senhor Jesus!

         F#m7       C#m7
Olhar o povo ao Teu redor me faz lembrar

        D7M         Bm7            C#m7
A multidão lá no caminho a te esperar

       Bm7
Vem ó Santo de Israel

    E7(4)
Passar também neste lugar

[Refrão]

     D7M           E/D
É o rei! A nossa frente está!

     C#m7          F#m7
É feliz quem o adorar

   D7M            E/D
É Jesus, o nosso mestre e rei!

       C#m7         F#m7
Bem aqui, tão perto se deixa encontrar

        D7M
Diante do rei dos reis

 A/C#  Bm7      E4   A9
Todo joelho se dobrará

[Solo] A9  D7M  Bm7 C#m7

       F#m7  D7M  A/C#  Bm7

       D/A  G  D/F#  E4(7)

[Tab - Solo]

Parte 1 de 6
                  D7M         Bm7
E|------------------------------------------| 
B|---------7-9h10-10~--7-9-10-10-7-9-10-10--| 
G|-----6-9----------------------------------| 
D|-7-9--------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 2 de 6
          C#m7         F#m7
E|------7-7/9-------9h10-9---7--------------| 
B|-9-10-------------------------------------| 
G|------------9-9---------------9-----------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 3 de 6
             D7M    A/C#  Bm7
E|------------------------------------------| 
B|---------7-9h10-10~-10-10-10-9-7-7--------| 
G|-----6-9---------------------------9---7--| 
D|-7-9--------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 4 de 6
         D/A         G
E|--------------------------------7-9-------| 
B|---------------------------7-10-----------| 
G|-6-6-7-7---6-6---------7-9----------------| 
D|---------------9---7-9--------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 5 de 6
   D/F#
E|----------7-9-10-12-----------------------| 
B|-----7-10---------------------------------| 
G|-7-9--------------------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 6 de 6
   E4(7)
E|-9-10-7-9----7----------------------------| 
B|----------10---9-10-7-9-------------------| 
G|------------------------------------------| 
D|-------------------------9----------------| 
A|------------------------------------------| 
E|------------------------------------------| 

     D7M           E/D
É o rei! A nossa frente está!

     C#m7          F#m7
É feliz quem o adorar

     D7M          E/D
É Jesus, o nosso mestre e rei!

       C#m7         F#m7
Bem aqui, tão perto se deixa encontrar

        D7M
Diante do rei dos reis

 A/C#  Bm7      E4   A9  F#m7
Todo joelho se dobrará

        D7M
Diante do rei dos reis

 A/C#  Bm7      E7(4)  F#
Todo joelho se dobrará

        Bm7
Diante do rei dos reis

       D/E           A9
Todo joelho se dobrará

[Final] A9  D7M  A9  D7M

        A9  D7M  A9

[Tab - Final]

Parte 1 de 3
   A9              D7M
E|---------------4h5-4-------9-9h10p9-------| 
B|-----------2-5-------5p2--------------10--| 
G|-------2-4--------------------------9-----| 
D|---2-4------------------------------------| 
A|-4----------------------------------------| 
E|------------------------------------------| 

Parte 2 de 3
        A9              D7M
E|-------------------------------12-10-9----| 
B|-------------------------10-10---------12-| 
G|-9h11-9-------9-----9-11------------------| 
D|---------9-11----11-----------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

Parte 3 de 3
  A9                D7M
E|------------------9-9-10-9-9--------------| 
B|-12-12-10---------------------12-12--10---| 
G|-----------11--9--------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 

E|------------------------------------------|',
  to_tsvector('portuguese', 'Diante do Rei (Vem, Senhor Jesus, o Coração Já Bate Forte) ' || '')
),
(
  'tao-sublime-sacramento-tradicional',
  'Tão Sublime Sacramento (Tantum Ergo)',
  'São Tomás de Aquino / Melodia Tradicional',
  'São Tomás de Aquino / Melodia Tradicional',
  'D',
  76,
  '4/4',
  'Hino Solene Eucarístico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  '1Cor 11, 23-26; Jo 6, 51',
  'popular',
  '[Intro] C  G  Am  F  G  C

C         G         Am           Em
1. Tão sublime Sacramento adoremos neste altar,
F         C         Dm           G
Pois o Antigo Testamento deu ao Novo seu lugar!
C         G         Am           Em
Venha a fé por suplemento os sentidos completar!
F         C         G            C
Venha a fé por suplemento os sentidos completar!

C         G         Am           Em
2. Ao Eterno Pai cantemos e a Jesus, o Salvador,
F         C         Dm           G
Ao Espírito exaltemos na Trindade, eterno amor!
C         G         Am           Em
Ao Deus Uno e Trino demos a alegria e o louvor!
F         C         G            C
Ao Deus Uno e Trino demos a alegria e o louvor!

C       F    C
Amém! Amém!',
  to_tsvector('portuguese', 'Tão Sublime Sacramento (Tantum Ergo) ' || '')
),
(
  'bendito-louvado-seja-santissimo-sacramento',
  'Bendito, Louvado Seja o Santíssimo Sacramento',
  'Tradição Litúrgica Luso-Brasileira',
  'Tradição Litúrgica Luso-Brasileira',
  'G',
  78,
  '4/4',
  'Canto Processional Eucarístico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  3,
  'Ação de Graças',
  'Qualquer',
  'Sl 112, 2',
  'popular',
  '[Intro] D  A  D

D         A
1. Bendito, louvado seja
G           A         D
O Santíssimo Sacramento,
D         A
Os anjos no céu cantando
G           A         D
Com ternura e sentimento!

[Refrão]
D         A
Os anjos no céu cantando:
G           A         D
Louvado seja o Senhor!
D         A
Os anjos no céu cantando:
G           A         D
Louvado seja o Senhor!

[Estrofes]
D         A
2. Jesus Cristo está presente
G           A         D
Neste santo Sacramento,
D         A
É penhor de vida eterna
G           A         D
E da alma o mantimento!

[Refrão]

D         A
3. O Céu se abre na terra
G           A         D
Nesta mesa consagrada;
D         A
A Eucaristia é a fonte
G           A         D
Da Igreja abençoada!

[Refrão]

D         A
4. Louvemos o Pai eterno,
G           A         D
O Filho ressuscitado,
D         A
E o Espírito de amor
G           A         D
Seja sempre celebrado!',
  to_tsvector('portuguese', 'Bendito, Louvado Seja o Santíssimo Sacramento ' || '')
),
(
  'quero-mergulhar-nas-profundezas-cancao-nova',
  'Quero Mergulhar nas Profundezas',
  'Canção Nova / Salette Ferreira',
  'Canção Nova / Salette Ferreira',
  'G',
  72,
  '4/4',
  'Balada Contemplativa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  10,
  'Ação de Graças',
  'Pentecostes',
  '1Cor 2, 10; Ez 47',
  'popular',
  '[Intro] G  D/F#  Em7  C9  D4  D

[Primeira Parte]
   G          D/F#
1. Quero mergulhar nas profundezas
   Em7         C9
Do amor de Deus, meu Criador!
   G          D/F#
Deixar que a graça me renove,
   Em7         C9
E me revista do Teu louvor!

[Pré-Refrão]
   Am         Em
Leva-me além das aparências,
   C         D4  D
Onde o Teu Espírito se move!

[Refrão]
   G          D/F#
Quero mergulhar, quero Te adorar,
   Em7         C9
Em Espírito e em verdade me entregar!
   G          D/F#
Tua presença é tudo o que eu preciso,
   C            D           G
Meu amado, meu Senhor e Redentor!',
  to_tsvector('portuguese', 'Quero Mergulhar nas Profundezas ' || '')
),
(
  'vem-louvar-hoje-e-tempo-de-louvar-a-deus',
  'Hoje É Tempo de Louvar a Deus (Vem Louvar)',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'D',
  104,
  '4/4',
  'Pop Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Entrada',
  'Tempo Comum',
  '1Cor 3, 16; Sl 149',
  'popular',
  'D           G     A     D  (G A)
Hoje é tempo de louvar a Deus

D         G         C  A
Em nós agora habita o Seu Espírito

   G   A    D        G       A   D
Então é só cantar e a Cristo exaltar

      G       Em          C  A
E Sua glória encherá este lugar

      D      G    D  A
Vem louvar, vem louvar

  D           G       A     D (G A)
No meio dos louvores Deus habita

D         G         C  A
É seu prazer cumprir o que nos diz

   G   A    D        G       A   D
Então é só cantar e a Cristo exaltar

      G        Em          C  A
E sua glória encherá este lugar

      D      G    D  A
Vem louvar, vem louvar

      D      G    D  A
Glória a Deus, glória a Deus

      D      G    D  A
Vem louvar, vem louvar

      D      G    D  A
Glória a Deus, glória a Deus',
  to_tsvector('portuguese', 'Hoje É Tempo de Louvar a Deus (Vem Louvar) ' || '')
),
(
  'o-senhor-e-rei-monsenhor-jonas-abib',
  'O Senhor É Rei (O Senhor É Meu Pastor e Rei)',
  'Monsenhor Jonas Abib / Pe. Marcelo Rossi',
  'Monsenhor Jonas Abib / Pe. Marcelo Rossi',
  'Em',
  108,
  '4/4',
  'Rock / Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  3,
  'Entrada',
  'Tempo Comum',
  'Sl 22; Sl 92; Ap 19, 16',
  'popular',
  '[Intro] Em  G  D  C

[Refrão]
   Em         G
O Senhor é Rei, o Senhor é meu Pastor e Rei!
   D          C           Em
O Senhor está no Céu, o Senhor está no mar,
   C    D         Em
Na extensão do infinito!

[Estrofe]
   G         D
Está no Céu, está no mar,
   Em    C         D
Na extensão do infinito! (2x)
   Em            G
Quando eu vacilar, eu não temerei,
   D    C         Em
Pois o Senhor está comigo!',
  to_tsvector('portuguese', 'O Senhor É Rei (O Senhor É Meu Pastor e Rei) ' || '')
),
(
  'restaura-nossa-casa-dunga-cancao-nova',
  'Restaura Nossa Casa, Senhor (Restauração)',
  'Dunga / Canção Nova',
  'Dunga / Canção Nova',
  'GB',
  76,
  '4/4',
  'Balada Familiar',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  20,
  'Ação de Graças',
  'Tempo Comum',
  'Js 24, 15; Sl 127',
  'popular',
  '[Intro] G/B  C  D/C  C  Am7  Bm7

        Em7  Am  D4  Dm7  F  F7M  G

G7M
   Deus vê o coração

Em7
    Sonda com a compaixão

  C7M       C/D       G      C/D
E sabe o tamanho da sua dor

G7M                  Em7
  Ele não pode pôr        limites no Seu amor

      C7M      C/D           G       C/D
Pois sabe até onde vai todo pecador

G7M                 Em7
   Lágrimas são suor de  almas que lutam só

    C7M       C/D                G       C/D
Só Deus pode entender o que lhe causa dor

G7M              Em7
  Pensa no teu Senhor,    recorra ao Seu amor

    C7M       C/D              G        C/D
E creia: Ele é fiel, justo é o Seu amor

 G   Am7  Bm7  C7M          C/D
Pa...re   de   se maltratar!

         Bm7           Em7
Não queira aos outros culpar

          Am7       C/D
Diga: por hoje não!

            G         G7
Por hoje eu não vou mais pecar!

  G7         C7M  C  D  Em  Am  C/D
Estenda   a   sua mão

         Bm7         Em7
E abra o seu coração

          Am7        C/D
Volta pro seu Senhor

         G        G7
E se abra à restauração

    G7          C7M  C  D  Em  Am  C/D
Com Cristo, você vai superar

            Bm7           Em7
Todas as barreiras passar

         Am7         D/C
Todo o pecado vencer

              Eb7M  C/D     G
Um novo homem vai      nascer',
  to_tsvector('portuguese', 'Restaura Nossa Casa, Senhor (Restauração) ' || '')
),
(
  'amigos-pela-fe-anjos-de-resgate',
  'Amigos Pela Fé',
  'Anjos de Resgate / Dalvimar Gallo',
  'Anjos de Resgate / Dalvimar Gallo',
  'G',
  74,
  '4/4',
  'Balada Acústica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  12,
  'Ação de Graças',
  'Qualquer',
  'Eclo 6, 14; Jo 15, 15',
  'popular',
  '[Intro] G  Em  C9  D

   G     Em       C9

  D

[Primeira Parte]

G          D/F# Em         D C9
  Quem me da___rá um ombro amigo

            D
Quando eu precisar?

G         D/F# Em         D   C9
  E se eu ca___ir, se eu vacilar

         D
Quem vai me levantar?

    Am              G/B
Sou eu, quem vai ouvir você

          C9         D
Quando o mundo não puder te entender

     Am                 G/B
Foi Deus, quem te escolheu pra ser

      C9         D
O melhor amigo que eu pudesse ter

[Refrão]

G    D/F#  Em           D
  Amigo.....os pra sempre

       C            Am         D
Bons amigos que nasceram pela fé

G    D/F#  Em           D
  Amigo.....os pra sempre

      Am            D7(4)
Para sempre amigos sim

Se Deus quiser

[Intro – Variação]

  G       Em     C9        Am     D

[Segunda Parte]

  G  D/F#   Em       D  C9
Quem é que vai  me acolher

            D
Na minha indecisão

 G        D/F# Em      D C9
Se eu me per_der pelo caminho

         D
Quem me dará a mão

     Am               G/B
Foi Deus, quem consagrou

Você e eu

      C9
Para sermos bons amigos

            D
Num só coração

    Am           G/B
Por isso eu estarei aqui

        C9
Quando tudo parecer

         D
Sem solução

[Ponte]

Bb         F
   Peço a Deus que te guarde

(Que te guarde, abençoe
E mostre a sua face)

Bb         D4
   E te dê a sua paz

[Refrão]

G   D/F#  Em            D
  Amigo.....os pra sempre

       C            Am         D
Bons amigos que nasceram pela fé

G   D/F#  Em            D
  Amigo.....os pra sempre

      Am            D7(4)
Para sempre amigos sim

    G         (D)
Se Deus quiser

G    D/F#  Em           D
  Amigo.....os pra sempre

       C           Am          D
Bons amigos que nasceram pela fé

G   D/F#  Em            D
  Amigo.....os pra sempre

      Am            D7(4)
Para sempre amigos sim

Se Deus quiser

[Final]

  G    Em        D/F#   G',
  to_tsvector('portuguese', 'Amigos Pela Fé ' || '')
),
(
  'manda-teus-anjos-anjos-de-resgate',
  'Manda Teus Anjos Sobre Nós',
  'Anjos de Resgate / Dalvimar Gallo',
  'Anjos de Resgate / Dalvimar Gallo',
  'D',
  76,
  '4/4',
  'Balada de Oração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  14,
  'Ação de Graças',
  'Qualquer',
  'Sl 90, 11; Hb 1, 14',
  'popular',
  '[Intro] D  G/D  D  G/D

 D            G          D
Manda teus anjos, sobre nós

       Bm         G         A
E abençoa todos que esperam em vós

           D  G/D           D    Bm
Manda teus anjos, pra nos ensinar

         Em      A     D  D4
A te louvar, e glorificar

D         G         A      D
Envia também teu espírito de paz e amor

       F#m         Bm   Em         A
O meu coração tem sede,do meu criador

D          G         A    D
Envia senhor os teus anjos, pra nos resgatar

          F#m        Bm        Em         A       D
Pra nos proteger de todo mal, para nos guiar, senhor

D            G          D
Manda teus anjos, sobre nós

       Bm         G         A
E abençoa todos que esperam em vós

           D  G/D           D    Bm
Manda teus anjos, pra nos ensinar

         Em      A     D  D4
A te louvar, e glorificar

  D        G         A      D
Quando acordo olho o céu e canto o meu louvor

    F#m         Bm     Em           A
De todas as manhãs, tu és o meu senhor

      D         G         A    D
Levantai-nos ó meu Deus e estende tuas mãos

   F#m         Bm         Em          A4      D
Tu és o meu refúgio, nas minhas opressões senhor

    G        (A  G)     A       F#m       G  A
Confio em vós,      revele tua face para nós

   G       (A  G)    A        F#m           G  F#m  Em  A
Levanta-te,       e põe o teu escudo sobre nós

Manda teus anjos

[Solo] D  G  A  F#m  Bm  Em  A  D  B7

 E            A          E
Manda teus anjos, sobre nós

       C#m       A         B
E abençoa todos que esperam em vós

           E  A              E B/D# C#m
Manda teus anjos, pra nos ensinar

         F#m    B     E  C#m
A te louvar, e glorificar

         F#m    B     E   C#m
A te louvar, e glorificar

         F#m   B  B4
A te louvar, e te    amar

[Final] E  A/E  E  A/E  E',
  to_tsvector('portuguese', 'Manda Teus Anjos Sobre Nós ' || '')
),
(
  'mais-que-amigos-anjos-de-resgate',
  'Mais Que Amigos',
  'Anjos de Resgate',
  'Anjos de Resgate',
  'B',
  78,
  '4/4',
  'Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  23,
  'Ação de Graças',
  'Qualquer',
  'Jo 15, 13-15',
  'popular',
  '[Intro] B  F#/Bb  C#m  F#  B  F#/Bb  C#m

 B         D#m         E   G#m
Não é preciso mais adormecer pra sonhar com um anjo descendo

    F#/A#
Do céu

 E              B/D#         C#m                F#4  F#
Basta você perceber que sou mais que um amigo fiel

 B         D#m         E         G#m
Sou aquele que traz a alegria de Deus e a entrega direto ao seu

     F#/A#
Coração

E        G#m       A      E/G#     F#4  F#
E com Você vou sorrir e chorar. Lado a lado vamos caminhar

  C#m            B/D#          G#m                F#/A#
Quando de ajuda você precisar dou minha vida pra lhe resgatar

C#m                 B/D#
Esse é o desejo de Deus (de Deus)

 E         F#
De hoje em diante o seu anjo sou eu!

 B          F#/Bb       E           G#m      F#
Sou muito mais que um amigo sou um anjo que o senhor enviou!

 B                   F#/Bb
Pode gritar para o mundo ouvir

       C#m         E     F#          B
Sou um anjo que o senhor enviou pra você!

 B         D#m         E         G#m
Não tenho asas nem sei voar mas o que o mundo não pode eu posso lhe

F#/Bb
Dar!

 E         B/D#                C#m          F#4    F#
Vou lhe mostrar o caminho de Deus só ele pode santificar

C#m              B/D#         G#m                F#/Bb
Quando de ajuda você precisar dou minha vida pra lhe resgatar

C#m                B/D#           E   F#4
Esse é o desejo de Deus (de Deus) de hoje em diante o seu anjo sou

F#
Eu

 B          F#/Bb       E           G#m      F#
Sou muito mais que um amigo sou um anjo que o senhor enviou!

 B                   F#/Bb
Pode gritar para o mundo ouvir

       C#m           E      F#
Sou um anjo que o senhor enviou

Bm                Bm9(11)            G7M            Em        F#m
Quando você se ferir e do céu se afastar eu lhe trarei para perto

    Bm
De Deus

 Bm               A/C#              G/D          Em
Quando sentir solidão vem comigo rezar e eu levarei suas preces  a

 F# G  G/B
Deus

 C         G/B          F              Am     G/B
Nós somos mais que amigos: somos anjos que o senhor enviou!

 C          G/B              Dm            F       G
Vamos gritar para o mundo ouvir somos anjos que o senhor enviou!

 C         G/B          F              Am     G/B
Nós somos mais que amigos: somos anjos que o senhor enviou!

 C        G/B               Dm      C
Vamos gritar para o mundo ouvir somos anjos',
  to_tsvector('portuguese', 'Mais Que Amigos ' || '')
),
(
  'tua-familia-anjos-de-resgate',
  'Tua Família (Percebe e Entende)',
  'Anjos de Resgate',
  'Anjos de Resgate',
  'G',
  74,
  '4/4',
  'Balada Familiar',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Eclo 3, 1-16; Cl 3, 13',
  'popular',
  '[Intro] G  D  Em  C  D  G

[Primeira Parte]
   G          D         Em
1. Percebe e entende que os melhores amigos
   C            Am         D
São aqueles que estão em casa, esperando por ti!
   G           D         Em
Acredita, nos momentos mais difíceis da vida,
   C         D         G       G7
Eles sempre estarão por perto, pois só sabem te amar!

[Refrão]
   C    D         G       Em
Tua família volta pra ela,
   Am    D         G       G7
Tua família te ama e te espera
   C    D         G       Em
Para ao teu lado sempre estar!
   Am      D         G
Tua família, teu abrigo e teu lar!',
  to_tsvector('portuguese', 'Tua Família (Percebe e Entende) ' || '')
),
(
  'estou-aqui-anjos-de-resgate',
  'Estou Aqui (Pra Ser Amado e Te Amar)',
  'Anjos de Resgate / Dalvimar Gallo',
  'Anjos de Resgate / Dalvimar Gallo',
  'G',
  72,
  '4/4',
  'Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  17,
  'Ação de Graças',
  'Qualquer',
  '1Jo 4, 19; Sl 26',
  'popular',
  '[Intro] G9  C/G  D/F#  G  G/B  C  D4  D

        C/E  D/F#  G9  C/G  D/F#  G  G/B  C  D4  D

         G
Estou aqui

        D/G
Pra ser amado e te amar

          C9          Am7          D7(11)  D7
Te olhar nos olhos e deixar-me   apaixonar

           G
Diante de ti

           D/G
Pra me render ao teu amor

      C9             G/B  Am7       D7(11)  D7
E confessar minhas fraquezas,  sou pecador!

    Am7
Também estou aqui

     Em7(9)
Pra pedir perdão

      Am7       G/B    C9              D7(11)  D
Pelas almas que ainda não  buscam teu coração

     G         D/G           C9
Te amar    (te amar)     por quem não te ama

       G/B  Am   Am7/G    F   D
Te adorar              por quem não te adora

     G    D/F#             C9         G/B
Esperar       por quem não espera em ti

        Am7            D
Pelos que não creem eu, estou aqui

     G       D/G              C9
Te amar  (te amar)  por quem não te ama

       G/B  Am  Am7/G                F   D
Te adorar            por quem não te adora

     G   D/F#              C9         G/B
Esperar       por quem não espera em ti

        Am7            D
Pelos que não crêem eu, estou aqui

     G       D/G          C9
Te amar  (te amar)   por quem não te ama

       G/B  Am   Am7/G                F   D
Te adorar             por quem não te adora

     G   D/F#               C9         G/B
Esperar        por quem não espera em ti

        Am7          D          G
Pelos que não crêem  eu   estou aqui

            Em7(9)
Estou aqui, estou aqui',
  to_tsvector('portuguese', 'Estou Aqui (Pra Ser Amado e Te Amar) ' || '')
),
(
  'seja-luz-anjos-de-resgate',
  'Seja Luz',
  'Anjos de Resgate / Marcelinho',
  'Anjos de Resgate / Marcelinho',
  'E',
  88,
  '4/4',
  'Pop Acústico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  11,
  'Final',
  'Tempo Comum',
  'Mt 5, 14-16',
  'popular',
  'INTRO : Em    D      Em     D

LA LA IÊ LA IÊ LA IÊ LA IÂ LC 8, 43-47

Em         C7+
Todo aquele que entrega a vida nas mãos de Jesus,

Em         C7+
Absorve e armazena o poder da Sua luz.

D/F#         C/G    G    D/F#             C/G  G
Tendo uma vela ace---sa,    coloque-a sobre a me---sa.

E/G#         Am             D4           D  D4   D
Pra anunciar o Reino do Céu às nações, assim seja!

G           D/F#          C    D4            D G
Luz! Seja luz, Para aqueles que ainda precisam encontrar Jesus.

    D/F#            C           D   Em
Seja luz! Mostre ao mundo que vive nas trevas que existe uma luz

D            C7+      Bm   Am D
      É Jesus.     É Jesus.

Em         C7+
Vem Espírito Santo, traz luz ao meu coração.

Em         C7+
Faz de mim um luzeiro pra vida do meu irmão.

D/F#       C/G   G   D/F#         C/G   G
Vou semear a Sua paz. Quero ensinar o Seu amor.

E/G#           Am               D4    D     D4   D
Unja-me dá-me a graça de ser o Seu servo, Senhor!',
  to_tsvector('portuguese', 'Seja Luz ' || '')
),
(
  'o-ceu-se-abre-ministerio-adoracao-e-vida',
  'O Céu Se Abre',
  'Walmir Alencar / Ministério Adoração e Vida',
  'Walmir Alencar / Ministério Adoração e Vida',
  'B',
  74,
  '4/4',
  'Adoração Solene',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  15,
  'Ação de Graças',
  'Qualquer',
  'Ap 4, 8; Is 6, 3',
  'popular',
  '[Intro] B  B7M  B/D#  E  E9

        G#m  F#  B/D#  E  E9

E|----------------------------------------------| 
B|----------------------------------------------| 
G|---4----4--6--8--3----------------4-3---------| 
D|---------------------4--6-------4-----4-2-1---| 
A|----------------------------------------------| 
E|----------------------------------------------| 

E|---7----7--9--11--6-------------7-------------| 
B|----------------------7--9--------7-----------| 
G|----------------------------------------------| 
D|----------------------------------------------| 
A|----------------------------------------------| 
E|----------------------------------------------| 

B         D#m
Hoje o céu se abre pra derramar

          E         B       A  F#4  F#
Sobre os corações toda a graça do Pai

 B         D#m
Eu também quero me derramar

         E     C#m         A    F#4  F#
De todo o meu coração    nos braços do Pai

[Refrão]

B    B7M           E7M   E6            G#m
Vem,     Espírito Santo,    com teu poder

  F#         E
Tocar meu ser, fluir em mim (2x)

B         D#m
Hoje o céu se abre pra derramar

          E         B      A  F#4  F#
Sobre os corações toda a graça do Pai

 B         D#m
Eu também quero me derramar

         E     C#m         A    F#4  F#
De todo o meu coração    nos braços do Pai

[Refrão]

B    B7M              E7M  E6           G#m
Vem,        Espírito Santo,   com teu poder

  F#         E
Tocar meu ser, fluir em mim

B    B7M     B/D#    E7M  E6            G#m
Vem,        Espírito Santo,   com teu poder

  F#          B/D#    E
Tocar meu ser,     fluir em mim

G#m         E
    Hoje eu posso ser   um novo homem

      B         F#  D#m
Pelo teu poder renascer

G#m         E
    Hoje eu posso ser   um novo homem

      B         F#  F#4
Pelo teu poder renascer

G#m         E
    Hoje eu posso ser   um novo homem

      B         F#  D#m
Pelo teu poder renascer

G#m         E
    Hoje eu posso ser   um novo homem

      B        G#m      F#
Pelo teu poder    renascer

[Refrão]

B    B7M           E7M  E6           G#m
Vem,     Espírito Santo,   com teu poder

 F#          B/D#    E
Tocar meu ser,     fluir em mim

B    B7M  B/D#    E7M  E6            G#m
Vem,     Espírito Santo,   com teu poder

  F#          B/D#    E
Tocar meu ser,     fluir em mim

B    B7M  B/D#     E7M  E6          G#m
Vem,     Espírito Santo,   com teu poder

 F#          B/D#    E
Tocar meu ser,     fluir em mim

B    B7M  B/D#     E7M  E6          G#m
Vem,     Espírito Santo,   com teu poder

  F#          B/D#    E
Tocar meu ser,     fluir em mim

B    B7M  B/D#    E7M  E6           G#m
Vem,     Espírito Santo,   com teu poder

  F#          B/D#    E
Tocar meu ser,     fluir em mim',
  to_tsvector('portuguese', 'O Céu Se Abre ' || '')
),
(
  'hoje-livre-sou-adoracao-e-vida',
  'Hoje Livre Sou',
  'Walmir Alencar / Ministério Adoração e Vida',
  'Walmir Alencar / Ministério Adoração e Vida',
  'F',
  78,
  '4/4',
  'Pop Rock Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  17,
  'Ação de Graças',
  'Páscoa',
  'Gl 5, 1; Jo 8, 36',
  'popular',
  'Intro: F  Gm  F/A  Bb  Dm  C  Bb9

Solo Inicial

E|------------------------8-6-5h6p5------------------------------| 
B|---6-8-8/10-11-10\8~-8-6----------6-----6-5-6~-----------------| 
G|-5----------------------------------5-7------------------------| 
D|---------------------------------------------------------------| 
A|---------------------------------------------------------------| 
E|---------------------------------------------------------------| 

F       C/E      Dm      F/C   Bb9     F      C   C# C
Presença forte em mim, eu posso dizer: habitas aqui

F       C/E      Dm      F     Bb       F            C     C# C
Porque escravo eu fui e hoje eu sou mais livre aos teus pés

Am         Bb        C/E      F
Sentido na vida a minhalma encontrou

Am       Bb         C        F
Tua mão poderosa veio e me levantou

Am       Bb   Am   Bb
Agora eu posso declarar

     Dm   C    F
Hoje li  vre  sou

(F)                Dm9         Bb9  F
Tenho sede da tua graça, cada dia   mais

(F)         Dm           Bb     C
Sou mais forte e vou mais longe quando aqui estás

      Dm        Gm     Am ( F/A )   Bb
Com palavras de amor te adoro,   Senhor

     Dm  C    F        ( G )
Hoje li  vre sou       ( F  Dm  Bb9  F  Dm9 Bb C  Gm/Bb )

F         Dm9          Bb9     F
Meu tesouro, minha herança, meu Supremo Bem

(F)       Dm           Bb      C
Nem tribulações nem dor podem nos separar

     Dm        Gm     Am ( F/A )   Bb
E jamais irão romper o que o amor selou

     Dm  C   F
Hoje li vre sou',
  to_tsvector('portuguese', 'Hoje Livre Sou ' || '')
),
(
  'tudo-posso-celina-borges',
  'Tudo Posso Naquele Que Me Fortalece',
  'Celina Borges',
  'Celina Borges',
  'E',
  78,
  '4/4',
  'Balada Bíblica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  14,
  'Ação de Graças',
  'Tempo Comum',
  'Fl 4, 13; 2Cor 12, 9-10',
  'popular',
  '[Intro] Em  D  C

        Am  G  D

        C  G/B  Am  D

        C  G/B  Am  Am/G  D

G           D/F#    C    Em  D
Posso, tudo posso Naquele que me fortalece

C           G/B                Am          D
Nada e ninguém no mundo vai me fazer de...sis ..tir

G           D/F#       C      Em  D
Quero, tudo quero, sem medo entregar meus projetos

C                 G/B           Am           D
Deixar-me guiar nos caminhos que Deus desejou   pra    mim   e ali estar

          G          D/F#    C           D
Vou perseguir tudo aquilo que Deus já escolheu pra mim

           G     D/F#                C
Vou persistir, e mesmo nas marcas daquela dor

   G/B                  Am    D
Do que ficou, vou me lembrar

       G     D/F#     C          D
E realizar o sonho mais lindo que Deus sonhou

Eb°      Em             Bm      C
Em meu lugar estar na espera de um novo que vai chegar

     G/B          Am               D    Em  D/F#
Vou persistir, continuar   a  esperar   e   crer

D  C           G/B        Am    Am/G    D/F# D     C
E mesmo quando a visão se turva   e o   coração só chora

       G/B         Am     Am/G    D
Mas na alma, há certeza   da    vitória

G           D/F#    C    Em  D
Posso, tudo posso Naquele que me fortalece

C           G/B                Am          D
Nada e ninguém no mundo vai me fazer de...sis ..tir

          G          D/F#    C           D
Vou perseguir tudo aquilo que Deus já escolheu pra mim

           G     D/F#               C
Vou persistir, e mesmo nas marcas daquela dor

   G         Am    D
Do que ficou, vou me lembrar

       G     D/F#          C                D
E realizar o sonho mais lindo que Deus sonhou... ouoou

Eb°      Em             Bm      C
Em meu lugar estar na espera de um novo que vai chegar

     G/B         Am               D    Em  D/F#
Vou insistir, continuar   a  esperar   e   crer

D  C           G/B        Am      Am/G  D/F# D     C
E mesmo quando a visão se turva   e o   coração só chora

       G/B         Am     Am/G    D
Mas na alma, há certeza   da    vitória

SOLO: Eb  F  G - Eb - F - D4 - D

C            G/B        Am     Am/G  D/F# D     C
Mesmo quando a visão se turva  e o   coração só chora

       G/B         Am   Am/G    D
Mas na alma, há certeza    da vitória Eu vou

  CM7         G9/B              Am7           D
Sofrendo, mas seguindo enquanto tantos não entendem

D/B    CM7            G9/B           Am7
Vou cantando minha história, profetizando

       C/D          CM7   G9/B   Am7   D            G
Que eu posso, tudo posso...            em Jesu..uus',
  to_tsvector('portuguese', 'Tudo Posso Naquele Que Me Fortalece ' || '')
),
(
  'nas-asas-do-senhor-celina-borges',
  'Nas Asas do Senhor (Sei Que os Que Confiam no Senhor)',
  'Celina Borges',
  'Celina Borges',
  'G',
  82,
  '4/4',
  'Balada Bíblica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  16,
  'Ação de Graças',
  'Tempo Comum',
  'Is 40, 29-31',
  'popular',
  'Introdução] G  C  Am  D

G          D9/F#
Sei que os que confiam no Senhor

         Em    C
Revigoram suas forças, suas forças se renovam

 G             D9/F#           Em
Posso até cair ou vacilar, mas consigo levantar

         C
Pois recebo dele asas

       Am         D
E como águia, me preparo pra voar

         G        D9/F#        Em
Eu posso ir muito além de onde estou

         C
Vou nas asas do Senhor

       G/B      Am       D
O Teu Amor é o que me conduz

    G         D/F#     Em
Posso voar e subir sem me cansar

              C      G/B
Ir pra frente sem me fatigar

        Am          D
Vou com asas,como águia

         G  C D
Pois confio no Senhor!

         Em      D
Pois confio no Senhor! Uô-ô-ô

           C         D         B7
Que me dá forças pra ser um vencedor-ô

         Em
Nas asas do Senhor

     Am     D
Vou voar! Voar

         A         E/G#       F#m
Eu posso ir muito além de onde estou

         D
Vou nas asas do Senhor

      A/C#    Bm         E
O Teu amor é o que me conduz

        A        E/G#        F#m/E
Posso voar e subir sem me cansar

          D      A/C#
Ir pra frente sem me fatigar

         Bm          E
Vou com asas,  como águia

         A
Pois confio no Senhor!',
  to_tsvector('portuguese', 'Nas Asas do Senhor (Sei Que os Que Confiam no Senhor) ' || '')
),
(
  'sem-voce-rosa-de-saron',
  'Sem Você (Minha Alma Tem Sede de Ti)',
  'Rosa de Saron / Guilherme de Sá',
  'Rosa de Saron / Guilherme de Sá',
  'Em',
  78,
  '4/4',
  'Rock Acústico Sacro',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Sl 62, 2; Sl 41, 2-3',
  'popular',
  '[Intro] Em  C  G  D  (2x)

[Primeira Parte]
   Em     C         G           D
1. Minha alma tem sede de Ti, ó meu Deus,
   Em    C         G           D
Minha alma suspira por Ti!
   Em     C         G           D
Como a corsa suspira pelas águas correntes,
   Em    C         G           D
Assim minha alma anseia pelo Teu amor!

[Refrão]
   Em         C
Pois sem Você não sei viver,
   G         D
Não há caminho para os passos meus!
   Em         C
Só em Tuas mãos encontro a paz,
   G        D         Em
Tu és meu Tudo, meu Senhor e meu Deus!',
  to_tsvector('portuguese', 'Sem Você (Minha Alma Tem Sede de Ti) ' || '')
),
(
  'deus-cuida-de-mim-pe-fabio-de-melo',
  'Deus Cuida de Mim',
  'Padre Fábio de Melo / Kleber Lucas',
  'Padre Fábio de Melo / Kleber Lucas',
  'G',
  74,
  '4/4',
  'Balada de Confiança',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  15,
  'Ação de Graças',
  'Tempo Comum',
  '1Pd 5, 7; Sl 120',
  'popular',
  '[Intro] G9  A/G  F#m7  Bm  Em7  G/A  G/D  D9

      D9          A/C#
Eu preciso aprender um pouco aqui

      Bm7              Bm7/A
Eu preciso aprender um pouco ali

       G         Em
Eu preciso aprender mais de Deus

       G         A4  A
Porque Ele é quem cuida de mim

        D
Se uma porta se fecha aqui

       F#m7         G
Outras portas se abrem ali

      D/F#          Bm
Eu preciso aprender mais de Deus

       G         Bm
Porque Ele é quem cuida de mim

  G  G/A       D
Deus cuida de mim

     G/A       D
Deus cuida de mim

    G              D/F#
Na sombra das suas asas

         Bm7
Deus cuida de mim

   F#          Bm
Eu amo a sua casa

       G
E não ando sozinho

   D/F#
Não estou sozinho

      Em  Em/D
Pois sei

         A4  A
Deus cuida de mim

     G/A       D
Deus cuida de mim

    G              D/F#
Na sombra das suas asas

         Bm7
Deus cuida de mim

   F#          Bm
Eu amo a sua casa

       G
E não ando sozinho

   D/F#
Não estou sozinho

      Em
Pois sei

 G     A4/7/9  D
Deus cuida de mim

Se na vida não tenho direção
E preciso tomar uma decisão
Eu sei que existe alguém que me ama
Ele quer me dar a mão',
  to_tsvector('portuguese', 'Deus Cuida de Mim ' || '')
),
(
  'humano-demais-pe-fabio-de-melo',
  'Tudo É do Pai / Humano Amor de Deus',
  'Padre Fábio de Melo',
  'Padre Fábio de Melo',
  'D',
  76,
  '4/4',
  'Balada Poética',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Comunhão',
  'Tempo Comum',
  'Jo 1, 14',
  'popular',
  '[Intro] D  G  D  G  Em  A

         D
Tens o dom de ver estradas

         G
Onde eu vejo o fim

  D
Me convences quando falas

          G    A
Não é bem assim

  Em
Se me esqueço, me recordas

         A
Se não sei, me ensinas

Em         G
E se perco a direção

         A
Vens me encontrar

  D
Tens o dom de ouvir segredos

          G
Mesmo se me calo

  D
E se falo me escuta

         G     A
Queres compreender

  Em         A
Se pela força da distância tu te ausentas

     Em         G
Pelo poder que há na saudade

     A
Voltarás

[Refrão]

D
Quando a solidão doeu em mim

         Bm
Quando meu passado não passou por mim

                G                 D/F#
Quando eu não soube compreender a vida

Em         A
Tu vieste compreender por mim

D
Quando os meus olhos não podiam ver

          Bm
Tua mão segura me ajudou a andar

                G                 D/F#
Quando eu não tinha mais amor no peito

 Em         A
Teu amor me ajudou a amar

D
Quando o meu sonho vi desmoronar

         Bm
Me trouxeste outros pra recomeçar

                G      D/F#
Quando eu me esqueci que eu era alguém na vida

 Em         A
Teu amor veio me relembrar

         D         G
Que Deus me ama, que não estou só

        Em
Que Deus cuida de mim

          A
Quando fala pela tua voz

         D
Que me diz: coragem !',
  to_tsvector('portuguese', 'Tudo É do Pai / Humano Amor de Deus ' || '')
),
(
  'alma-de-cristo-oracao-santo-inacio',
  'Alma de Cristo (Anima Christi)',
  'Santo Inácio de Loyola / Melodia Tradicional e Shalom',
  'Santo Inácio de Loyola / Melodia Tradicional e Shalom',
  'D',
  68,
  '4/4',
  'Oração Pós-Comunhão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Jo 6, 54-56; Jo 19, 34',
  'popular',
  '[Intro] D  Bm  G  A7  D

[Primeira Parte]
   D         Bm
Alma de Cristo, santificai-me!
   G     A7         D
Corpo de Cristo, salvai-me!
   D         Bm
Sangue de Cristo, inebriai-me!
   G       A7         D
Água do lado de Cristo, lavai-me!

[Segunda Parte]
   G    A7         F#m     Bm
Paixão de Cristo, confortai-me!
   Em    A7         D       D7
Ó bom Jesus, ouvi-me!
   G     A7         F#m     Bm
Dentro de Vossas chagas, escondei-me!
   Em       A7         D
Não permitais que eu me separe de Vós!

[Final]
   D         Bm
Do espírito maligno, defendei-me!
   G       A7         D
Na hora da minha morte, chamai-me!
   G         A7         Bm
E mandai-me ir para Vós, para que com Vossos santos Vos louve,
   Em        A7         D
Por todos os séculos dos séculos. Amém!',
  to_tsvector('portuguese', 'Alma de Cristo (Anima Christi) ' || '')
),
(
  'nada-te-perturbe-santa-teresa-davila',
  'Nada Te Perturbe (Só Deus Basta)',
  'Santa Teresa d''Ávila / Taizé & Liturgia',
  'Santa Teresa d''Ávila / Taizé & Liturgia',
  'A',
  70,
  '4/4',
  'Ostinato Contemplativo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Sl 45, 2; Fl 4, 6-7',
  'popular',
  'Am
Nada te perturbe

            E
Nada te amedronte

Tudo, tudo passa

         Am
Só Deus, só Deus não passa

      A7           Dm
A paciência tudo alcança

         E        Am
 A quem tem deus nada falta

         E
 Só deus basta!

         Am
 Só deus basta!',
  to_tsvector('portuguese', 'Nada Te Perturbe (Só Deus Basta) ' || '')
),
(
  'sublime-walmir-alencar-adoracao-e-vida',
  'Sublime (Sublime É o Teu Amor Por Mim)',
  'Walmir Alencar / Ministério Adoração e Vida',
  'Walmir Alencar / Ministério Adoração e Vida',
  'G',
  72,
  '4/4',
  'Adoração Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  '1Jo 4, 10; Jo 15, 13',
  'popular',
  '[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
   G                D/F#            Em
1. Tão sublime é o Teu amor por mim, não consigo compreender;
   C         Am         D7
Sendo Deus infinito e Santo, vieste em meu coração viver!
   G             D/F#            Em
Nos meus passos tão pequenos, Tua graça me alcançou,
   C       D7         G       D7
E na Mesa da Eucaristia minha alma se saciou!

[Refrão]
   G          D/F#            Em
Sublime presença que acalma o meu coração,
   C         Am         D7
Jesus escondido na simplicidade do Pão!
   G            D/F#            Em
Sublime mistério de amor que se entregou na Cruz,
   C          D7         G
Minha vida inteira pertence a Ti, meu Jesus!

[Segunda Parte]
   Em            Bm         C
2. Nada no mundo se compara à alegria de Te adorar,
   Am            C         D7
E permanecer em silêncio diante do Teu santo altar!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Sublime (Sublime É o Teu Amor Por Mim) ' || '')
),
(
  'deus-imenso-walmir-alencar-vida-reluz',
  'Deus Imenso (Não Sou Nada, Eu Bem Sei)',
  'Walmir Alencar / Vida Reluz',
  'Walmir Alencar / Vida Reluz',
  'D',
  70,
  '4/4',
  'Balada de Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  10,
  'Ação de Graças',
  'Qualquer',
  'Sl 8, 4-5; Sl 144',
  'popular',
  'A9            F#m           D
  Não sou nada,  eu bem sei

       Bm     E            E7
Tão pequeno, um grão de areia em tuas mãos

A9            F#m         D
  Barco à vela,  que se abandona

        Bm            E            E7
Segue o rumo e vai buscando o alto mar

A9         F#m         D
  Assim me encontro,   diante de Ti

         Bm         E         E7
Um Deus imenso que por amor se deixa alcançar

A9         F#m            D
  Te adorarei, meu Deus,  enquanto eu existir

        Bm          G            E7
Proclamarei as maravilhas que fizeste em mim

A9         F#m         D
  O teu calor me envolve,   o teu olhar me acalma

           Bm            G         E7
E em teus braços o teu amor / Inflama minha alma

A9          F#m         D  Dm
  Que posso mais dizer,   se o coração já disse!

   A9   F#m   D   E7   A9
Te amo

         A         F#m
|--------21---19--16-17-16----14--12------------------------------------------------------------------------------
|-----------------------------------------------------------------------------------------------------------------
|-12--------------------------------------------------------------------------------------------------------------
|--------------------------------------------------14p9h11--14p9h11--14p9h11--14p9h11--14p9h11------|             
|-----------------------------------------------------------------------------------------------------------------
|-----------------------------------------------------------------------------------------------------------------

          D
|-----------------------------------------------------------------------16--17--14--------------------------------
|-----------------------------------------------------------------------------------------------------------------
|--------------------------------------------11-----------------11---------------------------6--7------6--7--6----
|--14p9h11--14p9h11--14p9h11--------11-------11----------------------------9----------9------------------|        
|------------------------------------------------------12---------------------------------------------------------
|-----------------------------------------------------------------------------------------------------------------

         G  E   A
|-----------------------------------------------------------------------------------------------------------------
|-----------------------8----------------------5--7--9--10--------------------------------------------------------
|-----6--7--9--7--6--7--------------4--6--------------------------------------------------------------------------
|--9------------------------4--6--7-------------------------------------------------------------------------------
|-----------------------------------------------------------------------------------------------------------------
|-----------------------------------------------------------------------------------------------------------------

[Solo]

E|--------|----19--19---19---1617-16----------------------- 
B|-8~~~~--|---b1---b1-----------------17/19-17~~~~--------- 
G|--------|------------------------------------------------ 
D|--------|------------------------------------------------ 
A|--------|------------------------------------------------ 
E|--------|------------------------------------------------ 

E|-------------------------      e|------------------------- 
B|-------------------------      b-------------------------  
G|-9--2---4-9-4--2--------- 3X   g-9--2---4-9-4-11~~-------  
D|-t--------m t-m----------      d-t--------m t-m--t-------  
A|-------------------------      a-------------------------  
E|-------------------------      e|------------------------- 

E|-------------------------|-------14/16-17--14------| 
B|-------------------------|--14---------------------| 
G|-------------------------|-------------------------| 
D|--7-6-7-6---7------------|-------------------------| 
A|----------9--------------|-------------------------| 
E|-------------------------|-------------------------| 

E|-----------------------------------------------| 
B|-----------------------------------------------| 
G|---------------------------------------7/9-----| 
D|------9-11-12-11--9-11-12-11-9-----------------| 
A|-----------------------------------------------| 
E|-----------------------------------------------| 

E|----------3-----------| 
B|----------3-----------| 
G|---7-9----4-----------| 
D|----------5-----------| 
A|----------5-----------| 
E|----------3-----------| 

E|--------------------------| 
B|-------------5--7-9-10----| 
G|---------4-6--------------| 
D|--4-6-7-------------------| 
A|--------------------------| 
E|--------------------------|',
  to_tsvector('portuguese', 'Deus Imenso (Não Sou Nada, Eu Bem Sei) ' || '')
),
(
  'belissimo-esposo-comunidade-shalom',
  'Belíssimo Esposo',
  'Comunidade Católica Shalom / Suely Façanha',
  'Comunidade Católica Shalom / Suely Façanha',
  'F#',
  70,
  '4/4',
  'Adoração Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  11,
  'Ação de Graças',
  'Qualquer',
  'Sl 44, 3; Ct 5, 10',
  'popular',
  '[Intro] F#m  D9  F#m  D9

        F#m  D9  A  E

F#m         D9        F#m         D9

F#m         D9      A     E

[Primeira Parte]

 F#m     F#m/E  A/C#
Beijo a Tua paixão

          D         F#m
Que me liberta das minhas paixões

      E       D
Beijo a Tua cruz

        Bm       D        E4
Que condena e esmaga o pecado em mim

 F#m         F#m/E       A/C#
Beijo Teus cravos, Tuas mãos

      D         F#m
Que apagam o castigo do mal

       E     D
Beijo Tua ferida

       Bm         E4         E
Que curou a ferida do meu coração

[Pré-Refrão]

       D
Eu te beijo Senhor

     E/D       C#m      F#m  E  D
E a tua paixão é o meu tudo

E/D     A
És meu tudo, Jesus

  D    E      A    F#m  D
Amado de minh''alma

[Refrão]

A         E
Oh belíssimo esposo

         Bm
Mais belo que todos os homens

 D      E        A
Santo, Santo és Tu

 A           E
Belíssimo esposo

         Bm
Esconde-me em Teu lado aberto

    D    E        F#m      E  D
Em Tua chaga de amor, de amor

[Segunda Parte]

 F#m     F#m/E    A/C#
Beijo a lança que abriu

   D         F#m
A fonte do amor imortal

   E         D
A fonte do Amor sem fim

       Bm           D       E4
Que pagou o que eu não poderia pagar

 F#m     F#m/E     A/C#
Beijo o teu lado aberto

          D         F#m
Jorrando rios de vida e de paz

   E        D
Fazendo brotar em mim

          Bm         E
Um canto novo, um hino esponsal

[Pré-Refrão]

 D
Beijo Tuas vestes

  E/D
Que esconderam

 C#m      F#m   E  D
Minhas misérias

 E/D  A
Ver__gonha não há

     D      E    A  F#m  D
Me adornas com Amor

[Refrão]

A         E
Oh belíssimo esposo

         Bm
Mais belo que todos os homens

 D      E        A
Santo, Santo és Tu

         E
Belíssimo esposo

         Bm
Esconde-me em Teu lado aberto

    D    E        F#m      E  D9
Em Tua chaga de amor, de amor

[Terceira Parte]

 F#m         F#m/E         A/C#
Beijo os lençóis que envolveram

       D         F#m
O Teu corpo ferido de amor

      E         D
E cobriram meu coração

      Bm       D     E4
Revestiram-me de realeza

 F#m         F#m/E   A/C#
Beijo o Teu Santo sepulcro

      D         F#m
Testemunha da ressurreição

       E       D
Quero ressuscitar também

        Bm         E4  E
E encerrar-me dentro de Ti

[Pré-Refrão]

          D
Quero em Ti mergulhar

     E/D
E então renascer

         C#m      F#m  E  D
Na Tua chaga criador

 E/D   A
Descansar a minh''alma

D       E   A  F#m  D
Em Teu coração

[Refrão]

A         E
Oh belíssimo esposo

         Bm
Mais belo que todos os homens

 D      E        A
Santo, Santo és Tu

         E
Belíssimo esposo

         Bm
Esconde-me em Teu lado aberto

    D    E        A
Em Tua chaga de amor

         E
Belíssimo esposo

         Bm
Mais belo que todos os homens

 D      E        A
Santo, Santo és Tu

            E
Belíssimo esposo

         Bm
Esconde-me em Teu lado aberto

    D    E        F#m      E  D  E
Em Tua chaga de amor, de amor

 E/D
Chaga de amor

   F#m
Esconde-me em

      E
Tua chaga de amor

  D
Amado meu

   F#m  D
Esposo meu

  F#m  D
Amado meu

[Final] F#m  D  A  E  D',
  to_tsvector('portuguese', 'Belíssimo Esposo ' || '')
),
(
  'yeshua-colo-de-deus-comunidade',
  'Yeshua (Te Chamam de Deus e de Senhor)',
  'Comunidade Colo de Deus / Comunidade Shalom',
  'Comunidade Colo de Deus / Comunidade Shalom',
  'G#',
  68,
  '4/4',
  'Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Mt 1, 21; Fl 2, 9-11',
  'popular',
  '[Intro] G#m7  E9  B  D#m

        G#m7  E9  B  D#m

[Primeira Parte]

     G#m7
Te chamam de Deus e de Senhor

     E9
Te chamam de rei, de salvador

  B         D#m
E eu me atrevo a Te chamar de meu amor

     G#m7
Te chamam de Deus e de Senhor

     E9
Te chamam de rei, de salvador

  B         D#m
E eu me atrevo a Te chamar de meu amor

[Refrão]

 G#m7    E
Yeshua, Yeshua

   B2      D#m
Tu és tão lindo

         G#m7
Que eu nem sei me expressar

 E         B2      D#m
Yeshua, Tu és tão lindo

 G#m7    E
Yeshua, Yeshua

   B2      D#m
Tu és tão lindo

         G#m7
Que eu nem sei me expressar

 E         B2      D#m
Yeshua, Tu és tão lindo

[Interlúdio] G#m7  E9  B2  D#m

[Primeira Parte]

     G#m7
Te chamam de Deus e de Senhor

     E9
Te chamam de rei, de salvador

  B         D#m
E eu me atrevo a Te chamar de meu amor

     G#m7
Te chamam de Deus e de Senhor

     E9
Te chamam de rei, de salvador

  B         D#m
E eu me atrevo a Te chamar de meu amor

[Refrão]

 G#m7    E
Yeshua, Yeshua

   B2      D#m
Tu és tão lindo

         G#m7
Que eu nem sei me expressar

 E         B2      D#m
Yeshua, Tu és tão lindo

 G#m7    E
Yeshua, Yeshua

   B2      D#m
Tu és tão lindo

         G#m7
Que eu nem sei me expressar

 E         B2      D#m
Yeshua, Tu és tão lindo

[Interlúdio] G#m7  E9  B  D#m

[Refrão Final]

 G#m7    E9
Yeshua, Yeshua

   B2      D#m
Tu és tão lindo

         G#m7
Que eu nem sei me expressar

 E9        B2      D#m
Yeshua, Tu és tão lindo',
  to_tsvector('portuguese', 'Yeshua (Te Chamam de Deus e de Senhor) ' || '')
),
(
  'acaso-nao-sabeis-colo-de-deus',
  'Acaso Não Sabeis (Eu Me Consagro a Ti)',
  'Flávio Vitor Jr. / Comunidade Colo de Deus',
  'Flávio Vitor Jr. / Comunidade Colo de Deus',
  'E',
  72,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Final',
  'Qualquer',
  'Jo 19, 26-27',
  'popular',
  '[Intro] Em7  C  D/C

        G  D/F#  Em7

[Primeira Parte]

       A/C#  C7M(9)
Eu me con___sagro a Ti

 D/C           Em7  D/F#  G
Mãe de Deus e minha

A/C#      C7M(9)
Eu me consagro a Ti

 D/C       Em7  D/F#  G
Mestra e Rainha

       A/C#  C7M(9)
Eu me con___sagro a Ti

 D/C           Em7  D/F#  G
Mãe de Deus e minha

A/C#      C7M(9)
Eu me consagro a Ti

 D/C       G
Mestra e Rainha

[Refrão]

         G
Acaso não sabeis

         Em7
Que eu sou da Imaculada?

           C9    Am7
Acaso não sabeis

         G
Tenho uma advogada?

         C9
Só quem já foi órfão

          D              Em7  D/F#  G
Sabe o valor do amor de mãe

         C9
Só quem já foi órfão

          D         G
Sabe o valor do colo de mãe

         C9
Só quem já foi órfão

          D              Em7  D/F#  G
Sabe o valor do amor de mãe

         C9
Só quem já foi órfão

          D         G
Sabe o valor do colo de mãe',
  to_tsvector('portuguese', 'Acaso Não Sabeis (Eu Me Consagro a Ti) ' || '')
),
(
  'acalma-minha-tempestade-frei-gilson',
  'Acalma Minha Tempestade',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'G',
  72,
  '4/4',
  'Balada de Oração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Tempo Comum',
  'Mc 4, 35-41; Sl 106, 29',
  'popular',
  '[Intro] G  D  Em7  C9

[Primeira Parte]

G
  Quando estou em alto mar

         C9
E as ondas vêm me agitar

Minha fé começa a fraquejar

         G
O medo se instala no lugar

Esqueço da Sua promessa

         C9
De que sempre estás comigo

Posso ouvir a Tua voz

          Em7
Me dizendo

[Pré-Refrão]

         C9
Por que tendes medo?

         G
Por que tendes medo?

         D
Por que tendes medo?

Em7         C9
    Por que tendes medo?

         G
Por que tendes medo?

         D
Por que tendes medo?

( G  D  Em7  C9 )

[Primeira Parte]

G
  Quando estou em alto mar

         C9
E as ondas vêm me agitar

Minha fé começa a fraquejar

         G
O medo se instala no lugar

Esqueço da Sua promessa

         C9
De que sempre estás comigo

Posso ouvir a Tua voz

           Em7
Me dizendo

[Pré-Refrão]

         C9
Por que tendes medo?

         G
Por que tendes medo?

         D
Por que tendes medo?

Em7         C9
    Por que tendes medo?

         G
Por que tendes medo?

         D
Por que tendes medo?

[Refrão]

  G
Acalma minha tempestade

  Em7
Acalma o meu coração

   C9         D
Devolve a paz que vem de Ti, Senhor

         G     D
Aumenta minha fé em Ti

         Em7   D
Não me deixa fraquejar jamais

         G
Ao som da Tua voz

          D
Tudo vai calar

           Em7  C9
Só preciso esperar

         D   G   D
A tempestade vai acalmar

  G
Acalma minha tempestade

  Em7
Acalma o meu coração

   C9         D
Devolve a paz que vem de Ti, Senhor

         G     D
Aumenta minha fé em Ti

         Em7   D
Não me deixa fraquejar jamais

         G
Ao som da Tua voz

          D
Tudo vai calar

           Em7  C9
Só preciso esperar

         D            G   D  Em7  C9
A tempestade vai acalmar

[Solo] G  D  Em7  C9

       G  D  Em7  C9

[Pré-Refrão]

Em7         C9
    Por que tendes medo?

         G
Por que tendes medo filho?

         D
Por que tendes medo?

Em7         C9
    Por que tendes medo?

         G
Por que tendes medo?

         D
Por que tendes medo?

[Refrão]

  G
Acalma minha tempestade

  Em7
Acalma o meu coração

   C9         D
Devolve a paz que vem de Ti, Senhor

         G     D
Aumenta minha fé em Ti

         Em7   D
Não me deixa fraquejar jamais

         G
Ao som da Tua voz

          D
Tudo vai calar

           Em7  C9
Só preciso esperar

         D            G   D
A tempestade vai acalmar

  G
Acalma minha tempestade

  Em7
Acalma o meu coração

   C9         D
Devolve a paz que vem de Ti, Senhor

         G     D
Aumenta minha fé em Ti

         Em7   D
Não me deixa fraquejar jamais

         G
Ao som da Tua voz

          D
Tudo vai calar

           Em7  C9
Só preciso esperar

         D            G
A tempestade vai acalmar

         D
Vai acalmar

         Em7  C9
Vai acalmar

         D            G
A tempestade vai acalmar',
  to_tsvector('portuguese', 'Acalma Minha Tempestade ' || '')
),
(
  'eu-te-levantarei-frei-gilson',
  'Eu Te Levantarei',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'F',
  70,
  '4/4',
  'Balada de Consolação',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Quaresma',
  'Is 41, 10; Mt 11, 28',
  'popular',
  '[Intro] F  Dm  Bb  Gm7  C

F
Eu te levantarei

Dm
Eu te levantarei

         Bb  Gm7          C
Filho amado,     filho querido

F
Eu te levantarei

Dm
Eu te levantarei

         Bb   Gm7          C  ( C7 )
Filho amado,     filho querido

        Bb        C
Restituirei tuas forças

         Bb      C
E te atrairei a mim

       Bb          C         Bb  C
E te darei novas vestes, filho amado

         Bb       C
Restituirei tuas forças

           Bb    C
E te atrairei a mim

       Bb          C         Bb  C7
E te darei novas vestes, filho amado',
  to_tsvector('portuguese', 'Eu Te Levantarei ' || '')
),
(
  'deixa-deus-sonhar-em-ti-frei-gilson',
  'Deixa Deus Sonhar em Ti',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'B',
  74,
  '4/4',
  'Balada Vocacional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  'Jr 29, 11; Ef 3, 20',
  'popular',
  '[Intro] Bm

[Primeira Parte]

         G      A
Deixa Deus sonhar em ti, deixa!

         Bm
Deixa Deus sonhar em ti

            G  A         Bm
Não tenhas me_do é Deus quem te segura

( G  A  Bm  G  A  Bm )

         G      A
Deixa Deus sonhar em ti, deixa!

         Bm
Deixa Deus sonhar em ti

            G  A         Bm
Não tenhas me_do é Deus quem te segura

[Refrão]

        G  A            Bm
Segue alé____m, segue além

        G  A            Bm
Segue alé____m, segue além

[Segunda Parte]

            G         A
Verás um caminho difícil demais

             D           A/C#    Bm
Verás tempestades que te assustarão

         G
Mas quando o sonho é de Deus

         A
Ninguém destruirá

             D      A/C#      Bm
Se Ele prometeu também cumprirá

          G         A
Tenha paciência e saiba esperar

         D
O melhor de Deus virá

[Refrão]

        G  A            Bm
Segue alé____m, segue além

        G  A            Bm
Segue alé____m, segue além

[Primeira Parte]

         G      A
Deixa Deus sonhar em ti, deixa!

         Bm
Deixa Deus sonhar em ti

            G  A         Bm
Não tenhas me_do é Deus quem te segura

[Refrão]

        G  A            Bm
Segue alé____m, segue além

        G  A            Bm
Segue alé____m, segue além

        G  A            Bm
Segue alé____m, segue além

        G  A            Bm
Segue alé____m, segue além

[Segunda Parte]

            G         A
Verás um caminho difícil demais

             D           A/C#    Bm
Verás tempestades que te assustarão

         G
Mas quando o sonho é de Deus

         A
Ninguém destruirá

             D      A/C#      Bm
Se Ele prometeu também cumprirá

          G         A
Tenha paciência e saiba esperar

         D
O melhor de Deus virá',
  to_tsvector('portuguese', 'Deixa Deus Sonhar em Ti ' || '')
),
(
  'minha-essencia-thiago-brado',
  'Minha Essência (Vim Até Aqui Derramar o Meu Passado em Ti)',
  'Thiago Brado',
  'Thiago Brado',
  'C',
  72,
  '4/4',
  'Balada Acústica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Ato Penitencial',
  'Quaresma',
  'Sl 50; Lc 7, 37-50',
  'popular',
  '[Intro] C  C7M  C  F

        Am  A9  Am  F

        C  C7M  C  F

        Am  A9  G

[Primeira Parte]

 C
Vim até aqui

      F            Am
Derramar o meu passado em ti

         Dm
Vim banhar os pés que andaram por aí

         G
Sem carinho receber

 C
Hoje estou aqui

 F         Am
Não por que mereço eu sei

         Dm
Pois tu sabes por onde eu andei

         G
Conheces bem o meu perfume

[Pré-Refrão]

        Am
Mas tu sabes também

         Em
Que o meu choro é sincero porém

         F         Dm
Não tenho nada a oferecer meu Senhor

         G
Mas te dou a minha vida

[Refrão]

            C  C7M  C
É tudo que tenho

   F          Am  A9  Am
Recebe o meu na__da

   Am7     F   Dm
Refaz a morada

       G
Habita em mim

                C  C7M  C
Me pega em teu co_lo

     F            Am  A9  Am
Me acalma em teu pei_to

     Am7      F    Dm
Sou Teu sou eleito

             G    C  C7M  C  F
E a minha essência é exalar Teu cheiro

( Am  A9  Am  F )

( C  C7M  C  F )

( Am  G )

[Primeira Parte]

 C
Vim até aqui

      F            Am
Derramar o meu passado em ti

         Dm
Vim banhar os pés que andaram por aí

         G
Sem carinho receber

 C
Hoje estou aqui

 F         Am
Não por que mereço eu sei

         Dm
Pois tu sabes por onde eu andei

         G
Conheces bem o meu perfume

[Pré-Refrão]

        Am
Mas tu sabes também

         Em
Que o meu choro é sincero porém

         F         Dm
Não tenho nada a oferecer meu Senhor

         G
Mas te dou a minha vida

[Refrão]

            C  C7M  C
É tudo que tenho

   F          Am  A9  Am
Recebe o meu na__da

   Am7     F   Dm
Refaz a morada

       G
Habita em mim

                C  C7M  C
Me pega em teu co_lo

     F            Am  A9  Am
Me acalma em teu pei_to

     Am7      F    Dm
Sou Teu sou eleito

         G    Am   G
E a minha essência é exalar Teu cheiro

            C
É tudo que tenho

   F          Am
Recebe o meu nada

   C       F   Dm
Refaz a morada

       G
Habita em mim

                C  C7M  C
Me pega em teu co_lo

     F            Am  A9  Am
Me acalma em teu pei_to

     Am7      F    Dm
Sou Teu sou eleito

             G    C  C7M  C  F
E a minha essência é exalar Teu cheiro

[Final] Am  A9  Am  F

        C  C7M  C  F

        Am  G',
  to_tsvector('portuguese', 'Minha Essência (Vim Até Aqui Derramar o Meu Passado em Ti) ' || '')
),
(
  'verdades-do-tempo-thiago-brado',
  'Verdades do Tempo',
  'Thiago Brado',
  'Thiago Brado',
  'E',
  74,
  '4/4',
  'Dedilhado / Acústico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  12,
  'Ação de Graças',
  'Tempo Comum',
  'Ecl 3, 1; Mt 6, 21',
  'popular',
  '[Intro] E9  C#m  A  B

[Primeira Parte]

E9             B/D#    C#m
Essa é uma canção de amor

         F#m
Veja onde está o seu coração

         B4    B
Coloque-o na palma da mão

         E9
É preciso ofertar

    B/D#        C#m
O amor mais sincero

         A9  F#m
O sorriso mais puro

         B
E o olhar mais fraterno

[Pré-Refrão]

            E9
O mundo precisa

   G#m7     C#m
Saber a verdade

    E/G#     A
Passado não volta

            F#m         B      B7
Futuro não temos e o hoje não acabou

[Refrão]

         E        B/D#    C#m
Por isso ame mais,     abrace mais

 B          A    F#m            B  C#m  B/D#
Pois não sabemos quanto tempo temos pra respirar

 E        B/D#  C#m      B
Fale mais,     ouça mais

        A         B         E
Vale a pena lembrar que a vida é curta demais

[Solo] E  C#m  B  A  F#m  B

[Pré-Refrão]

            E9
O mundo precisa

   G#m7     C#m
Saber a verdade

    E/G#     A
Passado não volta

            F#m         B      G#m7
Futuro não temos e o hoje não acabou

[Refrão]

         E        B/D#    C#m
Por isso ame mais,     abrace mais

 B          A    F#m            B  C#m  B/D#
Pois não sabemos quanto tempo temos pra respirar

 E        B/D#  C#m      B
Fale mais,     ouça mais

        A         B         E
Vale a pena lembrar que a vida é curta demais

[Solo] E  C#m  B  A  F#m  B  C#m  B

[Refrão]

         E        B/D#    C#m
Por isso ame mais,     abrace mais

 B          A    F#m            B  C#m  B/D#
Pois não sabemos quanto tempo temos pra respirar

 E        B/D#  C#m      B
Fale mais,     ouça mais

        A         B         E
Vale a pena lembrar que a vida é curta demais

( A )

E9
Essa é uma canção de amor',
  to_tsvector('portuguese', 'Verdades do Tempo ' || '')
),
(
  'regaco-acolhedor-suely-facanha',
  'Regaço Acolhedor (Salmo 130)',
  'Suely Façanha / Comunidade Shalom',
  'Suely Façanha / Comunidade Shalom',
  'B',
  70,
  '4/4',
  'Dedilhado / Meditação',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Qualquer',
  'Sl 130, 1-3',
  'popular',
  '[Intro] Bm7  Bm7(5+)  Bm7

        G7M  A9  Bm7

[Primeira Parte]

        G9
Ó, minh''alma

   A9          Bm7
Retorna à tua paz

        G9         A9
Como criança bem tranquila

            D    A/C#       Bm7
No regaço acolhedor de sua mãe

        G9
Ó, minh''alma

   A9          Bm
Retorna à tua paz

        G9         A9
Como criança bem tranquila

            D    A/C#       Bm7
No regaço acolhedor de sua mãe

[Segunda Parte]

       G9  A9         D
Minha mãe     é a Virgem Maria

    A/C#    Bm7  Bm7/A
É Ela que agora vai

        G9          A9
Me acolher, me abraçar

        D       A/C#    Bm7
Me perdoar, me compreender

        G9          A9         Bm7 (Riff 1)
Me acalmar, me ensinar, me educar

       G9  A9    Bm7
Me formar,    me amar

       G9  A9         D
Minha mãe     é a Virgem Maria

    A/C#    Bm7  Bm7/A
É Ela que agora vai

        G9          A9
Me acolher, me abraçar

        D       A/C#    Bm7
Me perdoar, me compreender

        G9          A9         Bm7  Bm7/A
Me acalmar, me ensinar, me educar

       G9  A9    Bm7
Me formar,    me amar

        G9
Ó, minh''alma

   A9          Bm7
Retorna à tua paz',
  to_tsvector('portuguese', 'Regaço Acolhedor (Salmo 130) ' || '')
),
(
  'teu-sol-vai-brilhar-pe-zezinho',
  'Teu Sol Vai Brilhar',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'F',
  82,
  '4/4',
  'Balada de Esperança',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Tempo Comum',
  'Ml 3, 20; Sl 26',
  'popular',
  '[Intro] F  Bb  C7  F

[Primeira Parte]
   F         C7
1. Se a noite é escura e fria em teu caminhar,
   Bb         F
E as pedras da estrada te fazem chorar,
   Gm         C7
Não percas a fé, não deixes de amar:
   Bb           C7          F
O sol da esperança vai despontar!

[Refrão]
   F         Bb
Teu sol vai brilhar, a vida vai vencer,
   C7         F
Porque o Senhor caminha com você!
   Dm         Gm
Confia em Deus, não temas a dor:
   Bb           C7          F
Quem semeia em lágrimas colhe no amor!',
  to_tsvector('portuguese', 'Teu Sol Vai Brilhar ' || '')
),
(
  'se-eu-fosse-um-cristal-pe-zezinho',
  'Se Eu Fosse um Cristal',
  'Padre Zezinho, scj',
  'Padre Zezinho, scj',
  'C',
  76,
  '4/4',
  'Dedilhado',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  7,
  'Ação de Graças',
  'Tempo Comum',
  'Mt 5, 16',
  'popular',
  '[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
   C            G/B             Am
1. Se eu fosse um cristal, refletiria a Tua luz,
   F          Dm         G7
Se eu fosse uma flor, perfumaria Tua cruz!
   C           G/B             Am
Mas sou apenas pó e barro em Tuas santas mãos,
   F            G7          C
Moldado pelo amor do Teu perdão!

[Refrão]
   C         G
Faz de mim um vaso novo, Senhor,
   Am         F
Instrumento dócil ao Teu louvor!
   C              G/B
Onde houver tristeza, eu leve a alegria,
   F            G7          C
Na bênção maternal da Virgem Maria!',
  to_tsvector('portuguese', 'Se Eu Fosse um Cristal ' || '')
),
(
  'a-tempestade-vai-passar-pe-reginaldo-manzotti',
  'A Tempestade Vai Passar',
  'Padre Reginaldo Manzotti',
  'Padre Reginaldo Manzotti',
  'A',
  76,
  '4/4',
  'Balada de Esperança',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  14,
  'Ação de Graças',
  'Tempo Comum',
  'Mc 4, 39; Sl 45',
  'popular',
  '[Intro] A  B/A  G#m  C#7  F#m  E/G#  B  A/B

E      B          A/C# Am/C
Como é bom estar aqui

E        B            A   E/G#
Em meio a tantas provações

F#m       B          C#m
Saber que posso confiar

   B      A     G#m  F#m E/G#
Em meu Senhor e acreditar

A      F#m         B  A/C# B/D#
Que Ele nunca faltará

E B/F# E/G# A B     E
A tempestade vai passar

C#m         B/D# E    B          C#m B
Por sobre as ondas confiante andarei

C#m   E/G# A  F#m  B A/B
Tribulações vencerei

       E     G#m    A
As aflições superarei

   G#m   F#m   B      A/B   E  B/D# C#7
Deus provê, eu sei que proverá

E/G#    A  B        E
A tempestade vai passar

C#m       B/D# E        B       C#m B
Por sobre as ondas confiante andarei

C#m   E/G# A F#m B  A/B
Tribulações vencerei

        E     G#m  A
As aflições superarei

   G#m   F#m   B     A/B   E  A/E
Deus provê, eu sei que proverá

E   B/D#         A/C#
Neste bravo mar da vida

E     G#m            A  E/G#
Ventos vêm me atormentar

F#m  B           C#m          B    A        G#m  F#m   E/G#
Nesta rocha firme e forte, que é meu Deus, não temerei

A    F#m        B
Nele posso confiar',
  to_tsvector('portuguese', 'A Tempestade Vai Passar ' || '')
),
(
  'milagres-pe-reginaldo-manzotti',
  'Faça Um Milagre em Mim',
  'Padre Reginaldo Manzotti',
  'Padre Reginaldo Manzotti',
  'C',
  74,
  '4/4',
  'Balada de Súplica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Tempo Comum',
  'Mc 9, 23; Lc 1, 37',
  'popular',
  '[Intro] C  G  Am  F

[Primeira Parte]
C
Quando a dor bate no peito
G
E a tristeza é demais
Am
Dói o corpo, sofre a alma
Em
É um vazio ou tanto faz
F
Mesmo assim eu não desisto
C
Porque Deus quer o meu melhor
G
Ele é o meu abrigo, meu escudo e meu penhor!

[Refrão]
C
Faça um milagre
G
Em toda a minha vida!
Am
Faça um milagre
Em
E cura minhas feridas!
F
Em minha vida Ele fará
C
O impossível vai acontecer
G
Basta crer e ter fé em Seu poder!',
  to_tsvector('portuguese', 'Faça Um Milagre em Mim ' || '')
),
(
  'sonda-me-usa-me-aline-pe-antonio-maria',
  'Nossa Senhora (O Que É Que Eu Sou Sem Jesus)',
  'Padre Antônio Maria',
  'Padre Antônio Maria',
  'G',
  78,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Final',
  'Qualquer',
  'Jo 2, 5',
  'popular',
  '[Intro] G  D/F#  Em  C  G/B  Am  D7

[Primeira Parte]
   G          D/F#
1. Cubra-me com seu manto de amor,
   Em         Bm
Guarda-me na paz desse olhar!
   C              G/B
Cura-me as feridas e a dor,
   Am         D7
Me ensina a perdoar e a amar!

[Refrão]
   G          D/F#
Nossa Senhora, me dê a mão,
   Em         Bm
Cuida do meu coração,
   C              G/B
Da minha vida, do meu destino,
   Am           D7          G
Do meu caminho, cuida de mim!',
  to_tsvector('portuguese', 'Nossa Senhora (O Que É Que Eu Sou Sem Jesus) ' || '')
),
(
  'humano-amor-de-deus-adriana-arydes',
  'Humano Amor de Deus',
  'Adriana Arydes / Pe. Fábio de Melo',
  'Adriana Arydes / Pe. Fábio de Melo',
  'D',
  76,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Comunhão',
  'Natal',
  'Jo 1, 14; Lc 2, 7',
  'popular',
  '[Intro] D  G  D  G  Em  A

         D
Tens o dom de ver estradas

         G
Onde eu vejo o fim

  D
Me convences quando falas

          G    A
Não é bem assim

  Em
Se me esqueço, me recordas

         A
Se não sei, me ensinas

Em         G
E se perco a direção

         A
Vens me encontrar

  D
Tens o dom de ouvir segredos

          G
Mesmo se me calo

  D
E se falo me escuta

         G     A
Queres compreender

  Em         A
Se pela força da distância tu te ausentas

     Em         G
Pelo poder que há na saudade

     A
Voltarás

[Refrão]

D
Quando a solidão doeu em mim

         Bm
Quando meu passado não passou por mim

                G                 D/F#
Quando eu não soube compreender a vida

Em         A
Tu vieste compreender por mim

D
Quando os meus olhos não podiam ver

          Bm
Tua mão segura me ajudou a andar

                G                 D/F#
Quando eu não tinha mais amor no peito

 Em         A
Teu amor me ajudou a amar

D
Quando o meu sonho vi desmoronar

         Bm
Me trouxeste outros pra recomeçar

                G      D/F#
Quando eu me esqueci que eu era alguém na vida

 Em         A
Teu amor veio me relembrar

         D         G
Que Deus me ama, que não estou só

        Em
Que Deus cuida de mim

          A
Quando fala pela tua voz

         D
Que me diz: coragem !',
  to_tsvector('portuguese', 'Humano Amor de Deus ' || '')
),
(
  'abraço-eterno-chave-do-coracao-adriana-arydes',
  'Lindo Céu',
  'Adriana Arydes',
  'Adriana Arydes',
  'C',
  72,
  '4/4',
  'Balada de Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Ação de Graças',
  'Qualquer',
  'Ap 3, 20',
  'popular',
  '[Intro] C  Dm  C  Dm  G

[Primeira Parte]
C            F/A          G/B  C9  G/B
Por sobre as nuvens
Am9          F          C       G
Existe um lindo céu
C            F/A          G/B  C9  G/B
Maravilhoso céu
Am9          F          C       G
Morada dos anjos
C            F/A          G/B  C9  G/B
Por sobre as nuvens
Am9          F          C       G
Existe um trono
C            F/A          G/B  C9  G/B
Cujo Rei está assentado
Am9          F9          C9   G       C
À direita de Deus!

[Refrão]
C      C/E    F9      Dm7  Dm/C  G4  G
Céu, lindo céu!
C            F         G
É o lugar onde eu quero viver pra sempre!
C      C/E    F9      Dm7  Dm/C  G4  G
Céu, lindo céu!
C            F         G
É o lugar que meu Deus preparou pra mim!
C      C/E    F9      Dm7  Dm/C  G4  G
Céu, lindo céu!
C            F         G
Onde com os anjos eu cantarei
F       G          C9
Adorando o Senhor!',
  to_tsvector('portuguese', 'Lindo Céu ' || '')
),
(
  'regina-caeli-via-sacra-irma-kelly-patricia',
  'Via Sacra (Senhor, Pela Tua Paixão)',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Em',
  66,
  '4/4',
  'Balada Contemplativa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Comunhão',
  'Quaresma',
  'Jo 19, 25-27; Lc 22, 19',
  'popular',
  '[Intro] Em7  D  C  B4  B7

[Primeira Parte]
Em7         D         C
Senhor, pela Tua paixão, no abandono da cruz,
B4         B7
Tem piedade de nós!
Em          D
Jesus, pelo sangue jorrado do Teu coração,
C         B4
Pelo Teu sacrifício, misericórdia!

[Refrão]
Em          C
Deus Santo, Deus Forte,
D4      D       Em
Deus Imortal e de poder!
Am7
Nós Te adoramos, Te bendizemos,
D4      D       Em      Am7    Bm
Te glorificamos, ó Senhor!

[Segunda Parte]
C         D
Deus Pai, Vos ofertamos
C         D
O corpo e o sangue de Cristo,
Em          D
Sua alma e sua divindade
C         B4
Em expiação dos nossos pecados!',
  to_tsvector('portuguese', 'Via Sacra (Senhor, Pela Tua Paixão) ' || '')
),
(
  'faz-um-milagre-em-mim-pe-marcelo-rossi',
  'Faz um Milagre em Mim (Como Zaqueu)',
  'Padre Marcelo Rossi / Régis Danese',
  'Padre Marcelo Rossi / Régis Danese',
  'G',
  74,
  '4/4',
  'Balada Evangélica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  23,
  'Ação de Graças',
  'Tempo Comum',
  'Lc 19, 1-10',
  'popular',
  '[Intro] C7M  Bm7  Em7(9)

        C7M  Bm7  Em7(9)

[Primeira Parte]

G          D/F#            Em7
  Como Zaqueu, eu quero subir

       C9             G/B
O mais alto que eu puder

           D/F#            Em7
Só pra te ver, olhar para ti

      C9                   G/B
E chamar sua atenção para mim

         C9
Eu preciso de Ti Senhor

G/B                C9
    Eu preciso de Ti oh! Pai

G/B                Am7      Am7/G    F
    Sou pequeno demais, me dá a tua paz

       C/E            D/F#
Largo tudo pra te seguir

[Refrão]

G                 D/F#
  Entra na minha casa

         Em7
Entra na minha vida

         C
Mexe com minha estrutura

                 G/B
Sara todas as feridas

          D/F#
Me ensina a ter santidade

         Em7
Quero amar somente a Ti

         C
Porque o Senhor é o meu bem maior

 Cm         G
Faz um milagre em mim

( D/F# Em7  Em7/D  C7M )

[Riff 1]

[Tab - Riff 1]

E|-3/5--------------------------------------| 
B|-3/5--3/5---3-----------------------------| 
G|------4/5---4-----------------------------| 
D|------------------------------------------| 
A|------------------------------------------| 
E|------------------------------------------| 

[Primeira Parte]

G          D/F#            Em7
  Como Zaqueu, eu quero subir

       C9             G/B
O mais alto que eu puder

           D/F#            Em7
Só pra te ver, olhar para ti

      C/E                  G/B
E chamar sua atenção para mim

         C9
Eu preciso de Ti Senhor

G/B                C9
    Eu preciso de Ti oh! Pai

G/B                Am7      Am7/G    F
    Sou pequeno demais, me dá a tua paz

       C/E            D4  D
Largo tudo pra te seguir

[Refrão Final]

G                 D/F#
  Entra na minha casa

         Em7
Entra na minha vida

         C
Mexe com minha estrutura

                 G/B
Sara todas as feridas

          D/F#
Me ensina a ter santidade

         Em7
Quero amar somente a Ti

         C
Porque o Senhor é o meu bem maior

 D
Faz um milagre em mim

( G  Am  G/B  Am )

G                 D/F#
  Entra na minha casa

         Em7
Entra na minha vida

                   ( C  G/B )
Mexe com minha estrutura

 C/E               G/D
Sara todas as feridas

          D/F#
Me ensina a ter santidade

         Em7
Quero amar somente a Ti

         C
Porque o Senhor é o meu bem maior

         G
Faz um milagre em mim

G                 D/F#
  Entra na minha casa

         Em7
Entra na minha vida

         C
Mexe com minha estrutura

                 G/B
Sara todas as feridas

          D/F#
Me ensina a ter santidade

         Em7
Quero amar somente a Ti

         D6         C
Porque o Senhor é o meu bem maior

         G
Faz um milagre em mim

G                 D/F#
  Entra na minha casa

         Em7
Entra na minha vida

         C
Mexe com minha estrutura

                 G/D
Sara todas as feridas

          D/F#
Me ensina a ter santidade

         Em7
Quero amar somente a Ti

         C
Porque o Senhor é o meu bem maior

 D         G
Faz um milagre em mim

[Final] D/F#  C/E  Cm/Eb  G',
  to_tsvector('portuguese', 'Faz um Milagre em Mim (Como Zaqueu) ' || '')
),
(
  'soberano-eliana-ribeiro',
  'Armadura do Cristão (Efésios 6)',
  'Fátima Souza / Eliana Ribeiro / Canção Nova',
  'Fátima Souza / Eliana Ribeiro / Canção Nova',
  'Dm',
  78,
  '4/4',
  'Balada de Batalha Espiritual',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  false,
  6,
  'Ação de Graças',
  'Qualquer',
  'Sl 92; Ap 4, 11',
  'popular',
  '[Intro] Dm  Bb  C  Dm  Bb  C

[Primeira Parte]
Dm            Bb          C
Finalmente, irmãos, fortalecei-vos no Senhor, pelo seu soberano poder
Dm            Bb
Revesti-vos da armadura de Deus
       F         C
Para que possais resistir às ciladas do inimigo!
Gm           Bb
Pois não é contra homens de carne e sangue
F         C        Gm
Que temos de lutar
          Bb
Mas contra os principados e potestades
F         C
Contra os príncipes deste mundo tenebroso
Gm           Bb           F         C
Contra as forças espirituais do mal espalhadas nos ares!

[Refrão]
Dm            Bb
Tomai, portanto, a armadura de Deus
F         C
Para que possais resistir nos dias maus
Dm            Bb
E estardes inabaláveis no cumprimento
F         C
Do vosso dever, do vosso dever!

[Ponte]
Gm           Bb         F      C
Sobretudo, embraçai o escudo da fé
Gm           Bb         F      C
Com que possais apagar todos os dardos do inimigo!
Dm            Bb
Tomai, enfim, o capacete da salvação
C         Bb      C
E a espada do Espírito, que é a palavra de Deus!',
  to_tsvector('portuguese', 'Armadura do Cristão (Efésios 6) ' || '')
),
(
  'gratidao-eu-encontrei-um-amor-perfeito',
  'Gratidão (Eu Encontrei um Amor Perfeito - Lucas 17, 15)',
  'Canção Nova / Raquel Carpenter',
  'Canção Nova / Raquel Carpenter',
  'C',
  72,
  '4/4',
  'Balada de Ação de Graças',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Ação de Graças',
  'Qualquer',
  'Lc 17, 15-18; Sl 115',
  'popular',
  '[Intro] C  G/B  Am7  F9  G4  G

[Primeira Parte]
   C              G/B
1. Eu encontrei um amor perfeito,
   Am7         F9
Que sarou a dor do meu coração!
   C              G/B
Jesus olhou para a minha pequenez,
   Am7    F9          G
E me deu a Sua graça e redenção!

[Refrão]
   C              G/B
Gratidão, Senhor, por Teu imenso amor!
   Am7         F9
Gratidão por me acolher e perdoar!
   C              G/B
Minha vida hoje é Tua, meu Jesus:
   F            G           C
Pra sempre eu irei Te adorar!',
  to_tsvector('portuguese', 'Gratidão (Eu Encontrei um Amor Perfeito - Lucas 17, 15) ' || '')
),
(
  'tu-es-o-centro-frei-gilson',
  'Tu És o Centro da Minha Vida',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'F',
  72,
  '4/4',
  'Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  9,
  'Ação de Graças',
  'Qualquer',
  'Cl 1, 17-18',
  'popular',
  '[Intro] F  Dm7  Bb  F  C

F         Dm7

Bb         F

[Primeira Parte]

         F         Dm7
Quero Te louvar, Te engrandecer

         Bb         C
E proclamar Tua vitória em mim

          Dm7            Gm  Am
Ser todo Teu é o meu prazer

         Bb         C
Te seguirei aonde fores, Senhor

[Refrão]

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

         Bb         C
Não quero tirar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

         Bb         C
Não quero tirar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

          F
Da minha vida

( Dm7  Bb  F  C )

[Primeira Parte]

         F         Dm7
Quero Te louvar, Te engrandecer

         Bb    C4  C  C4  C
E proclamar Tua vitória em mim

          Dm7            Gm  Am
Ser todo Teu é o meu prazer

         Bb         C
Te seguirei aonde fores, Senhor

[Refrão]

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

         Bb         C
Não quero tirar os meus olhos de Ti

           Bb         C  C4  C
Quero que sejas o centro, Senhor

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

           C  Bb         C
Não quero ti_rar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

          F
Da minha vida

( F4  F  Dm7 )

( Bb  Bb7M  F  C )

[Primeira Parte]

         F         Dm7
Quero Te louvar, Te engrandecer

         Bb    C4  C  C4  C
E proclamar Tua vitória em mim

         Dm7           Gm   Am
Ser todo Teu é o meu prazer

         Bb         C
Te seguirei aonde fores, Senhor

[Refrão]

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

         Bb         C
Não quero tirar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

           C  Bb         C
Não quero ti_rar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

          F
Da minha vida

( F4  F  Dm7 )

( Bb  Bb7M  F  C )

[Ponte]

         Bb   C/Bb  F
Não vou mais ti____rar

        Bb  C/Bb   F
Os meus o_lhos de Ti

       Bb  C/Bb  Dm7        C4  C
Vou me a__paixo_nar, outra vez

             Bb  C/Bb   F
Que o meu viver Se____nhor

      Bb     C/Bb  F
Seja para te agra_dar

      Bb      C/Bb  Dm7         C4  C
Nada mais vai ocu__par meu coração

         Bb   C/Bb  F
Não vou mais ti____rar

        Bb  C/Bb   F
Os meus o_lhos de Ti

       Bb  C/Bb  Dm7        C4  C
Vou me a__paixo_nar, outra vez

             Bb  C/Bb   F
Que o meu viver Se____nhor

      Bb     C/Bb  F
Seja para te agra_dar

      Bb      C/Bb  Dm7         C4  C
Nada mais vai ocu__par meu coração

         Bb   C/Bb  F
Não vou mais ti____rar

        Bb  C/Bb   F
Os meus o_lhos de Ti

       Bb  C/Bb  Dm7        C4  C
Vou me a__paixo_nar, outra vez

             Bb  C/Bb   F
Que o meu viver Se____nhor

      Bb     C/Bb  F
Seja para te agra_dar

      Bb      C/Bb  Dm7         C4  C
Nada mais vai ocu__par meu coração

( Bb  C/Bb  F )

( Bb  C/Bb  F )

( Bb  C/Bb  Dm7  C4  C )

[Refrão]

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

         Bb         C
Não quero tirar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

           C  Bb         C
Não quero ti_rar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

          F
Da minha vida

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

         Bb         C
Não quero tirar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

         F
Tu és o centro da minha vida

        Dm7
És a razão da minha alegria

           C  Bb         C
Não quero ti_rar os meus olhos de Ti

           Bb         C
Quero que sejas o centro, Senhor

          F
Da minha vida

[Final] Dm7  Bb  F  C

        F  Dm7  Bb  F  C  F',
  to_tsvector('portuguese', 'Tu És o Centro da Minha Vida ' || '')
),
(
  'sopra-em-nos-fraternidade-sao-joao-paulo-ii',
  'Sopra em Nós (Vento Impetuoso)',
  'Fraternidade São João Paulo II',
  'Fraternidade São João Paulo II',
  'Em',
  76,
  '4/4',
  'Balada / Adoração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Comunhão',
  'Pentecostes',
  'At 2, 1-4; Ez 37',
  'popular',
  '[Intro] Em  C  G  D

[Primeira Parte]
   Em         C
1. Minh''alma tem sede de Ti, ó meu Deus,
   G            D
Minh''alma suspira pelo Teu amor!
   Em         C
Vem com Teu fogo aquecer meu coração,
   G         D
Renova em mim a Tua unção!

[Refrão]
   Em        C
Sopra em nós, sopra em nós,
   G         D
Somos Teus filhos, ó Pai, estamos aqui!
   Em          C
Sopra em nós, Vento impetuoso,
   G        D         Em
Espírito Santo de Deus, vem sobre nós!',
  to_tsvector('portuguese', 'Sopra em Nós (Vento Impetuoso) ' || '')
),
(
  'leao-de-juda-fraternidade-sao-joao-paulo-ii',
  'Leão de Judá / Filho de Davi',
  'Fraternidade São João Paulo II',
  'Fraternidade São João Paulo II',
  'Em',
  80,
  '4/4',
  'Adoração Solene',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Ap 5, 5; Mc 10, 47',
  'popular',
  '[Intro] Em  C  D  Em

[Primeira Parte]
   Em         C
1. Ouve-se o rugido do Leão de Judá,
   D         Em
A terra estremece quando Ele passar!
   Em         C
O Santo de Israel se levantou em glória,
   D         Em
Decretando para o Seu povo a vitória!

[Refrão]
   Em         C
Ele é o Filho de Davi, a Raiz de Jessé,
   D         Em
Venceu a morte e a cruz por Sua santa fé!
   C         D
Leão de Judá, reina sobre nós:
   C            D           Em
Erguemos louvores a uma só voz!',
  to_tsvector('portuguese', 'Leão de Judá / Filho de Davi ' || '')
),
(
  'tudo-passa-so-deus-nao-passa-fsjpii',
  'Tudo Passa (Só Deus Basta)',
  'Fraternidade São João Paulo II',
  'Fraternidade São João Paulo II',
  'Am',
  74,
  '4/4',
  'Balada Orante',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Sl 45; Mt 24, 35',
  'popular',
  '[Intro] Am  F  C  G

[Primeira Parte]
   Am         F
1. Nada te perturbe, nada te espante,
   C         G
Tudo passa, só Deus não muda!
   Am         F
A paciência tudo alcança:
   C         G
Quem a Deus tem, nada lhe falta!

[Refrão]
   Am         F
Só Deus basta! Só Deus basta!
   C         G
Em Tuas mãos descanso o meu viver!
   Am         F
Só Deus basta! Só Deus basta:
   C            G           Am
Amor eterno que me faz renascer!',
  to_tsvector('portuguese', 'Tudo Passa (Só Deus Basta) ' || '')
),
(
  'sacramento-de-amor-toca-de-assis',
  'Sacramento de Amor (Deus Escondido no Pão)',
  'Fraternidade Toca de Assis',
  'Fraternidade Toca de Assis',
  'D',
  70,
  '4/4',
  'Dedilhado Eucarístico',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  14,
  'Comunhão',
  'Qualquer',
  'Jo 6, 51; Is 45, 15',
  'popular',
  '[Intro] E  C#m  A  B

          E
Eu te agradeço meu Jesus

     G#m7        C#m
Deus Santo, Deus forte e imortal

        A9           F#m7
Por encerrar-se pequenino

      B9
Sob o véu sacramental

       E
Quero unir-me a ti Senhor

      C#m
Realize em mim o teu Natal

          A9            F#m7
Ó doce alimento de minh&#x27;alma

          B9
Ó Deus de Ternura sem igual

        E
Eu te agradeço meu Jesus

     G#m7        C#m
Deus Santo, Deus forte e imortal

        A9           F#m
Por encerrar-se pequenino

       B9
Sob o véu sacramental

       E
Quero unir-me a ti Senhor

  C#m
Realize em mim o teu Natal

     A9           F#m
E pertencendo-te assim

           B9
Tua vida em mim se faz real

E/G#   A9       F#m
Meu coração confiarei

            C#m
Ao manso e humilde coração

E/G#    A9        E/G#
Frutos assim me darei

         F#m        B9
Qual grão de trigo em fértil chão

E/G#     A9         F#m
Tu és a força eu bem sei

          C#m
És minha vida e salvação

E/G#   A9      E/G#
Ó sacramento de amor

   F#m          B9
És digno de Adoração

       E         G#m    C#m7
Cantem glória os anjos do céu

        G#m     A9  F#m      C#m       B9
Pois sob este véu, está toda fonte de amor

F#m B9   E    G#m       C#m
Que alegria é viver no Senhor

G#m         A9        E/G#
Cantar teu louvor pra sempre

F#m       B9       ( E  C#m     A       E) (2x)
Sempre contigo estar

E/G#   A9       F#m
Meu coração confiarei

           C#m
Ao manso e humilde coração

E/G#     A9       E/G#
Frutos assim me darei

         F#m           B9
Qual grão de trigo em fértil chão

E/G#      A9         F#m
Tu és a força eu bem sei

         C#m
És minha vida e salvação

E/G#     A9       E/G#
Ó sacramento de amor

    F#m         B9
És digno de Adoração

        E       G#m     C#m7
Cantem glória os anjos do céu

        G#m     A9  F#m      C#m      B9
Pois sob este véu, está toda fonte de amor

A/C# B/D#   E    G#m        C#m
Que alegria é viver no Senhor

G#m7         A9        E/G#
Cantar teu louvor pra sempre

F#m      B9       G#m C#m B9
Sempre contigo estar

        E       G#m       C#m
Cantem glória os anjos do céu

G#m7          A9   F#m       C#m        B9
Pois sob este véu, está toda fonte de amor

F#m B9  E      G#m      C#m7
Que alegria é viver no Senhor

G#m7        A9        E/G#
Cantar teu louvor pra sempre

F#m      B9      E
Sempre contigo estar',
  to_tsvector('portuguese', 'Sacramento de Amor (Deus Escondido no Pão) ' || '')
),
(
  'adorador-por-excelencia-toca-de-assis',
  'Adorador por Excelência (Pra Sempre Teu)',
  'Fraternidade Toca de Assis',
  'Fraternidade Toca de Assis',
  'D',
  72,
  '4/4',
  'Balada Franciscana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Qualquer',
  'Jo 4, 23-24',
  'popular',
  '[Intro] D  A/C#  Bm7  G9  A4  A

[Primeira Parte]
   D          A/C#
1. Quero me prostrar diante do Teu altar,
   Bm7         G9
Contemplar Tua face e Te adorar!
   D          A/C#
No silêncio sagrado da Hóstia Santa,
   Bm7        G9          A
O meu espírito se eleva e minh''alma canta!

[Refrão]
   D          A/C#
Quero ser um adorador por excelência,
   Bm7         G
Sentir o fogo da Tua presença!
   D          A/C#
Pra sempre Teu, Jesus Eucaristia:
   G            A           D
Meu coração Te louva noite e dia!',
  to_tsvector('portuguese', 'Adorador por Excelência (Pra Sempre Teu) ' || '')
),
(
  'nos-pobres-te-encontrei-fraternidade-o-caminho',
  'Nos Pobres Te Encontrei (Tive Fome e Me Deste de Comer)',
  'Fraternidade O Caminho',
  'Fraternidade O Caminho',
  'Em',
  74,
  '4/4',
  'Balada Evangélica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Comunhão',
  'Quaresma',
  'Mt 25, 35-40',
  'popular',
  '[Intro] Em  C  G  D

[Primeira Parte]
   Em           C         G           D
1. Tive fome e me deste de comer, tive sede e me deste de beber;
   Em            C         G           D
Era forasteiro e me acolheste em teu lar, no irmão ferido vi Teu olhar!

[Refrão]
   C         D         G           Em
Todas as vezes que fizestes ao menor dos meus irmãos,
   Am        B7         Em
Foi a Mim que o fizestes, diz o Senhor!

[Final] Em  G  B7  Em',
  to_tsvector('portuguese', 'Nos Pobres Te Encontrei (Tive Fome e Me Deste de Comer) ' || '')
),
(
  'totus-tuus-maria-fraternidade-arca-de-maria',
  'Totus Tuus Maria (Todo Teu, ó Mãe)',
  'Fraternidade Arca de Maria',
  'Fraternidade Arca de Maria',
  'G',
  74,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Final',
  'Qualquer',
  'Jo 19, 26-27',
  'popular',
  '[Intro] G  D/F#  Em  C  D4  D

[Primeira Parte]
   G          D/F#
1. Totus Tuus ego sum, Maria,
   Em         C
E tudo o que é meu a Ti pertence!
   G          D/F#
Toma minhas mãos, guarda os passos meus,
   Em       C           D
Leva a minha vida ao coração de Deus!

[Refrão]
   G          D/F#
Todo Teu, ó Mãe, sou todo Teu!
   Em         C
Consagro a Ti o meu respirar!
   G          D/F#
Sob o Teu olhar eu quero viver,
   C            D           G
E na Tua graça sempre perseverar!',
  to_tsvector('portuguese', 'Totus Tuus Maria (Todo Teu, ó Mãe) ' || '')
),
(
  'ruah-sopro-de-deus-alianca-de-misericordia',
  'Ruah (Espírito Santo Repousa)',
  'Comunidade Aliança de Misericórdia',
  'Comunidade Aliança de Misericórdia',
  'Am',
  72,
  '4/4',
  'Balada ao Espírito Santo',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Comunhão',
  'Pentecostes',
  'Is 61, 1; Lc 4, 18',
  'popular',
  '[Intro] Am  F  C  G

[Primeira Parte]
   Am     F         C           G
1. O Espírito do Senhor repousa sobre mim,
   Am        F         C           G
Porque o Senhor me ungiu e enviou para anunciar a paz!

[Refrão]
   Am         F
Ruah, Ruah, Sopro de Deus,
   C         G
Vem renovar os corações dos filhos Teus!

[Final] Am  C  E7  Am',
  to_tsvector('portuguese', 'Ruah (Espírito Santo Repousa) ' || '')
),
(
  'mao-no-arado-comunidade-recado',
  'Mão no Arado (Ninguém Olha Para Trás)',
  'Comunidade Recado',
  'Comunidade Recado',
  'E',
  90,
  '4/4',
  'Pop Missionário',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Lc 9, 62',
  'popular',
  '[Intro] E  B  C#m  A  B

[Primeira Parte]
   E         B
1. Quem põe a mão no arado não pode olhar pra trás,
   C#m        A           B
Segue firme o caminho da justiça e da paz!
   E         B
O Reino de Deus é feito de quem se entrega por amor,
   C#m      A           B
De quem segue os passos do Bom Pastor!

[Refrão]
   E         B
Vou sem medo onde o Senhor me chamar,
   C#m         A
Minha vida inteira eu quero ofertar!
   E         B
Mão no arado, olhos no céu:
   A            B           E
Servo fiel ao Deus de Israel!',
  to_tsvector('portuguese', 'Mão no Arado (Ninguém Olha Para Trás) ' || '')
),
(
  'fidelidade-comunidade-pantokrator',
  'Fidelidade (Ser Teu Tudo, Senhor)',
  'Comunidade Católica Pantokrator',
  'Comunidade Católica Pantokrator',
  'D',
  74,
  '4/4',
  'Balada de Entrega',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Ap 2, 10',
  'popular',
  '[Intro] D  A  Bm  G

[Refrão]
   D            A         Bm
Recebe, Senhor, minha fidelidade sobre este altar,
   G         A7         D
No pão e no vinho, minha vida inteira quero ofertar!

[Refrão]
   D            A         Bm
Recebe, Senhor, minha fidelidade sobre este altar,
   G         A7         D
No pão e no vinho, minha vida inteira quero ofertar!

[Final] D  G  A7  D',
  to_tsvector('portuguese', 'Fidelidade (Ser Teu Tudo, Senhor) ' || '')
),
(
  'alegra-te-cheia-de-graca-obra-de-maria',
  'Alegra-te, Cheia de Graça (Servir Com Alegria)',
  'Comunidade Obra de Maria',
  'Comunidade Obra de Maria',
  'D',
  84,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  6,
  'Final',
  'Qualquer',
  'Lc 1, 28-45',
  'popular',
  '[Intro] D  G  A7  D

[Primeira Parte]
   D         G
1. Alegra-te, Maria, cheia de graça,
   A7         D
O Senhor do Universo está contigo!
   Bm         Em
Bendita és tu entre todas as mulheres,
   A7         D
E bendito é o fruto do teu ventre, Jesus!

[Refrão]
   D         G
Santa Maria, Mãe do Redentor,
   A7         D
Rogai por nós na alegria e na dor!
   Bm         Em
Queremos servir com alegria e fé,
   G            A7          D
Como serviste em Nazaré!',
  to_tsvector('portuguese', 'Alegra-te, Cheia de Graça (Servir Com Alegria) ' || '')
),
(
  'soberano-poderoso-deus-tony-allysson',
  'Poderoso Deus / Soberano',
  'Tony Allysson',
  'Tony Allysson',
  'C',
  72,
  '4/4',
  'Adoração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Ação de Graças',
  'Qualquer',
  'Ap 4, 8; Sl 92',
  'popular',
  'C                G/B
Sopra Espírito de Deus

Am         F
Sobre o clamor da Igreja

C              G/B
Libera Tua unção de milagres

      Am  F
Sobre nós

         Am     G/B     Am      F
Queremos ver sinais da manifestação do Teu poder

          Am     G/B    Am      F
Pois quem crer verá a gloria do Senhor acontecer

           C      G/B
Poderoso Deus, e Rei

        Am         F
Libera tua unção de cura nesse lugar

          C       G/B
Poderoso Deus, e Rei

        Am         F
Libera tua unção de cura nesse lugar

C                 G/B
Sopra Espírito de Deus

Am         F
Sobre o clamor da Igreja

C              G/B
Libera Tua unção de milagres

       Am  F
Sobre nós

         Am    G/B     Am       F
Queremos ver sinais da manifestação do Teu poder

          Am     G/B    Am      F
Pois quem crer verá a gloria do Senhor acontecer

           C       G/B
Poderoso Deus, e Rei

        Am         F
Libera tua unção de cura nesse lugar

          C       G/B
Poderoso Deus, e Rei

        Am         F
Libera tua unção de cura nesse lugar

F             G            C    G/B  Am
Incendeia Senhor, a Tua Igreja

F             G            C    G/B  Am
Incendeia Senhor, a Tua Igreja

[Solo] Am  F/A  C/G  G

       Am  F/A  Ab  C/G  G',
  to_tsvector('portuguese', 'Poderoso Deus / Soberano ' || '')
),
(
  'amar-te-mais-davidson-silva',
  'Amar-Te Mais',
  'Davidson Silva / Comunidade Shalom',
  'Davidson Silva / Comunidade Shalom',
  'G',
  70,
  '4/4',
  'Dedilhado / Adoração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Ação de Graças',
  'Qualquer',
  'Jo 21, 15-17',
  'popular',
  '[Intro] G  D9/F#  Em7  C9

  G         D9/F#  C9
Amar-te mais, que a mim mesmo

 G         D9/F#   C9
Amar-te mais, que tudo que há aqui

G         D9/F#    C9
Amar-te mais, que aos mais queridos

Am           D9            C9
Amar-te, e dar a vida só por Ti

 G         D9/F#    C9
Amar-te mais,    que a mim mesmo

 G         D9/F#   C9
Amar-te mais,  que tudo que há aqui

G         D9/F#     C9
Amar-te mais, que aos mais queridos

Am           D9         C9  G
Amar-te, e dar a vida só por Ti

 G          D9/F#  C9             G/B
Com minhas forças, com minha alma

          C9             G D9/F#      Em
De todo coração, viverei eu, só pra Te amar

  C9          G
Amar-te... Amar-Te

   C9         D9           G
Amar-te, e dar a vida só por Ti

( G  D9/F#  Em7  C9 )

( G  D9/F#  Em7  C9 )

G         D9/F#  C9
Amar-te mais, que a mim mesmo

 G         D9/F#  C9
Amar-te mais, que tudo que há aqui

G         D9/F#     C9
Amar-te mais, que aos mais queridos

Am           D9         C9  G
Amar-te, e dar a vida só por Ti

 G          D9/F#  C9             G/B
Com minhas forças, com minha alma

          C9             G D9/F#      Em
De todo coração, viverei eu, só pra Te amar

   C9         D9           G
Amar-te, e dar a vida só por Ti

 G          D9/F#  C9             G/B
Com minhas forças, com minha alma

          C9             G D9/F#      Em
De todo coração, viverei eu, só pra Te amar

  C9          G/B
Amar-te... Amar-Te

   C9         D9           G
Amar-te, e dar a vida só por Ti

[Final] G  D9/F#  Em7  C9',
  to_tsvector('portuguese', 'Amar-Te Mais ' || '')
),
(
  'eu-sou-teu-ana-gabriela',
  'Eu Sou Teu (Mais Que Tudo)',
  'Ana Gabriela',
  'Ana Gabriela',
  'G',
  76,
  '4/4',
  'Balada Jovem',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Ct 6, 3',
  'popular',
  '[Intro] G  D  Em  C

[Refrão]
   G        D         Em
Eu sou Teu, inteiramente Teu, Senhor,
   C         D         G
Toma em Tuas mãos minha vida e meu amor!

[Refrão]
   G        D         Em
Eu sou Teu, inteiramente Teu, Senhor,
   C         D         G
Toma em Tuas mãos minha vida e meu amor!

[Final] G  C  D7  G',
  to_tsvector('portuguese', 'Eu Sou Teu (Mais Que Tudo) ' || '')
),
(
  'teu-amor-me-sustentara-juninho-cassimiro',
  'Teu Amor Me Sustentará',
  'Juninho Cassimiro',
  'Juninho Cassimiro',
  'C',
  74,
  '4/4',
  'Balada de Oração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Tempo Comum',
  '2Cor 12, 9',
  'popular',
  '[Intro] C  G/B  Am  F  G4  G

[Primeira Parte]
   C              G/B
1. Quando as minhas forças parecerem terminar,
   Am         F
E a estrada longa me fizer desanimar,
   C              G/B
Olho para a cruz e sinto a Tua mão me erguer:
   Am        F           G
Tua voz suave diz que eu não vou perecer!

[Refrão]
   C              G/B
Teu amor me sustentará a cada passo,
   Am         F
Encontro meu refúgio em Teu abraço!
   C              G/B
Sei que nunca estou sozinho, meu Jesus:
   F            G           C
Tua fidelidade é a minha luz!',
  to_tsvector('portuguese', 'Teu Amor Me Sustentará ' || '')
),
(
  'a-vitoria-e-nossa-pitter-di-laura',
  'A Vitória É Nossa Pelo Sangue de Jesus',
  'Pitter Di Laura / Canção Nova',
  'Pitter Di Laura / Canção Nova',
  'Em',
  82,
  '4/4',
  'Balada Pascal',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Páscoa',
  'Ap 12, 11',
  'popular',
  '[Intro] Em  C  G  D

[Primeira Parte]
   Em         C
1. O inimigo tentou nos abater e nos vencer,
   G         D
Mas o sangue de Jesus tem poder pra nos erguer!
   Em         C
Nenhuma arma forjada contra nós prosperará,
   G         D
O Senhor dos Exércitos à nossa frente está!

[Refrão]
   Em         C
A vitória é nossa pelo sangue de Jesus!
   G         D
A muralha caiu diante da Sua cruz!
   Em         C
Louve ao Senhor, cante com unção:
   G            D           Em
Em Cristo somos mais que campeão!',
  to_tsvector('portuguese', 'A Vitória É Nossa Pelo Sangue de Jesus ' || '')
),
(
  'tu-es-meu-tudo-thiago-tome',
  'Senhor, Tu És Meu Tudo',
  'Thiago Tomé / Canção Nova',
  'Thiago Tomé / Canção Nova',
  'G',
  72,
  '4/4',
  'Adoração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Sl 72, 25-26',
  'popular',
  '[Intro] G  D/F#  Em  C  D

[Primeira Parte]
   G          D/F#
1. Quando olho pro Teu altar, sinto a paz me envolver,
   Em         C
Tua presença viva dá sentido ao meu viver!
   G          D/F#
Não há tesouro maior que o Teu santo amor:
   Em      C           D
A Ti consagro minha vida, Salvador!

[Refrão]
   G          D/F#
Tu és meu tudo, és meu Senhor,
   Em         C
Minha fortaleza, meu Pastor!
   G          D/F#
Nada no mundo vai me separar de Ti:
   C            D           G
Em Teus braços eu renasci!',
  to_tsvector('portuguese', 'Senhor, Tu És Meu Tudo ' || '')
),
(
  'coracao-adorador-rogerinha-moreira',
  'Coração Adorador',
  'Rogerinha Moreira / Canção Nova',
  'Rogerinha Moreira / Canção Nova',
  'C',
  72,
  '4/4',
  'Balada de Adoração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  8,
  'Ação de Graças',
  'Qualquer',
  'Jo 4, 24',
  'popular',
  '[Intro] C  G/B  Am7  F  G4  G

[Primeira Parte]
   C              G/B
1. Senhor, sonda o meu íntimo, purifica o meu ser,
   Am7         F
Queima toda vaidade que me impede de crescer!
   C              G/B
Quero ser transparente aos olhos do meu Deus,
   Am7        F           G
E ofertar um sacrifício aceitável aos céus!

[Refrão]
   C              G/B
Dá-me um coração adorador,
   Am7         F
Que Te busque em espírito e em verdade!
   C              G/B
Transborda em mim o Teu imenso amor:
   F            G           C
Quero viver Tua santidade!',
  to_tsvector('portuguese', 'Coração Adorador ' || '')
),
(
  'confiarei-pe-adriano-zandona',
  'Confiarei no Teu Amor',
  'Padre Adriano Zandoná',
  'Padre Adriano Zandoná',
  'D',
  74,
  '4/4',
  'Balada de Esperança',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Tempo Comum',
  'Sl 36, 5',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7

[Primeira Parte]
   D          A/C#
1. Mesmo quando as incertezas cercam meu viver,
   Bm         G
E as tempestades da vida tentam me abater,
   D          A/C#
Eu me apego à Tua promessa que não vai falhar:
   Bm          G           A
O Senhor é meu refúgio e não vai me desamparar!

[Refrão]
   D          A/C#
Confiarei no Teu amor, meu Pai!
   Bm         G
Descanso em Tuas mãos o meu amanhã!
   D          A/C#
Tua graça me basta, Tua paz me conduz:
   G            A           D
Minha esperança está em Jesus!',
  to_tsvector('portuguese', 'Confiarei no Teu Amor ' || '')
),
(
  'o-que-e-que-eu-sou-sem-jesus-pe-alessandro-campos',
  'O Que É Que Eu Sou Sem Jesus',
  'Padre Alessandro Campos',
  'Padre Alessandro Campos',
  'F#',
  86,
  '3/4',
  'Guarânia Sertaneja',
  '↓ ↑ ↓ ↑ ↓',
  false,
  true,
  true,
  3,
  'Ação de Graças',
  'Tempo Comum',
  'Jo 15, 5',
  'popular',
  'F#         B
O que é que eu sou sem Jesus?

C#          F#
Nada, nada, nada

         C#
Sem Jesus o que é que eu sou?

            F#
Nada, nada, nada

F#
Não vou desistir, preciso seguir

         B
Em Cristo eu posso vencer

  C#
Coração precisa, de abrigo e de luz

         F#       C#
Que só no Senhor posso ver....

    F#
No cheiro da flor, nas coisas do amor,

         B
Ele quer nos ensinar

       C#
Que a chave pra vida nunca está perdida

         F#    C#
Responda que eu vou perguntar

         B
O que é que eu sou sem Jesus?

C#          F#
Nada, nada, nada

         C#
Sem Jesus o que é que eu sou?

            F#
Nada, nada, nada',
  to_tsvector('portuguese', 'O Que É Que Eu Sou Sem Jesus ' || '')
),
(
  'restaura-minha-fe-pe-juarez-de-castro',
  'Restaura Minha Fé, Senhor',
  'Padre Juarez de Castro',
  'Padre Juarez de Castro',
  'G',
  74,
  '4/4',
  'Balada',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Tempo Comum',
  'Lc 17, 5',
  'popular',
  '[Intro] G  D/F#  Em  C  D7

[Primeira Parte]
   G          D/F#
1. Senhor, às vezes a fraqueza quer me dominar,
   Em         C
As lutas deste mundo tentam me cansar!
   G          D/F#
Ajoelho em oração pedindo Teu poder:
   Em       C           D7
Vem, Senhor Jesus, renova o meu viver!

[Refrão]
   G          D/F#
Restaura minha fé, acende a esperança!
   Em         C
Faz o meu coração como o de uma criança!
   G          D/F#
Toma minha vida em Tuas santas mãos:
   C            D7          G
Concede-me a paz e o perdão!',
  to_tsvector('portuguese', 'Restaura Minha Fé, Senhor ' || '')
),
(
  'cuidar-da-familia-pe-ezequiel-dal-pozzo',
  'Cuidar da Família e da Vida',
  'Padre Ezequiel Dal Pozzo',
  'Padre Ezequiel Dal Pozzo',
  'D',
  80,
  '4/4',
  'Balada Familiar',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Tempo Comum',
  'Eclo 3, 1-16',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7

[Primeira Parte]
   D          A/C#
1. Cuidar da família é cuidar do dom de Deus,
   Bm         G
Semear a ternura entre os filhos Seus!
   D          A/C#
Que no lar reine a paz, a conversa e o perdão,
   Bm     G           A7
Unidos na prece e na comunhão!

[Refrão]
   D          A/C#
Abençoa as famílias, ó meu bom Senhor,
   Bm         G
Protege os lares com o Teu amor!
   D          A/C#
Que nunca falte o pão, nem falte a caridade:
   G            A7          D
Faz de nós reflexo da Tua bondade!',
  to_tsvector('portuguese', 'Cuidar da Família e da Vida ' || '')
),
(
  'pertinho-de-ti-irma-ana-paula',
  'Pertinho de Ti (Aos Pés do Sacrário)',
  'Irmã Ana Paula, cmc',
  'Irmã Ana Paula, cmc',
  'C',
  70,
  '4/4',
  'Dedilhado Eucarístico',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Lc 10, 39-42',
  'popular',
  '[Intro] C  G/B  Am  F  G4  G

[Primeira Parte]
   C              G/B
1. Diante do sacrário, em santo recolhimento,
   Am         F
Contemplo a Tua presença no Sacramento!
   C              G/B
O mundo lá fora não compreende este amor,
   Am          F           G
Mas aqui sou preenchido pela Tua paz, Senhor!

[Refrão]
   C              G/B
Pertinho de Ti eu quero permanecer,
   Am         F
Ouvir Tua voz e aprender a viver!
   C              G/B
Jesus Sacramentado, meu sumo Bem:
   F            G           C
Amor que me cura e me sustém!',
  to_tsvector('portuguese', 'Pertinho de Ti (Aos Pés do Sacrário) ' || '')
),
(
  'tudo-e-possivel-ao-que-cre-banda-dom',
  'Tudo É Possível ao Que Crê (Marcos 9, 23)',
  'Banda Dom',
  'Banda Dom',
  'G',
  84,
  '4/4',
  'Pop Acústico',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Tempo Comum',
  'Mc 9, 23',
  'popular',
  '[Intro] G  D/F#  Em7  C9  D4  D

[Primeira Parte]
   G          D/F#
1. Se a montanha à tua frente parece intransponível,
   Em7         C9
Lembra que o Deus a quem serves faz o impossível!
   G          D/F#
Basta dar o passo na certeza e na fé:
   Em7     C9          D
Jesus estende a mão e te põe de pé!

[Refrão]
   G          D/F#
Tudo é possível ao que crê!
   Em7         C9
As muralhas vão ao chão pelo Seu poder!
   G          D/F#
Não há tempestade que Ele não acalme:
   C            D           G
Jesus traz a paz à tua alma!',
  to_tsvector('portuguese', 'Tudo É Possível ao Que Crê (Marcos 9, 23) ' || '')
),
(
  'nao-ha-limites-banda-dominus',
  'Não Há Limites Para o Amor de Deus',
  'Banda Dominus / Léo Rabello',
  'Banda Dominus / Léo Rabello',
  'E',
  98,
  '4/4',
  'Pop Jovem',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Final',
  'Tempo Comum',
  'Ef 3, 18-19',
  'popular',
  '[Intro] E  B  C#m  A  B

[Primeira Parte]
   E         B
1. Não há limites para o amor de Deus,
   C#m         A
Mais alto que as estrelas nos céus!
   E         B
Mais profundo que os oceanos e o mar:
   C#m    A           B
Nada se compara ao Seu cuidar!

[Refrão]
   E         B
Celebre com alegria, exulte no Senhor!
   C#m         A
Fomos resgatados pelo Seu imenso amor!
   E         B
Dance, pule, cante com o coração:
   A            B           E
Em Deus encontramos a Salvação!',
  to_tsvector('portuguese', 'Não Há Limites Para o Amor de Deus ' || '')
),
(
  'tua-graca-me-basta-ceremonya',
  'Tua Graça Me Basta, Senhor',
  'Banda Ceremonya',
  'Banda Ceremonya',
  'Em',
  76,
  '4/4',
  'Balada',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  '2Cor 12, 9',
  'popular',
  '[Intro] Em  C  G  D

[Primeira Parte]
   Em         C
1. Quando tudo parece desabar ao meu redor,
   G         D
E a noite escura me traz aflição e dor,
   Em         C
Eu clamo Teu Nome, ó Cristo Redentor:
   G         D
Tua força se manifesta no meu clamor!

[Refrão]
   Em         C
Tua graça me basta, Senhor!
   G         D
Teu amor me sustenta e me cura!
   Em         C
Na fraqueza sou forte em Ti:
   G            D           Em
Tua luz dissipa a noite escura!',
  to_tsvector('portuguese', 'Tua Graça Me Basta, Senhor ' || '')
),
(
  'mundo-novo-eros-biondini',
  'Mundo Novo (Novo Céu e Nova Terra)',
  'Eros Biondini / Missão Mundo Novo',
  'Eros Biondini / Missão Mundo Novo',
  'G',
  88,
  '4/4',
  'Pop Cristão',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Final',
  'Páscoa',
  'Ap 21, 1-5',
  'popular',
  '(intro) ( A  G/A  F#m  D  E )

A         E
O mundo novo já está pronto no

F#m
coração

D         C#m         D
Só falta executar tirar do papel falta olhar

    F#m           E
pro céu é mesmo lugar

            A         E
O que o coração sentir a boca falará todo

F#m         C#m
bem e  mal brotam  do interior onde se

Bm
planta amor amor se

C#m         D    E
colherá está é a lógica

A         E         F#m
O mundo novo já está pronto no coração

D         C#m         D
Só falta executar tirar do papel falta olhar

    F#m           E
pro céu é mesmo lugar

D           E/D   D            E/D D
Não o torna impuro o que o homem come

                 E/D
mas o que sai do homem é que mancha o

F#m
mundo

D             E/D    D
As bombas têm projetos as guerras tem

E/D    D
maquetes

            E/D              F#m E
Um coração inquieto inquieta tudo',
  to_tsvector('portuguese', 'Mundo Novo (Novo Céu e Nova Terra) ' || '')
),
(
  'aleluia-alvaro-e-daniel',
  'Aleluia (Pai, Eu Quero Te Amar)',
  'Álvaro e Daniel',
  'Álvaro e Daniel',
  'C',
  68,
  '6/8',
  'Dedilhado 6/8',
  '↓ ↓ ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Qualquer',
  'Sl 150',
  'popular',
  '[Intro] C  Am  C  Am

 C          Am      C         Am
Sei que você estava aqui e sempre pude te sentir

F      G        C  G    C         F   G
Mas nunca soube como procurar    você chegou sem avisar

   Am      F      G           G#º     Am
Me fez sorrir, me fez cantar me deu o dom da vida,  aleluia

     F      Am        F      C    G    C  G
Aleluia, aleluia aleluia, alelu-uuu-uuia

         Am    C          Am
A minha alma se acendeu o mundo todo renasceu

      F      G         C  G    C         F      G
Meu coração agora vive em paz    e nem as mais belas canções

Am               F          G           G#º     Am
Poemas, salmos e orações descrevem o que sinto, aleluia

     F      Am        F      C    G    C  G  A
Aleluia, aleluia aleluia, alelu-uuu-uuia

       D     Bm     D         Bm
Eu vejo o céu, eu vejo o mar eu vejo a noite e o luar

     G         A            D  A    D           G     A
Eu vejo como é grande seu amor   eu vejo o dia amanhecer

Bm               G         A    A#º     Bm
Eu quero tanto agradecer e é por isso que eu canto, aleluia

     G      Bm        G      D    A    D  A
Aleluia, aleluia aleluia, alelu-uuu-uuia',
  to_tsvector('portuguese', 'Aleluia (Pai, Eu Quero Te Amar) ' || '')
),
(
  'tua-graca-me-alcancou-italo-villar',
  'Tua Graça Me Alcançou',
  'Italo Villar',
  'Italo Villar',
  'D',
  74,
  '4/4',
  'Balada Acústica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  8,
  'Ação de Graças',
  'Tempo Comum',
  'Ef 2, 8',
  'popular',
  '[Intro] D  A/C#  Bm7  G9  A4  A

[Primeira Parte]
   D          A/C#
1. Eu andava errante, sem rumo e sem direção,
   Bm7         G9
Carregando o fardo pesado da solidão!
   D          A/C#
Mas o Teu olhar compassivo me alcançou:
   Bm7      G9          A
Tua misericórdia minha vida restaurou!

[Refrão]
   D          A/C#
Tua graça me alcançou no abismo da dor!
   Bm7         G
Lavou meus pecados com puro amor!
   D          A/C#
Hoje sou livre para Te adorar:
   G            A           D
Em Tua presença eu quero habitar!',
  to_tsvector('portuguese', 'Tua Graça Me Alcançou ' || '')
),
(
  'rendido-estou-aos-teus-pes-yuri-costa',
  'Rendido Estou aos Teus Pés',
  'Yuri Costa',
  'Yuri Costa',
  'C',
  72,
  '4/4',
  'Adoração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  8,
  'Ação de Graças',
  'Qualquer',
  'Sl 94, 6',
  'popular',
  '[Intro] C  G/B  Am7  F9  G4  G

[Primeira Parte]
   C              G/B
1. Não há outro lugar onde eu queira estar,
   Am7         F9
Senão prostrado diante do Teu altar!
   C              G/B
Derramo a minha vida em Teu louvor:
   Am7    F9          G
Tu és o meu Senhor e Salvador!

[Refrão]
   C              G/B
Rendido estou aos Teus santos pés!
   Am7         F9
Reconheço, Jesus, a grandeza de quem És!
   C              G/B
Faz de mim morada do Teu Santo Espírito:
   F            G           C
Em Ti meu coração está bendito!',
  to_tsvector('portuguese', 'Rendido Estou aos Teus Pés ' || '')
),
(
  'paz-e-bem-irmao-fraternidade-sao-francisco',
  'Paz e Bem, Meu Irmão (Saudação Franciscana)',
  'Frei Wilson / João Sperandio / Família Franciscana',
  'Frei Wilson / João Sperandio / Família Franciscana',
  'C',
  104,
  '2/4',
  'Marcha Franciscana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  3,
  'Entrada',
  'Tempo Comum',
  'Lc 10, 5',
  'popular',
  '[Intro] C  G  F  G  C

[Refrão]
C         G
Paz e bem, meu irmão, paz e bem!
F           G         C     G7
Paz e bem, minha irmã, paz e bem!
C         G
Paz e bem, meu irmão, paz e bem!
F           G         C
Paz e bem, minha irmã, paz e bem!

[Primeira Parte]
C         G
1. Eu te saúdo sol, paz e bem!
Eu te saúdo lua, paz e bem!
C         G
Eu te saúdo estrela, paz e bem!
Eu te saúdo luz, paz e bem!

[Refrão]
C         G
Paz e bem, meu irmão, paz e bem!
F           G         C
Paz e bem, minha irmã, paz e bem!

[Segunda Parte]
C         G
2. Eu te saúdo vento, paz e bem!
Eu te saúdo terra, paz e bem!
C         G
Eu te saúdo fogo, paz e bem!
Eu te saúdo ar, paz e bem!

[Refrão]
C         G
Paz e bem, meu irmão, paz e bem!
F           G         C
Paz e bem, minha irmã, paz e bem!',
  to_tsvector('portuguese', 'Paz e Bem, Meu Irmão (Saudação Franciscana) ' || '')
),
(
  'sob-o-manto-da-virgem-fraternidade-casa-de-maria',
  'Sob o Manto da Virgem Maria',
  'Fraternidade Casa de Maria',
  'Fraternidade Casa de Maria',
  'G',
  78,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  6,
  'Final',
  'Qualquer',
  'Jo 19, 27',
  'popular',
  '[Intro] G  D/F#  Em  C  D7

[Primeira Parte]
   G          D/F#
1. Sob o manto da Virgem Mãe nos refugiamos,
   Em         C
Em suas mãos ternas a vida depositamos!
   G          D/F#
Nas tempestades do mundo ela nos protege,
   Em        C           D7
E com carinho maternal nossa fé ela rege!

[Refrão]
   G          D/F#
Mãe do Bom Conselho, Rainha da Paz,
   Em         C
Tua intercessão milagres nos traz!
   G          D/F#
Leva-nos a Jesus, nosso Salvador:
   C            D7          G
Somos teus filhos no Teu amor!',
  to_tsvector('portuguese', 'Sob o Manto da Virgem Maria ' || '')
),
(
  'avanca-para-aguas-mais-profundas-mar-a-dentro',
  'Avança Para Águas Mais Profundas (Duc in Altum - Lucas 5, 4)',
  'Comunidade Católica Mar a Dentro',
  'Comunidade Católica Mar a Dentro',
  'D',
  84,
  '4/4',
  'Balada Vocacional',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Final',
  'Tempo Comum',
  'Lc 5, 4-11',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7

[Primeira Parte]
   D          A/C#
1. Ouvi a ordem do Mestre na praia a chamar:
   Bm         G
Duc in altum, avança para águas do mar!
   D          A/C#
Lança as redes confiando na Minha Palavra:
   Bm          G           A7
Onde antes não havia pesca, a graça se derrama!

[Refrão]
   D          A/C#
Avança para águas mais profundas!
   Bm         G
Não fiques na margem, onde nada medra!
   D          A/C#
Vem ser pescador do Reino de Deus:
   G            A7          D
Faz brilhar a luz aos filhos Seus!',
  to_tsvector('portuguese', 'Avança Para Águas Mais Profundas (Duc in Altum - Lucas 5, 4) ' || '')
),
(
  'orar-pela-familia-pe-chrystian-shankar',
  'Restaura a Nossa Família, Senhor',
  'Padre Chrystian Shankar',
  'Padre Chrystian Shankar',
  'G',
  76,
  '4/4',
  'Balada Familiar',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Tempo Comum',
  'Js 24, 15',
  'popular',
  '[Intro] G  D/F#  Em  C  D7

[Primeira Parte]
   G          D/F#
1. Senhor, visita hoje o nosso lar,
   Em         C
Ensina os esposos a se perdoar!
   G          D/F#
Que haja respeito, paciência e ternura,
   Em     C           D7
Curando toda amargura e censura!

[Refrão]
   G          D/F#
Restaura a nossa família, Senhor Jesus!
   Em         C
Ilumina nossos passos com a Tua luz!
   G          D/F#
Que em nossa casa habite o Teu Espírito:
   C            D7          G
Um lar de amor e sempre bendito!',
  to_tsvector('portuguese', 'Restaura a Nossa Família, Senhor ' || '')
),
(
  'cura-me-senhor-pe-hewaldo-trevisan',
  'Cura-me, Senhor Jesus (Salmo 6, 3)',
  'Padre Hewaldo Trevisan',
  'Padre Hewaldo Trevisan',
  'D',
  70,
  '4/4',
  'Oração de Cura',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  6,
  'Ação de Graças',
  'Tempo Comum',
  'Jr 17, 14; Sl 6, 3',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7

[Primeira Parte]
   D          A/C#
1. Senhor, tenho lágrimas que ninguém vê,
   Bm         G
Angústias profundas que me fazem sofrer!
   D          A/C#
Venho a Teus pés com o coração quebrado:
   Bm       G           A7
Toca em meu ser, Jesus Ressuscitado!

[Refrão]
   D          A/C#
Cura-me, Senhor! Cura minha alma!
   Bm         G
Devolve à minha vida a paz e a calma!
   D          A/C#
Pelas Tuas chagas fui resgatado:
   G            A7          D
Em Teu amor sou abençoado!',
  to_tsvector('portuguese', 'Cura-me, Senhor Jesus (Salmo 6, 3) ' || '')
),
(
  'manso-e-humilde-de-coracao-irma-zelia',
  'Jesus, Manso e Humilde de Coração (Mateus 11, 29)',
  'Irmã Zélia Garcia',
  'Irmã Zélia Garcia',
  'C',
  72,
  '4/4',
  'Oração ao Sagrado Coração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Tempo Comum',
  'Mt 11, 28-30',
  'popular',
  '[Intro] C  G/B  Am  F  G4  G

[Primeira Parte]
   C              G/B
1. Vinde a Mim todos vós que estais cansados,
   Am         F
Sobrecarregados e desanimados!
   C              G/B
Tomai sobre vós o Meu suave jugo:
   Am        F           G
Em Meu Sagrado Coração sou vosso refúgio!

[Refrão]
   C              G/B
Jesus, manso e humilde de coração,
   Am         F
Faz o meu coração semelhante ao Teu!
   C              G/B
Arranca o orgulho e planta o perdão:
   F            G           C
Leva minha alma ao Santo Céu!',
  to_tsvector('portuguese', 'Jesus, Manso e Humilde de Coração (Mateus 11, 29) ' || '')
),
(
  'exercito-de-sao-miguel-instituto-hesed',
  'Quem Como Deus? (Consagração a São Miguel Arcanjo)',
  'Irmã Maria Raquel / Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Maria Raquel / Irmã Kelly Patrícia / Instituto Hesed',
  'Em',
  78,
  '4/4',
  'Hino a São Miguel',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  3,
  'Final',
  'Qualquer',
  'Ap 12, 7-9',
  'popular',
  '[Intro] Em  C  D  Em

[Primeira Parte]
   Em         C
1. Quem como Deus? Ninguém como Deus!
   D         Em
Ecoa o brado forte por toda a Terra e Céus!
   Em         C
São Miguel Arcanjo, Príncipe da Milícia Divina,
   D         Em
Com sua espada de fogo todo mal domina!

[Refrão]
   Em         C
São Miguel, São Miguel, defendei-nos no combate!
   D         Em
Sede nosso refúgio contra todo ataque!
   C         D
Sob a proteção da Virgem Maria:
   C            D           Em
O Exército de Deus marcha em vitória!',
  to_tsvector('portuguese', 'Quem Como Deus? (Consagração a São Miguel Arcanjo) ' || '')
),
(
  'adorar-te-em-verdade-laercio-oliveira',
  'Adorar-Te em Espírito e em Verdade',
  'Laércio Oliveira',
  'Laércio Oliveira',
  'G',
  72,
  '4/4',
  'Adoração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  false,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Jo 4, 23-24',
  'popular',
  '[Intro] G  D/F#  Em  C  D4  D

[Primeira Parte]
   G          D/F#
1. Chegou a hora e já é agora,
   Em         C
Os verdadeiros adoradores que o Pai procura!
   G          D/F#
Que não adoram apenas por palavras vãs,
   Em    C           D4  D
Mas com a própria vida todas as manhãs!

[Refrão]
   G          D/F#
Adorar-Te em espírito e em verdade!
   Em         C
Contemplar Tua glória e santidade!
   G          D/F#
Prostrado aos Teus pés, ó meu Senhor:
   C            D           G
Tudo o que sou é para o Teu louvor!',
  to_tsvector('portuguese', 'Adorar-Te em Espírito e em Verdade ' || '')
),
(
  'teu-amor-nao-falha-rafael-morel-msh',
  'Teu Amor Jamais Falhará (Salmo 135)',
  'Rafael Morel / Missionário Shalom',
  'Rafael Morel / Missionário Shalom',
  'D',
  78,
  '4/4',
  'Balada Salmódica',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Ação de Graças',
  'Qualquer',
  'Sl 135, 1-26',
  'popular',
  '[Intro] D  A/C#  Bm7  G9  A4  A

[Primeira Parte]
   D          A/C#
1. O Senhor é fiel em todas as Suas palavras,
   Bm7         G9
Sua misericórdia dura para sempre!
   D          A/C#
Mesmo que as montanhas se abalem ou sumam,
   Bm7        G9          A
As promessas do Altíssimo nunca se consomem!

[Refrão]
   D          A/C#
Teu amor não falha, Teu amor jamais falhará!
   Bm7         G
Sua fidelidade para sempre reinará!
   D          A/C#
Em Quem confia em Deus não há confusão:
   G            A           D
O Senhor é a rocha da Salvação!',
  to_tsvector('portuguese', 'Teu Amor Jamais Falhará (Salmo 135) ' || '')
),
(
  'fogo-alto-santo-espirito-flavio-vitor-jr',
  'Fogo Alto (Vem Queimar Meu Coração)',
  'Flávio Vitor Jr.',
  'Flávio Vitor Jr.',
  'Em',
  74,
  '4/4',
  'Adoração',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Pentecostes',
  'Lc 24, 32; Lc 12, 49',
  'popular',
  '[Intro] Em  C  G  D

[Primeira Parte]
   Em         C
1. Não quero uma brasa que logo se apaga,
   G         D
Quero o fogo ardente que tudo consome!
   Em         C
Vem, Santo Espírito, desce com Tua glória,
   G         D
Muda o meu destino e a minha história!

[Refrão]
   Em         C
Fogo alto no altar do meu coração!
   G         D
Queima, purifica, traz avivamento e unção!
   Em         C
Espírito Santo, sopra neste lugar:
   G            D           Em
Tua presença viva vem nos batizar!',
  to_tsvector('portuguese', 'Fogo Alto (Vem Queimar Meu Coração) ' || '')
),
(
  'casa-de-maria-mayara-marques-colo-de-deus',
  'Casa de Maria (Cheia de Graça)',
  'Mayara Marques / Comunidade Colo de Deus',
  'Mayara Marques / Comunidade Colo de Deus',
  'D',
  72,
  '4/4',
  'Balada Mariana',
  '↓ ↓ ↑ ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Final',
  'Qualquer',
  'Jo 19, 27; Lc 1, 28',
  'popular',
  '[Intro] D9  Bm7(11)

D9
Eu quero ir ao andar de cima

  Bm7(11)
E ali encontrar minha mãe

      D9
Mãos postas me esperando

                 Bm7(11)
Me chamando para entrar

         G
Hoje eu sei

         A4
Se Maria eu chamar

     D9  D9/C#  Bm7(11)
O Espírito de Deus

     G           A4          D
Ele vem e enche todo esse lugar

         G
Hoje eu sei

            A4
Que onde a noiva está

   D9    D9/C#   Bm7(11)
O noivo também está

   G         A4
Espírito de Deus

           D9
Vem nesse lugar

G
Onde minha mãe está

         D9
Eu também quero estar

 G
Na casa de Maria

         D9
Eu sei que é o meu lugar

G
E quando o Espírito me encontra aqui

D9
Ele não resiste quando sente em mim

G        D9  D9/C#  Bm7(11)
O perfume dela e consome tudo o que sou

G            A4         D9
Espírito de Deus, vem neste lugar

    D9            G
A glória de Pentecostes

          Bm7(11)     A4
Hoje eu quero neste lugar',
  to_tsvector('portuguese', 'Casa de Maria (Cheia de Graça) ' || '')
),
(
  'rosa-de-saron-te-louvo-em-verdade',
  'Te Louvo em Verdade',
  'Rosa de Saron',
  'Rosa de Saron',
  'E',
  72,
  '4/4',
  'Balada Rock / Dedilhado',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Jo 4, 23-24; Hc 3, 17-18',
  'popular',
  '[Intro] E  F#m  G#m  A  B  E

[Primeira Parte]
E           F#m   G#m
1. Mesmo na tempestade, mesmo que se agite o mar,
A         B     E     B
Te louvo, te louvo em verdade!
E           F#m   G#m
Mesmo longe dos meus, mesmo na solidão,
A         B     E     E7
Te louvo, te louvo em verdade!

[Refrão]
A         B         G#m          C#m
Pois somente tenho a Ti, Tu és a minha herança!
F#m       B     E     E7
Te louvo, te louvo em verdade!
A         B         G#m          C#m
Pois somente tenho a Ti, Tu és a minha herança!
F#m       B     E
Te louvo, te louvo em verdade!

[Segunda Parte]
E           F#m   G#m
2. Mesmo que me falte a voz, mesmo se o pranto cair,
A         B     E     B
Te louvo, te louvo em verdade!
E           F#m   G#m
Mesmo sem entender as dores deste viver,
A         B     E     E7
Te louvo, te louvo em verdade!

[Refrão]

[Terceira Parte]
E           F#m   G#m
3. Mesmo na alegria, quando tudo vai bem,
A         B     E     B
Te louvo, te louvo em verdade!
E           F#m   G#m
Em toda circunstância, prostrado a Teus pés,
A         B     E     E7
Te louvo, te louvo em verdade!

[Refrão Final]
A         B         G#m          C#m
Pois somente tenho a Ti, Tu és a minha herança!
F#m       B     E     E7
Te louvo, te louvo em verdade!
A         B         G#m          C#m
Pois somente tenho a Ti, Tu és a minha herança!
F#m       B     E
Te louvo, te louvo em verdade!',
  to_tsvector('portuguese', 'Te Louvo em Verdade ' || '')
),
(
  'rosa-de-saron-as-dores-do-silencio',
  'As Dores do Silêncio',
  'Rosa de Saron',
  'Rosa de Saron',
  'B',
  74,
  '4/4',
  'Balada Acústica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  false,
  6,
  'Ação de Graças',
  'Quaresma',
  'Sl 42, 2-6; Mt 11, 28',
  'popular',
  '[Intro] B  F#/A#  G#m7  E9  B/D#  C#m7  F#4  F#

[Primeira Parte]
B          F#/A#
Hoje a noite está tão fria,
G#m7         E9
E o silêncio fala mais que mil palavras.
B          F#/A#
Olho o céu buscando uma resposta,
C#m7         F#4      F#
Para as dores que o meu peito cala.

[Refrão]
          E9                  F#/E
Vem curar as dores do silêncio,
        D#m7         G#m7
Vem enxugar o pranto do meu rosto!
       C#m7         F#4  F#
Só o Teu amor refaz a minha vida,
       E9        F#7        B
Só em Ti encontro paz e abrigo!

[Segunda Parte]
B          F#/A#
Quando tudo parece perdido,
G#m7         E9
Tua mão me alcança na escuridão.
B          F#/A#
Tu conheces cada cicatriz,
C#m7         F#4      F#
E devolves vida ao meu coração.

[Final]
       C#m7      F#7        G#m7  E9
Só em Ti encontro paz e abrigo!
       C#m7      F#7        B9
Nas dores do silêncio, estás comigo!',
  to_tsvector('portuguese', 'As Dores do Silêncio ' || '')
),
(
  'rosa-de-saron-do-alto-da-pedra',
  'Do Alto da Pedra',
  'Rosa de Saron',
  'Rosa de Saron',
  'G',
  80,
  '4/4',
  'Pop Rock Acústico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Final',
  'Qualquer',
  'Sl 40, 3; Is 40, 31',
  'popular',
  '[Intro] G  D/F#  Em7  C9  G/B  Am7  D4  D

[Primeira Parte]
G                  D/F#
Olho para trás e vejo a estrada,
Em7         C9
Quantas pedras tive que transpor.
G          D/F#
Mas a Tua graça me sustentou,
Am7         D4      D
Me ergueu nos braços do Teu amor.

[Refrão]
          C9                D/C
Do alto da pedra eu posso ver,
        Bm7         Em7
Um novo horizonte se abrir pra mim!
       Am7         D4  D
Contigo ao meu lado não vou temer,
       C9         D7        G
Tua luz me guia até o fim!

[Segunda Parte]
G          D/F#
Mesmo que o vento sopre forte,
Em7         C9
Minha casa está firmada na Rocha.
G          D/F#
Em Tuas promessas vou confiar,
Am7         D4      D
Para sempre o Teu nome exaltar.

[Final]
       Am7        D7        Em7  C9
Do alto da pedra eu posso ver,
       Am7        D7        G9
Que o Teu amor me faz viver!',
  to_tsvector('portuguese', 'Do Alto da Pedra ' || '')
),
(
  'rosa-de-saron-o-sol-da-meia-noite',
  'O Sol da Meia-Noite',
  'Rosa de Saron',
  'Rosa de Saron',
  'Em',
  84,
  '4/4',
  'Rock Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Páscoa',
  'Lc 1, 78-79; Jo 8, 12',
  'popular',
  '[Intro] Em  C9  G  D/F#  Em  C9  D4  D

[Primeira Parte]
Em         C9
Quando a escuridão tenta encobrir,
G          D/F#
A esperança que arde em meu coração,
Em         C9
Eu levanto os olhos para o alto,
Am7         B7
Pois de Ti vem a minha salvação.

[Refrão]
          C9         D9
Tu és o Sol da meia-noite,
        Bm7         Em7
A estrela d''alva que não se apaga!
       Am7         D4  D
Brilha em mim a Tua luz divina,
       C9        B7       Em
Que a minha alma tanto esperava!

[Segunda Parte]
Em         C9
Não há trevas que possam vencer,
G          D/F#
O fulgor da Tua ressurreição.
Em         C9
Caminhando sob a Tua graça,
Am7         B7
Renovado sou pelo Teu perdão.

[Final]
       C9         D9        Em7
Tu és o Sol da meia-noite,
       Am7        B7        Em9
A luz eterna do meu viver!',
  to_tsvector('portuguese', 'O Sol da Meia-Noite ' || '')
),
(
  'rosa-de-saron-marcas',
  'Marcas',
  'Rosa de Saron',
  'Rosa de Saron',
  'C',
  70,
  '4/4',
  'Balada Dedilhada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  5,
  'Comunhão',
  'Quaresma',
  'Is 53, 5; Gl 6, 17',
  'popular',
  '[Intro] C  G/B  Am7  F9  C/E  Dm7  G4  G

[Primeira Parte]
C              G/B
Tantas marcas trago pelo caminho,
Am7         F9
Cicatrizes que o tempo deixou.
C              G/B
Mas ao contemplar as Tuas chagas,
Dm7         G4      G
Reconheço o preço do Teu amor.

[Refrão]
          F9                G/F
Tuas marcas curam minhas feridas,
        Em7         Am7
Teu sangue lava o meu coração!
       Dm7         G4  G
Na Tua cruz encontro a nova vida,
       F9         G7        C
No Teu abraço, a restauração!

[Segunda Parte]
C              G/B
Hoje entrego tudo em Teu altar,
Am7         F9
O meu passado e o meu amanhã.
C              G/B
Que a minha vida tenha a Tua marca,
Dm7         G4      G
Sinal eterno da Tua aliança.

[Final]
       Dm7        G7        Am7  F9
Tuas marcas curam minhas feridas,
       Dm7        G7        C9
Senhor da minha vida!',
  to_tsvector('portuguese', 'Marcas ' || '')
),
(
  'rosa-de-saron-rara-calma',
  'Rara Calma',
  'Rosa de Saron',
  'Rosa de Saron',
  'D',
  72,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Jo 14, 27; Fl 4, 7',
  'popular',
  '[Intro] D  A/C#  Bm7  G9  D/F#  Em7  A4  A

[Primeira Parte]
D          A/C#
No meio do barulho deste mundo,
Bm7         G9
Ouço a Tua voz a me chamar.
D          A/C#
Como brisa leve na manhã,
Em7         A4      A
Vens o meu espírito acalmar.

[Refrão]
          G9                A/G
Tua presença traz a rara calma,
        F#m7         Bm7
Que pacifica todo o meu interior!
       Em7         A4  A
Descanso agora sob as Tuas asas,
       G9         A7        D
Seguro estou nos braços do Senhor!

[Segunda Parte]
D          A/C#
Passam as tormentas e os medos,
Bm7         G9
Quando me abandono em Tuas mãos.
D          A/C#
Tu és o porto onde ancoro a vida,
Em7         A4      A
A paz perfeita do meu coração.

[Final]
       Em7        A7        Bm7  G9
Tua presença traz a rara calma,
       Em7        A7        D9
Jesus, descanso da minha alma!',
  to_tsvector('portuguese', 'Rara Calma ' || '')
),
(
  'rosa-de-saron-monte-inverno',
  'Monte Inverno',
  'Rosa de Saron',
  'Rosa de Saron',
  'Am',
  76,
  '4/4',
  'Balada Rock',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Quaresma',
  'Ct 2, 11-12; Sl 121, 1-2',
  'popular',
  '[Intro] Am  F9  C  G/B  Am  F9  E4  E

[Primeira Parte]
Am         F9
Subo o monte em meio ao frio intenso,
C              G/B
Onde a neve cobre a direção.
Am         F9
Mas no peito arde uma chama viva,
Dm7         E4      E
Que aquece a minha oração.

[Refrão]
          F9         G9
Mesmo no alto do Monte Inverno,
        Em7         Am7
Teu calor derrete a solidão!
       Dm7         E4  E
Faz brotar a flor da esperança,
       F9         E7        Am
Nova primavera no coração!

[Segunda Parte]
Am         F9
Não importa quão longa seja a noite,
C              G/B
Sei que a alvorada vai chegar.
Am         F9
Confiante sigo os Teus passos,
Dm7         E4      E
Até no Teu santuário descansar.

[Final]
       Dm7        E7        F9
Mesmo no alto do Monte Inverno,
       Dm7        E7        Am9
Teu amor é fogo eterno!',
  to_tsvector('portuguese', 'Monte Inverno ' || '')
),
(
  'rosa-de-saron-menos-de-um-segundo',
  'Menos de Um Segundo',
  'Rosa de Saron',
  'Rosa de Saron',
  'G',
  75,
  '4/4',
  'Balada Acústica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Sl 84, 11; Lc 15, 20',
  'popular',
  '[Intro] G  D/F#  Em7  C9  G/B  Am7  D4  D

[Primeira Parte]
G          D/F#
Quantas vezes procurei tão longe,
Em7         C9
O que sempre esteve junto a mim.
G          D/F#
Bastou um olhar para a Tua cruz,
Am7         D4      D
Para o meu deserto chegar ao fim.

[Refrão]
          C9                D/C
Em menos de um segundo tudo mudou,
        Bm7         Em7
Quando a Tua graça me tocou!
       Am7         D4  D
Um instante em Tua presença vale mais,
       C9         D7        G
Que mil dias longe da Tua paz!

[Segunda Parte]
G          D/F#
Não quero mais perder nenhum momento,
Em7         C9
Sem viver no centro do Teu querer.
G          D/F#
Cada batida do meu coração,
Am7         D4      D
Seja para o Teu nome bendizer.

[Final]
       Am7        D7        Em7  C9
Em menos de um segundo tudo mudou,
       Am7        D7        G9
Pois o Teu amor me resgatou!',
  to_tsvector('portuguese', 'Menos de Um Segundo ' || '')
),
(
  'rosa-de-saron-mais-que-um-mero-poema',
  'Mais Que um Mero Poema',
  'Rosa de Saron',
  'Rosa de Saron',
  'C',
  74,
  '4/4',
  'Balada Pop',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  '1Jo 3, 18; Ef 2, 10',
  'popular',
  '[Intro] C  G/B  Am7  F9  C/E  Dm7  G4  G

[Primeira Parte]
C              G/B
Escrevi canções falando de amor,
Am7         F9
Rimas belas sob a luz do luar.
C              G/B
Mas compreendi olhando para Ti,
Dm7         G4      G
Que amar é a própria vida entregar.

[Refrão]
          F9                G/F
Mais que um mero poema em papel,
        Em7         Am7
Teu amor foi escrito lá na cruz!
       Dm7         G4  G
Faz da minha vida um verso vivo,
       F9         G7        C
Que reflita ao mundo a Tua luz!

[Segunda Parte]
C              G/B
Não bastam palavras sem verdade,
Am7         F9
Nem promessas que o vento levou.
C              G/B
Quero amar em obras e em silêncio,
Dm7         G4      G
Como o Mestre um dia nos amou.

[Final]
       Dm7        G7        Am7  F9
Mais que um mero poema em papel,
       Dm7        G7        C9
És a poesia que desceu do céu!',
  to_tsvector('portuguese', 'Mais Que um Mero Poema ' || '')
),
(
  'rosa-de-saron-chuva-fria',
  'Chuva Fria',
  'Rosa de Saron',
  'Rosa de Saron',
  'Dm',
  76,
  '4/4',
  'Balada Dedilhada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  5,
  'Ação de Graças',
  'Quaresma',
  'Os 6, 3; Sl 51, 9',
  'popular',
  '[Intro] Dm  Bb9  F  C/E  Dm  Bb9  A4  A

[Primeira Parte]
Dm         Bb9
Cai a chuva fria na janela,
F              C/E
Enquanto penso em tudo o que passou.
Dm         Bb9
As lágrimas se misturam à tempestade,
Gm7         A4      A
Clamando pelo abrigo do Senhor.

[Refrão]
          Bb9         C9
Depois da chuva fria vem o sol,
        Am7         Dm7
Tua misericórdia me refaz!
       Gm7         A4  A
Lava a minha alma e o meu pranto,
       Bb9        A7        Dm
Reacende em mim a Tua paz!

[Segunda Parte]
Dm         Bb9
Como a terra seca espera a água,
F              C/E
Minha vida espera em Teu altar.
Dm         Bb9
Transforma o meu inverno em alvorada,
Gm7         A4      A
Ensina o meu coração a confiar.

[Final]
       Gm7        A7        Bb9
Depois da chuva fria vem o sol,
       Gm7        A7        Dm9
Brilha em mim a graça do Senhor!',
  to_tsvector('portuguese', 'Chuva Fria ' || '')
),
(
  'rosa-de-saron-folhas-do-chao',
  'Folhas do Chão',
  'Rosa de Saron',
  'Rosa de Saron',
  'A',
  78,
  '4/4',
  'Pop Acústico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Ez 37, 5; Ap 21, 5',
  'popular',
  '[Intro] A  E/G#  F#m7  D9  A/C#  Bm7  E4  E

[Primeira Parte]
A          E/G#
Como folhas secas pelo chão,
F#m7         D9
Espalhadas pelo vento do outono,
A          E/G#
Assim estavam todos os meus sonhos,
Bm7         E4      E
Antes de encontrar o Teu perdão.

[Refrão]
          D9                E/D
Tu recolhes as folhas do chão,
        C#m7         F#m7
E devolves vida ao meu jardim!
       Bm7         E4  E
Teu Espírito sopra sobre mim,
       D9         E7        A
Começando um tempo sem fim!

[Segunda Parte]
A          E/G#
Já não temo as estações da vida,
F#m7         D9
Pois minhas raízes estão em Ti.
A          E/G#
Darei frutos no tempo oportuno,
Bm7         E4      E
Pela graça que de Ti recebi.

[Final]
       Bm7        E7        F#m7  D9
Tu recolhes as folhas do chão,
       Bm7        E7        A9
E renovas o meu coração!',
  to_tsvector('portuguese', 'Folhas do Chão ' || '')
),
(
  'rosa-de-saron-invernia',
  'Invernia',
  'Rosa de Saron',
  'Rosa de Saron',
  'Em',
  74,
  '4/4',
  'Balada Rock',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  5,
  'Ação de Graças',
  'Quaresma',
  'Sl 130, 5-6; Is 43, 2',
  'popular',
  '[Intro] Em  C9  G  D/F#  Em  C9  B4  B

[Primeira Parte]
Em         C9
Nos dias longos desta invernia,
G          D/F#
Guardo a chama acesa no altar.
Em         C9
Mesmo que o frio tente paralisar,
Am7         B4      B
Minha fé não deixará de caminhar.

[Refrão]
          C9         D9
Passará o tempo da invernia,
        Bm7         Em7
A promessa eterna cumprirá!
       Am7         B4  B
Quem espera no Senhor não cansa,
       C9         B7        Em
Novo canto em breve cantará!

[Segunda Parte]
Em         C9
Toda semente oculta sob a terra,
G          D/F#
No silêncio aprende a germinar.
Em         C9
Assim Deus trabalha em minha história,
Am7         B4      B
Preparando o tempo de florir e amar.

[Final]
       Am7        B7        C9
Passará o tempo da invernia,
       Am7        B7        Em9
Cristo é a nossa eterna alegria!',
  to_tsvector('portuguese', 'Invernia ' || '')
),
(
  'thiago-brado-foi-por-voce',
  'Foi Por Você',
  'Thiago Brado',
  'Thiago Brado',
  'G',
  70,
  '4/4',
  'Balada Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Quaresma',
  'Jo 15, 13; Rm 5, 8',
  'popular',
  '[Intro] G  D/F#  Em7  C9  G/B  Am7  D4  D

[Primeira Parte]
G          D/F#
Cada passo rumo ao Calvário,
Em7         C9
Cada gota de sangue que caiu,
G          D/F#
O silêncio diante dos algozes,
Am7         D4      D
Foi o maior amor que o mundo viu.

[Refrão]
          C9                D/C
Foi por você que Ele subiu na cruz,
        Bm7         Em7
Foi por você que Ele se entregou!
       Am7         D4  D
De braços abertos entre o céu e a terra,
       C9         D7        G
Jesus Cristo a sua vida resgatou!

[Segunda Parte]
G          D/F#
Não foram os cravos que O prenderam,
Em7         C9
Mas o amor imenso por você e por mim.
G          D/F#
No terceiro dia a morte foi vencida,
Am7         D4      D
Para nos dar a vida que não tem fim.

[Final]
       Am7        D7        Em7  C9
Foi por você, foi por amor,
       Am7        D7        G9
Bendito seja o nosso Redentor!',
  to_tsvector('portuguese', 'Foi Por Você ' || '')
),
(
  'thiago-brado-meu-alvo',
  'Meu Alvo',
  'Thiago Brado',
  'Thiago Brado',
  'FC',
  76,
  '4/4',
  'Pop Acústico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  9,
  'Final',
  'Qualquer',
  'Fl 3, 13-14; Hb 12, 1-2',
  'popular',
  '[Intro] F/C  C

F/C    C   F/C    C
Eu não sei o que fazer

G/B        Am           G
Pois eu não vejo bondade em mim

F/C    C        F/C    C
Não sei dizer o que o Senhor viu

   Am
No meu

        G
Pobre e fraco coração

( Dm  D9  Am  G )

        F           G
Mas confesso, sou grato

          C     G/B   Am
Não desististes de mim

         Dm
Pode o mundo ir

          G           C
Mas o Teu colo vai ficar

Refrão: Dm  D9  Am  G

         F         G
Não vou desistir, quero Tua presença

           C    G/B        Am
Hoje o meu alvo é Te sentir

         F         G
Eu só vou parar quando no Teu abraço
 Senhor

     C
Me embalar

         F         G
Não vou desistir, quero Tua presença

           C    G/B        Am
Hoje o meu alvo é Te sentir

         F         G
Eu só vou parar quando no Teu abraço
 Senhor

     C
Me embalar

        F           G
Mas confesso, sou grato

          C     G/B   Am
Não desististes de mim

         Dm
Pode o mundo ir

          G           C
Mas o Teu colo vai ficar

         F         G
Não vou desistir, quero Tua presença

           C    G/B        Am
Hoje o meu alvo é Te sentir

         F         G
Eu só vou parar quando no Teu abraço
 Senhor

     C
Me embalar

         F         G
Não vou desistir, quero Tua presença

           C    G/B        Am
Hoje o meu alvo é Te sentir

         F         G
Eu só vou parar quando no Teu abraço
 Senhor

     C
Me embalar

        F         G
Não há outro lugar qu''eu ansei estar

         Am            Em
Que o Teu colo, colo, colo

         F         G
Não há outro lugar qu''eu ansei estar

         C   G   Am
Que o Teu colo

         F         G
Não vou desistir, quero Tua presença

           C    G/B        Am
Hoje o meu alvo é Te sentir

         F         G
Eu só vou parar quando no Teu abraço, Senhor

     C
Me embalar',
  to_tsvector('portuguese', 'Meu Alvo ' || '')
),
(
  'thiago-brado-o-bom-pastor',
  'O Bom Pastor',
  'Thiago Brado',
  'Thiago Brado',
  'D',
  72,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Páscoa',
  'Jo 10, 11-16; Sl 23, 1-6',
  'popular',
  '[Intro] D  A/C#  Bm7  G9  D/F#  Em7  A4  A

[Primeira Parte]
D          A/C#
Mesmo que eu ande pelo vale escuro,
Bm7         G9
Mal nenhum eu temerei, Senhor.
D          A/C#
Tua vara e Teu cajado me consolam,
Em7         A4      A
Ouço a doce voz do meu Pastor.

[Refrão]
          G9                A/G
Tu és o Bom Pastor que dá a vida,
        F#m7         Bm7
Que conhece cada ovelha pelo nome!
       Em7         A4  A
Em verdes pastos me fazes repousar,
       G9         A7        D
Junto às águas tranquilas me refazes!

[Segunda Parte]
D          A/C#
Quando me perdi longe do aprisco,
Bm7         G9
Deixaste as noventa e nove por amor.
D          A/C#
Nos Teus ombros me trouxeste de volta,
Em7         A4      A
Curando as feridas da minha dor.

[Final]
       Em7        A7        Bm7  G9
Tu és o Bom Pastor que dá a vida,
       Em7        A7        D9
Nada me faltará em Tua guarida!',
  to_tsvector('portuguese', 'O Bom Pastor ' || '')
),
(
  'thiago-brado-terra-seca',
  'Terra Seca',
  'Thiago Brado',
  'Thiago Brado',
  'Am',
  70,
  '4/4',
  'Dedilhado Contemplativo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Quaresma',
  'Sl 63, 2; Sl 143, 6',
  'popular',
  '[Intro] Am  F9  C  G/B  Am  F9  E4  E

[Primeira Parte]
Am         F9
Minha alma tem sede de Ti, Senhor,
C              G/B
Meu corpo Te deseja ardentemente,
Am         F9
Como terra seca, árida e sem água,
Dm7         E4      E
Clamo pela Tua graça, Deus vivente.

[Refrão]
          F9         G9
Derrama sobre mim a Tua água viva,
        Em7         Am7
Vem saciar a sede do meu coração!
       Dm7         E4  E
Sou terra seca esperando a Tua chuva,
       F9         E7        Am
Transforma o meu deserto em jardim!

[Segunda Parte]
Am         F9
No Teu santuário contemplo a Tua glória,
C              G/B
Pois Tua graça vale mais do que a vida.
Am         F9
Meus lábios entoarão o Teu louvor,
Dm7         E4      E
Minhas mãos se elevam em prece agradecida.

[Final]
       Dm7        E7        F9
Derrama sobre mim a Tua água viva,
       Dm7        E7        Am9
Senhor, fonte de eterna vida!',
  to_tsvector('portuguese', 'Terra Seca ' || '')
),
(
  'thiago-brado-meu-mundo',
  'Meu Mundo',
  'Thiago Brado',
  'Thiago Brado',
  'E',
  72,
  '4/4',
  'Balada Acústica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Cl 3, 11; Gl 2, 20',
  'popular',
  '[Intro] E  B/D#  C#m7  A9  E/G#  F#m7  B4  B

[Primeira Parte]
E          B/D#
Quando entras no silêncio do meu quarto,
C#m7         A9
Todo o universo parece parar.
E          B/D#
Basta um toque da Tua mão ferida,
F#m7         B4      B
Para o meu coração se iluminar.

[Refrão]
          A9                B/A
Tu és o meu mundo, meu princípio e fim,
        G#m7         C#m7
Tudo o que eu preciso encontro em Ti!
       F#m7         B4  B
Não sei mais viver longe do Teu olhar,
       A9         B7        E
Para sempre quero Te adorar!

[Segunda Parte]
E          B/D#
Podes levar os meus planos humanos,
C#m7         A9
Só não retires de mim o Teu Espírito.
E          B/D#
Que o meu respirar seja uma oração,
F#m7         B4      B
Unido ao Teu amor infinito.

[Final]
       F#m7       B7        C#m7  A9
Tu és o meu mundo, meu princípio e fim,
       F#m7       B7        E9
Vive, Senhor Jesus, dentro de mim!',
  to_tsvector('portuguese', 'Meu Mundo ' || '')
),
(
  'thiago-brado-nao-estou-so',
  'Não Estou Só',
  'Thiago Brado',
  'Thiago Brado',
  'G',
  74,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Mt 28, 20; Js 1, 9',
  'popular',
  '[Intro] G  D/F#  Em7  C9

[Primeira Parte]
G          D/F#
Às vezes a estrada parece deserta,
Em7         C9
E o peso da cruz faz o passo falhar.
G          D/F#
Mas sinto ao meu lado uma doce presença,
C9         D4      D
Que enxuga meu pranto e me faz levantar.

[Refrão]
          C9         D9
Eu não estou só, Tu estás comigo!
        Bm7         Em7
És meu companheiro, meu fiel Amigo!
       Am7         D4  D
Em cada momento, na dor ou na paz,
       C9         D7        G
Tua mão poderosa me sustenta e refaz!

[Segunda Parte]
G          D/F#
Prometeste ficar todos os dias,
Em7         C9
Até a consumação dos séculos.
G          D/F#
Por isso caminho sem medo da noite,
C9         D4      D
Guiado pela luz do Teu Evangelho.

[Final]
       Am7        D7        Em7  C9
Eu não estou só, Tu estás comigo,
       Am7        D7        G9
Jesus, meu eterno abrigo!',
  to_tsvector('portuguese', 'Não Estou Só ' || '')
),
(
  'thiago-brado-nova-manha',
  'Nova Manhã',
  'Thiago Brado',
  'Thiago Brado',
  'A',
  78,
  '4/4',
  'Pop Acústico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Entrada',
  'Páscoa',
  'Lm 3, 22-23; Sl 30, 6',
  'popular',
  '[Intro] A  E/G#  F#m7  D9  A/C#  Bm7  E4  E

[Primeira Parte]
A          E/G#
O choro pode durar uma noite,
F#m7         D9
Mas a alegria vem ao amanhecer.
A          E/G#
Os raios do sol anunciam a graça,
Bm7         E4      E
Que faz toda a criação renascer.

[Refrão]
          D9                E/D
Nasce uma nova manhã de esperança,
        C#m7         F#m7
Tua misericórdia se renova em mim!
       Bm7         E4  E
Louvado sejas, Senhor da Aliança,
       D9         E7        A
Teu amor é fiel e não tem fim!

[Segunda Parte]
A          E/G#
Abro as janelas da minha alma,
F#m7         D9
Deixo a Tua luz invadir meu viver.
A          E/G#
Entrego este dia em Tuas mãos santas,
Bm7         E4      E
Para a Tua vontade sempre fazer.

[Final]
       Bm7        E7        F#m7  D9
Nasce uma nova manhã de esperança,
       Bm7        E7        A9
Em Ti minha alma descansa!',
  to_tsvector('portuguese', 'Nova Manhã ' || '')
),
(
  'thiago-brado-sopro-suave',
  'Sopro Suave',
  'Thiago Brado',
  'Thiago Brado',
  'D',
  68,
  '4/4',
  'Dedilhado Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Pentecostes',
  '1Rs 19, 12; Jo 20, 22',
  'popular',
  '[Intro] D  A/C#  Bm7  G9  D/F#  Em7  A4  A

[Primeira Parte]
D          A/C#
Não estavas no vento impetuoso,
Bm7         G9
Nem no terremoto ou no fogo ardente.
D          A/C#
Mas no murmúrio de uma brisa leve,
Em7         A4      A
Reconheci Tua voz tão presente.

[Refrão]
          G9                A/G
Sopro Suave, Espírito Santo,
        F#m7         Bm7
Vem envolver todo o meu coração!
       Em7         A4  A
Acalma a minh''alma, enxuga o meu pranto,
       G9         A7        D
Derrama sobre mim a Tua unção!

[Segunda Parte]
D          A/C#
Como no Cenáculo sopra de novo,
Bm7         G9
Restaura a paz e renova o ardor.
D          A/C#
Faz de mim morada da Tua presença,
Em7         A4      A
Templo vivo do Teu santo amor.

[Final]
       Em7        A7        Bm7  G9
Sopro Suave, Espírito Santo,
       Em7        A7        D9
A Ti elevo o meu canto!',
  to_tsvector('portuguese', 'Sopro Suave ' || '')
),
(
  'thiago-brado-teu-santo-nome',
  'Teu Santo Nome',
  'Thiago Brado',
  'Thiago Brado',
  'C',
  72,
  '4/4',
  'Balada Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Fl 2, 9-11; Sl 8, 2',
  'popular',
  '[Intro] C  G/B  Am7  F9  C/E  Dm7  G4  G

[Primeira Parte]
C              G/B
Há um Nome que traz paz ao coração,
Am7         F9
Que liberta o cativo e cura a dor.
C              G/B
Diante d''Ele os mares se acalmam,
Dm7         G4      G
E toda a criação rende louvor.

[Refrão]
          F9                G/F
Bendito seja o Teu Santo Nome,
        Em7         Am7
Nome acima de todo nome, Jesus!
       Dm7         G4  G
Todo joelho se dobre no céu e na terra,
       F9         G7        C
Diante da majestade da Tua cruz!

[Segunda Parte]
C              G/B
Nos lábios o Teu Nome é melodia,
Am7         F9
No peito é fortaleza e salvação.
C              G/B
Proclamo que só Tu és o Senhor,
Dm7         G4      G
Para a glória de Deus Pai em comunhão.

[Final]
       Dm7        G7        Am7  F9
Bendito seja o Teu Santo Nome,
       Dm7        G7        C9
Jesus, nosso Deus e Senhor!',
  to_tsvector('portuguese', 'Teu Santo Nome ' || '')
),
(
  'mons-jonas-abib-que-santidade-de-vida',
  'Que Santidade de Vida',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'D',
  76,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  11,
  'Ofertório',
  'Qualquer',
  '1Pd 1, 15-16; Rm 12, 1',
  'popular',
  '​[Intro] G  Am  C  D

​        G  Am  C  D

​        G  Am  C  D

​        G  Am  C  D

​[Primeira Parte]


​  G            G4  G
​Que santidade de  vida!

​     Am     D       G
​Que homens devemos ser!

​          D/F#  Em  D
​Pois se tudo no céu e    na  Terra

​             Am  C  G
​Senhor chamará

​                   G4  G
​Que respeito para com Deus!

​     Am     D        G
​Que luta devemos travar!

​                  D/F#  Em  D
​No novo céu e na no____va  Terra

​          Am
​Iremos morar


​( C  G  D/F#  Em )

​[Refrão 1]


​ D
​Somos Senhor tua igreja

​                 Em
​Que aguarda e apressa

​     D/F#      G
​Tua vinda Gloriosa

​          D/F#  Em  D
​Que o Senhor nos encontre     em paz

​         Am  C  G  D/F#  Em
​Puros e san____tos


​ D
​Somos Senhor tua igreja

​                 Em
​Que aguarda e apressa

​     D/F#      G
​Tua vinda Gloriosa

​          D/F#  Em  D
​Que o Senhor nos encontre     em paz

​         Am  C  G
​Puros e san____tos

​[Pré-Refrão]


​                Am     Bm
​Que é feito da sua promessa?

​    C        D         Em  D
​Perguntam e zombam de Deus

​[Refrão 2]


​       G
​Mas o Senhor virá

​         D
​Ele não tardará

​             Em     D      C
​Que eu seja santo, santo, santo

​             G             D
​Pois Deus é santo, santo, santo

​            G/B           C
​Que a santidade da minha vida

​              D
​Apresse o Senhor

​              G  D
​E ele logo virá


​          G
​Mas o Senhor virá

​           D
​E ele não tardará

​             Em     D      C    Am
​Que eu seja santo, santo, santo

​             G             D
​Pois Deus é santo, santo, santo

​            G/B           C
​Que a santidade da minha vida

​              D
​Apresse o Senhor

​              G  Am  C  D
​E ele logo virá


​( G  Am  C  D )

​( G  Am  C  D )

​( G  Am  C  D )

​[Refrão 1]


​ D             D4   D
​Somos Senhor tua igreja

​                 Em
​Que aguarda e apressa

​     D/F#      G
​Tua vinda Gloriosa

​          D/F#  Em  D
​Que o Senhor nos encontre     em paz

​         Am  C  G  D/F#  Em
​Puros e san____tos


​ D             D4   D
​Somos Senhor tua igreja

​                 Em
​Que aguarda e apressa

​     D/F#      G
​Tua vinda Gloriosa

​          D/F#  Em  D
​Que o Senhor nos encontre     em paz

​         Am  C  G
​Puros e san____tos

​[Pré-Refrão]


​                Am     Bm
​Que é feito da sua promessa?

​    C        D         Em  D
​Perguntam e zombam de Deus

​[Refrão 2]


​          G
​Mas o Senhor virá

​           D
​E ele não tardará

​             Em     D      C
​Que eu seja santo, santo, santo

​             G             D
​Pois Deus é santo, santo, santo

​            G/B           C
​Que a santidade da minha vida

​              D
​Apresse o Senhor

​              G  D
​E ele logo virá


​          G
​Mas o Senhor virá

​           D
​E ele não tardará

​             Em     D      C
​Que eu seja santo, santo, santo

​      G/B  Am  G             D
​Pois Deus  é  santo, santo, santo

​            G/B           C
​Que a santidade da minha vida

​              D
​Apresse o Senhor

​              G  Am  C  D
​E ele logo virá


​[Final] G  Am  C  D

​        G  Am  C  D

​        G  Am  C  D  Am  G',
  to_tsvector('portuguese', 'Que Santidade de Vida ' || '')
),
(
  'mons-jonas-abib-cancao-do-espirito',
  'Canção do Espírito (Deixa Jesus Encher Tua Vida)',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'D',
  70,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  9,
  'Ação de Graças',
  'Pentecostes',
  'Jo 7, 37-39; Rm 5, 5',
  'popular',
  'A7    D         E
Busca em Jesus a plenitude

       C#m           F#m
Do Santo Espírito e do seu amor

       Bm            E        (Em  A7)
Deixa que ele te envolva em seu calor

       D         E
Deixa Jesus cuidar das coisas

    C#m         F#m         Bm
Que atormentam teu Viver, Qual luz do alto

      E7          A
Ele virá sobre o teu ser!

(Em  A7)  D   E    C#m    F#m
Ó, ó, ó, Cristo, meu Cristo

  Bm   E   (Em  A7)
Vem em mim morar

  D   E  C#m    F#m
Cristo, meu Cristo

  Bm   E    A
Vem em mim morar

A7      D         E
Ó vem cantar com alegria

       C#m           F#m
Encher de paz teu coração, Ergue o braço

  Bm      E     (Em  A7)
E louva a Deus em oraçao

       D         E    C#m
A Ele dá tuas tristezas, desilusões

F#m         Bm
E tua cruz, Então terás a Vida

  E7        A
Em nome de Jesus

(Em  A7)
Ó, ó, ó',
  to_tsvector('portuguese', 'Canção do Espírito (Deixa Jesus Encher Tua Vida) ' || '')
),
(
  'mons-jonas-abib-cantai-ao-senhor-cantico-novo',
  'Cantai ao Senhor um Cântico Novo',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'Em',
  110,
  '4/4',
  'Marcha / Louvor',
  '↓  ↑ ↓ ↑  ↓ ↑',
  false,
  true,
  true,
  4,
  'Entrada',
  'Qualquer',
  'Sl 96, 1-3; Sl 98, 1',
  'popular',
  '[Intro] Gm  Dm  A7  Dm

      Dm         A7
 Cantai ao senhor um cantico novo

         Dm
Cantai ao senhor um cantico novo

         D7         Gm
Cantai ao senhor um cantico novo

         Dm         A7       Dm
Cantai ao senhor! cantai ao senhor!

         Dm         A7
 Porque ele fez, ele faz maravilhas

         Dm
Porque ele fez, ele faz maravilhas

         D7         Gm
Porque ele fez, ele faz maravilhas

         Dm         A7       Dm
Cantai ao senhor! cantai ao senhor!

( Gm  Dm  A7  Dm )

         Dm            A7
 É ele quem dá o espírito santo!

         Dm
É ele quem dá o espírito santo!

         D7            Gm
É ele quem dá o espírito santo!

         Dm       A7       Dm
Cantai ao senhor! cantai ao senhor!',
  to_tsvector('portuguese', 'Cantai ao Senhor um Cântico Novo ' || '')
),
(
  'mons-jonas-abib-eu-e-minha-casa',
  'Eu e Minha Casa Serviremos ao Senhor',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'G',
  96,
  '4/4',
  'Pop / Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  14,
  'Final',
  'Qualquer',
  'Js 24, 15; At 16, 31',
  'popular',
  '[Intro] Bb  F  C  G  Bb

        F  A7  D7

G  D/F#    Em  Bm      C     Am     D
Eu e minha casa   serviremos ao Senhor!

G  D/F#    Em  Bm      C  G/B  Am  D  G
Eu e minha casa   serviremos   ao Senhor!

G        D/F#         Em   Bm
Deus não quer nos condenar

C        Am      D
Quer de nós uma decisão

G           D/F#           Em     Bm
Para o nosso bem, pra nos salvar

C   Am          D
Pergunta hoje então

 Em         Bm
A quem você quer servir?

 C           Am     D
A quem você quer servir?

 Em         Bm
A quem você quer servir?

 C           Am     D
A quem você quer servir?

G  D/F#    Em  Bm      C     Am    D
Eu e minha casa   serviremos ao Senhor!

G  D/F#    Em  Bm      C  G/B  Am  D  G
Eu e minha casa   serviremos   ao Senhor!

G        D/F#        Em   Bm
O pecado quer nos dominar

C       Am         D
E Deus quer nos santificar

G  D/F#     Em    Bm
É preciso decidir

C       Am            D
Ser de Deus, não me enganar

 Em         Bm
A quem você quer servir?

 C           Am     D
A quem você quer servir?

 Em         Bm
A quem você quer servir?

 C           Am     D
A quem você quer servir?

G  D/F#    Em  Bm      C     Am    D
Eu e minha casa   serviremos ao Senhor!

G  D/F#    Em  Bm      C  G/B  Am  D  G
Eu e minha casa   serviremos   ao Senhor!

[Final] Bb  F  C  G

        Bb  F  A7  D7  G',
  to_tsvector('portuguese', 'Eu e Minha Casa Serviremos ao Senhor ' || '')
),
(
  'mons-jonas-abib-vigia-esperando-a-aurora',
  'Vigia Esperando a Aurora',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'C',
  74,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  15,
  'Entrada',
  'Advento',
  'Sl 130, 6; Is 21, 11-12',
  'popular',
  '​[Intro] G  C  Bm7  Am7

​        G  C  Bm7  Am7

​        G  D4  D

​[Refrão]


​   G     C           G
​Vigia esperando a aurora

​              C          G  G7
​Qual noiva esperando o amor

​     C         Bm7     Em7
​É assim que o servo espera

​   Am7   D         G  Am7  G/B
​A vinda do seu Senhor

​     C         Bm7     Em7
​É assim que o servo espera

​   Am7   D         G
​A vinda do seu Senhor

​[Primeira Parte]


​              D        D/C        G
​Ao longe, um galo vai cantar seu canto

​          E         E/G#       Am7
​O sol no céu vai estender seu manto

​         C         D        G
​Na madrugada eu estarei desperto

​            A        A/C#     D  C  Bm7  Am7
​Que já vem perto o dia do Senhor!

​[Refrão]


​   G     C           G
​Vigia esperando a aurora

​              C          G  G7
​Qual noiva esperando o amor

​     C         Bm7     Em7
​É assim que o servo espera

​   Am7   D         G  Am7  G/B
​A vinda do seu Senhor

​     C         Bm7     Em7
​É assim que o servo espera

​   Am7   D         G
​A vinda do seu Senhor

​[Segunda Parte]


​         D        D/C        G
​A minha voz vai acordar meu povo

​            E           E/G#      Am7
​Louvando a Deus que faz um mundo novo

​           C           D         G
​Não vou ligar se a madrugada é fria

​             A     A/C#      D  C  Bm7  Am7
​Que um novo dia logo vai chegar

​[Refrão]


​   G       C         G
​Vigia esperando a aurora

​                C        G  G7
​Qual noiva esperando o amor

​     C         Bm7     Em7
​É assim que o servo espera

​   Am7      D      G  Am7  G/B
​A vinda do seu Senhor

​     C         Bm7     Em7
​É assim que o servo espera

​   Am7      D      G
​A vinda do seu Senhor


​( D  C  G )

​( D  C  G )

​( A  A/C#  D )

​( C  Bm7  Am7  G/B )

​[Terceira Parte]


​              D           D/C      G
​Se é noite escura, acendo a minha tocha

​           E           E/G#    Am7
​Dentro do peito o sol já desabrocha

​          C               D      G
​Filho da luz, não vou dormir, vigio

​           A         A/C#   D  C  Bm7  Am7
​Ao mundo frio vou levar o amor!

​[Refrão]


​   G       C         G
​Vigia esperando a aurora

​                C        G  G7
​Qual noiva esperando o amor

​     C         Bm7     Em7
​É assim que o servo espera

​   Am7      D      G  Am7  G/B
​A vinda do seu Senhor

​     C         Bm7     Em7
​É assim que o servo espera

​   Am7      D      G
​A vinda do seu Senhor


​[Final] C  Bm7  Am7  G

​        C  Bm7  Am7  G

​        C  Bm7  Am7  G

​        C  Bm7  D/A  G',
  to_tsvector('portuguese', 'Vigia Esperando a Aurora ' || '')
),
(
  'mons-jonas-abib-inunda-meu-ser',
  'Inunda Meu Ser',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'A',
  68,
  '4/4',
  'Dedilhado / Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  15,
  'Ação de Graças',
  'Pentecostes',
  'At 2, 1-4; Ef 5, 18',
  'popular',
  '​D           A/C#     Bm
​Espírito Santo de Deus

​ Bm/A       G      D/F#    Em  A7
​Inunda meu ser, inunda meu ser

​D         A/C#     Bm
​Quero sentir o amor

​Bm/A         G      D/F#   Em A7
​Do meu Senhor, do meu senhor!

​Bm         Bm7M          Bm7
​Pra poder perdoar o meu irmão

​Bm6           G        C9     A
​Abrir meu coração, viver o amor!

​Bm         Bm7M       Bm7
​Pra sentir a paz interior

​Bm6                G
​Sobre o mal ser vencedor

​C9               A7
​Alegrar-me em ti

​            D        F#m          G  G/A
​Inunda meu ser (ah, inunda meu ser)',
  to_tsvector('portuguese', 'Inunda Meu Ser ' || '')
),
(
  'mons-jonas-abib-juras-de-amor',
  'Juras de Amor',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'G',
  72,
  '4/4',
  'Balada Suave',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  17,
  'Comunhão',
  'Qualquer',
  'Os 2, 16.21; Ct 8, 6',
  'popular',
  '​G         C/G       D/G     C/G
​Quero transformar numa canção

​G         C/G       D     D4  D
​As juras de amor por ti meu Deus

​     G7M            Am7M     Bm7M   Am7M Bm7M
​Entraste em minha vida sedutor

​C          D
​Já não sei viver sem teu amor


​G/B          C    D/C       Bm7
​Tudo te entreguei, nada me restou

​ Em7       Am7  D       Dm
​Livre eu fiquei para te amar meu Deus

​G7         C    D/C       Bm7
​Tudo me pediste, nada eu te neguei

​Em7         C     Em7     D/F#
​Hoje eu sou feliz assim, tenho a ti meu

​G
​Deus',
  to_tsvector('portuguese', 'Juras de Amor ' || '')
),
(
  'mons-jonas-abib-nao-da-mais-pra-voltar',
  'Não Dá Mais Pra Voltar (O Barco Está Virando)',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'D',
  92,
  '4/4',
  'Folk / Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  19,
  'Final',
  'Qualquer',
  'Lc 9, 62; Mt 4, 19-20',
  'popular',
  '​[Intro] F#m  E/G#  A9(5+)  A2

​        Bm7  C#m7  Dm7  E

​        F#m  E/G#  A9(5+)  A2

​        Bm7  C#m7  D  E4

​[Primeira Parte]


​A2        C#m7
​   Não dá      mais pra voltar

​D         A/C#  Bm7        E4
​  O barco es___tá em alto-mar

​A2        C#m7
​   Não dá      mais pra voltar

​D         A/C#  Bm7        E4
​  O barco es___tá em alto-mar

​[Refrão]


​ A     D/A
​Não dá     mais pra negar

​E/A                   C#m7  A  E/G#  F#m
​    O mar é Deus e o barco sou eu

​           F#/A#  Bm7
​E o vento forte

​        A/C#      D  D/F#  E
​Que me leva pra frente

​          A      E/G#  D/F#  E/G#
​É o amor de Deus


​ A     D/A
​Não dá     mais pra negar

​E/A                   C#m7  A  E/G#  F#m
​    O mar é Deus e o barco sou eu

​           F#/A#  Bm7
​E o vento forte

​        A/C#      D  D/F#  E
​Que me leva pra frente

​          A      Dm6/A
​É o amor de Deus

​[Segunda Parte]


​A2        Bm7  C#m7
​   Não dá

​Nem mais pra ver

​D             Bm7    E4
​  O porto que era seguro

​A2        Bm7  C#m7
​   Eu sou

​      C7M    D          Bm7         E4
​Impulsionado   a desbravar um novo mundo

​[Refrão]


​ A     D/A
​Não dá     mais pra negar

​E/A                   C#m7  A  E/G#  F#m
​    O mar é Deus e o barco sou eu

​           F#/A  Bm7
​E o vento forte

​        A/C#      D  D/F#  E
​Que me leva pra frente

​          A      E/G#  D/F#  E/G#
​É o amor de Deus


​     A  D/A
​Não dá      mais pra negar

​E/A                   C#m7  A  E/G#  F#m
​    O mar é Deus e o barco sou eu

​           F#/A#  Bm7
​E o vento forte

​        A/C#      D  D/F#  E
​Que me leva pra frente

​          A      Dm6/A
​É o amor de Deus


​[Final] F#m  E/G#  A9(5+)  A

​        Bm7  C#m7  Dm7  E

​        F#m  E/G#  A9(5+)  A

​        Bm7  C#m7  D  D11+  D

​        D11+  D  D11+  D',
  to_tsvector('portuguese', 'Não Dá Mais Pra Voltar (O Barco Está Virando) ' || '')
),
(
  'mons-jonas-abib-cristo-quero-ser-instrumento',
  'Cristo, Quero Ser Instrumento de Tua Paz',
  'Monsenhor Jonas Abib / Canção Nova',
  'Monsenhor Jonas Abib / Canção Nova',
  'C',
  74,
  '4/4',
  'Balada Franciscana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ofertório',
  'Qualquer',
  'Mt 5, 9; Gl 5, 22',
  'popular',
  '[Intro] C  Am7  Dm7  G7  C  G7

[Primeira Parte]
   C         Am7
1. Cristo, quero ser instrumento de Tua paz e do Teu infinito amor:
   Dm7           G7         C      G7
Onde houver ódio e rancor, que eu leve a concórdia, que eu leve o amor!
   C           E7         Am7
Onde há ofensa que dói, que eu leve o perdão;
   F         Dm7           G4    G7
Onde houver a discórdia, que eu leve a união e Tua paz!

[Refrão]
          F         G7
Mestre, que eu não busque tanto ser consolado,
        Em7         Am7
Mas consolar; ser compreendido, mas compreender;
       Dm7         G7
Ser amado, mas amar com todo o ardor,
       F          G7        C
Pois é dando que se recebe o Teu amor!

[Segunda Parte]
   C         Am7
2. Mesmo que haja um só coração que duvide do bem, do amor e do Céu,
   Dm7         G7         C      G7
Quero com firmeza anunciar a Palavra que traz a clareza da fé!
   C            E7         Am7
Onde houver erro, Senhor, que eu leve a verdade;
   F          Dm7            G4    G7
No desespero e na tristeza, a esperança e a alegria da luz!

[Final]
       Dm7    G7        Am7  F
Perdoando é que se encontra o perdão,
       Dm7        G7        C9
E morrendo se vive para a eterna mansão!',
  to_tsvector('portuguese', 'Cristo, Quero Ser Instrumento de Tua Paz ' || '')
),
(
  'banda-dom-seu-amor-e-demais',
  'Seu Amor É Demais',
  'Banda Dom',
  'Banda Dom',
  'G',
  112,
  '4/4',
  'Pop Rock Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Qualquer',
  'Rm 8, 38-39; 1Jo 4, 16',
  'popular',
  '[Intro] G  D  Em7  C9  G  D  C9

[Primeira Parte]
G         D
Eu sei que nunca estou sozinho,
Em7         C9
Mesmo quando tudo parece difícil.
G         D
Tua mão me guia pelo caminho,
Em7         C9      D
E transforma em festa o meu sorriso!

[Refrão]
          G         D
O Seu amor é demais, não tem igual,
        Em7         C9
Me faz voar além do temporal!
          G         D
O Seu amor é demais, me faz feliz,
        C9        D7        G
É tudo o que meu coração sempre quis!

[Segunda Parte]
G         D
Quero gritar para o mundo inteiro,
Em7         C9
Que em Jesus encontrei a verdadeira vida.
G         D
Um amor fiel e tão verdadeiro,
Em7         C9      D
Que cura a alma de toda ferida!

[Final]
          G         D
O Seu amor é demais, não tem igual,
        C9        D7        G9
Amor eterno do Pai Celestial!',
  to_tsvector('portuguese', 'Seu Amor É Demais ' || '')
),
(
  'banda-dom-coracao-adorador',
  'Coração Adorador',
  'Banda Dom',
  'Banda Dom',
  'D',
  72,
  '4/4',
  'Balada Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Jo 4, 23; Sl 51, 12',
  'popular',
  '[Intro] D  A/C#  Bm7  G9  Em7  A4  A

[Primeira Parte]
D          A/C#
Vem tocar, Senhor, em meu interior,
Bm7         G9
Desfazer as pedras da indiferença.
D          A/C#
Quero me prostrar diante do altar,
Em7         A4      A
Mergulhado na Tua santa presença.

[Refrão]
          G9                A/G
Dá-me um coração adorador,
        F#m7         Bm7
Que bata no compasso do Teu amor!
       Em7         A4  A
Em espírito e em verdade quero viver,
       G9         A7        D
Para o Teu santo nome engrandecer!

[Segunda Parte]
D          A/C#
Mais do que palavras ou belas canções,
Bm7         G9
Tu procuras vidas entregues a Ti.
D          A/C#
Recebe o meu nada e faz-me Teu servo,
Em7         A4      A
Eis-me aqui, Senhor, eis-me aqui!

[Final]
       Em7        A7        Bm7  G9
Dá-me um coração adorador,
       Em7        A7        D9
Todo Teu, meu Deus e meu Senhor!',
  to_tsvector('portuguese', 'Coração Adorador ' || '')
),
(
  'banda-dom-cancao-de-pedro',
  'Canção de Pedro',
  'Banda Dom',
  'Banda Dom',
  'A',
  74,
  '4/4',
  'Balada Acústica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Páscoa',
  'Jo 21, 15-17; Jo 6, 68',
  'popular',
  '[Intro] A  E/G#  F#m7  D9  Bm7  E4  E

[Primeira Parte]
A          E/G#
Mesmo tendo falhado tantas vezes,
F#m7         D9
Mesmo quando o medo me fez negar,
A          E/G#
O Teu olhar de misericórdia,
Bm7         E4      E
Me encontrou chorando à beira do mar.

[Refrão]
          D9                E/D
Senhor, Tu sabes tudo o que sou,
        C#m7         F#m7
Tu sabes que eu Te amo, meu Salvador!
       Bm7         E4  E
A quem iremos nós, se só Tu tens,
       D9         E7        A
Palavras de vida eterna, amém!

[Segunda Parte]
A          E/G#
Por três vezes perguntas ao meu coração,
F#m7         D9
Restaurando em mim a vocação de amar.
A          E/G#
Apascentarei as Tuas ovelhas,
Bm7         E4      E
Tua Igreja sobre a Rocha vou servir e honrar.

[Final]
       Bm7        E7        F#m7  D9
Senhor, Tu sabes tudo o que sou,
       Bm7        E7        A9
Tu sabes que eu Te amo, meu Senhor!',
  to_tsvector('portuguese', 'Canção de Pedro ' || '')
),
(
  'banda-dom-eu-sou-o-que-sou',
  'Eu Sou o Que Sou',
  'Banda Dom',
  'Banda Dom',
  'E',
  76,
  '4/4',
  'Balada Pop',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Ex 3, 14; 1Cor 15, 10',
  'popular',
  '[Intro] E  B/D#  C#m7  A9  F#m7  B4  B

[Primeira Parte]
E          B/D#
Diante da sarça que arde sem consumir,
C#m7         A9
Tiro as sandálias em solo sagrado.
E          B/D#
Ouço a voz do Deus de nossos pais,
F#m7         B4      B
Que caminha sempre ao nosso lado.

[Refrão]
          A9                B/A
Eu Sou o que Sou, diz o Senhor,
        G#m7         C#m7
O Deus Eterno, teu Libertador!
       F#m7         B4  B
Pela Tua graça hoje sou o que sou,
       A9         B7        E
Filho amado que o Pai resgatou!

[Segunda Parte]
E          B/D#
Não temo o Faraó nem o deserto,
C#m7         A9
Pois Tua coluna de fogo me guia.
E          B/D#
Abres o mar diante dos meus passos,
F#m7         B4      B
E me alimentas com o Pão de cada dia.

[Final]
       F#m7       B7        C#m7  A9
Eu Sou o que Sou, diz o Senhor,
       F#m7       B7        E9
A Ele toda a glória e o louvor!',
  to_tsvector('portuguese', 'Eu Sou o Que Sou ' || '')
),
(
  'banda-dom-aos-pes-da-tua-cruz',
  'Aos Pés da Tua Cruz',
  'Banda Dom',
  'Banda Dom',
  'C',
  70,
  '4/4',
  'Dedilhado / Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Quaresma',
  'Jo 19, 25-27; Gl 6, 14',
  'popular',
  '[Intro] C  G/B  Am7  F9  Dm7  G4  G

[Primeira Parte]
C              G/B
Aos pés da Tua cruz me coloco agora,
Am7         F9
Com Maria e João em adoração.
C              G/B
Contemplo o mistério da entrega total,
Dm7         G4      G
Daquele que nos deu a redenção.

[Refrão]
          F9                G/F
Aos pés da Tua cruz encontro o perdão,
        Em7         Am7
Jorra do Teu lado água e salvação!
       Dm7         G4  G
Recebo Maria por Mãe do meu viver,
       F9         G7        C
Aos pés da Tua cruz quero permanecer!

[Segunda Parte]
C              G/B
Quando o mundo tentar me afastar de Ti,
Am7         F9
Lembrarei do preço que pagaste ali.
C              G/B
Tua cruz é árvore de vida e paz,
Dm7         G4      G
Que toda a minha história refaz.

[Final]
       Dm7        G7        Am7  F9
Aos pés da Tua cruz encontro o perdão,
       Dm7        G7        C9
Jesus, Rei do meu coração!',
  to_tsvector('portuguese', 'Aos Pés da Tua Cruz ' || '')
),
(
  'banda-dom-fiat-faca-se',
  'Fiat (Faça-se em Mim)',
  'Banda Dom',
  'Banda Dom',
  'G',
  72,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ofertório',
  'Advento',
  'Lc 1, 38; Lc 1, 46-49',
  'popular',
  '[Intro] G  D/F#  Em7  C9  Am7  D4  D

[Primeira Parte]
G          D/F#
Um anjo do céu trouxe a mensagem,
Em7         C9
Para a jovem virgem lá em Nazaré.
G          D/F#
No silêncio humilde do seu coração,
Am7         D4      D
Brotou a resposta mais bela da fé.

[Refrão]
          C9                D/C
Fiat, faça-se em mim segundo a Tua Palavra!
        Bm7         Em7
Eis aqui a serva do Senhor!
       Am7         D4  D
Como Maria quero dizer meu sim,
       C9         D7        G
Faz Tua vontade, ó Deus, dentro de mim!

[Segunda Parte]
G          D/F#
O Verbo Divino fez morada em nós,
Em7         C9
Pelo sim perfeito da Mãe de Jesus.
G          D/F#
Ensina-nos, Mãe, a acolher a missão,
Am7         D4      D
De levar ao mundo o Filho da Luz.

[Final]
       Am7        D7        Em7  C9
Fiat, faça-se em mim segundo a Tua Palavra,
       Am7        D7        G9
Por toda a minha jornada!',
  to_tsvector('portuguese', 'Fiat (Faça-se em Mim) ' || '')
),
(
  'banda-dom-permanecer-no-amor',
  'Permanecer no Amor',
  'Banda Dom',
  'Banda Dom',
  'D',
  74,
  '4/4',
  'Balada Litúrgica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Páscoa',
  'Jo 15, 4-10',
  'popular',
  '[Intro] D  A/C#  Bm7  G9  Em7  A4  A

[Primeira Parte]
D          A/C#
Tu és a Videira verdadeira, Senhor,
Bm7         G9
E nós somos os ramos unidos a Ti.
D          A/C#
Sem a Tua seiva nada podemos fazer,
Em7         A4      A
Só em Tua comunhão podemos florir.

[Refrão]
          G9                A/G
Quero permanecer no Teu amor,
        F#m7         Bm7
Guardando os Teus mandamentos de luz!
       Em7         A4  A
Para dar muitos frutos que permaneçam,
       G9         A7        D
Na alegria perfeita de Cristo Jesus!

[Segunda Parte]
D          A/C#
Como o Pai Te amou, também nos amaste,
Bm7         G9
Chamas-nos amigos e não mais servos.
D          A/C#
Na mesa sagrada do Pão e do Vinho,
Em7         A4      A
Selamos contigo o amor eterno.

[Final]
       Em7        A7        Bm7  G9
Quero permanecer no Teu amor,
       Em7        A7        D9
Unido a Ti, meu Salvador!',
  to_tsvector('portuguese', 'Permanecer no Amor ' || '')
),
(
  'banda-dom-pescador-de-cristo',
  'Pescador de Cristo',
  'Banda Dom',
  'Banda Dom',
  'A',
  98,
  '4/4',
  'Pop Acústico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Qualquer',
  'Lc 5, 4-11; Mc 1, 17',
  'popular',
  '[Intro] A  E  F#m7  D9  A  E  D9

[Primeira Parte]
A         E
Trabalhamos a noite inteira no mar,
F#m7         D9
Sem nada colher em nossa embarcação.
A         E
Mas sob a Tua Palavra lançamos a rede,
D9         E4      E
E vimos o milagre da multiplicação!

[Refrão]
          A         E
Sou pescador de Cristo, vou anunciar,
        F#m7         D9
Avançar para as águas profundas do mar!
          A         E
Deixo tudo na praia pra Te seguir,
        D9        E7        A
Onde quer que me envies, eu vou partir!

[Segunda Parte]
A         E
Não tenhas medo, diz a Tua voz,
F#m7         D9
De hoje em diante serás pescador.
A         E
Resgatando vidas para o Reino do Céu,
D9         E4      E
Nas redes benditas do Teu santo amor!

[Final]
          A         E
Sou pescador de Cristo, vou anunciar,
        D9        E7        A9
Tua Boa-Nova em todo lugar!',
  to_tsvector('portuguese', 'Pescador de Cristo ' || '')
),
(
  'banda-dom-eu-vou-pelo-mundo',
  'Eu Vou Pelo Mundo',
  'Banda Dom',
  'Banda Dom',
  'E',
  108,
  '4/4',
  'Pop Rock Missionário',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Qualquer',
  'Mc 16, 15; Mt 28, 19',
  'popular',
  '[Intro] E  B  C#m7  A9  E  B  A9

[Primeira Parte]
E         B
A messe é grande e espera por nós,
C#m7         A9
Não posso calar o que vi e ouvi.
E         B
O fogo do Espírito arde no peito,
A9         B4      B
Impulsiona meus pés a sair daqui!

[Refrão]
          E         B
Eu vou pelo mundo anunciar Jesus,
        C#m7         A9
Levar a esperança, ser sal e ser luz!
          E         B
De norte a sul, em cada nação,
        A9        B7        E
Proclamar a alegria da salvação!

[Segunda Parte]
E         B
Quão belos são sobre as montanhas,
C#m7         A9
Os pés do mensageiro que anuncia a paz.
E         B
Com Maria, Estrela da Evangelização,
A9         B4      B
Levamos o amor que o mundo refaz!

[Final]
          E         B
Eu vou pelo mundo anunciar Jesus,
        A9        B7        E9
Caminhando sempre na Sua luz!',
  to_tsvector('portuguese', 'Eu Vou Pelo Mundo ' || '')
),
(
  'banda-dom-deus-e-dez',
  'Deus É Dez',
  'Banda Dom',
  'Banda Dom',
  'G',
  116,
  '4/4',
  'Pop Jovem / Animação',
  '↓  ↑ ↓ ↑  ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Qualquer',
  'Sl 100, 1-5; Fl 4, 4',
  'popular',
  '[Intro] G  C9  D  G  C9  D

[Primeira Parte]
G         C9
Olhe para o céu e veja a imensidão,
D          G       D/F#
Sinta a alegria bater no coração.
Em7         C9
Ele fez o sol, as estrelas e o mar,
Am7         D4      D
E fez você e eu para a vida celebrar!

[Refrão]
          G         C9
Deus é dez, Deus é mil, Deus é tudo pra mim!
        D         G
O Seu amor é perfeito e nunca tem fim!
          G         C9
Deus é dez, Deus é paz, é a minha canção,
        D         D7        G
Alegria que transborda no meu coração!

[Segunda Parte]
G         C9
Quando estou triste Ele vem consolar,
D          G       D/F#
Quando estou fraco me faz caminhar.
Em7         C9
Não existe amigo mais fiel que o Senhor,
Am7         D4      D
Vamos juntos cantar o Seu grande louvor!

[Final]
          G         C9
Deus é dez, Deus é mil, Deus é tudo pra mim,
        D         D7        G9
Bendito seja Deus agora e sempre, amém!',
  to_tsvector('portuguese', 'Deus É Dez ' || '')
),
(
  'frei-gilson-eu-seguirei',
  'Eu Seguirei',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'E',
  72,
  '4/4',
  'Balada Vocacional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Ofertório',
  'Tempo Comum',
  'Lc 9, 23; Mt 16, 24',
  'popular',
  '[Intro] F#m7(11)  A9  E9

        F#m7(11)  A9  E9

[Primeira Parte]

    E      D9
Eu vou deixar-me guiar

         E
E me abandonar no teu querer

    D9
Preciso fazer a Tua vontade

          E
Em minha vida

           D9
Eu vou deixar-me guiar

         E
E me abandonar no teu querer

    D9
Preciso fazer a Tua vontade

          E
Em minha vida

[Pré-Refrão]

               F#m7(11)  A9
Para onde eu irei?

         E9
Em quem me apoiarei?

               F#m7(11)  A9
Para onde eu irei?

         E9
Em quem me apoiarei?

[Refrão]

         B4
Eu seguirei

     A9         E9
Eu irei aonde fores Senhor

         B4
Eu seguirei

     A9         E9
Eu irei aonde fores Senhor

              F#m7(11)  A9
Tua graça me basta

         E9
Teu amor me sustenta

              F#m7(11)  A9
Tua graça me basta

         E9
Teu amor me sustenta

( F#m7(11)  A9  E9 )

( F#m7(11)  A9  E9 )

[Primeira Parte]

    E      D9
Eu vou deixar-me guiar

         E
E me abandonar no teu querer

    D9
Preciso fazer a Tua vontade

          E
Em minha vida

[Pré-Refrão]

               F#m7(11)  A9
Para onde eu irei?

         E9
Em quem me apoiarei?

               F#m7(11)  A9
Para onde eu irei?

         E9
Em quem me apoiarei?

[Refrão]

         B4
Eu seguirei

     A9         E9
Eu irei aonde fores Senhor

         B4
Eu seguirei

     A9         E9
Eu irei aonde fores Senhor

              F#m7(11)  A9
Tua graça me basta

         E9
Teu amor me sustenta

              F#m7(11)  A9
Tua graça me basta

         E9
Teu amor me sustenta

( A9  C#m  B4 )

( A9  C#m  B4 )

[Ponte]

         A9
Eu te seguirei

         C#m
Eu te seguirei

            B4  F#m7(11)/C#
Eu te seguirei

         A9
Eu te seguirei

         E
Eu te seguirei

            B4  C#m
Eu te seguirei

         A9
Eu te seguirei

         C#m
Eu te seguirei

            B4  F#m7(11)/C#
Eu te seguirei

         A9
Eu te seguirei

         E
Eu te seguirei

         B4
Eu te seguirei

( F#m7(11)  A9  E9 )

[Refrão]

         B4
Eu seguirei

     A9         E9
Eu irei aonde fores Senhor

         B4
Eu seguirei

     A9         E9
Eu irei aonde fores Senhor

              F#m7(11)  A9
Tua graça me basta

         E9
Teu amor me sustenta

              F#m7(11)  A9
Tua graça me basta

         E9
Teu amor me sustenta

         B4
Eu seguirei

     A9         E9
Eu irei aonde fores Senhor

         B4
Eu seguirei

     A9         E9
Eu irei aonde fores Senhor

              F#m7(11)  A9
Tua graça me basta

         E9
Teu amor me sustenta

              F#m7(11)  A9
Tua graça me basta

         E9
Teu amor me sustenta

[Final] F#m7(11) A9 E9',
  to_tsvector('portuguese', 'Eu Seguirei ' || '')
),
(
  'frei-gilson-colo-de-mae',
  'Colo de Mãe',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'D',
  70,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Jo 19, 26-27',
  'popular',
  'D9         G
Eu preciso tanto do teu colo de mãe

            D9         G
Eu preciso tanto do teu colo de mãe

Bm         D         A9
Que me ama, me ampara, me protege, com manto protetor

         G
Intercede sempre em meu favor

Bm         D         A9
Que me ama, me ampara, me protege, com manto protetor

         G
Intercede sempre em meu favor

   D          G          Bm A9            G
Me ama, me abraça, me esconde, em teu manto

   D          G          Bm A9            G
Me ama, me abraça, me esconde, em teu manto

           D9         G
Eu preciso tanto do teu colo de mãe

           D9         G
Eu preciso tanto do teu colo de mãe

Bm         D         A9
Que me ama, me ampara, me protege, com manto protetor

         G
Intercede sempre em meu favor

Bm         D         A9
Que me ama, me ampara, me protege, com manto protetor

         G
Intercede sempre em meu favor

   D          G          Bm A9            G
Me ama, me abraça, me esconde, em teu manto

   D          G          Bm A9            G
Me ama, me abraça, me esconde, em teu manto',
  to_tsvector('portuguese', 'Colo de Mãe ' || '')
),
(
  'frei-gilson-de-ti-preciso',
  'De Ti Preciso',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'F',
  70,
  '4/4',
  'Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Qualquer',
  'Sl 62, 2; Jo 15, 5',
  'popular',
  '[Intro] F9  C  Bb  C

F9            C         Bb         C
Eu vou te buscar, Senhor, de todo o meu coração

F9            C         Bb   Gm  C
Eu vou te buscar, Senhor, com determinação

            Bb      F9         Bb      F9
Eu preciso mais de ti, eu preciso mais de ti

            Bb      Dm      C4  C
Eu preciso mais de ti, meu Deus!

            Bb      F9         Bb      F9
Eu preciso mais de ti, eu preciso mais de ti

            Bb      Dm      C4  C
Eu preciso mais de ti, meu Deus!

F9            C         Bb         C
Eu vou te buscar, Senhor, de todo o meu coração

F9            C         Bb   Gm  C
Eu vou te buscar, Senhor, com determinação

            Bb      F9         Bb      F9
Eu preciso mais de ti, eu preciso mais de ti

            Bb      Dm      C4  C
Eu preciso mais de ti, meu Deus!

            Bb      F9         Bb      F9
Eu preciso mais de ti, eu preciso mais de ti

            Bb      Dm      C4  C
Eu preciso mais de ti, meu Deus!

            F9
Mais que a vida eu preciso de ti

           Dm
Mais que o ar eu preciso de ti

         Gm          Bb         C
Mais que as riquezas eu preciso de ti, meu Deus

            F9
Mais que a vida eu preciso de ti

           Dm
Mais que o ar eu preciso de ti

         Gm          Bb         C
Mais que as riquezas eu preciso de ti, meu Deus

[Solo] F9  Dm  Bb

       Gm  F9  C

          F9
De ti preciso, preciso mais que tudo nessa vida

    Dm
Preciso preciso és a razão do meu viver

        Gm   Bb         F9            C
Incomparável és!, sou todo teu, sou todo teu

    F9
Preciso, preciso mais que tudo nessa vida

    Dm
Preciso preciso és a razão do meu viver

        Gm   Bb         F9            C
Incomparável és!, sou todo teu, sou todo teu

            F9
Mais que a vida eu preciso de ti

           Dm
Mais que o ar eu preciso de ti

         Gm          Bb         C
Mais que as riquezas eu preciso de ti, meu Deus

( F  Dm  Gm )

( Bb  F  C )

          F9
De ti preciso, preciso mais que tudo nessa vida

    Dm
Preciso preciso és a razão do meu viver

        Gm   Bb         F9            C
Incomparável és!, sou todo teu, sou todo teu

    F9
Preciso, preciso mais que tudo nessa vida

    Dm
Preciso preciso és a razão do meu viver

        Gm   Bb         F9            C
Incomparável és!, sou todo teu, sou todo teu',
  to_tsvector('portuguese', 'De Ti Preciso ' || '')
),
(
  'frei-gilson-o-sangue-de-jesus',
  'O Sangue de Jesus Tem Poder',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'Am',
  76,
  '4/4',
  'Clamor / Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Quaresma',
  'Ap 12, 11; 1Jo 1, 7',
  'popular',
  '[Intro] Am  F  C  G

[Primeira Parte]
   Am         F
1. Foi no alto do Calvário que o Cordeiro Se entregou,
   C         G
E por cada gota santa nossa dívida pagou!
   Am         F
Nenhuma treva resiste ao poder da Tua Cruz,
   C          G         Am
Liberdade e vida nova encontramos em Jesus!

[Refrão]
   Am         F
O Sangue de Jesus tem poder para salvar!
   C         G
O Sangue de Jesus tem poder para curar!
   Am         F
Lava a nossa história, restaura o nosso ser:
   C        G         Am
O Sangue do Cordeiro nos faz vencer!

[Segunda Parte]
   Am         F
2. Pelo Sangue da Aliança entramos no santuário,
   C            G         Am
Adorando o Rei da Glória que venceu no Calvário!',
  to_tsvector('portuguese', 'O Sangue de Jesus Tem Poder ' || '')
),
(
  'frei-gilson-santo-espirito-de-deus',
  'Santo Espírito de Deus',
  'Frei Gilson / Som do Monte',
  'Frei Gilson / Som do Monte',
  'D',
  70,
  '4/4',
  'Adoração / Pentecostes',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Pentecostes',
  'At 2, 1-4; Rm 8, 26',
  'popular',
  '[Intro] D  A  Bm  G

[Primeira Parte]
   D         A
1. Como no Cenáculo, reunidos em oração,
   Bm         G
Abrimos as portas da alma à Tua visitação!
   D         A
Vem, Hóspede da alma, doce brisa do céu,
   Bm          G         A
Inflama a Tua Igreja, torna o nosso amor fiel!

[Refrão]
   D         A
Santo Espírito de Deus, vem inundar este lugar!
   Bm         G
Santo Espírito de Deus, vem os corações transformar!
   D         A
Com Teu fogo abrasador, faz-nos de novo nascer:
   Bm      G         A           D
Santo Espírito de Deus, queremos em Ti viver!

[Segunda Parte]
   D         A
2. Dá-nos sabedoria, fortaleza e temor do Senhor,
   Bm       G         A           D
Para testemunharmos Cristo com intrepidez e amor!',
  to_tsvector('portuguese', 'Santo Espírito de Deus ' || '')
),
(
  'colo-de-deus-queima-de-novo',
  'Queima de Novo',
  'Comunidade Colo de Deus',
  'Comunidade Colo de Deus',
  'G',
  70,
  '4/4',
  'Worship / Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Pentecostes',
  'Lc 24, 32; Lv 6, 6',
  'popular',
  '[Intro] G  Em7  G  Em7

[Dedilhado - Intro]

[Primeira parte]

         Em7         C9
Sarça que só queima, que não se apaga

             G                  D/F#
Somos Tua Igreja, viemos Te adorar

         Em7         C9
Neste Teu altar, somos sacrifício

              G           D/F#  Am7  D
Vem nos consumir, estamos aqui, aqu__i

[Refrão]

[Dedilhado - Refrão 1]

G
Foi a Tua presença

         D
Que nos trouxe aqui, Senhor

            C9
Não desistiremos

             Em7       D/F#
De te perseguir até Te encontrar

         G
Diante da Tua glória

            D
Não podemos   ficar de pé

         C9         Em7
Mostra quem Tu és vem nos visitar

             D/F#        G  Em7
Nos fazer queimar, de novo

[Primeira parte]

         Em7         C9
Sarça que só queima, que não se apaga

             G                  D/F#
Somos Tua Igreja, viemos Te adorar

         Em7         C9
Neste Teu altar, somos sacrifício

              G           D/F#  Am7  D
Vem nos consumir, estamos aqui, aqu__i

[Refrão]

         G
Foi a Tua presença

         D
Que nos trouxe aqui, Senhor

            C9
Não desistiremos

             Em7       D/F#
De te perseguir até Te encontrar

         G
Diante da Tua glória

            D
Não podemos   ficar de pé

         C9         Em7
Mostra quem Tu és vem nos visitar

             D/F#
Nos fazer queimar

      G        Em7  G  Em7
De novo, de novo

[Segunda parte]

[Dedilhado - Segunda Parte]

G
  Manda Teu fogo, manda Teu fogo

Em7
    Queima de novo, queima de novo

G
  Manda Teu fogo, manda Teu fogo

Em7
    Queima de novo, queima de novo

G
  Manda Teu fogo, manda Teu fogo

Em7
    Queima de novo, queima de novo

G
  Manda Teu fogo, manda Teu fogo

Em7
    Queima de novo

[Refrão Final]

[Dedilhado - Refrão Final]

G
Foi a Tua presença

         D
Que nos trouxe aqui, Senhor

            C9
Não desistiremos

             Em7       D/F#
De te perseguir até Te encontrar

         G
Diante da Tua glória

            D
Não podemos   ficar de pé

         C9         Em7
Mostra quem Tu és vem nos visitar

            D/F#
Nos fazer queimar

      G  Em7  G  Em7
De novo',
  to_tsvector('portuguese', 'Queima de Novo ' || '')
),
(
  'colo-de-deus-mistica-sublime',
  'Mística Sublime',
  'Comunidade Católica Colo de Deus',
  'Comunidade Católica Colo de Deus',
  'C',
  68,
  '4/4',
  'Worship Eucarístico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Jo 6, 51; Lc 1, 38',
  'popular',
  '[Intro] F  Am  C  (2x)

[Primeira Parte]
F
Mística sublime, Te receber
Am         C
Ter comunhão
F
Ter correndo em mim Teu sangue, Deus
Am         C
Estou em comunhão
F
Alguém dirá que um Deus
Am
Tão grande assim não se dará
G
Por mim?
F
O que os meus olhos veem
Am         C
Não é o que minh''alma diz!

[Refrão]
F
Já não é mais vinho, não
Am         G
É o sangue do meu Deus
F
Já não é mais pão aqui
Am
É o corpo do meu Amor
C
Do meu Amor!

F
E neste lugar, eu posso dizer
Am
Estás dentro de mim
C
E eu dentro de Você!

F
Agora nós dois somos um
Am         G
Agora nós dois somos um!',
  to_tsvector('portuguese', 'Mística Sublime ' || '')
),
(
  'colo-de-deus-casa',
  'Casa (Fica à Vontade)',
  'Comunidade Colo de Deus',
  'Comunidade Colo de Deus',
  'A',
  68,
  '4/4',
  'Balada de Intimidade',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Jo 14, 23; Ap 3, 20',
  'popular',
  '[Intro] Am7  F7M  C

        Am7  F7M  C

[Primeira Parte]

         Am7          F7M
Andei falando de Você

         C
Andei falando do que Você fez em mim

         Am7
E eles perguntaram

      F7M              C
Como pode Deus amar assim?

         Am7          F7M
Andei falando de Você

           C
Andei mostrando o que o amor fez em mim

    C/B       Am
E eles perguntaram

           F7M              C
Que Deus é esse e onde Ele mora?

[Pré-Refrão]

        Am7          F7M    C
E eu falei que Você mora aqui

              C/B  Am7
Que você mora em  mim

         F7M
Tá destruída

         C
Mas eu sou a Tua casa, casa

      Am7          F7M     C
Eu falei que Você me escolheu

           C/B  Am7
E decidiu mo___rar

         F7M
Eu só falei que é amor

      C7M
Só falei que é amor

[Refrão]

            Am7
Eu não mereci

          F7M            C
Foi Tua graça que me salvou

         G
Que me escolheu

         Am7
E eu Te recebi

           F7M               C7M
Foi pela graça que agora eu sei

         G
Tua casa sou eu

[Terceira Parte]

    F7M              C
Eu não consigo entender, tá tudo bem

        Am7            G
Pode morar, serei Tua casa

    F7M              C
Eu não consigo entender, tá tudo bem

        Am7            G4  G
Pode morar, serei Tua casa

    F7M              C
Eu não consigo entender, tá tudo bem

        Am7            G4  G
Pode morar, serei Tua casa

    F7M              C
Eu não consigo entender, tá tudo bem

        Am7            G4  G
Pode morar, serei Tua casa

[Refrão]

            Am7
Eu não mereci

          F7M            C
Foi Tua graça que me salvou

         G
Que me escolheu

         Am7
E eu Te recebi

           F7M               C7M
Foi pela graça que agora eu sei

         G
Tua casa sou eu

[Ponte]

    F7M              C
Eu não consigo entender, tá tudo bem

        Am7            G4
Pode morar, serei Tua casa

[Quarta Parte]

     F7M  C
Pra sem_pre

     Am7  G
Pra sem_pre

     F7M  C
Pra sem_pre

           Am7  G
Serei Tua ca___sa

     F7M  C
Pra sem_pre

     Am7  G
Pra sem_pre

     F7M  C
Pra sem_pre

           Am7  G
Serei Tua ca___sa

[Refrão]

            Am7
Eu não mereci

          F7M            C
Foi Tua graça que me salvou

         G
Que me escolheu

         Am7
E eu Te recebi

           F7M               C7M
Foi pela graça que agora eu sei

         G
Tua casa sou eu

[Final]

    F7M              C
Eu não consigo entender, tá tudo bem

        Am7            G4
Pode morar, serei Tua casa',
  to_tsvector('portuguese', 'Casa (Fica à Vontade) ' || '')
),
(
  'colo-de-deus-eis-me-aqui',
  'Eis-Me Aqui (Colo de Deus)',
  'Comunidade Colo de Deus',
  'Comunidade Colo de Deus',
  'D',
  72,
  '4/4',
  'Balada Vocacional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ofertório',
  'Tempo Comum',
  'Is 6, 8',
  'popular',
  '[Intro] D  A  Bm  G

[Primeira Parte]
   D         A
1. Ouvi a Tua voz chamando no silêncio:
   Bm            G
"Quem enviarei? Quem irá por nós?"
   D         A
Toquei os meus lábios na brasa do altar,
   Bm       G         A
Não posso me calar, quero Te anunciar!

[Refrão]
   D         A
Eis-me aqui, Senhor! Envia-me a mim!
   Bm         G
Usa a minha vida do começo até o fim!
   D         A
Onde houver escuridão, Tua luz vou levar:
   Bm    G         A           D
Eis-me aqui, Jesus, pronto para amar!

[Segunda Parte]
   D         A
2. Não olho para trás, meu tesouro está no Céu,
   Bm     G         A           D
Serei em tuas mãos um servo sempre fiel!',
  to_tsvector('portuguese', 'Eis-Me Aqui (Colo de Deus) ' || '')
),
(
  'colo-de-deus-abba-pai',
  'Abba Pai',
  'Comunidade Colo de Deus',
  'Comunidade Colo de Deus',
  'A',
  70,
  '4/4',
  'Adoração Filial',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Rm 8, 15; Gl 4, 6',
  'popular',
  '[Intro] A  E  F#m  D

[Primeira Parte]
   A         E
1. Não recebi um espírito de escravidão
   F#m         D
Para viver outra vez dominado pelo temor;
   A         E
Mas recebi o Espírito de adoção filial,
   F#m        D         E
Que clama dentro de mim com infinito amor!

[Refrão]
   A         E
Abba, Pai! Eu sou Teu filho amado!
   F#m            D
Abba, Pai! Por Teu Sangue resgatado!
   A         E
Em Teus braços eternos seguro eu estou:
   F#m    D         E           A
Abba, Pai, fonte de todo amor!

[Segunda Parte]
   A         E
2. Ainda que eu andasse longe da Tua casa,
   F#m     D         E           A
Correste ao meu encontro e me deste nova vida!',
  to_tsvector('portuguese', 'Abba Pai ' || '')
),
(
  'colo-de-deus-a-paz-que-o-mundo-nao-me-da',
  'A Paz Que o Mundo Não Me Dá',
  'Comunidade Colo de Deus',
  'Comunidade Colo de Deus',
  'G',
  72,
  '4/4',
  'Balada da Paz',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Páscoa',
  'Jo 14, 27; Fl 4, 7',
  'popular',
  '[Intro] G  D  Em  C

[Primeira Parte]
   G         D
1. Procurei em tantos lugares acalmar o meu interior,
   Em         C
Mas só encontrei vazio longe de Ti, Senhor;
   G         D
Quando olhei para a Tua Cruz e ouvi o Teu perdão,
   Em        C         D
Uma paz inexplicável inundou meu coração!

[Refrão]
   G         D
Tu és a paz que o mundo não me dá!
   Em         C
Tu és a alegria que ninguém pode roubar!
   G         D
Em meio à tempestade, seguro em Ti estou:
   Em    C         D           G
Jesus, minha Paz, meu Salvador!

[Segunda Parte]
   G         D
2. Não se perturbe o coração nem tenha medo algum,
   Em      C         D           G
Pois quem habita em Cristo jamais caminha só!',
  to_tsvector('portuguese', 'A Paz Que o Mundo Não Me Dá ' || '')
),
(
  'colo-de-deus-desperta',
  'Desperta (Levanta-te)',
  'Comunidade Colo de Deus',
  'Comunidade Colo de Deus',
  'E',
  118,
  '4/4',
  'Pop Rock Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Ef 5, 14; Is 60, 1',
  'popular',
  '[Intro] E9  B4  C#m7  A9

[Primeira Parte]

E9    B4
Aviva    o meu coração

    C#m7        A9
Cansado de esperar

         E9     B4
Religa Tua vida em mim

 C#m7        A9
Tua vida em mim

    E9   B4
Desperta

         C#m7   A9
Tu que dormes na escuridão

         E9           B4  C#m7  A9
Vem ouvir as trombetas de Sião

[Refrão]

     C#m7(9)  B4
Proclama

         A9
Que Jesus voltando está

              C#m7(9)  B4
Que o Seu Reino não findará

         A9
Que o cordeiro é o Leão

Que no trono está

     C#m7(9)  B4
Proclama

         A9
Que Jesus voltando está

              C#m7(9)  B4
Que o Seu Reino não findará

         A9
Que o cordeiro é o Leão

Que no trono está

[Segunda Parte]

C#m7(9)                 B4
        Escuta povo meu

Sou a promessa das nações

A9
   Vou levantar você

                  C#m7(9)
Para ser a minha voz

         B4
E ser as minhas mãos

         A9
E hoje nessa geração

Te escolhi, és meu!

C#m7(9)                 B4
        Escuta povo meu

Sou a promessa das nações

A9
   Vou levantar você

                  C#m7(9)
Para ser a minha voz

         B4
E ser as minhas mãos

         A9
E hoje nessa geração

Te escolhi, és meu!

[Interlúdio] C#m7(9)  B4  A9  B4

             C#m7(9)  B4  A9  B4

             C#m7(9)  B4  A9  B4

             C#m7(9)  B4  A9  B4

[Refrão]

     C#m7(9)  B4
Proclama

         A9
Que Jesus voltando está

              C#m7(9)  B4
Que o Seu Reino não findará

         A9
Que o cordeiro é o Leão

Que no trono está

     C#m7(9)  B4
Proclama

         A9
Que Jesus voltando está

              C#m7(9)  B4
Que o Seu Reino não findará

         A9
Que o cordeiro é o Leão

Que no trono está

[Terceira Parte]

    E9     B4
Vou avivar    o teu coração

    C#m7(9)      A9
Cansado de esperar

           E9         B4
Vou te atrair, te conquistar

                   C#m7(9)  A9
Desperta, é tempo de mudar

         E9
Desperta, é tempo de mudar',
  to_tsvector('portuguese', 'Desperta (Levanta-te) ' || '')
),
(
  'irma-kelly-patricia-passarinho',
  'Passarinho',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'G',
  72,
  '4/4',
  'Balada Contemplativa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Ação de Graças',
  'Qualquer',
  'Sl 83, 4; Mt 6, 26',
  'popular',
  '[Intro] C  F  G

        C  F  G  Am

Am         F         G   Am
  É loucura muito minha, Senho_or, esperar que o teu Amor

 F         G         Am
  Depois de todos os desmandos me aceite como sou

Am         F         G         Am
  É loucura muito minha, Senho_or, esperar com terno ardor

 F         G     Am  A
  Que em minhas limitações faças loucuras de amor

          F          G
Águia não sou, meu Senhor

                  C     G/B  Am
Dela trago, tão somente, o olhar

     F            G      C     A
E também, no coração, a aspiração do seu voar, voar

         F            G    C   G/B  Am
Quero em meu posto ficar a fitar o Sol do Amor, do Amor

     F          G         Am
Passarinho é o que eu sou nas mãos do meu Senhor

( F  G  C )

( F  G  Am )

( F  G  C )

( F  G  Am )

Am         F         G    Am
  E quando, da vida, Senho_or, o Sol do Amor se ausentar

 F         G
  Não vou me preocupar, porque sei

         Am
Por entre as nuvens Ele está a brilhar

Am         F         G         Am
  E em mim, nascerá, Senho_or, do amor a perfeita alegria

 F            G         Am    A
  E em tuas asas, então, voarei na mais perfeita harmonia

          F          G
Águia não sou, meu Senhor

                  C     G/B  Am
Dela trago, tão somente, o olhar

     F            G      C     A
E também, no coração, a aspiração do seu voar, voar

         F            G    C   G/B  Am
Quero em meu posto ficar a fitar o Sol do Amor, do Amor

     F      G           Am      F
Passarinho é o que eu sou nas mãos do meu Senhor

          F          G
Águia não sou, meu Senhor

                  C     G/B  Am
Dela trago, tão somente, o olhar

     F            G      C     A
E também, no coração, a aspiração do seu voar, voar

         F            G    C   G/B  Am
Quero em meu posto ficar a fitar o Sol do Amor, do Amor

     F      G           Am      G
Passarinho é o que eu sou nas mãos do meu Senhor',
  to_tsvector('portuguese', 'Passarinho ' || '')
),
(
  'irma-kelly-patricia-via-sacra',
  'Via Sacra (Pela Via Dolorosa)',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Em',
  68,
  '4/4',
  'Balada Quaresmal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  12,
  'Comunhão',
  'Quaresma',
  'Is 53, 4-5; Lc 23, 26-34',
  'popular',
  '[Intro]

     Em7          D         C         B4 B7
E|---------------------------------------| 
B|---7-8---7---7------7--8-7-------7-----| 
G|-9---------9----7-9--------9-------9-8-| 
D|-----------------------------10--------| 
A|---------------------------------------| 
E|---------------------------------------| 

      Em7         D
E|---------------------------------------| 
B|----------------------------10/12-10---| 
G|----------------------7p9-7----------11| 
D|--------------7-7p9-7------------------| 
A|---7-9-10-9-10-------------------------| 
E|-0-------------------------------------| 

                  C*
E|----------10--15-14-12-12/10-10-10/8-8-| 
B|-------10------------------------------| 
G|----11---------------------------------| 
D|-12------------------------------------| 
A|---------------------------------------| 
E|---------------------------------------| 

      B7
E|-7-5-------------------------------------| 
B|-----8-7-5-------------------------------| 
G|-----------7-5-4-------------------------| 
D|-----------------------------------------| 
A|-----------------------------------------| 
E|-----------------------------------------| 

 Em7            D         C
Senhor, pela Tua paixão, no abandono da Cruz

       B4
Tem piedade de nós

   Em         D
Jesus, pelo sangue jorrado do Teu coração

         C            B4
Pelo Teu sacrifício, misericórdia

 Em         C
Deus Santo, Deus Forte

 D4         D      Em
Deus Imortal e de Poder

Em         Am7
Nós te adoramos, Te bendizemos

     D4      D       Em
Te glorificamos, ó Senhor

 C         D
Deus Pai, Vos ofertamos

    C         D  B7
O Corpo e o Sangue de Cristo

Em         D
Sua Alma e sua Divindade

C         B4  B7
Em expiação dos nossos pecados',
  to_tsvector('portuguese', 'Via Sacra (Pela Via Dolorosa) ' || '')
),
(
  'irma-kelly-patricia-prisioneiro-do-amor',
  'Prisioneiro do Amor',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'D',
  70,
  '4/4',
  'Adoração Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  11,
  'Comunhão',
  'Tempo Comum',
  'Jo 6, 51; Lc 22, 19',
  'popular',
  '[Intro] E  E7M  E

        E7M  A/E  Am/E

E B4         F#m7       B4     E
Ah, como é bom sentir a doce paz

     B/D#     F#m7     B4
E o amor que é suave me leva a sorrir

E  B/D#     F#m     B4      Cº     C#m7
É, você chegou qual ladrão, me fitou

 G#m7       F#m7    B4
E roubou para si o meu coração

E  B4     F#m7
E agora, sem forças

B4        E
    Eu sou prisioneira

  B/D#        F#m7
Do mais belo amor

   B4    F#m7        B4
Do doce Jesus, do meu bem da cruz

E  B/D#    F#m7
E agora, sem forças

B4        C°          C#m7
    Eu sou      prisioneira

  G#m7         F#m7
Do mais belo amor

   B4    F#m7    B4
Do doce Jesus, do meu bem da cruz

   E  B4  A/E  Am/E
Jesus!',
  to_tsvector('portuguese', 'Prisioneiro do Amor ' || '')
),
(
  'irma-kelly-patricia-morada',
  'Morada (Faz em Mim Tua Morada)',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'C',
  70,
  '4/4',
  'Balada Contemplativa',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Jo 14, 23',
  'popular',
  '[Intro] C  G  Am  F

[Primeira Parte]
   C         G
1. Ó meu Deus, Trindade que adoro, ajuda-me a esquecer-me inteiramente
   Am         F
Para estabelecer-me em Ti, imóvel e serena,
   C         G
Como se a minha alma já estivesse na eternidade,
   Am        F         G
E nada possa perturbar a Tua paz em mim!

[Refrão]
   C         G
Faz em mim Tua morada, ó Trindade de Amor!
   Am         F
Que eu seja o Teu céu na terra, Teu descanso, Senhor!
   C         G
Adorar-Te em espírito e verdade a cada respirar:
   Am     F         G           C
Para sempre em Teu coração quero habitar!

[Segunda Parte]
   C         G
2. Ó Fogo consumidor, Espírito de Amor, vem sobre mim,
   Am        F         G           C
Para que em minha alma se faça uma encarnação do Verbo!',
  to_tsvector('portuguese', 'Morada (Faz em Mim Tua Morada) ' || '')
),
(
  'irma-kelly-patricia-viver-de-amor',
  'Viver de Amor (Santa Teresinha)',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'A',
  72,
  '4/4',
  'Balada Carmelita',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  3,
  'Comunhão',
  'Tempo Comum',
  '1Cor 13, 1-13; Jo 15, 9',
  'popular',
  'Intro. Em  C  D  Em

Em            C    D       Em
Viver de amor é dar sem medida sem

      C           D  Em
na terra salário reclamar.

         C
Ah! sem contar  eu dou, pois

         D
convencida de que quem ama

Em         C  D
não sabe calcular. (bis)

Em         C          D
Ao divino Coração transbordante de

  Em         C         D Em
fineza. Eu dei tudo e leve corro com ardor.

 Em         C    D    Em       C  D
Não tenho mais que minha única riqueza:  viver de amor! (bis)

Em         C      D         Em
Viver de amor é banir todo temor

         C         D Em
toda lembrança das faltas do passado,

Em         C         D      Em
de meus pecados, vestígio algum eu vejo, eu vejo,

         C        D     Em   C D
Ao fogo divino um a um foi apagado.

Em           C         D Em
Chama sagrada, ó dulcíssima fornalha.

         C         D   Em
Minha morada eu fixo em teu ardor

         C           D    Em      C  D
Jesus, é aí, que eu canto com alegria: eu vivo de amor! (bis)

Em         C         D       Em
Viver de amor, que estranha loucura,

         C          D Em
diz-me o mundo, ah! cessa de cantar,

         C
não percas teu perfume, tua vida

D         Em         C D
utilmente procura empregar. (bis)

Em        C        D       Em
Amar-te, Jesus, que perda fecunda!

         C    D  Em
Todos os meus perfumes são teus, pra sempre

         C
Eu vou cantar ao sair deste

           D       Em
mundo: eu morro de amor! (bis)',
  to_tsvector('portuguese', 'Viver de Amor (Santa Teresinha) ' || '')
),
(
  'irma-kelly-patricia-buscai-as-coisas-do-alto',
  'Buscai as Coisas do Alto (Colossenses 3, 1)',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'G',
  96,
  '4/4',
  'Pop Contemplativo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Páscoa',
  'Cl 3, 1-4',
  'popular',
  '[Intro] G  D  Em  C

[Refrão]
   G         D
Buscai as coisas do alto, onde Cristo está sentado à direita de Deus!
   Em         C
Pensai nas coisas do alto, não nas que são daqui da terra!
   G       D         C           G
Pois a nossa pátria definitiva está nos Céus!

[Primeira Parte]
   G         D
1. Se ressuscitastes com Cristo para uma vida nova,
   Em         C
Caminhai na luz da graça que tudo renova!
   G         D
Vossa vida está escondida com Cristo em Deus:
   Em      C         D           G
Quando Ele se manifestar, brilhareis na glória!

[Segunda Parte]
   G         D
2. Revesti-vos de bondade, mansidão e caridade,
   Em       C         D           G
E a paz de Cristo reine sempre em vossos corações!',
  to_tsvector('portuguese', 'Buscai as Coisas do Alto (Colossenses 3, 1) ' || '')
),
(
  'irma-kelly-patricia-soberano-rei',
  'Soberano Rei (São Miguel Arcanjo)',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Irmã Kelly Patrícia / Instituto Hesed',
  'Am',
  92,
  '4/4',
  'Marcha Épica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Ap 12, 7-9; Dn 12, 1',
  'popular',
  '[Intro] Am  F  C  G

[Primeira Parte]
   Am         F
1. Quem como Deus? Ninguém é como o Senhor dos Exércitos!
   C         G
Levanta-se no Céu o Príncipe da milícia celeste!
   Am         F
Com a espada da verdade e o escudo da fé,
   C          G         Am
Defende a Santa Igreja que permanece de pé!

[Refrão]
   Am          F
Soberano Rei é o Senhor Jesus!
   C         G
Venceu as trevas pelo Sangue da Sua Cruz!
   Am         F
São Miguel Arcanjo, defendei-nos no combate:
   C       G         Am
Quem como Deus? Só o Senhor é Deus!

[Segunda Parte]
   Am         F
2. Seja nosso amparo contra as ciladas do inimigo,
   C          G         Am
Conduzindo o povo eleito ao eterno abrigo!',
  to_tsvector('portuguese', 'Soberano Rei (São Miguel Arcanjo) ' || '')
),
(
  'pe-fabio-de-melo-tudo-e-do-pai',
  'Tudo É do Pai',
  'Padre Fábio de Melo / Frederico Cruz',
  'Padre Fábio de Melo / Frederico Cruz',
  'B',
  72,
  '4/4',
  'Balada MPB Católica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  15,
  'Ação de Graças',
  'Tempo Comum',
  'Lc 15, 11-32',
  'popular',
  '[Intro] B  F#/A#  G#m  E

        C#m  F#4  F#

B      F#/A#     G#m   E

C#m         F#4      F#

[Primeira Parte]

       B               F#/A#
Eu pensei que podia viver

         G#m  B/F#
Por mim mesmo

       C#m                  C#m/B
Eu pensei que as coisas do mundo

      F#
Não iriam me derrubar

     B           F#/A#
O orgulho tomou conta

        G#m  B/F#
Do meu ser

       C#m       C#m/B       F#
E o pecado devastou o meu viver

[Pré-Refrão]

       E         F#
Fui embora, disse ao Pai

         D#m  G#m
Dá-me o que é meu

         C#m
Dá-me a parte

        F#           B  B7
Que me cabe da herança

         E         F#
Fui pro mundo, gastei tudo

       D#7   Gº   G#m
Me restou só o pecado

           C#m            F#
E hoje eu sei que nada é meu

           B  F#
Tudo é do Pai

[Refrão]

           B
Tudo é do Pai

      F#/A#           G#m
Toda honra e toda a glória

   B/F#     C#m
É dEle a vitória

      C#m/B         F#
Alcançada em minha vida

           B
Tudo é do Pai

         F#/A#      G#m
Se sou fraco e pecador

          B/F#             C#m
Bem mais forte é o meu Senhor

        F#        B  F#
Que me cura por amor

           B
Tudo é do Pai

      F#/A#           G#m
Toda honra e toda a glória

   B/F#     C#m
É dEle a vitória

      C#m/B         F#
Alcançada em minha vida

           B
Tudo é do Pai

         F#/A#      G#m
Se sou fraco e pecador

          B/F#             C#m
Bem mais forte é o meu Senhor

        F#        B  E9/F#
Que me cura por amor

[Primeira Parte]

       B               F#/A#
Eu pensei que podia viver

         G#m  B/F#
Por mim mesmo

       C#m                  C#m/B
Eu pensei que as coisas do mundo

      F#
Não iriam me derrubar

     B           F#/A#
O orgulho tomou conta

        G#m  B/F#
Do meu ser

       C#m       C#m/B       F#
E o pecado devastou o meu viver

[Pré-Refrão]

       E         F#
Fui embora, disse ao Pai

         D#m  G#m
Dá-me o que é meu

         C#m
Dá-me a parte

        F#           B  B7
Que me cabe da herança

         E         F#
Fui pro mundo, gastei tudo

       D#7   Gº   G#m
Me restou só o pecado

           C#m            F#
E hoje eu sei que nada é meu

           B  F#
Tudo é do Pai

[Refrão Final]

           B
Tudo é do Pai

      F#/A#           G#m
Toda honra e toda a glória

   B/F#     C#m
É dEle a vitória

      C#m/B         F#
Alcançada em minha vida

           B
Tudo é do Pai

         F#/A#      G#m
Se sou fraco e pecador

          B/F#             C#m
Bem mais forte é o meu Senhor

        F#        B  F#
Que me cura por amor

           B
Tudo é do Pai

      F#/A#           G#m
Toda honra e toda a glória

   B/F#     C#m
É dEle a vitória

      C#m/B         F#
Alcançada em minha vida

           B
Tudo é do Pai

         F#/A#      G#m
Se sou fraco e pecador

          B/F#             C#m
Bem mais forte é o meu Senhor

        F#        E   B/D#  C#m  B
Que me cura por amor',
  to_tsvector('portuguese', 'Tudo É do Pai ' || '')
),
(
  'pe-fabio-de-melo-incendeia-minha-alma',
  'Incendeia Minha Alma',
  'Padre Fábio de Melo / Frei Gilson',
  'Padre Fábio de Melo / Rogério / Júlio / Intérprete: Frei Gilson',
  'C',
  74,
  '4/4',
  'Balada ao Espírito Santo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  22,
  'Ação de Graças',
  'Pentecostes',
  'Lc 12, 49; At 2, 1-4',
  'popular',
  '[Intro] C  Am  Dm7  G4

        C  Am  Dm7  G  G4

[Primeira Parte]

C           G/B         Am
  Espírito Santo, vinde

          G
Falar em mim

C           G/B         Am
  Espírito Santo, vinde

          G
Falar em mim

C           G/B         Am
  Espírito Santo, vinde

         G
Orar em mim

C           G/B         Am
  Espírito Santo, vinde

         G
Orar em mim

[Pré-Refrão]

    C/E  F               Am
Vinde curar, vinde libertar

            Dm      C/E  G
Nossos corações de toda  opressão

    C/E        F              Am
Vinde transformar, vem incendiar

         D7          G
Traz fogo do céu nesse lugar

[Refrão]

      C              G/B
Incendeia minha alma

      Am             Am/G
Incendeia minha alma

      F         C/E       G4  G
Incendeia minha alma, Senhor

      C              G/B
Incendeia minha alma

      Am             Am/G
Incendeia minha alma

      F         C/E       G4  G
Incendeia minha alma, Senhor

[Solo] Am  Am7/G  F  G

       Am  Am7/G  C/E  F/C

       F/G  F5-/G

[Primeira Parte]

C           G/B         Am
  Espírito Santo, vinde

          G
Falar em mim

C           G/B         Am
  Espírito Santo, vinde

         G
Orar em mim

[Pré-Refrão]

         F         Am
Vinde curar, vinde libertar

            Dm      C/E  G
Nossos corações de toda  opressão

    C/E        F              Am
Vinde transformar, vem incendiar

         D7          G
Traz fogo do céu nesse lugar

Nesse lugar

[Refrão]

      D              D/C#
Incendeia minha alma

      Bm             Bm/A
Incendeia minha alma

      G         D/F#       A4  A
Incendeia minha alma, Senhor

      D              D/C#
Incendeia minha alma

      Bm             Bm/A
Incendeia minha alma

      G         D/F#       A4  A
Incendeia minha alma, Senhor',
  to_tsvector('portuguese', 'Incendeia Minha Alma ' || 'Padre Fábio de Melo / Frei Gilson')
),
(
  'pe-fabio-de-melo-vida',
  'Vida (Já Não Sei Viver Sem Teu Amor)',
  'Padre Fábio de Melo',
  'Padre Fábio de Melo',
  'F#',
  74,
  '4/4',
  'Balada Poética',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  11,
  'Ação de Graças',
  'Qualquer',
  'Jo 14, 6; Jo 10, 10',
  'popular',
  '(intro) F#m F#m/E D D/F# C#

F#m         E
Pelas ruas da cidade, pessoas andam no vai e vem

         D9
Não vêem o cair da tarde, dando os seus passos como um reféns

  D/F#                  C#7
De uma vida sem saída, vida sem vida, mal ou bem

F#m         E
Pelos bancos desses parques, ninguém se toca sem perceber

         D9
Que onde o sol se esconde o horizonte tenta dizer

 D/F#                   C#7
Que há sempre um novo dia, a cada dia em cada ser

         Bm7               C#7          F#m  F#m/E
Não é preciso uma verdade nova, uma aventura,

           Bm7    C#7         F#m   F#7
Para encontrar nas luzes que se acendem um brilho eterno

          Bm7               C#7            F#m   F#m/E
E dar as mãos e dar de se além do próprio gesto

        Bm7      C#7           F#m
E descobrir feliz que o amor esconde outro universo

F#m         E
Pelos becos pelos bares pelos lugares que ninguém vê

         D
Há sempre alguém querendo uma esperança sobreviver

                   D/F#    C#7
Cada rosto é um espelho e um desejo de ser de ter

         Bm7               C#7           F#m F#m/E
Não é preciso uma verdade nova, uma aventura,

          Bm7    C#7         F#m  F#7
Para encontrar nas luzes que se acendem um brilho eterno

         Bm7         C#7         F#m
E dar as mãos e dar de se além do próprio gesto

       Bm7       C#7           F#m
E descobrir feliz que o amor esconde outro universo

D               D/F#            C#7
Cada rosto é um espelho de um desejo de ser de ter

            Bm7              C#7          F#m  F#m/E
Talvez quem sabe por essa cidade passe um anjo

         Bm7         C#7           F#m   F#7
E por encanto abra suas asas sobre os homens

      Bm7      C#7           F#m
E ter vontade de se dar aos outros sem medida

      Bm7         C#7        F#m
A qualidade de poder viver vida,vida

Bm     F#m
Vida Vida',
  to_tsvector('portuguese', 'Vida (Já Não Sei Viver Sem Teu Amor) ' || '')
),
(
  'pe-fabio-de-melo-direcao',
  'Direção',
  'Padre Fábio de Melo',
  'Padre Fábio de Melo',
  'D',
  72,
  '4/4',
  'Balada Poética',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  false,
  6,
  'Ofertório',
  'Tempo Comum',
  'Sl 24, 4; Pr 3, 5-6',
  'popular',
  '[Intro] D  G  D  G  Em  A

[Primeira Parte]
D
Tens o dom de ver estradas
G
Onde eu vejo o fim
D
Me convences quando falas:
G      A
"Não é bem assim!"
Em
Se me esqueço, me recordas
A
Se não sei, me ensinas
Em      G
E se perco a direção
A
Vens me encontrar!

[Refrão]
D
Quando a solidão doeu em mim
Bm
Quando o meu passado não passou por mim
Em
Quando eu não soube compreender a vida
A
Tu vieste compreender por mim!

D
Quando os meus olhos não podiam ver
Bm
Tua mão segura me ajudou a andar
Em
Quando eu não tinha mais amor no peito
A
Teu amor me ajudou a amar!

D      G
Que Deus me ama, que não estou só
Em
Que Deus cuida de mim
A
Quando fala pela tua voz
D
Que me diz: Coragem!',
  to_tsvector('portuguese', 'Direção ' || '')
),
(
  'pe-fabio-de-melo-seja-bem-vindo',
  'Seja Bem-Vindo',
  'Padre Fábio de Melo',
  'Padre Fábio de Melo',
  'G',
  98,
  '4/4',
  'Pop Acolhida',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Rm 15, 7; Sl 132',
  'popular',
  '[Intro] G  D  Em  C

[Primeira Parte]
   G         D
1. Que alegria ver você chegar aqui neste lugar,
   Em         C
Onde o amor de Jesus Cristo vem nos abraçar!
   G         D
Deixe lá fora toda tristeza e preocupação,
   Em       C         D
Abra um sorriso e prepare o coração!

[Refrão]
   G            D
Seja bem-vindo à casa do Senhor!
   Em         C
Aqui você é acolhido com carinho e com amor!
   G           D
Somos família reunida pela fé:
   Em    C         D           G
Seja bem-vindo, Deus te ama como és!

[Segunda Parte]
   G         D
2. Como é bom e agradável os irmãos viverem em união,
   Em      C         D           G
Onde o Senhor derrama a bênção e a salvação!',
  to_tsvector('portuguese', 'Seja Bem-Vindo ' || '')
),
(
  'pe-fabio-de-melo-solo-sagrado',
  'Marcas do Eterno (Solo Sagrado)',
  'Padre Fábio de Melo',
  'Padre Fábio de Melo',
  'C',
  74,
  '4/4',
  'Balada de Consagração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  false,
  8,
  'Ação de Graças',
  'Qualquer',
  'Ex 3, 5; Sl 98',
  'popular',
  '[Intro] C  G/C  Am  Dm  G4  G

[Primeira Parte]
C          G/C        Am
Antes de você entrar na minha vida
Dm              Dm/C
De se decidir por mim
G/B
Por minha história
F              C/E
Haverá de ter clareza de saber bem
Am
Quem eu sou
Dm         Dm7
Pra depois não me dizer
G4       G7
Ter se enganado

C              G/B     Am
Eu não posso ser o que você quiser
F             C/E     Dm7
Sou bem mais do que os seus olhos podem ver
F              C/E     Am
Se quiser seguir comigo, eu lhe estendo a mão
Dm       G4        G     C
Mas não pode um só momento se esquecer

[Refrão]
G        C
Sou consagrado ao meu Senhor
         G/B        Am
Solo sagrado eu sei que sou
         F          Dm
Vida que o céu sacramentou
         G
Marcas do eterno estão em mim!

G        C
Antes do seu amor chegar
         G/B        Am
Um outro amor já me encontrou
         F          Dm
E me envolveu com tanta luz
         G         C
Que já não posso me esquecer!',
  to_tsvector('portuguese', 'Marcas do Eterno (Solo Sagrado) ' || '')
),
(
  'celina-borges-tudo-posso',
  'Tudo Posso (Naquele Que Me Fortalece)',
  'Celina Borges',
  'Celina Borges',
  'G',
  72,
  '4/4',
  'Balada Bíblica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  18,
  'Ação de Graças',
  'Tempo Comum',
  'Fl 4, 13; 2Cor 12, 9-10',
  'popular',
  '[Intro] Em  D  C

        Am  G  D

        C  G/B  Am  D

        C  G/B  Am  Am/G  D

G           D/F#    C    Em  D
Posso, tudo posso Naquele que me fortalece

C           G/B                Am          D
Nada e ninguém no mundo vai me fazer de...sis ..tir

G           D/F#       C      Em  D
Quero, tudo quero, sem medo entregar meus projetos

C                 G/B           Am           D
Deixar-me guiar nos caminhos que Deus desejou   pra    mim   e ali estar

          G          D/F#    C           D
Vou perseguir tudo aquilo que Deus já escolheu pra mim

           G     D/F#                C
Vou persistir, e mesmo nas marcas daquela dor

   G/B                  Am    D
Do que ficou, vou me lembrar

       G     D/F#     C          D
E realizar o sonho mais lindo que Deus sonhou

Eb°      Em             Bm      C
Em meu lugar estar na espera de um novo que vai chegar

     G/B          Am               D    Em  D/F#
Vou persistir, continuar   a  esperar   e   crer

D  C           G/B        Am    Am/G    D/F# D     C
E mesmo quando a visão se turva   e o   coração só chora

       G/B         Am     Am/G    D
Mas na alma, há certeza   da    vitória

G           D/F#    C    Em  D
Posso, tudo posso Naquele que me fortalece

C           G/B                Am          D
Nada e ninguém no mundo vai me fazer de...sis ..tir

          G          D/F#    C           D
Vou perseguir tudo aquilo que Deus já escolheu pra mim

           G     D/F#               C
Vou persistir, e mesmo nas marcas daquela dor

   G         Am    D
Do que ficou, vou me lembrar

       G     D/F#          C                D
E realizar o sonho mais lindo que Deus sonhou... ouoou

Eb°      Em             Bm      C
Em meu lugar estar na espera de um novo que vai chegar

     G/B         Am               D    Em  D/F#
Vou insistir, continuar   a  esperar   e   crer

D  C           G/B        Am      Am/G  D/F# D     C
E mesmo quando a visão se turva   e o   coração só chora

       G/B         Am     Am/G    D
Mas na alma, há certeza   da    vitória

SOLO: Eb  F  G - Eb - F - D4 - D

C            G/B        Am     Am/G  D/F# D     C
Mesmo quando a visão se turva  e o   coração só chora

       G/B         Am   Am/G    D
Mas na alma, há certeza    da vitória Eu vou

  CM7         G9/B              Am7           D
Sofrendo, mas seguindo enquanto tantos não entendem

D/B    CM7            G9/B           Am7
Vou cantando minha história, profetizando

       C/D          CM7   G9/B   Am7   D            G
Que eu posso, tudo posso...            em Jesu..uus',
  to_tsvector('portuguese', 'Tudo Posso (Naquele Que Me Fortalece) ' || '')
),
(
  'celina-borges-nas-asas-do-senhor',
  'Nas Asas do Senhor',
  'Celina Borges',
  'Celina Borges',
  'G',
  74,
  '4/4',
  'Balada de Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  16,
  'Ação de Graças',
  'Tempo Comum',
  'Is 40, 31; Sl 90',
  'popular',
  'Introdução] G  C  Am  D

G          D9/F#
Sei que os que confiam no Senhor

         Em    C
Revigoram suas forças, suas forças se renovam

 G             D9/F#           Em
Posso até cair ou vacilar, mas consigo levantar

         C
Pois recebo dele asas

       Am         D
E como águia, me preparo pra voar

         G        D9/F#        Em
Eu posso ir muito além de onde estou

         C
Vou nas asas do Senhor

       G/B      Am       D
O Teu Amor é o que me conduz

    G         D/F#     Em
Posso voar e subir sem me cansar

              C      G/B
Ir pra frente sem me fatigar

        Am          D
Vou com asas,como águia

         G  C D
Pois confio no Senhor!

         Em      D
Pois confio no Senhor! Uô-ô-ô

           C         D         B7
Que me dá forças pra ser um vencedor-ô

         Em
Nas asas do Senhor

     Am     D
Vou voar! Voar

         A         E/G#       F#m
Eu posso ir muito além de onde estou

         D
Vou nas asas do Senhor

      A/C#    Bm         E
O Teu amor é o que me conduz

        A        E/G#        F#m/E
Posso voar e subir sem me cansar

          D      A/C#
Ir pra frente sem me fatigar

         Bm          E
Vou com asas,  como águia

         A
Pois confio no Senhor!',
  to_tsvector('portuguese', 'Nas Asas do Senhor ' || '')
),
(
  'celina-borges-diamante',
  'Diamante (Lapidado por Deus)',
  'Celina Borges',
  'Celina Borges',
  'C',
  72,
  '4/4',
  'Balada Espiritual',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  23,
  'Ofertório',
  'Tempo Comum',
  'Ml 3, 3; Is 43, 4',
  'popular',
  '(intro) ( G A/G Am7 D4 D G Esus Em7 Am9 Dsus )

       G         A
Às vezes eu não entendo as coisas que me acontecem

      C         G     Dsus4
Sem explicação me vejo sofrendo

  G         A
Ferido eu não enxergo as faces do sofrimento

       C         D4    D
Tanta confusão, meus pensamentos

Am7          D4                G7M
Ah! Se eu pudesse... voltar atrás um pouco no tempo

Am7           D4    D         G
Ah! Se eu pudesse   rever uns erros, amigo e coisas do início

Bb         Dm
Mas entendo Senhor       que me forma com amor

Bb         D4 D
Pedra bruta eu sou

 G         A
Deus está pronto a me lapidar

    C         D4      D
Seu ponto de partida é sempre o meu nada

 G         Em9
Quer me dar o fruto da intimidade

  Am7(9)             G/B        Cm  D4  D
Na dor Ele me ensina,       me acalma e reanima

 G         A
Quer me olhar, seus olhos querem me encontrar

    C         D4       D
Em festa ele me espera, me aguarda e esse alegra!!!

G/B              Em7(9)
Quer falar segredos ao meu coração

    Am7(9)      Cm6/D       Am    Em D Am Em D
Preciso ouvir a Deus, estar em oração

    G         A
Às vezes eu não entendo, o tanto que estou sofrendo

          C            G
Deus quer me ensinar, eu sigo aprendendo

    G         A
Rendido então me dobro, me lanço,  me jogo e me prostro

C         D4 D
aos seus pés quero descansar

Am7(9)        D                 G7M
Ah! Se eu parasse... Pra falar um tanto mais com Deus meu amigo

Am            D                 G7M
Ah! Se eu pudesse, amar um tanto mais        quem aqui já não existe

Bb         Dm          Bb   Dm
Mas agora é você...    Não se deixe perder...  Recomece a amar... (Segue adiante)

Bb           Dm           Bb Gm            D
Deixa Deus lapidar!      Deixa Deus te tornar              um precioso diamante

G         A
Deus está pronto a me lapidar

    C         D4          D
Seu ponto de partida é sempre o meu nada

 G/B              Em9
Quer me dar o fruto da intimidade

  Am7(9)             G/B         Cm       D4 D
Na dor Ele me abraça,        acalma e não condena

 G         A
Quer me olhar, seus olhos querem me encontrar

    C            D4            D
Em festa ele me espera, me aguarda e esse alegra!!!

G/B              Em7(9)
Quer falar segredos ao meu coração

    Am7(9)     Cm       G/B      Esus4 Em
Preciso estar a sós com Ele em comunhão

   Am          Cm6/D     G/B      Cm Dsus4 G
Eu quero ser um diamante em Suas mãos',
  to_tsvector('portuguese', 'Diamante (Lapidado por Deus) ' || '')
),
(
  'celina-borges-back-to-faith',
  'Duas Asas: Fé e Razão',
  'Celina Borges',
  'Celina Borges',
  'G',
  76,
  '4/4',
  'Pop/Folk Católico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  false,
  7,
  'Ação de Graças',
  'Qualquer',
  'Ap 2, 4-5; Lc 15, 20',
  'popular',
  '[Intro] G9  C9  G9  C9

[Primeira Parte]
G9         C9
Foi Deus quem colocou no coração
       Am7         C9
Do homem o desejo da verdade
G9        D/F#      Em7
De O conhecer a Ele, ó fé não
        Bm7
Tenhas medo da razão
C9         G9
Razão quem te criou foi Deus
       Am7         C9
Duas asas que nos elevam para o céu
       Am7    C9           D
Duas asas que nos elevam em contemplação!

[Refrão]
G9         Am7         C9
Deus sempre abençoa o esforço da busca
         G9
Crer nada mais é pensar querendo
Am7         C9
Pensar crendo e pensando crer
G9         Am7         C9
O Eterno entra no tempo, o Tudo
         G9
Esconde-se no fragmento!

         Am7
A fé e a razão, a fé e a razão
C9         G9
Razão e a fé!
         Am7
A fé e a razão, a fé e a razão
C9         G9
Razão e a fé!',
  to_tsvector('portuguese', 'Duas Asas: Fé e Razão ' || '')
),
(
  'adriana-arydes-abraco-de-pai',
  'Abraço de Pai',
  'Adriana Arydes / Walmir Alencar',
  'Adriana Arydes / Walmir Alencar',
  'G',
  70,
  '4/4',
  'Balada de Cura Interior',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  15,
  'Ação de Graças',
  'Qualquer',
  'Lc 15, 20; Sl 102, 13',
  'popular',
  '[Intro] E  E7M  C#m  G#m  A9

E              E7M
Quanto eu esperei !

C#m         G#m
Ansioso queria te ver

  F#m            E/G#   A9
E te falar o que há em mim

F#m          B7(4)     B7
Já não podia me conter

   E          E7M
Me decidi, Senhor

C#m            G#m
Hoje quero rasgar meu viver

  F#m           E/G#  A9
E te mostrar meu coração

F#m              D       B7(4)    B7
Tudo o que tenho e sou

      E         C#m
E por mais que me falem, não vou desistir !

    F#m      B7(4)         B7
Eu sei que nada sou ! Por isso estou aqui

       E         C#m
Mas eu sei que o amor que o Senhor tem por mim

   F#m    B7(4)      B7         E     B4
É muito mais que o meu, sou gota derramada no mar

        E         C#m
Quanto tempo também o senhor me esperou

      F#m               B7(4)         B7
Nas tardes encontrou saudade em meu lugar

       E         C#m
Mas ao me ver na estrada ao longe voltar

    F#m                B7(4)        B7         E      B4
Num salto se alegrou e foi correndo me encontrar

      E         C#m
E não me perguntou nem por onde eu andei

    F#m       B7(4)       B7
Dos bens que eu gastei, mais nada me restou

     E         C#m
Mas olhando em meus olhos somente me amou

E/G#         A9       E/G#    F#m
E ao me beijar

        B7(4)     B7               E     B4         C4
Me acolheu          num abraço de pai

Solo: F  Dm7  Gm7  C7(4)  C7 (2x)  B7(4)  B7

[Refrão]',
  to_tsvector('portuguese', 'Abraço de Pai ' || '')
),
(
  'adriana-arydes-coracao-sagrado',
  'Coração Sagrado (Ao Teu Coração)',
  'Comunidade Católica Recado / Adriana Arydes',
  'Comunidade Católica Recado / Adriana Arydes',
  'C',
  72,
  '4/4',
  'Balada Eucarística',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Comunhão',
  'Tempo Comum',
  'Jo 19, 34; Mt 11, 28-30',
  'popular',
  '[Intro] C  G/B  F  G  (2x)

[Primeira Parte]
C              G/B
Se você está cansado
F         G
Sem lugar pra repousar
C              G/B
Venha ao Coração Sagrado
F         G
De Jesus, que aberto está
Am          Em          Am         Em
Pode então entrar, até descansar
F            F/G            C      F/G
Seu Deus ali espera e quer amar!

[Refrão]
C     Em    F         G
Curar suas feridas, tirar sua dor
C         Em     F         G
E derramar no seu peito um novo amor
C                  G/B
Venha, meu irmão
F         G
Acolher este grande amor
C                   G/B
Entregue em Suas mãos
F         G
A sua vida e a sua dor
Am        Em        Am            Em
Ele é o refúgio, a paz e o perdão
F             F/G           C
Morada certa para o seu coração!',
  to_tsvector('portuguese', 'Coração Sagrado (Ao Teu Coração) ' || '')
),
(
  'adriana-arydes-nova-manha',
  'Nova Manhã (Adriana Arydes)',
  'Adriana Arydes',
  'Adriana Arydes',
  'A',
  74,
  '4/4',
  'Balada de Esperança',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  17,
  'Ação de Graças',
  'Páscoa',
  'Sl 29, 6; Lm 3, 22-23',
  'popular',
  'A9              E/A  D9
Quando o sol nascer, nova manhã

A          Bm      A/C#  D    Esus4  E  E/D
Mais perto o horizonte você vai ver

C#m7            F#m7
Nada será como antes

  C#m7         D
Agora você não está mais sozinho

F#m7              B/D#              D  E/D  D
Jesus vai caminhar sempre ao seu lado

A9              E/A  D9
É ele quem nos traz novas manhãs

A9         Bm       A/C#  D    Esus4  E  E/D
Cheias de amor, de paz e esperança

  C#m7            F#m7    C#m7         D
É hora de entender: no passado não pode mais viver

F#m7          B/D#       D  E/D  D
Volte a sonhar e tenha fé

A        E/A       D             E7
Recomeçar dá um novo sentido à vida

A          C#m7       D        C#7
Só em Jesus você encontra perfeita alegria

       F#m7       C#m7       D
Cada sonho seu, nele se realizará

E   F#m7          C#m7
A felicidade está em Cristo

     D9  E7sus4    Asus4  A
É só você recomeçar',
  to_tsvector('portuguese', 'Nova Manhã (Adriana Arydes) ' || '')
),
(
  'adriana-arydes-guardioes',
  'Guardiões (Anjos de Deus)',
  'Adriana Arydes',
  'Adriana Arydes',
  'E',
  76,
  '4/4',
  'Balada Angélica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  20,
  'Ação de Graças',
  'Tempo Comum',
  'Sl 90, 11-12; Ex 23, 20',
  'popular',
  '[Intro] C  C7M  Am  Am7

        C  C7M  Am  Am7

        C  C7M  Am  Am7

   C7M
Se tudo parecia um sonho

 Am7
Hoje sabemos que não foi ilusão

   F7M                   G4  G
A nossa história de amor é real

  C7M
Você é bem mais do que sonhei

   Am7
O amor que sempre desejei

 F7M              G4  G
Dom que Deus um dia me... presenteou

        Dm7
Ombro amigo você é

         C/E
Onde eu posso repousar

         F
Porto seguro a me ancorar

         D/F#            G
Mão estendida a me levantar

         Dm7
Amado do meu coração

        C/E
Poesia pra minha canção

           F
Teu amor trouxe

         G4    G
Um novo sentido ao meu viver

      C  C9     G
Guardiões do amor

       G/B              Am
Uma família que é por Deus guardada

           Am7           F7M  G
E sobre a rocha é alicerçada

      C  C9     G
Guardiões do amor

       G/B                  Dm7
Como José e Maria foram um dia

          Em7            F7M   G
Quero cuidar da minha família

      C
Com amor

[Solo] C  C7M  Am  Am7

       C  C7M  Am  Am7

          Dm7
Benção de Deus sobre nós

          C/E
Eis nosso filho desejado

          F
Fruto do nosso imenso amor

             D/F#       G
Promessa que Deus realizou

         Dm7
Amado do meu coração

       C/E
Poesia pra minha canção

            F
Este amor trouxe

         G4     G
Um novo sentido ao meu viver

      C  C9     G
Guardiões do amor

       G/B              Am
Uma família que é por Deus guardada

           Am7           F7M  G
E sobre a rocha é alicerçada

      C  C9     G
Guardiões do amor

       G/B                  Dm7
Como José e Maria foram um dia

          Em7            F7M   G
Quero cuidar da minha família

      C
Com amor

      G#7     Bb
Guardaremos a fé

      Gm       Cm
Tua palavra senhor

    G#7        Bb      C
Lutaremos por nossa família

  G#7        Bb           Gm   Cm
Unidos somos mais, somos guardiões

     G#7     Bb        G4   G
Nós somos guiados por Deus

      C  C9     G
Guardiões do amor

       G/B              Am
Uma família que é por Deus guardada

           Am7           F7M  G
E sobre a rocha é alicerçada

      C  C9     G
Guardiões do amor

       G/B                  Dm7
Como José e Maria foram um dia

          Em7            F7M   G
Quero cuidar da minha família

      C
Com amor

[Solo] C  C7M  Am  Am7  C',
  to_tsvector('portuguese', 'Guardiões (Anjos de Deus) ' || '')
),
(
  'adriana-arydes-chave-do-coracao',
  'A Chave do Coração',
  'Adriana Arydes',
  'Adriana Arydes',
  'G',
  72,
  '4/4',
  'Balada de Entrega',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  9,
  'Ação de Graças',
  'Qualquer',
  'Ap 3, 20; Pr 23, 26',
  'popular',
  'E        A     B
Qual é a chave?

            E
Qual é o segredo?

E        A     B
Qual é a chave?

            E
Qual é o segredo?

         A    B         E
Que abre as portas do teu coração

         F#m         B9
Por que não falar se Ele quer te ouvir?

         G#m    C#m
Por que se esconder se Ele está aqui?

         F#m         B
Por que não aceitar se Ele quer te dar?

         E
Por que insistir em resistir?

         F#m         B9
Pois Ele tem tanto pra te falar

         G#m            C#m
Quer te amar, te perdoar

         F#m         B
Mas é você que tem que abrir

        E
O coração

         F#m          B9
Deixa Jesus te consolar

         G#m           C#m
Deixa Jesus te abençoar

         F#m         A/B  E
Deixa Jesus te dar a tua  Salvação

E        A     B
Qual é a chave?

            E
Qual é o segredo?

         A    B         E
Que abre as portas do teu coração

( F#m  B )

( E  C#m )

( D9  A/B )

( E )

         F#m    B9
Por que não falar se Ele quer te ouvir?

         G#m    C#m
Por que se esconder se Ele está aqui?

         F#m         B
Por que não aceitar se Ele quer te dar?

         E
Por que insistir em resistir?

         F#m         B9
Pois Ele tem tanto pra te falar

         G#m            C#m
Quer te amar, te perdoar

         F#m         B
Mas é você que tem que abrir

        E
O coração

         F#m           B9
Deixa Jesus te consolar

         G#m           C#m
Deixa Jesus te abençoar

         F#m         A/B  E
Deixa Jesus te dar a tua  Salvação

( F#m  B  E )',
  to_tsvector('portuguese', 'A Chave do Coração ' || '')
),
(
  'tony-allysson-poderoso-deus',
  'Poderoso Deus',
  'Tony Allysson',
  'Tony Allysson',
  'D',
  70,
  '4/4',
  'Worship / Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Ap 4, 8; Is 6, 3',
  'popular',
  '[Intro] D  A  Bm  G

[Primeira Parte]
   D         A
1. Ao que está assentado no trono e ao Cordeiro
   Bm         G
Seja o louvor, a honra, a glória e o domínio
   D         A
Pelos séculos dos séculos, sem jamais cessar:
   Bm        G         A
Toda a criação se prostra para Te adorar!

[Refrão]
   D          A
Poderoso Deus! Poderoso Deus!
   Bm           G
Minha alma anseia por Ti, Senhor!
   D          A
Poderoso Deus! Poderoso Deus!
   Bm       G         A           D
Como a corça suspira pelas águas, tenho sede de Ti!

[Segunda Parte]
   D         A
2. Derrama a Tua glória sobre este santo altar,
   Bm     G         A           D
Pois nascemos, ó Senhor, para Te adorar!',
  to_tsvector('portuguese', 'Poderoso Deus ' || '')
),
(
  'tony-allysson-marca-da-vitoria',
  'Marca da Vitória',
  'Tony Allysson',
  'Tony Allysson',
  'G',
  74,
  '4/4',
  'Balada Carismática',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Páscoa',
  'Gl 6, 17; Rm 8, 37',
  'popular',
  '[Intro] G  D  Em  C

[Primeira Parte]
   G         D
1. Eu tenho a marca da promessa que ninguém pode apagar,
   Em         C
Gravada com o Sangue do Cordeiro que morreu em meu lugar;
   G         D
Ainda que se levantem muralhas diante de mim,
   Em         C         D
No Nome de Jesus verei todas caírem ao fim!

[Refrão]
   G         D
Eu trago em mim a marca da vitória!
   Em         C
Jesus escreveu de novo a minha história!
   G         D
Em todas as coisas sou mais que vencedor:
   Em     C         D           G
Pelo poder do Sangue de Cristo, o Senhor!

[Segunda Parte]
   G         D
2. Quem poderá nos separar do amor do nosso Rei?
   Em    C         D           G
De cabeça erguida na fé eu caminharei!',
  to_tsvector('portuguese', 'Marca da Vitória ' || '')
),
(
  'tony-allysson-aguas-profundas',
  'Águas Profundas',
  'Tony Allysson',
  'Tony Allysson',
  'G',
  74,
  '4/4',
  'Balada de Avivamento',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  false,
  6,
  'Ação de Graças',
  'Pentecostes',
  'Ez 47, 1-9; Jo 7, 37-39',
  'popular',
  '[Intro] Em  C  G  D  (2x)

[Primeira Parte]
Em7
Eu guardarei
C         G       D
Tua palavra em meu coração
Em
Na tribulação, invocarei
G          D
Teu santo nome
Am          Em
A Tua destra me sustenta
C          Em      D
Da aliança não me esquecerei
Am7        G
Tua palavra me alimenta
D
Não vacilarei!

[Refrão]
G            D
Leva-me às águas profundas
C           Em      D
Aviva-me de novo, Senhor!
G            D
Leva-me às águas profundas
C         D
Fala ao meu coração!

[Ponte]
Am           Em
Se em Teus olhos eu não olhar
C
Se minha boca se calar
Em           D
E eu não anunciar os Teus preceitos
Am          Em
Se minha vida não mudar
C
Nada vai valer
D4           D
O Teu Espírito soprar!

[Refrão Final]
G            D
Leva-me às águas profundas
C           Em      D
Aviva-me de novo, Senhor!
G            D
Leva-me às águas profundas
C         D         G
Fala ao meu coração!',
  to_tsvector('portuguese', 'Águas Profundas ' || '')
),
(
  'tony-allysson-sustenta-o-fogo',
  'Sustenta o Fogo',
  'Tony Allysson',
  'Tony Allysson',
  'Em',
  76,
  '4/4',
  'Adoração e Avivamento',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Pentecostes',
  'Lv 6, 5-6; 2Tm 1, 6',
  'popular',
  '[Intro] Em  C  G  D

[Primeira Parte]
   Em         C
1. O fogo sobre o altar jamais deverá se apagar,
   G         D
A cada manhã o sacerdote lenha nova vai colocar;
   Em         C
Eu sou templo vivo do Espírito Consolador,
   G           D         Em
E guardo em meu peito a chama do primeiro amor!

[Refrão]
   Em         C
Sustenta o fogo no meu coração, Senhor!
   G         D
Não deixes esfriar a chama do louvor!
   Em         C
Ainda que soprem ventos contrários ao redor:
   G          D         Em
Sustenta em minha alma o Teu fogo abrasador!

[Segunda Parte]
   Em         C
2. Reaviva o dom de Deus que recebi pela imposição das mãos,
   G        D         Em
Espírito de força, de amor e de unção!',
  to_tsvector('portuguese', 'Sustenta o Fogo ' || '')
),
(
  'diego-fernandes-templo-vivo',
  'Templo Vivo',
  'Diego Fernandes',
  'Diego Fernandes',
  'G',
  96,
  '4/4',
  'Pop Rock Católico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  9,
  'Ação de Graças',
  'Pentecostes',
  '1Cor 3, 16; 1Cor 6, 19',
  'popular',
  '[Intro] D  A  Bm  G

[Primeira Parte]

[Primeira Parte]

D         A
Seja bem-vindo, Espírito Santo!

         Bm           G
O meu coração é o teu lar

           D         A
Seja bem-vindo, Espírito Santo!

         Bm
A minha casa é também tua casa

           G
A minha família é o teu lugar!

         A         G
Ah! Ah! Ah!... Ah! Ah! Ah!

Em      A    D
Vem em mim morar!

         A         G
Ah! Ah! Ah!... Ah! Ah! Ah!

Em      A    D/F#  G  A  G/B  A/C#  D
Vem em mim morar!

[Refrão]

D         A
Quero ser templo vivo

    Bm       G
E te levar comigo

       D          A          G
Quero ser templo vivo do teu amor

A      D         A
Quero ser templo vivo

    Bm       G
E te levar comigo

   D         A          G
Quero ser templo vivo do teu amor

( Bm  D  G  Em )

( Bm  D  G  Em )

[Primeira Parte]

           D         A
Seja bem-vindo, Espírito Santo!

         Bm
A minha casa é também tua casa

           G
A minha família é o teu lugar!

         A         G
Ah! Ah! Ah!... Ah! Ah! Ah!

Em      A    D
Vem em mim morar!

         A         G
Ah! Ah! Ah!... Ah! Ah! Ah!

Em      A     D/F#  G  A  G/B  A/C#  D
Vem em mim morar!

[Refrão]

D         A
Quero ser templo vivo

    Bm       G
E te levar comigo

   D         A          G
Quero ser templo vivo do teu amor

A      D         A
Quero ser templo vivo

    Bm       G
E te levar comigo

       D         A          G
Quero ser templo vivo do teu amor

        D  A  G
Do teu amor

         Bm  A
Do teu amor

Bm  A  D/F#  G  D/F# Em   D
Oh oh  oh   oh  ooo___h  ohhhhhhhh',
  to_tsvector('portuguese', 'Templo Vivo ' || '')
),
(
  'diego-fernandes-danca-de-avivamento',
  'Dança de Avivamento',
  'Diego Fernandes',
  'Diego Fernandes',
  'Em',
  122,
  '4/4',
  'Pop Louvor Festivo',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  10,
  'Final',
  'Pentecostes',
  'Sl 150; 2Sm 6, 14',
  'popular',
  '[Tab - Riff 1]

E|------------------------------------------------| 
B|------------------------------------------------| 
G|------------------------------------------------| 
D|------------7--7--7--9--9--9-----------5--5--5--| 
A|----5--5--5-------------------3--3--3-----------| 
E|------------------------------------------------| 

D         C
Naquele dia em que gritei

           D C
Ele me ouviu

D         C           D  C
E a tempestade então se acalmou

D         C
Naquele dia em que gritei

           D C
Ele me ouviu

D         C           D  C
E a tempestade então se acalmou

A         Bm
   Livrou minha alma da morte

Jesus mudou minha sorte

 A         G
Sou um milagre...aqui estou

A         Bm
   Livrou minha alma da morte

Jesus mudou minha sorte

 A         G
Sou um milagre...aqui estou

  Em  G            D           A
Aleluia...transformou o meu lamento

  Em  G       D            A
Aleluia...em dança de avivamento

  Em  G            D          A
Aleluia...transformou o meu lamento

  Em  G       D           A
Aleluia...em dança de avivamento

[Tab - Riff 2]

E|------------------------------------------------| 
B|------------------------------------------------| 
G|------------------------------------------------| 
D|------------------------------------------------| 
A|----4h5-5-4h5-5--4h5-5----2h3-3--2h3-3--0-3-----| 
E|------------------------------------------------| 

D         C
Naquele dia em que gritei

           D C
Ele me ouviu

D         C           D  C
E a tempestade então se acalmou

D         C
Naquele dia em que gritei

           D C
Ele me ouviu

D         C           D  C
E a tempestade então se acalmou

A         Bm
   Livrou minha alma da morte

Jesus mudou minha sorte

 A         G
Sou um milagre...aqui estou

A         Bm
   Livrou minha alma da morte

Jesus mudou minha sorte

 A         G
Sou um milagre...aqui estou

  Em  G            D           A
Aleluia...transformou o meu lamento

  Em  G       D            A
Aleluia...em dança de avivamento

  Em  G            D           A
Aleluia...transformou o meu lamento

  Em  G       D            A
Aleluia...em dança de avivamento

[Riff 2]

[Base Solo] D5  C5  D5  C5

         Em         G         D
E eu não vou parar...não vou parar de cantar

       Em         G         D
Eu não vou parar...não vou parar de dançar

  Em  G            D          A
Aleluia...transformou o meu lamento

  Em  G       D            A
Aleluia...em dança de avivamento

  Em  G            D          A
Aleluia...transformou o meu lamento

  Em  G       D             A  Riff 2
Aleluia...em dança de avivamento',
  to_tsvector('portuguese', 'Dança de Avivamento ' || '')
),
(
  'diego-fernandes-eu-nao-esqueco',
  'Eu Não Esqueço',
  'Diego Fernandes',
  'Diego Fernandes',
  'E',
  78,
  '4/4',
  'Pop Rock Católico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  false,
  6,
  'Ação de Graças',
  'Tempo Comum',
  'Sl 102, 2; Js 21, 45',
  'popular',
  '[Intro] E  E/G#  A9  E  E/G#  A9

[Primeira Parte]
E          E/G#      A9
Eu não entendo um Deus assim
E
Tão louco de amor por mim
E/G#           A9
Eu não mereço, sou tão fraco
C#m7
Por que Ele me escolheu?
A9
E para confundir os fortes
C#m7         B9
Gravou meu nome em Sua mão!

[Refrão]
E          B/D#      C#m7
Deus, Você me levantou do chão
A9         B7         E
Enquanto a multidão jogava pedras
E          B/D#       C#m7
Deus, Você me perdoou
A9          B           A9      E
E desse amor eu não esqueço!

[Segunda Parte]
E          E/G#      A9
Quando todos me condenaram
E
Tua misericórdia me alcançou
C#m7         A9
Hoje canto livre e resgatado
C#m7         B9
Pois Teu sangue me salvou!',
  to_tsvector('portuguese', 'Eu Não Esqueço ' || '')
),
(
  'diego-fernandes-no-colo-de-maria',
  'No Colo de Maria',
  'Diego Fernandes',
  'Diego Fernandes',
  'D',
  72,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  10,
  'Ação de Graças',
  'Qualquer',
  'Lc 1, 42-45; Jo 19, 27',
  'popular',
  '[Intro] Em7  D/F#  C | Em7  Am7  G/B  C5 ( TECLADO )

[Primeira Parte]

 G          D/F#
Mãe quando eu recebo teu abraço

         Em7
Esqueço todo o meu cansaço

         C
Como é bom ser amado por ti

 G          D/F#
Volto nos tempos da infância

         Em7
Da pureza de criança

              C   G/B
Sempre cuidavas de mim

[Segunda Parte]

Am7                 G/B
Mesmo quando estive longe

         C
E me esquecia de ti

                 G/B
Eu corria para o mundo e

         Am7           D
Só pensava em fugir de Ti Mãezinha

[Refrão]

             C   G/B     D/F#
No Colo de Mari...a    eu posso descansar

             C   G/B     D/F#
No Colo de Mari...a   eu sei que é meu lugar

         C         D          Em7
Mãe que cuida e que me ensina a caminhar

-> Volta na 1ª Parte...

[Refrão]

           C     G/B     D/F#
No Colo de Mari...a    eu posso descansar

           C     G/B     D/F#
No Colo de Mari...a   eu sei que é meu lugar

         C         D          Em7
Mãe que cuida e que me ensina a caminhar

         C          D            G4
O Teu abraço é que fez e faz voltar!

[Final]

C  G    C  G      C  G   D/F#  Em7
 Ave    Maria,   Salve!   Rainha',
  to_tsvector('portuguese', 'No Colo de Maria ' || '')
),
(
  'diego-fernandes-marcado-pelo-fogo',
  'Marcado Pelo Fogo',
  'Diego Fernandes',
  'Diego Fernandes',
  'A',
  112,
  '4/4',
  'Pop Rock de Pentecostes',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Final',
  'Pentecostes',
  'Mt 3, 11; At 1, 8',
  'popular',
  '[Intro] Dm

Dm
Fui Convocado pra Servir o Senhor

Pregar o Amor e Transformar esse mundo

    F            G         Dm
Sigo contra a corrente Jesus marcha na Frente eu vou

Dm
Vou revestido da armadura de Deus

E protegido pelos anjos do céu

     F          G         Bb   C
Pra vencer o inimigo eu uso o escudo da fé e a espada do espírito

Dm        F         G
Eu sou marcado pelo fogo

          Bb
Se Deus mandar já estou pronto

F         G
Sou o sentinela eu sou, uma missão

  Dm        F
Ooo  Meu General é Cristo

G         Bb
Eu Serei um Evangelho vivo

Dm        F         G
Eu sou marcado pelo fogo

          Bb
Se Deus mandar já estou pronto

F         G
Sou o sentinela eu sou, uma missão',
  to_tsvector('portuguese', 'Marcado Pelo Fogo ' || '')
),
(
  'diego-fernandes-ser-diferente',
  'Ser Diferente',
  'Diego Fernandes / Guilherme de Sá',
  'Diego Fernandes / Guilherme de Sá',
  'D',
  110,
  '4/4',
  'Pop Rock Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Final',
  'Tempo Comum',
  'Mt 5, 13-16; Rm 12, 2',
  'popular',
  '[Intro] D  G/B  A/C#  D  G  D

[Primeira Parte]
D               G/B       A/C#
Tenho que ser diferente
D               D/F#      G
Preciso ser eu mesmo também
Em              D/F#      G
Amar sem preconceitos
Em
Viver os meus preceitos
A
E não rotular ninguém!

[Segunda Parte]
D             G/B       A/C#
Hoje eu acordei com vontade de viver
D             G/B       A/C#
Hoje eu acordei com vontade de vencer!

[Refrão]
G         A
Livre para amar
G         A
Livre pra perdoar
G         A
Livre pra respeitar
Em       G         A            D
Ser livre e nunca desistir de sonhar!',
  to_tsvector('portuguese', 'Ser Diferente ' || '')
),
(
  'davidson-silva-cada-dia',
  'Cada Dia',
  'Davidson Silva / Comunidade Católica Shalom',
  'Davidson Silva / Comunidade Católica Shalom',
  'G',
  72,
  '4/4',
  'Balada Shalom',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  11,
  'Ação de Graças',
  'Tempo Comum',
  'Lm 3, 22-23; Lc 9, 23',
  'popular',
  '[Intro] E/G#  A  E9  F#m7  A  B

   A            E/G#    A          E/G#
Recebe essa aliança, sinal do meu amor

   A         B         C#m
Sinal do amor de Deus que nos escolheu

      F#m         B4   B
E nos entregou um ao outro

Voz FEMININA

   A            E/G#    A          E/G#
Recebe essa aliança, sinal do meu amor

   A         B         C#m
Sinal do amor de Deus que nos escolheu

      F#m         B4   B  E  B
E nos entregou um ao outro

[Refrão]

  E    B/D#     C#m7  B
Recebe essa aliança

  A             E/G#
Sinal de Deus conosco

  F#m            B
Sinal de que será pra sempre

  C#m7   B/D#   E   F#m  E/G#
Recebe essa aliança

  A             E/G#
Sinal de Deus conosco

  F#m            B
Sinal de que estará pra sempre entre nós

[Final] C#m7  B  E/G#

        F#m  B4  B  E9',
  to_tsvector('portuguese', 'Cada Dia ' || '')
),
(
  'davidson-silva-sinal-do-meu-amor',
  'Vem, Espírito Santo',
  'Davidson Silva / Comunidade Católica Shalom',
  'Davidson Silva / Comunidade Católica Shalom',
  'A',
  76,
  '4/4',
  'Balada de Avivamento',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Jo 13, 1; Ct 8, 6',
  'popular',
  '[Intro] A9  G9  D9

[Primeira Parte]
A9         G9
Vem, Espírito Santo, com Teu poder
        D9
Com Teu poder, vem!
A9         G9
Vem, inflama meu ser com fogo transformador
        D9
Que em meu peito arde a chama do amor!

[Refrão]
A9         G9
Vem, invada minha alma
        D9
Me conduza rumo aos braços de Deus
A9         G9
Vem e forma e anima o meu coração
        D9
A bater no ritmo do Senhor!

A9         G9
Vem, Espírito Santo, com Teu poder
        D9         A9
Com Teu poder, vem!',
  to_tsvector('portuguese', 'Vem, Espírito Santo ' || '')
),
(
  'davidson-silva-nada-nos-separara',
  'Nada Nos Separará (Romanos 8, 35)',
  'Davidson Silva / Comunidade Católica Shalom',
  'Davidson Silva / Comunidade Católica Shalom',
  'C',
  74,
  '4/4',
  'Balada Bíblica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  14,
  'Comunhão',
  'Tempo Comum',
  'Rm 8, 31-39',
  'popular',
  '[Intro] E  A  E  A

E7M                   A/E
Meu coração é Teu, Senhor

E/G#           A9
Nada nos separará   (2X)

             C#m           C#m7M
Nem mesmo as quedas, minha lentidão

C#m7           F#/A#
Podem nos separar

         A9         E/G#
Sou todo Teu, amado meu

       F#m7            B
Quem ousará em nos separar

       E              A/E
Nem a morte, a perseguição

E/G#               A9
A angustia, a desolação

         F#m7
Vão nos separar

         B
Pois sou todo Teu

         E           G#7
Sou todo Teu amado meu

       C#m           F#/A#
Quem ousará em nos separar

       E              A/E
Nem a morte, a perseguição

     E/G#            A9
A angustia, a desolação

         F#m
Vão nos separar

         B
Pois sou todo Teu

         E           G#7
Sou todo Teu amado meu

           C#m       F#/A#
Quem ousará em nos separar

A9     B       C#m A
Nada nos separará

F#m    B       C#m7 F#/A#
Nada nos separará

A9     B        E
Nada nos separará',
  to_tsvector('portuguese', 'Nada Nos Separará (Romanos 8, 35) ' || '')
),
(
  'davidson-silva-tome',
  'Tomé (Manda-me Vir até Ti / Meu Senhor e Meu Deus)',
  'Davidson Silva / Comunidade Católica Shalom',
  'Davidson Silva / Comunidade Católica Shalom',
  'A',
  72,
  '4/4',
  'Balada Pascal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  7,
  'Comunhão',
  'Páscoa',
  'Jo 20, 24-29',
  'popular',
  '[Intro] C#m  B9  A9  C#m  B9  A9

E         F#m        C#m     A9
Por muito tempo não acreditei

E       F#m  C#m    A9
Me escondi , duvidei

C#m        B9         A9
Se tudo ao meu redor era ausência tua

C#m      B9         A9
Já não ouvia mais a tua voz

E      F#m        C#m     A9
Só acreditarei se eu tocar

E         F#m        C#m       A9
Teu lado aberto e sentir pulsar

C#m  B9           A9
A alegria dos que creem em ti

C#m     B9         A9
Poder ouvir tua voz, dizendo me

E    F#m     C#m         A9       C#m
Poe aqui tua mão, torna te um homem de fé

       B9      A9
Toca o meu coração, e o medo se vai

E     F#m      C#m      B        C#m
Eu voltei para ti, por tanto te amar

       B9      A9         C#m  B9  A9
Toca o meu coração, eu sou a tua paz',
  to_tsvector('portuguese', 'Tomé (Manda-me Vir até Ti / Meu Senhor e Meu Deus) ' || '')
),
(
  'davidson-silva-insuperavel-amor',
  'Insuperável Amor',
  'Davidson Silva / Comunidade Católica Shalom',
  'Davidson Silva / Comunidade Católica Shalom',
  'G',
  72,
  '4/4',
  'Balada de Consagração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Ef 3, 18-19; Jo 15, 13',
  'popular',
  '[Intro] G  D9/F#  Em7  C9

[Primeira Parte]
G            D9/F#        C9
Amar-Te mais que a mim mesmo
G            D9/F#        C9
Amar-Te mais que tudo que há aqui
G            D9/F#        C9
Amar-Te mais que aos mais queridos
Am          D9           C9          G
Amar-Te e dar a vida só por Ti!

[Refrão]
G            D9/F#         C9
Com minhas forças, com minha alma
C9           G           D9/F#        Em7
De todo coração viverei eu só pra Te amar
C9           G
Amar-Te, amar-Te
C9           D9           G
Amar-Te e dar a vida só por Ti!

[Segunda Parte]
G            D9/F#        C9
Amar-Te mais que a mim mesmo
G            D9/F#        C9
Amar-Te mais que tudo que há aqui
G            D9/F#        C9
Amar-Te mais que aos mais queridos
Am          D9           C9          G
Amar-Te e dar a vida só por Ti!',
  to_tsvector('portuguese', 'Insuperável Amor ' || '')
),
(
  'davidson-silva-tu-es-minha-vida',
  'Tu És Minha Vida (Outro Deus Não Há)',
  'Davidson Silva / Comunidade Católica Shalom',
  'Davidson Silva / Comunidade Católica Shalom',
  'Am',
  72,
  '4/4',
  'Balada Cristocêntrica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Comunhão',
  'Tempo Comum',
  'Jo 6, 68; Jo 14, 6',
  'popular',
  '[Intro] Am  Dm  G  C  F  Dm  E7  Am

[Primeira Parte]
   Am    Dm         G           C
1. Tu és minha vida, outro Deus não há!
   Am    Dm         E7          Am
Tu és minha estrada, a minha verdade!
   Dm    G         C           Am
Em Tua Palavra eu caminharei,
   F      G         C           E7
Enquanto eu viver e até quando Tu quiseres!
   Am    Dm         G           C
Já não sentirei temor, pois estás aqui:
   F    Dm         E7          Am
Tu estás no meio de nós!

[Segunda Parte]
   Am    Dm         G           C
2. Creio em Ti, Senhor, vindo de Maria,
   Am    Dm         E7          Am
Filho eterno e santo, homem como nós!
   Dm     G         C           Am
Tu morreste por amor, vivo estás em nós:
   F     G         C           E7
Unidade Trina com o Espírito e o Pai!
   Am    Dm         G           C
E um dia, eu bem sei, Tu retornarás,
   F    Dm         E7          Am
E abrirás o Reino dos Céus!',
  to_tsvector('portuguese', 'Tu És Minha Vida (Outro Deus Não Há) ' || '')
),
(
  'dunga-consagrado',
  'Consagrado (Consagrado para Amar)',
  'Dunga / Canção Nova',
  'Dunga / Canção Nova',
  'G',
  74,
  '4/4',
  'Balada Vocacional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  16,
  'Ofertório',
  'Tempo Comum',
  'Jr 1, 5; Jo 17, 19',
  'popular',
  'Intro: G#m   F#   E   C#m   F#4   D#m

E|-------------------------------------------------------| 
B|----12----14----15----12-14-14b16-14-12-11-------------| 
G|-11----11----11----11----------------------13-13-11-11-| 
D|-------------------------------------------------------| 
A|-------------------------------------------------------| 
E|-------------------------------------------------------| 

E|-14-14b16-14-14-12-12--11h12p11------------------------| 
B|--------------------------------14-12-14b16r14-12-14---| 
G|-------------------------------------------------------| 
D|-------------------------------------------------------| 
A|-------------------------------------------------------| 
E|-------------------------------------------------------| 

E|----------------------------| 
B|-12-14-14b16-14b16r14-12----| 
G|-------------------------13-| 
D|----------------------------| 
A|----------------------------| 
E|----------------------------| 

G#m         F#
   Que Deus me tem um plano de amor

E7+             B9  F#/A#
   Um plano de amor e paz

G#m         F#
   Que me quer bem, muito mais do que ninguém

E7+         C#m      F#4   F#
   Me ajuda a suportar a dor

G#m         F#
   Mas sei também que fraco eu sou

E7+               B9    F#/A#
   Pra cumprir o que o Senhor

G#m         F#
   Por compaixão, pôs em meu coração

E7+          C#m          F#4  F#
   Os planos que Ele   quis pra mim

E7+         B7+
   Arde o meu coração

E7+           F#4   F#
   O clima desse lugar

E7+           B7+
   Jesus me tem compaixão

    E7+      C#m           F#4   F#
   E diz que não    estou sozinho não

 E/G#     F#/A#   B
Eu sei  que consa- grado eu sou

        G#m
Criado para te   adorar

       E7+
Chamado para te   servir

 C#m      F#
Enviado para amar

   E/G#    F#/A#        B7+
Tens planos que eu   nem mesmo sei

      F#/A#    G#m
Mas sei que posso descobrir

           E
E em tudo aquilo que eu vivi

     F#          E/B
Sei que já   te fiz sorrir

G#m            F#
  Felicidade pra Deus não há maior

E              B   F#/A#
  Ver do céu em minha vida

G#m         F#
  Tudo aquilo que um dia Ele sonhou

E    C#m     F#4 F#
  Por mim para mim',
  to_tsvector('portuguese', 'Consagrado (Consagrado para Amar) ' || '')
),
(
  'dunga-restauracao',
  'Restauração (Deus Quer Restaurar)',
  'Dunga / Canção Nova',
  'Dunga / Canção Nova',
  'D',
  72,
  '4/4',
  'Balada de Cura',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  20,
  'Ação de Graças',
  'Qualquer',
  'Jr 18, 4; Jl 2, 25',
  'popular',
  '[Intro] G/B  C  D/C  C  Am7  Bm7

        Em7  Am  D4  Dm7  F  F7M  G

G7M
   Deus vê o coração

Em7
    Sonda com a compaixão

  C7M       C/D       G      C/D
E sabe o tamanho da sua dor

G7M                  Em7
  Ele não pode pôr        limites no Seu amor

      C7M      C/D           G       C/D
Pois sabe até onde vai todo pecador

G7M                 Em7
   Lágrimas são suor de  almas que lutam só

    C7M       C/D                G       C/D
Só Deus pode entender o que lhe causa dor

G7M              Em7
  Pensa no teu Senhor,    recorra ao Seu amor

    C7M       C/D              G        C/D
E creia: Ele é fiel, justo é o Seu amor

 G   Am7  Bm7  C7M          C/D
Pa...re   de   se maltratar!

         Bm7           Em7
Não queira aos outros culpar

          Am7       C/D
Diga: por hoje não!

            G         G7
Por hoje eu não vou mais pecar!

  G7         C7M  C  D  Em  Am  C/D
Estenda   a   sua mão

         Bm7         Em7
E abra o seu coração

          Am7        C/D
Volta pro seu Senhor

         G        G7
E se abra à restauração

    G7          C7M  C  D  Em  Am  C/D
Com Cristo, você vai superar

            Bm7           Em7
Todas as barreiras passar

         Am7         D/C
Todo o pecado vencer

              Eb7M  C/D     G
Um novo homem vai      nascer',
  to_tsvector('portuguese', 'Restauração (Deus Quer Restaurar) ' || '')
),
(
  'dunga-vida-nova',
  'Vida Nova (2 Coríntios 5, 17)',
  'Dunga / Canção Nova',
  'Dunga / Canção Nova',
  'C',
  104,
  '4/4',
  'Pop Rock Cristão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Páscoa',
  '2Cor 5, 17; Gl 2, 20',
  'popular',
  '[Intro] C  G  Am  F

[Primeira Parte]
   C         G
1. Quem está em Cristo nova criatura é,
   Am         F
As coisas antigas já ficaram para trás;
   C         G
Eis que tudo se fez novo pela força da fé,
   Am          F         G
Caminho livre na presença do Príncipe da Paz!

[Refrão]
   C         G
Vida nova eu encontrei nos braços de Jesus!
   Am         F
Liberdade verdadeira que brotou da Cruz!
   C         G
Já não sou eu quem vivo, mas Cristo vive em mim:
   Am      F         G           C
Canto ao mundo a alegria de um amor sem fim!

[Segunda Parte]
   C         G
2. Deixei as velhas estradas, escolhi a santidade,
   Am      F         G           C
Pois só a verdade de Cristo traz felicidade!',
  to_tsvector('portuguese', 'Vida Nova (2 Coríntios 5, 17) ' || '')
),
(
  'dunga-como-nao-falar-do-seu-amor',
  'Como Não Falar do Seu Amor',
  'Dunga / Canção Nova',
  'Dunga / Canção Nova',
  'A',
  92,
  '4/4',
  'Pop Missionário',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  12,
  'Final',
  'Tempo Comum',
  'At 4, 20; 1Cor 9, 16',
  'popular',
  '[Intro]  G  G/B  A/C#  D4  D

Verso 2x:

G           A           Bm  A/C# D
Cristo entrou em minha vida

G           A               Bm  A/C# D
Ele me mostrou que existe um céu

G             A               Bm  A/C# D
Sua graça trouxe paz e esperança

G           A            D  D4 D
Como não falar do seu amor

Refrão:

          A               Bm  A/C#  D
Agora posso cantar grande é o seu amor

            A            G   A   D
Quando não mereci Ele me resgatou

      A                   Bm  A/C#  D
Agora posso cantar para o mun do   ouvir

     A         G    A   D
Maravilhas Ele quer realizar em ti.

Intro 3x: G  G/B  A/C# D4 D

G           A           Bm  A/C# D
Cristo entrou em minha vida

G           A               Bm  A/C# D
Ele me mostrou que existe um céu

G             A               Bm  A/C# D
Sua graça trouxe paz e esperança

G           A            D D4 D
Como não falar do seu amor (2x)

Refrão:

          A               Bm  A/C#  D
Agora posso cantar grande é o seu amor

            A            G   A   D
Quando não mereci Ele me resgatou

      A                   Bm  A/C#  D
Agora posso cantar para o mun do   ouvir

     A         G    A   D
Maravilhas Ele quer realizar em ti.

Em        D A/C# Bm A G D/F#
Ou ou ooooo

Em        Bm A/C# D Em F#m G D/F#
Ou ou ooooo

Em        D A/C# Bm A G D/F#
Ou ou ooooo

Em        D
Ou ou ooooo

Refrão:

          A               Bm  A/C#  D
Agora posso cantar grande é o seu amor

            A            G   A   D
Quando não mereci Ele me resgatou

      A                   Bm  A/C#  D
Agora posso cantar para o mun do   ouvir

     A         G    A   D
Maravilhas Ele quer realizar em ti.

Final 3x:

     G        A
Realizar ah ah..

     Bm       A/C#
Realizar ah ah..

     Em        F#m7
Realizar ah ah..

    G    A   D
Realizar em ti.

Intro: G  G/B  A/C#

       Em7 D',
  to_tsvector('portuguese', 'Como Não Falar do Seu Amor ' || '')
),
(
  'dunga-quero-e-preciso',
  'Quero e Preciso',
  'Dunga / Canção Nova',
  'Dunga / Canção Nova',
  'E',
  72,
  '4/4',
  'Balada de Oração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  8,
  'Ação de Graças',
  'Qualquer',
  'Sl 41, 2-3; Fl 3, 8',
  'popular',
  'G  D/F#       Em                C
Eu sei,    teu Espírito está agindo, passo a passo sei

       Am7         D
Que encontrarei tua vontade em minha vida

G         Em
Rompe dentro em mim um amor inovador

      C         Am7        D
Sinto gosto em Tua Palavra, amor à Hóstia consagrada

     G       D/F#       Em      C            G/B     Am7         D
Eu quero te louvar com todo o meu ser, de toda a minha alma, mesmo sem entender

    G        D/F#      Em       C        G/B               Am7
Preciso te seguir, Teu amor vou perseguir, eu abro todo o meu ser, Tua Vontade tem que 

        D
acontecer

     G       D/F#       Em      C           G/B      Am7         D
Eu quero te louvar com todo o meu ser, de toda a minha alma, mesmo sem entender

    G        D/F#      Em       C        G/B               Am7
Preciso te seguir, Teu amor vou perseguir, eu abro todo o meu ser, Tua Vontade tem que 

        D
acontecer

( G  D/F#  Em  C )

( G/B  Am7  F  D/F# )

    G  D/F#       Em            C           Am7
Eu sei,   não pertenço a este mundo, tenho fome e sede do Senhor

    D
Alimento que vem do lugar que eu sou

  G        D/F#    Em
Treme o meu ser e teme o meu viver

   C         Am7            D
Eu sei: Tú és o meu Senhor, da minha vida és o Salvador!',
  to_tsvector('portuguese', 'Quero e Preciso ' || '')
),
(
  'dunga-phn-por-hoje-nao',
  'Geração PHN (Por Hoje Não Vou Mais Pecar)',
  'Dunga / Canção Nova',
  'Dunga / Canção Nova',
  'F',
  108,
  '4/4',
  'Pop Rock PHN',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  false,
  6,
  'Final',
  'Tempo Comum',
  'Rm 6, 12-14; 1Jo 2, 14',
  'popular',
  '[Intro] F  Bb  Dm  C  (2x)

[Primeira Parte]
F
Essa geração é esperança pro mundo
Bb
Através de nós, a paz chegará aos povos
Dm
De nós Ele fará um grande sinal pro mundo
C
E eles acreditarão que o perdão
Bb
Será, então, a grande revolução!

[Segunda Parte]
F
Eu hoje fui gerado assim
Bb
Na condição de tudo o que pedir
Dm
Em resposta me fará feliz
C
Sabendo: se na porta eu bater
Bb
Ela irá se abrir, apesar de tudo o que vivi!

[Refrão]
F
Não vou me separar de Ti
Bb
Pois também sou da casa de Davi
Dm
Já provei do Seu amor por mim
C
Durante toda a vida me senti chamado a Te servir
Bb         F
Apesar de tudo o que vivi!',
  to_tsvector('portuguese', 'Geração PHN (Por Hoje Não Vou Mais Pecar) ' || '')
),
(
  'pe-reginaldo-manzotti-pelo-nome',
  'Pelo Nome (As Muralhas Vão Cair)',
  'Padre Reginaldo Manzotti',
  'Padre Reginaldo Manzotti',
  'G',
  118,
  '4/4',
  'Pop Rock / Marcha de Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Js 6, 1-20; Is 43, 1',
  'popular',
  '[Intro] G  D  Em  C  G  D

[Primeira Parte]
G         D
Deus te conhece e te chama pelo nome
Em         C
Sabe as lutas que tu levas no coração
G         D
Mesmo quando a caminhada te consome
Em         C            D
Ele estende sobre ti a Sua mão

[Refrão]
         G       D
As muralhas vão cair, as muralhas vão cair
         Em         C
Pelo poder do Nome Santo de Jesus!
         G     D
As muralhas vão cair, o Senhor vai agir
         Em          C        D       G
E a vitória brilhará na tua vida em Sua luz!

[Segunda Parte]
G         D
Dê uma volta ao redor dessa muralha
Em         C
Ergue a voz em oração e em louvor
G         D
Pois o Senhor é quem vence esta batalha
Em         C            D
Não há cadeias que resistam ao Seu amor

[Refrão]
         G       D
As muralhas vão cair, as muralhas vão cair
         Em         C
Pelo poder do Nome Santo de Jesus!
         G     D
As muralhas vão cair, o Senhor vai agir
         Em          C        D       G
E a vitória brilhará na tua vida em Sua luz!

[Final]
     C         D            G   Em
Pelo nome o Senhor hoje te chamou!
     C         D            G
Toda muralha pelo sangue tombou!',
  to_tsvector('portuguese', 'Pelo Nome (As Muralhas Vão Cair) ' || '')
),
(
  'pe-reginaldo-manzotti-o-amigo-mais-certo',
  'O Amigo Mais Certo',
  'Padre Reginaldo Manzotti',
  'Padre Reginaldo Manzotti',
  'C',
  72,
  '4/4',
  'Balada / Dedilhado',
  'P  I  M  A  M  I',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Jo 15, 13-15; Eclo 6, 14',
  'popular',
  '[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C              G/B
Nas horas incertas da minha caminhada
Am         Em
Quando a solidão tenta ferir meu coração
F              C/E
Olho para o alto e vejo a Tua face amada
Dm         G7
Estendendo para mim a Tua santa mão

[Refrão]
   C              G/B
Tu és o amigo mais certo nas horas incertas
Am         Em
A luz que ilumina as minhas trevas mais desertas
F         G7         C        Am
Jesus, meu Senhor, meu abrigo fiel
Dm         G7         C
Contigo na terra já vivo o céu!

[Segunda Parte]
C              G/B
Não me chamaste servo, mas sim Teu amigo
Am         Em
Deste a Tua vida sobre a cruz pra me salvar
F              C/E
Por isso nada temo se caminhas cá comigo
Dm         G7
Contigo para sempre eu quero caminhar

[Refrão]
   C              G/B
Tu és o amigo mais certo nas horas incertas
Am         Em
A luz que ilumina as minhas trevas mais desertas
F         G7         C        Am
Jesus, meu Senhor, meu abrigo fiel
Dm         G7         C
Contigo na terra já vivo o céu!

[Final]
F         G7         C   Am
Jesus, meu Senhor, meu amigo fiel
Dm         G7         C
Contigo na terra já vivo o céu!',
  to_tsvector('portuguese', 'O Amigo Mais Certo ' || '')
),
(
  'pe-reginaldo-manzotti-oracao-pela-paz',
  'Oração pela Paz',
  'Padre Reginaldo Manzotti',
  'Padre Reginaldo Manzotti',
  'E',
  78,
  '4/4',
  'Balada / Canção da Paz',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  'Jo 14, 27; Mt 5, 9',
  'popular',
  '[Intro] E  B7  C#m  A  B7  E

[Primeira Parte]
E          B/D#
Senhor, faz de mim instrumento de Tua paz
C#m         G#m
Onde houver discórdia, que eu leve a união
A          E/G#
Onde houver ofensa, o perdão que refaz
F#m         B7
Onde houver a treva, a Tua clara visão

[Refrão]
E         B7
Dai-nos a paz, Senhor, a Tua santa paz!
C#m         A
Paz que o mundo inteiro não pode nos dar
E            B7            C#m
Vem curar as famílias, vem unir as nações
A            B7           E
E reinar para sempre nos corações!

[Segunda Parte]
E          B/D#
Que eu não busque tanto ser consolado
C#m         G#m
Mas saiba consolar a quem sofre na dor
A          E/G#
Pois é dando a vida e perdoando o pecado
F#m         B7
Que nascemos de novo para o Teu amor

[Refrão]
E         B7
Dai-nos a paz, Senhor, a Tua santa paz!
C#m         A
Paz que o mundo inteiro não pode nos dar
E            B7            C#m
Vem curar as famílias, vem unir as nações
A            B7           E
E reinar para sempre nos corações!

[Final]
A            B7           C#m  A
E reinar para sempre nos corações!
F#m          B7           E
Senhor, dai-nos a Tua paz!',
  to_tsvector('portuguese', 'Oração pela Paz ' || '')
),
(
  'pe-antonio-maria-hino-do-terco-dos-homens',
  'Hino do Terço dos Homens',
  'Padre Antônio Maria',
  'Padre Antônio Maria',
  'G',
  104,
  '4/4',
  'Marcha / Guarânia',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Festas Marianas',
  'Lc 1, 28.42; At 1, 14',
  'popular',
  '[Intro] G  D7  C  G  D7  G

[Primeira Parte]
G         D7
Homens de fé, de joelhos no chão
C         G
De terço nos dedos e amor no coração
G         D7
Viemos rezar com a Mãe do Senhor
C         D7         G
Pedindo às famílias a paz e o amor

[Refrão]
   G         D7
Terço dos Homens, escola de fé!
   C         G
Com Nossa Senhora ficamos de pé!
   C         G          Em
Rezando em família, servindo ao Senhor
   Am        D7          G
Levando ao mundo a paz e o amor!

[Segunda Parte]
G         D7
Em cada mistério da vida de Cristo
C         G
Maria nos mostra o caminho bendito
G         D7
Homens que rezam constroem a paz
C         D7         G
E levam a bênção que o Evangelho traz

[Refrão]
   G         D7
Terço dos Homens, escola de fé!
   C         G
Com Nossa Senhora ficamos de pé!
   C         G          Em
Rezando em família, servindo ao Senhor
   Am        D7          G
Levando ao mundo a paz e o amor!

[Final]
   C         D7          G   Em
Ave Maria, Rainha da Paz!
   Am        D7          G
Abençoa os homens e nossos casais!',
  to_tsvector('portuguese', 'Hino do Terço dos Homens ' || '')
),
(
  'pe-antonio-maria-e-bom-ter-familia',
  'É Bom Ter Família',
  'Padre Antônio Maria',
  'Padre Antônio Maria',
  'D',
  82,
  '4/4',
  'Balada / Canção Familiar',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Sl 127 (128); Cl 3, 12-17',
  'popular',
  '[Intro] D  Bm  Em  A7  D  A7

[Primeira Parte]
D         Bm
É no campo da vida que se esconde um tesouro
Em         A7
Vale mais que a prata, vale mais que o ouro
D         Bm
É presente de Deus, é o céu já aqui
Em          A7          D      D7
O amor mora ali e se chama família!

[Refrão]
G         D
Como é bom ter a minha família, como é bom!
Em         A7          D   D7
Vale a pena vender tudo mais para poder comprar
G         D         Bm
Esse campo que esconde um tesouro, que é puro dom
Em          A7          D
É meu ouro, meu céu, meu lugar!

[Segunda Parte]
D         Bm
Até mesmo o céu desejou ser família
Em         A7
Para que a família desejasse ser céu
D         Bm
Nela se faz a paz no ouvir, no falar
Em          A7          D      D7
E na arte de amar o amargo vira mel!

[Refrão]
G         D
Como é bom ter a minha família, como é bom!
Em         A7          D   D7
Vale a pena vender tudo mais para poder comprar
G         D         Bm
Esse campo que esconde um tesouro, que é puro dom
Em          A7          D
É meu ouro, meu céu, meu lugar!

[Final]
Em          A7          Bm     G
Na família a gente aprende a amar
Em          A7          D
Abençoa, Senhor, nosso lar!',
  to_tsvector('portuguese', 'É Bom Ter Família ' || '')
),
(
  'pe-antonio-maria-mae-peregrina',
  'Mãe Peregrina',
  'Padre Antônio Maria',
  'Padre Antônio Maria',
  'C',
  76,
  '3/4',
  'Valsa Mariana',
  '↓  ↑ ↓  ↑ ↓',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Festas Marianas',
  'Lc 1, 39-45',
  'popular',
  '[Intro] C  G7  C  F  G7  C

[Primeira Parte]
C         G7
Mãe Admirável, ó Mãe Peregrina
Dm            G7           C
A Tua visita aquece e ilumina
C7         F
Pois trazes contigo Teu Filho Jesus
    C         Am     Dm   G7   C
Que é vida, caminho, verdade e luz!

[Refrão]
   G7         C
Por brisa suave entraste em meu lar
   G7         C     C7
Vem tudo, Senhora, aqui transformar
   F         C      Am
Abençoa a família, ensina a rezar
   Dm        G7         C
Mãe Peregrina, vem conosco ficar!

[Segunda Parte]
C         G7
Saindo apressada pelas montanhas vais
Dm            G7           C
Levando às famílias a graça e a paz
C7         F
Transforma as casas em santuários de amor
    C         Am     Dm   G7   C
Fiéis servidores de Cristo Senhor!

[Refrão]
   G7         C
Por brisa suave entraste em meu lar
   G7         C     C7
Vem tudo, Senhora, aqui transformar
   F         C      Am
Abençoa a família, ensina a rezar
   Dm        G7         C
Mãe Peregrina, vem conosco ficar!

[Final]
   F         G7         C   Am
Mãe Três Vezes Admirável de amor
   Dm        G7         C
Leva nossa família a Jesus, o Senhor!',
  to_tsvector('portuguese', 'Mãe Peregrina ' || '')
),
(
  'pe-antonio-maria-pegadas-na-areia',
  'Pegadas na Areia',
  'Padre Antônio Maria',
  'Padre Antônio Maria',
  'A',
  72,
  '4/4',
  'Balada / Dedilhado',
  'P  I  M  A  M  I',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Is 46, 4; Dt 1, 31',
  'popular',
  '[Intro] A  E/G#  F#m  D  E7  A

[Primeira Parte]
A          E/G#
Sonhei que caminhava pela praia com o Senhor
F#m         C#m
E no céu passavam cenas da minha vida inteira
D          A/C#
Percebi que na areia do caminho em que passei
Bm         E7
Havia dois pares de pegadas na beira

[Refrão]
   A          E/G#
Meu filho, Eu te amo e jamais te deixei só
   F#m         C#m
Nas horas de angústia, de tristeza e de dor
   D          A/C#       F#m
Quando viste na areia um só par de pegadas
   Bm         E7            A
Era Eu te carregando nos braços de amor!

[Segunda Parte]
A          E/G#
Perguntei então a Cristo: "Meu Senhor, por que razão
F#m         C#m
Nos momentos mais difíceis só vi um rastro no chão?"
D          A/C#
E Jesus olhou pra mim com ternura sem igual
Bm         E7
Respondendo com doçura e amor celestial:

[Refrão]
   A          E/G#
Meu filho, Eu te amo e jamais te deixei só
   F#m         C#m
Nas horas de angústia, de tristeza e de dor
   D          A/C#       F#m
Quando viste na areia um só par de pegadas
   Bm         E7            A
Era Eu te carregando nos braços de amor!

[Final]
   D         E7            F#m  D
Quando viste na areia um só par de pegadas
   Bm         E7            A
Era Eu te carregando nos braços de amor!',
  to_tsvector('portuguese', 'Pegadas na Areia ' || '')
),
(
  'pe-antonio-maria-cura-senhor-onde-doi',
  'Cura, Senhor, Onde Dói',
  'Padre Antônio Maria',
  'Padre Antônio Maria',
  'E',
  68,
  '4/4',
  'Balada de Oração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  13,
  'Ação de Graças',
  'Qualquer',
  'Is 53, 4-5; Lc 4, 40',
  'popular',
  'E             B/D#            C#m  C#m/B
1  Vamos Jesus passear, na minha vida

F#m    B     Bm  E7 D/F#  E/G#
Quero voltar aos lugares em que fiquei só

A           B/A     G#m         C#m
Quero voltar lá contigo, vendo que estavas comigo

F#m         B         E  E7
Quero sentir teu amor, a me embalar

[Refrão]

A                  B/A
Cura Senhor, onde dói

G#m         C#m
Cura Senhor, bem aqui

F#m         B          Bm E7
Cura Senhor, onde eu não posso ir

A                  B/A
Cura Senhor, onde dói

G#m         C#m
Cura Senhor, bem aqui

F#m         B            E
Cura Senhor, onde eu não posso ir

     E    B/D#         C#m C#m/B
2  Quando a lembrança me faz, adormecer

F#m    B                Bm  E7  D/F#  E/G#
Sabes que a espada da dor entra eu meu ser

A           B/A    G#m                C#m
Tu me carregas nos braços, leva-me com teu abraço

F#m      B         E E7
Sinto minha alma chorar, junto de Ti

    E    B/D#        C#m C#m/B
3  Tantas lembranças eu quero, esquecer

F#m    B             Bm  E7 D/F#  E/G#
Deixa um vazio em minha''lma e em meu viver

A           B/A    G#m          C#m
Toma Senhor meu espaço, te entrego todo o cansaço

F#m      B            E E7
Quero acordar com tua paz a me aquecer',
  to_tsvector('portuguese', 'Cura, Senhor, Onde Dói ' || '')
),
(
  'pe-joaozinho-salve-rainha',
  'Salve Rainha, Mãe de Deus',
  'Padre Joãozinho, scj',
  'Padre Joãozinho, scj',
  'F',
  84,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Festas Marianas',
  'Lc 1, 28-48',
  'popular',
  '[Intro] F  Bb  C7  F

[Refrão]
F         Bb        C7        F
Salve Rainha, Mãe de Deus,
Dm            Gm        C7        F
És Senhora, nossa Mãe,
Bb            C7        Am        Dm
Nossa doçura, nossa luz,
Gm            C7        F
Doce Virgem Maria!

[Primeira Parte]
F         Bb
1. Nós a Ti clamamos, filhos exilados,
C7         F
Nós a Ti voltamos nosso olhar confiante,
Dm         Gm
Volta para nós, ó Mãe, Teu semblante de amor,
C7         F
Depois deste exílio mostra-nos Jesus!

[Refrão]
F         Bb        C7        F
Salve Rainha, Mãe de Deus,
Dm            Gm        C7        F
És Senhora, nossa Mãe,
Bb            C7        Am        Dm
Nossa doçura, nossa luz,
Gm            C7        F
Doce Virgem Maria!

[Segunda Parte]
F         Bb
2. Ó clemente, ó piedosa,
C7         F
Ó sempre doce Virgem Maria,
Dm         Gm
Roga pelo povo santo de Deus,
C7         F
Para que sejamos dignos das promessas do Senhor!

[Final]
Bb            C7        Am        Dm
Nossa doçura, nossa luz,
Gm            C7        F
Doce Virgem Maria!',
  to_tsvector('portuguese', 'Salve Rainha, Mãe de Deus ' || '')
),
(
  'ziza-fernandes-o-que-agrada-a-deus',
  'O Que Agrada a Deus',
  'Ziza Fernandes',
  'Ziza Fernandes',
  'D',
  72,
  '4/4',
  'Balada / MPB Católica',
  'P  I  M  A  M  I',
  false,
  true,
  true,
  6,
  'Ação de Graças',
  'Qualquer',
  'Sl 130 (131); Mt 18, 3-4',
  'popular',
  '[Intro] D  A/C#  Bm  G  Em  A7  D

[Primeira Parte]
D          A/C#
O que agrada a Deus em minha pequena alma
Bm         F#m
É ver que eu amo a minha pequenez
G          D/F#
E a minha pobreza, a minha pequenez
Em         A7
É a esperança cega que tenho em Sua misericórdia!

[Refrão]
   D          A/C#
Na Tua misericórdia eu confio, Senhor,
   Bm         F#m
Mesmo sendo tão frágil, sou alvo do Teu amor!
   G          D/F#          Bm
Toma minha pequenez, faz-me toda Tua enfim,
   Em         A7         D
Pois o Teu olhar pousou sobre mim!

[Segunda Parte]
D          A/C#
Não tenho grandes obras para Te oferecer
Bm         F#m
Senão as flores simples do meu cotidiano
G          D/F#
Colhidas no silêncio do meu pequeno ser
Em         A7
E entregues no altar do Teu plano soberano!

[Refrão]
   D          A/C#
Na Tua misericórdia eu confio, Senhor,
   Bm         F#m
Mesmo sendo tão frágil, sou alvo do Teu amor!
   G          D/F#          Bm
Toma minha pequenez, faz-me toda Tua enfim,
   Em         A7         D
Pois o Teu olhar pousou sobre mim!

[Final]
   G      A7            Bm    G
É a esperança cega que tenho em Teu amor,
   Em         A7         D
Em Tua misericórdia, Senhor!',
  to_tsvector('portuguese', 'O Que Agrada a Deus ' || '')
),
(
  'ziza-fernandes-fogo-suave',
  'Fogo Suave',
  'Ziza Fernandes',
  'Ziza Fernandes',
  'G',
  76,
  '4/4',
  'Balada Acústica',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Páscoa',
  '1Rs 19, 12; At 2, 3',
  'popular',
  '​[Intro] C7M  G/B  Am7  G7  F7M

​        Em7  Dm7  F/A  G7  C7M


​       F7M        G/F           Em7   Am7
​Teus dedos tocam o meu pensar, carinho em minha alma

​     Dm7    G        C7M         C7
​Sossega e acalma minha vida agitada

​    F7M        G/F       Em7   Am7
​Tua presença me acolhe, não vou embora

​       Dm7   G       C7M     C7(9)  Bb/C
​É tua esta hora, estou nascendo


​[Refrão]


​  F7M  G/F          Em7  E°
​Adorarei, Espírito Santo

​   Dm7         G           C7M   C7
​Fogo suave, abrasador, doce hóspede da alma

​  F7M  G/F          Em   E°
​Adorarei, Espírito Santo

​   Dm7         G           C7M   C7(9)  Bb/C
​Fogo suave, abrasador, doce hóspede da alma


​      F7M        G/F     Em7      Am7
​Meus olhos cantam ao chorar, Arrependida

​     Dm7    G     C7M       C7
​Ovelha fugida Querendo voltar

​      F7M          G/F         Em7     Am7
​Aprecia o canto que eu te dou, Colhe as palavras

​      Dm7   G       C7M     C7(9)  Bb/C
​Saudosas da alma, Sedenta de amor',
  to_tsvector('portuguese', 'Fogo Suave ' || '')
),
(
  'banda-dominus-imenso-amor',
  'Imenso Amor',
  'Banda Dominus',
  'Banda Dominus',
  'G',
  78,
  '4/4',
  'Pop Rock Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Rm 8, 35-39; Ef 3, 18-19',
  'popular',
  '[Intro] G  D  Em  C  G  D

[Primeira Parte]
G         D
Como explicar um amor tão grande assim
Em         C
Que entregou Sua vida na cruz por mim?
G         D
Mesmo quando eu me afasto do Teu olhar
Em         C           D
Tuas mãos abertas continuam a me esperar!

[Refrão]
   G         D
Imenso amor que invade o meu coração,
   Em         C
Trazendo vida nova, paz e salvação!
   G        D            Em
Nada poderá me separar de Ti, Senhor,
   C          D            G
Eu vivo mergulhado nesse imenso amor!

[Segunda Parte]
G         D
Nem a altura, nem a profundidade ou dor
Em         C
Podem apagar a chama desse amor
G         D
Em Tua presença encontro o meu lugar
Em         C           D
Para sempre o Teu Nome eu quero exaltar!

[Refrão]
   G         D
Imenso amor que invade o meu coração,
   Em         C
Trazendo vida nova, paz e salvação!
   G        D            Em
Nada poderá me separar de Ti, Senhor,
   C          D            G
Eu vivo mergulhado nesse imenso amor!

[Final]
   C          D            Em   C
Nada poderá me separar de Ti, Senhor,
   Am         D            G
Eu vivo mergulhado nesse imenso amor!',
  to_tsvector('portuguese', 'Imenso Amor ' || '')
),
(
  'banda-dominus-o-amor',
  'O Amor (Ainda que Eu Falasse a Língua dos Anjos)',
  'Banda Dominus',
  'Banda Dominus',
  'D',
  82,
  '4/4',
  'Pop Acústico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Tempo Comum',
  '1Cor 13, 1-13',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D          A/C#
Ainda que eu falasse a língua dos homens e dos anjos
Bm         G
E tivesse a fé capaz de transportar os montes
D          A/C#
Se eu não tivesse o amor que vem de Deus
Em         A7
Nada disso adiantaria aos olhos Seus!

[Refrão]
   D          A/C#
O amor é paciente, o amor é prestativo,
   Bm         G
Não se alegra com a injustiça, mas no bem é sempre vivo!
   D          A/C#         Bm
Tudo sofre, tudo crê, tudo espera e suporta,
   Em         A7           D
O amor jamais acaba, o amor é o que importa!

[Segunda Parte]
D          A/C#
Passarão as profecias, cessarão todas as línguas
Bm         G
Mas a caridade eterna permanece e nos abriga
D          A/C#
Fé, esperança e amor permanecem entre nós
Em         A7
Mas o maior deles é o amor que nos faz um só!

[Refrão]
   D          A/C#
O amor é paciente, o amor é prestativo,
   Bm         G
Não se alegra com a injustiça, mas no bem é sempre vivo!
   D          A/C#         Bm
Tudo sofre, tudo crê, tudo espera e suporta,
   Em         A7           D
O amor jamais acaba, o amor é o que importa!

[Final]
   G          A7           Bm   G
Tudo sofre, tudo crê, tudo espera e suporta,
   Em         A7           D
O amor jamais acaba!',
  to_tsvector('portuguese', 'O Amor (Ainda que Eu Falasse a Língua dos Anjos) ' || '')
),
(
  'banda-dominus-com-jesus-e-festa',
  'Com Jesus É Festa',
  'Banda Dominus',
  'Banda Dominus',
  'A',
  126,
  '4/4',
  'Pop / Axé Cristão',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  'Jo 2, 1-11; Sl 150',
  'popular',
  '[Intro] A  D  E7  A  D  E7

[Primeira Parte]
A         D
Onde está Jesus a tristeza não tem vez
E7         A
Como em Caná da Galileia a água em vinho Ele fez!
A         D
Convida Maria e chama os irmãos
E7         A
Pois o Senhor transforma o nosso coração!

[Refrão]
   A         D
Com Jesus é festa, é alegria de viver!
   E7         A
O vinho novo da graça não vai faltar pra você!
   A          D            F#m
Levante as mãos pro céu e comece a louvar,
   Bm         E7           A
Pois Jesus está presente neste lugar!

[Segunda Parte]
A         D
Não existe vida morna pra quem segue o Salvador
E7         A
Cada dia é uma festa de serviço e de amor!
A         D
Na força do Espírito vamos anunciar
E7         A
Que só em Jesus Cristo há razão pra celebrar!

[Refrão]
   A         D
Com Jesus é festa, é alegria de viver!
   E7         A
O vinho novo da graça não vai faltar pra você!
   A          D            F#m
Levante as mãos pro céu e comece a louvar,
   Bm         E7           A
Pois Jesus está presente neste lugar!

[Final]
   D          E7           F#m  D
O vinho novo da graça não vai faltar!
   Bm         E7           A
Com Jesus é festa!',
  to_tsvector('portuguese', 'Com Jesus É Festa ' || '')
),
(
  'banda-dominus-discipulo',
  'Discípulo',
  'Banda Dominus',
  'Banda Dominus',
  'E',
  108,
  '4/4',
  'Pop Rock Missionário',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Jo 13, 35; Mt 28, 19',
  'popular',
  '[Intro] E  A  B7  E  B7

[Primeira Parte]
E         A
Tu me chamaste pela graça do Teu olhar
B7         E
Deixei as redes na praia para Te acompanhar
C#m         A
Aprendi nos Teus passos a servir e perdoar
F#m         B7
E hoje a minha vida é o Teu Reino anunciar!

[Refrão]
   E         A
Quero ser Teu discípulo, Senhor Jesus,
   B7         E
Caminhar na Tua verdade, viver na Tua luz!
   C#m         A
Nisto todos saberão que somos Teus irmãos:
   F#m        B7           E
Se tivermos amor no coração!

[Segunda Parte]
E         A
Não importa a distância nem o vento a soprar
B7         E
Tua Palavra é a bússola a me orientar
C#m         A
Com a força do Espírito vou testemunhar
F#m         B7
Que só Tu tens palavras de vida pra nos dar!

[Refrão]
   E         A
Quero ser Teu discípulo, Senhor Jesus,
   B7         E
Caminhar na Tua verdade, viver na Tua luz!
   C#m         A
Nisto todos saberão que somos Teus irmãos:
   F#m        B7           E
Se tivermos amor no coração!

[Final]
   A          B7           C#m  A
Caminhar na Tua verdade, viver na Tua luz!
   F#m        B7           E
Sou Teu discípulo, Senhor Jesus!',
  to_tsvector('portuguese', 'Discípulo ' || '')
),
(
  'banda-dominus-autor-da-vida',
  'Autor da Vida',
  'Banda Dominus',
  'Banda Dominus',
  'C',
  80,
  '4/4',
  'Balada de Louvor',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  4,
  'Ação de Graças',
  'Páscoa',
  'At 3, 15; Hb 12, 2',
  'popular',
  '[Intro] C  G  Am  F  G7  C

[Primeira Parte]
C         G
Fixo os meus olhos em Ti, Senhor Jesus
Am         F
Que por amor venceste a morte lá na cruz
C         G
Tua ressurreição abriu as portas da manhã
Am            F            G7
E renovou a esperança da família cristã!

[Refrão]
   C         G
Tu és o Autor da Vida, o Princípio e o Fim,
   Am         F
O Cordeiro exaltado que se entregou por mim!
   C        G            Am
Toda a criação proclama o Teu louvor:
   F          G7           C
Jesus Cristo é o Senhor!

[Segunda Parte]
C         G
Em Tuas mãos entrego a história do meu ser
Am         F
Escreve em minha alma o Teu santo querer
C         G
Pois onde Tu estás floresce a salvação
Am            F            G7
E a vida eterna pulsa em nosso coração!

[Refrão]
   C         G
Tu és o Autor da Vida, o Princípio e o Fim,
   Am         F
O Cordeiro exaltado que se entregou por mim!
   C        G            Am
Toda a criação proclama o Teu louvor:
   F          G7           C
Jesus Cristo é o Senhor!

[Final]
   F          G7           Am   F
Toda a criação proclama o Teu louvor:
   Dm         G7           C
Tu és o Autor da Vida, Senhor!',
  to_tsvector('portuguese', 'Autor da Vida ' || '')
),
(
  'banda-dominus-joga-pra-la',
  'Joga pra Lá',
  'Banda Dominus',
  'Banda Dominus',
  'G',
  122,
  '4/4',
  'Samba-Reggae / Pop Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  4,
  'Ação de Graças',
  'Qualquer',
  '1Pd 5, 7; Fl 4, 4',
  'popular',
  '[Intro] G  C  D7  G  C  D7

[Primeira Parte]
G         C
Por que ficar parado olhando para o chão
D7         G
Se Deus já preparou a tua libertação?
G         C
Entrega a ansiedade nas mãos do Salvador
D7         G
Pois Ele tem cuidado de ti com Seu amor!

[Refrão]
   G         C
Joga pra lá toda tristeza e solidão!
   D7         G
Deixa a alegria de Jesus encher teu coração!
   Em         C
Quem tem a fé em Cristo não anda mais sozinho,
   Am         D7           G
Tem a luz do Evangelho clareando o seu caminho!

[Segunda Parte]
G         C
A graça do Senhor renova o teu viver
D7         G
Com Ele a vitória já pertence a você!
G         C
Sorria para a vida e cante ao Criador
D7         G
Levando a todo o mundo a chama desse amor!

[Refrão]
   G         C
Joga pra lá toda tristeza e solidão!
   D7         G
Deixa a alegria de Jesus encher teu coração!
   Em         C
Quem tem a fé em Cristo não anda mais sozinho,
   Am         D7           G
Tem a luz do Evangelho clareando o seu caminho!

[Final]
   C          D7           G   Em
Deixa a alegria de Jesus encher teu coração!
   Am         D7           G
Alegra-te no Senhor!',
  to_tsvector('portuguese', 'Joga pra Lá ' || '')
),
(
  'eugenio-jorge-ao-teu-encontro',
  'Ao Teu Encontro',
  'Eugênio Jorge',
  'Eugênio Jorge',
  'C',
  70,
  '4/4',
  'Dedilhado / Adoração',
  'P  I  M  A  M  I',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Sl 41 (42), 2-3; Ct 3, 1-4',
  'popular',
  '[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C              G/B
O meu coração tem sede de amar
Am         Em
Venho ao Teu encontro para Te adorar
F              C/E
Como a corça suspira pelas águas vivas
Dm         G7
Minha alma procura a Tua presença divina!

[Refrão]
   C              G/B
Eis-me aqui, Senhor, diante do Teu altar,
   Am         Em
Nada mais importa senão Te contemplar!
   F        C/E         Am
Tua paz me envolve, Teu amor me refaz,
   Dm         G7           C
Só em Ti minha alma descansa em paz!

[Segunda Parte]
C              G/B
No silêncio sagrado desta comunhão
Am         Em
Escuto o bater do Teu manso coração
F              C/E
Transforma a minha vida em hóstia de louvor
Dm         G7
Totalmente entregue ao Teu eterno amor!

[Refrão]
   C              G/B
Eis-me aqui, Senhor, diante do Teu altar,
   Am         Em
Nada mais importa senão Te contemplar!
   F        C/E         Am
Tua paz me envolve, Teu amor me refaz,
   Dm         G7           C
Só em Ti minha alma descansa em paz!

[Final]
   F          G7           C   Am
Tua paz me envolve, Teu amor me refaz,
   Dm         G7           C
Venho ao Teu encontro, Senhor!',
  to_tsvector('portuguese', 'Ao Teu Encontro ' || '')
),
(
  'nelsinho-correa-quem-perde-sua-vida',
  'Quem Perde Sua Vida a Encontrará',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'D',
  76,
  '4/4',
  'Balada Eucarística / Vocacional',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Comunhão',
  'Quaresma',
  'Jo 12, 24-25; Mc 8, 35',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D          A/C#
Quem perde sua vida por Mim a encontrará,
Bm         F#m
Quem deixa seu pai por Mim, sua mãe por Mim, me encontrará!
G          D/F#
Não tenhas medo, não tenhas medo,
Em            A7           D      D7
Eu estou aqui, Eu estou aqui!

[Refrão]
   G         A7
Quem deixa sua terra por Mim, seus bens por Mim,
   F#m         Bm
Seus filhos por Mim, me encontrará!
   Em         A7
Não tenhas medo, Eu conheço aqueles que escolhi,
   D         D7
Aqueles que escolhi!
   G         A7
Quem perde sua vida por Mim a encontrará,
   F#m         Bm
Quem perde sua vida por Mim a encontrará,
   Em         A7           D
Quem perde sua vida por Mim a encontrará!

[Segunda Parte]
D          A/C#
Se o grão de trigo não morre na terra, fica só,
Bm         F#m
Mas se entrega a vida no chão, produz muito fruto!
G          D/F#
Onde Eu estiver, estará também o Meu servidor,
Em            A7           D      D7
E o Pai O honrará no Seu imenso amor!

[Refrão]
   G         A7
Quem deixa sua terra por Mim, seus bens por Mim,
   F#m         Bm
Seus filhos por Mim, me encontrará!
   Em         A7
Não tenhas medo, Eu conheço aqueles que escolhi,
   D         D7
Aqueles que escolhi!

[Final]
   Em         A7           Bm   G
Não tenhas medo, Eu estou aqui:
   Em         A7           D
Quem perde sua vida por Mim a encontrará!',
  to_tsvector('portuguese', 'Quem Perde Sua Vida a Encontrará ' || '')
),
(
  'nelsinho-correa-caminhando-com-maria',
  'Caminhando com Maria',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'G',
  94,
  '4/4',
  'Marcha Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Festas Marianas',
  'Lc 1, 38-45; Jo 19, 26-27',
  'popular',
  '[Intro] G  C  D7  G  D7

[Primeira Parte]
G         Bm
Santa Mãe Maria, nessa travessia
C         D7           G       G7
Cubra-nos Teu manto cor de anil!
C          G          Em
Guarda nossa vida, Mãe Aparecida,
Am            D7           G          G7
Santa Padroeira do Brasil!

[Refrão]
   C          D7           G          Em
Ave, Maria! Ave, Maria!
   Am         D7           G          G7
Caminhando com Maria vamos a Jesus!
   C          D7           G          Em
Ave, Maria! Ave, Maria!
   Am         D7           G
Caminhando com Maria vamos para a luz!

[Segunda Parte]
G         Bm
Mulher peregrina, força feminina
C         D7           G       G7
A mais importante que existiu!
C           G          Em
Com justiça queres que nossas mulheres
Am            D7           G          G7
Sejam construtoras do Brasil!

[Refrão]
   C          D7           G          Em
Ave, Maria! Ave, Maria!
   Am         D7           G          G7
Caminhando com Maria vamos a Jesus!
   C          D7           G          Em
Ave, Maria! Ave, Maria!
   Am         D7           G
Caminhando com Maria vamos para a luz!

[Final]
   C          D7           G   Em
Guarda nossa vida, Mãe Aparecida:
   Am         D7           G
Caminhando com Maria vamos a Jesus!',
  to_tsvector('portuguese', 'Caminhando com Maria ' || '')
),
(
  'nelsinho-correa-foi-assim',
  'Foi Assim',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'Diácono Nelsinho Corrêa / Canção Nova',
  'C',
  74,
  '4/4',
  'Balada Testemunhal',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Jr 20, 7; Fl 3, 8-12',
  'popular',
  '[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C              G/B
Conheci um mundo mau e com ele seus ardis
Am         Em
Me afastei do Teu caminho procurando ser feliz
F              C/E
Mas Tu vieste ao meu encontro com Teu olhar de compaixão
Dm         G7
E resgataste a minha vida segurando a minha mão!

[Refrão]
   C              G/B
Foi assim que me salvaste, meu Senhor,
   Am         Em
Com a força invencível do Teu amor!
   F        C/E         Am
Hoje tudo o que eu sou pertence a Ti,
   Dm         G7           C
Pois a verdadeira vida em Ti descobri!

[Segunda Parte]
C              G/B
Já não olho para trás, deixei tudo por Jesus
Am         Em
Para seguir os Teus passos carregando a minha cruz
F              C/E
Tua graça me sustenta em cada novo alvorecer
Dm         G7
Para sempre em Tua casa eu desejo permanecer!

[Refrão]
   C              G/B
Foi assim que me salvaste, meu Senhor,
   Am         Em
Com a força invencível do Teu amor!
   F        C/E         Am
Hoje tudo o que eu sou pertence a Ti,
   Dm         G7           C
Pois a verdadeira vida em Ti descobri!

[Final]
   F          G7           C   Am
Hoje tudo o que eu sou pertence a Ti:
   Dm         G7           C
Obrigado, meu Senhor, por me amar assim!',
  to_tsvector('portuguese', 'Foi Assim ' || '')
),
(
  'toca-de-assis-pra-sempre-teu',
  'Pra Sempre Teu',
  'Fraternidade Toca de Assis',
  'Fraternidade Toca de Assis',
  'G',
  70,
  '4/4',
  'Dedilhado Eucarístico',
  'P  I  M  A  M  I',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Ct 6, 3; Jo 6, 68',
  'popular',
  '[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
G          D/F#
Diante da Hóstia Santa me coloco em adoração
Em         Bm
Contemplo o Mistério excelso da Tua imolação
C              G/B
Tão pequeno no ostensório e tão grande no amor
Am         D7
Tu és o Rei do Universo, meu Deus e meu Senhor!

[Refrão]
   G          D/F#
Quero ser pra sempre Teu, somente Teu, Jesus,
   Em         Bm
Adorar-Te no altar e abraçar a Tua cruz!
   C           G/B         Em
Nos pobres sofredores ver o Teu olhar brilhar,
   Am         D7           G
Pra sempre Teu eu quero ser e Te amar!

[Segunda Parte]
G          D/F#
Como São Francisco em Assis quero viver na pobreza
Em         Bm
Encontrando em Teu Corpo a verdadeira riqueza
C              G/B
Sacia a fome da minh''alma com o Pão Celestial
Am         D7
E recebe a minha entrega num amor esponsal!

[Refrão]
   G          D/F#
Quero ser pra sempre Teu, somente Teu, Jesus,
   Em         Bm
Adorar-Te no altar e abraçar a Tua cruz!
   C           G/B         Em
Nos pobres sofredores ver o Teu olhar brilhar,
   Am         D7           G
Pra sempre Teu eu quero ser e Te amar!

[Final]
   C          D7           Em   C
Adorado seja sempre o Santíssimo Sacramento:
   Am         D7           G
Sou pra sempre Teu, Senhor!',
  to_tsvector('portuguese', 'Pra Sempre Teu ' || '')
),
(
  'toca-de-assis-todo-teu-o-mae',
  'Todo Teu, ó Mãe',
  'Fraternidade Toca de Assis',
  'Fraternidade Toca de Assis',
  'D',
  72,
  '4/4',
  'Balada Mariana Suave',
  'P  I  M  A  M  I',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Festas Marianas',
  'Jo 19, 26-27; Lc 1, 38',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D          A/C#
Aos pés da cruz o Teu Filho nos confiou a Ti
Bm         F#m
"Eis aí a tua Mãe!", com amor eu acolhi
G          D/F#
Recebe em tua casa o meu frágil coração
Em         A7
Modela a minha vida na escola da oração!

[Refrão]
   D          A/C#
Sou todo Teu, ó Mãe, tudo o que sou pertence a Ti!
   Bm         F#m
Conduze os meus passos no caminho que escolhi!
   G        D/F#        Bm
Ensina-me a adorar Teu Filho no altar,
   Em         A7           D
Todo Teu, ó Mãe, para mais a Cristo amar!

[Segunda Parte]
D          A/C#
Virgem do silêncio, Esposa do Espírito de Amor
Bm         F#m
Guarda minha vocação sob o teu manto protetor
G          D/F#
Quando a noite for escura sê estrela a reluzir
Em         A7
E ajuda-me fiel até o fim perseverar e servir!

[Refrão]
   D          A/C#
Sou todo Teu, ó Mãe, tudo o que sou pertence a Ti!
   Bm         F#m
Conduze os meus passos no caminho que escolhi!
   G        D/F#        Bm
Ensina-me a adorar Teu Filho no altar,
   Em         A7           D
Todo Teu, ó Mãe, para mais a Cristo amar!

[Final]
   G          A7           Bm   G
Totus Tuus, Maria, Mãe do Salvador:
   Em         A7           D
Sou todo Teu por amor!',
  to_tsvector('portuguese', 'Todo Teu, ó Mãe ' || '')
),
(
  'toca-de-assis-cantico-das-criaturas',
  'Cântico das Criaturas (Altíssimo, Onipotente, Bom Senhor)',
  'Fraternidade Toca de Assis',
  'Fraternidade Toca de Assis',
  'C',
  96,
  '4/4',
  'Balada Franciscana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Tempo Comum',
  'Dn 3, 57-88; Sl 148',
  'popular',
  '[Intro] C  F  G7  C  Am  Dm  G7  C

[Primeira Parte]
C         Em
Altíssimo, Onipotente, Bom Senhor,
F         G7
Teus são o louvor, a glória e a honra e toda a bênção!
Am         Em
A Ti só, Altíssimo, se hão de prestar,
Dm            G7           C        C7
E homem algum é digno de Te mencionar!

[Refrão]
   F          G7           C          Am
Louvado sejas, meu Senhor, com todas as Tuas criaturas!
   Dm         G7           C          C7
Louvado sejas, meu Senhor, pelo Irmão Sol que nos ilumina!
   F          G7           C          Am
Pela Irmã Lua e as estrelas claras e preciosas no céu,
   Dm         G7           C
Louvado sejas, meu Senhor!

[Segunda Parte]
C         Em
Louvado sejas pelo Irmão Vento e pelo ar,
F         G7
Pela Irmã Água, tão humilde, útil e casta!
Am         Em
Pelo Irmão Fogo que ilumina a noite e é robusto e forte,
Dm            G7           C        C7
E pela nossa Irmã, a Mãe Terra, que nos sustenta e governa!

   C         Em
Louvado sejas pelos que perdoam pelo Teu amor,
F         G7
E suportam enfermidades e tribulações em paz!
Am         Em
Louvai e bendizei a meu Senhor e dai-Lhe graças,
Dm            G7           C        C7
E servi-O com grande humildade!

[Refrão]
   F          G7           C          Am
Louvado sejas, meu Senhor, com todas as Tuas criaturas!
   Dm         G7           C          C7
Louvado sejas, meu Senhor, pelo Irmão Sol que nos ilumina!
   F          G7           C          Am
Pela Irmã Lua e as estrelas claras e preciosas no céu,
   Dm         G7           C
Louvado sejas, meu Senhor!

[Final]
   F          G7           C   Am
Louvai e bendizei a meu Senhor:
   Dm         G7           C
Servi-O com grande humildade!',
  to_tsvector('portuguese', 'Cântico das Criaturas (Altíssimo, Onipotente, Bom Senhor) ' || '')
),
(
  'fsjpii-exercito-de-deus',
  'Exército de Deus',
  'Fraternidade São João Paulo II',
  'Fraternidade São João Paulo II',
  'Em',
  116,
  '4/4',
  'Pop Rock / Marcha Jovem',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Ef 6, 10-17; Jl 2, 11',
  'popular',
  '[Intro] Em  C  G  D  Em  C  G  D

[Primeira Parte]
Em         C
Ouço o som da trombeta que chama a despertar
G         D
É tempo de levantar e o Evangelho proclamar!
Em         C
Revestidos da armadura da justiça e da fé
G         D
Com a Virgem Maria permanecemos de pé!

[Refrão]
   Em         C
Somos o exército de Deus marchando na luz!
   G         D
Nossa vitória é o Sangue de Jesus!
   Em         C
Com o terço na mão e o Evangelho no coração,
   G          D            Em
Levamos ao mundo a salvação!

[Segunda Parte]
Em         C
Não tememos as sombras, pois Cristo já venceu
G         D
O Seu Espírito Santo sobre nós já desceu!
Em         C
Jovens consagrados à verdade e ao amor
G         D
Inteiramente entregues a serviço do Senhor!

[Refrão]
   Em         C
Somos o exército de Deus marchando na luz!
   G         D
Nossa vitória é o Sangue de Jesus!
   Em         C
Com o terço na mão e o Evangelho no coração,
   G          D            Em
Levamos ao mundo a salvação!

[Final]
   C          D            G    Em
Nossa vitória é o Sangue de Jesus:
   C          D            Em
Marchando sempre na Tua luz!',
  to_tsvector('portuguese', 'Exército de Deus ' || '')
),
(
  'fsjpii-maria-porta-do-ceu',
  'Maria, Porta do Céu',
  'Fraternidade São João Paulo II',
  'Fraternidade São João Paulo II',
  'G',
  74,
  '4/4',
  'Balada Mariana',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Festas Marianas',
  'Gn 28, 17; Lc 1, 28',
  'popular',
  '[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
G          D/F#
Mais bela que a aurora que anuncia o novo dia
Em         Bm
És o lírio imaculado onde o próprio Deus habita
C              G/B
Arca da Nova Aliança, escolhida pelo Pai
Am         D7
Ao encontro do Teu Filho nossa alma atraí!

[Refrão]
   G          D/F#
Maria, Porta do Céu, Estrela da Manhã,
   Em         Bm
Refúgio seguro da família cristã!
   C        G/B         Em
Acolhe em Teu colo este povo em oração
   Am         D7           G
E leva-nos sempre a Jesus, a salvação!

[Segunda Parte]
G          D/F#
Com São João Paulo Segundo aprendemos a dizer:
Em         Bm
"Totus Tuus, ó Maria!", em Teu manto me esconder
C              G/B
Guarda os sacerdotes, os jovens e os casais
Am         D7
Derrama sobre a Igreja o perfume da Tua paz!

[Refrão]
   G          D/F#
Maria, Porta do Céu, Estrela da Manhã,
   Em         Bm
Refúgio seguro da família cristã!
   C        G/B         Em
Acolhe em Teu colo este povo em oração
   Am         D7           G
E leva-nos sempre a Jesus, a salvação!

[Final]
   C          D7           Em   C
Maria, Porta do Céu, rogai por nós:
   Am         D7           G
Leva-nos sempre a Jesus!',
  to_tsvector('portuguese', 'Maria, Porta do Céu ' || '')
),
(
  'alianca-misericordia-o-espirito-do-senhor',
  'O Espírito do Senhor Está Sobre Mim',
  'Comunidade Aliança de Misericórdia',
  'Comunidade Aliança de Misericórdia',
  'Am',
  92,
  '4/4',
  'Toada Profética / Balada',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Entrada',
  'Tempo Comum',
  'Is 61, 1-2; Lc 4, 18-19',
  'popular',
  '[Intro] Am  Dm  E7  Am  E7

[Refrão]
   Am         Dm
O Espírito do Senhor está sobre mim!
   G          C          E7
O Espírito do Senhor me ungiu e me enviou:
   Am         Dm
Para evangelizar os pobres, curar os corações feridos,
   E7         Am
E proclamar o ano da graça do Senhor!

[Primeira Parte]
   Am         Dm
1. Enviou-me a levar a Boa Nova aos pequeninos,
   G       C          E7
Anunciar aos cativos a libertação!
   Am         Dm
Dar a vista aos cegos e a luz aos oprimidos,
   E7         Am
Derramando nos irmãos a Sua compaixão!

[Refrão]
   Am         Dm
O Espírito do Senhor está sobre mim!
   G          C          E7
O Espírito do Senhor me ungiu e me enviou:
   Am         Dm
Para evangelizar os pobres, curar os corações feridos,
   E7         Am
E proclamar o ano da graça do Senhor!

[Segunda Parte]
   Am         Dm
2. Trocar a cinza da tristeza em coroa de alegria,
   G         C          E7
O pranto da noite em óleo de consolação!
   Am         Dm
Veste de louvor para o povo que sofria,
   E7         Am
Igreja viva da Misericórdia em missão!

[Final]
   Dm    E7         Am   F
Para evangelizar os pobres me enviou:
   Dm       E7         Am
Hoje se cumpre esta Palavra entre nós!',
  to_tsvector('portuguese', 'O Espírito do Senhor Está Sobre Mim ' || '')
),
(
  'alianca-misericordia-pai-das-misericordias',
  'Pai das Misericórdias',
  'Comunidade Aliança de Misericórdia',
  'Comunidade Aliança de Misericórdia',
  'D',
  72,
  '4/4',
  'Balada de Adoração',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Quaresma',
  '2Cor 1, 3; Lc 15, 11-32',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D          A/C#
Mesmo de longe Tu me viste retornar
Bm         F#m
E correste ao meu encontro só pra me abraçar
G          D/F#
Pões o anel em meu dedo, sandálias em meus pés
Em         A7
Tu és o Pai bondoso e para sempre fiel!

[Refrão]
   D          A/C#
Pai das Misericórdias, Deus de toda consolação,
   Bm         G
No Teu colo santo encontra paz meu coração!
   D        A/C#        Bm
Teu amor é maior que toda a minha dor,
   Em         A7           D
Bendito sejas para sempre, meu Senhor!

[Segunda Parte]
D          A/C#
Não olhaste para a poeira da minha ingratidão
Bm         F#m
Fizeste festa em Tua casa pelo meu perdão
G          D/F#
Este teu filho estava morto e voltou a viver
Em         A7
Em Tua misericórdia quero sempre permanecer!

[Refrão]
   D          A/C#
Pai das Misericórdias, Deus de toda consolação,
   Bm         G
No Teu colo santo encontra paz meu coração!
   D        A/C#        Bm
Teu amor é maior que toda a minha dor,
   Em         A7           D
Bendito sejas para sempre, meu Senhor!

[Final]
   G          A7           Bm   G
No Teu colo santo encontra paz meu coração:
   Em         A7           D
Pai das Misericórdias!',
  to_tsvector('portuguese', 'Pai das Misericórdias ' || '')
),
(
  'comunidade-recado-seja-luz',
  'Seja Luz',
  'Comunidade Recado',
  'Comunidade Recado',
  'G',
  98,
  '4/4',
  'Pop Litúrgico',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  true,
  true,
  4,
  'Final',
  'Tempo Comum',
  'Mt 5, 13-16; Ef 5, 8',
  'popular',
  '[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
G          D/F#
Não se acende uma lâmpada para a esconder
Em         Bm
Mas no alto se coloca para a todos esclarecer
C              G/B
Vós sois o sal da terra, vós sois a luz do mundo
Am         D7
Levai a toda parte este amor tão profundo!

[Refrão]
   G          D/F#
Seja luz onde houver escuridão,
   Em         C
Seja sal que dá sabor ao coração!
   G        D/F#        Em
Brilhe a vossa luz diante dos irmãos,
   Am         D7           G
Para que glorifiquem o Pai da criação!

[Segunda Parte]
G          D/F#
Com gestos de bondade, justiça e compaixão
Em         Bm
Mostrai que o Evangelho transforma a nação
C              G/B
Unidos a Jesus, a verdadeira Luz
Am         D7
Caminhemos confiantes na graça que conduz!

[Refrão]
   G          D/F#
Seja luz onde houver escuridão,
   Em         C
Seja sal que dá sabor ao coração!
   G        D/F#        Em
Brilhe a vossa luz diante dos irmãos,
   Am         D7           G
Para que glorifiquem o Pai da criação!

[Final]
   C          D7           Em   C
Brilhe a vossa luz diante dos irmãos:
   Am         D7           G
Seja luz no Senhor!',
  to_tsvector('portuguese', 'Seja Luz ' || '')
),
(
  'comunidade-recado-renascer',
  'Renascer no Espírito',
  'Comunidade Recado',
  'Comunidade Recado',
  'C',
  76,
  '4/4',
  'Balada de Renovação',
  '↓  ↓ ↑  ↑ ↓ ↑',
  false,
  false,
  true,
  5,
  'Ação de Graças',
  'Páscoa',
  'Jo 3, 3-8; Tt 3, 5',
  'popular',
  '[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C              G/B
O vento sopra onde quer e ouves a sua voz
Am         Em
Assim é o Espírito de Deus agindo hoje em nós
F              C/E
Quem não nascer da água e do Espírito de Amor
Dm         G7
Não pode contemplar a beleza do Senhor!

[Refrão]
   C              G/B
Faz-me renascer no Teu Espírito, Senhor,
   Am         Em
Dá-me um coração novo, cheio do Teu fervor!
   F        C/E         Am
Lava o meu passado na fonte do perdão,
   Dm         G7           C
Faz de mim criatura nova em Tua mão!

[Segunda Parte]
C              G/B
Do alto vem a graça que restaura o meu viver
Am         Em
Em Cristo ressurgido aprendo a vencer
F              C/E
Guiado pela luz que emana lá da cruz
Dm         G7
Camino na alegria do Espírito de Jesus!

[Refrão]
   C              G/B
Faz-me renascer no Teu Espírito, Senhor,
   Am         Em
Dá-me um coração novo, cheio do Teu fervor!
   F        C/E         Am
Lava o meu passado na fonte do perdão,
   Dm         G7           C
Faz de mim criatura nova em Tua mão!

[Final]
   F          G7           C   Am
Lava o meu passado na fonte do perdão:
   Dm         G7           C
Renascer no Teu Espírito, Senhor!',
  to_tsvector('portuguese', 'Renascer no Espírito ' || '')
),
(
  'ir-ana-paula-fogo-abrasador',
  'Fogo Abrasador (Vem, Espírito)',
  'Irmã Ana Paula',
  'Irmã Ana Paula',
  'Em',
  70,
  '4/4',
  'Balada Contemplativa / Carmelita',
  'P  I  M  A  M  I',
  false,
  true,
  true,
  4,
  'Ação de Graças',
  'Páscoa',
  'At 2, 1-4; Ct 8, 6',
  'popular',
  '[Intro] Em  C  G  D  Em  C  G  D

[Primeira Parte]
Em         C
No silêncio do cenáculo esperamos por Ti
G         D
Com Maria em oração, vem, Senhor, descer aqui
Em         C
Toca o mais profundo da nossa solidão
G         D
E inflama de amor todo o nosso coração!

[Refrão]
   Em         C
Vem, Espírito, Fogo Abrasador!
   G         D
Chama viva de eterno amor!
   Em         C
Queima em nós tudo o que não vem de Ti,
   G          D            Em
Vem, Espírito Santo, habitar aqui!

[Segunda Parte]
Em         C
Ó Doce Hóspede da alma, orvalho divinal
G         D
Consolo no deserto e luz celestial
Em         C
Transforma a nossa vida num altar de adoração
G         D
Totalmente consumida pela Tua unção!

[Refrão]
   Em         C
Vem, Espírito, Fogo Abrasador!
   G         D
Chama viva de eterno amor!
   Em         C
Queima em nós tudo o que não vem de Ti,
   G          D            Em
Vem, Espírito Santo, habitar aqui!

[Final]
   C          D            G    Em
Chama viva de eterno amor:
   C          D            Em
Vem, Espírito, Fogo Abrasador!',
  to_tsvector('portuguese', 'Fogo Abrasador (Vem, Espírito) ' || '')
),
(
  'ir-ana-paula-meu-hospede',
  'Meu Hóspede',
  'Irmã Ana Paula',
  'Irmã Ana Paula',
  'D',
  68,
  '4/4',
  'Dedilhado / Oração Carmelita',
  'P  I  M  A  M  I',
  false,
  true,
  true,
  5,
  'Ação de Graças',
  'Qualquer',
  'Jo 14, 23; Ap 3, 20',
  'popular',
  '[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D          A/C#
Fecho os olhos para o mundo e abro a porta interior
Bm         F#m
Pois em meu peito agora habita o meu Deus e meu Senhor
G          D/F#
Não preciso ir tão longe para Te procurar
Em         A7
Se dentro de minh''alma escolheste repousar!

[Refrão]
   D          A/C#
Meu Hóspede Divino, meu Amado e meu Rei,
   Bm         F#m
Em Tua doce presença para sempre ficarei!
   G            D/F#        Bm
Fala no meu silêncio, reclina em mim a Tua fronte,
   Em         A7           D
Pois Tu és o meu céu e a minha fonte!

[Segunda Parte]
D          A/C#
Como em Betânia na casa de Marta e de Maria
Bm         F#m
Escolho a melhor parte aos Teus pés em alegria
G          D/F#
Nada me perturbe, nada me espante o coração
Em         A7
Quem a Deus tem nada lhe falta nesta santa comunhão!

[Refrão]
   D          A/C#
Meu Hóspede Divino, meu Amado e meu Rei,
   Bm         F#m
Em Tua doce presença para sempre ficarei!
   G            D/F#        Bm
Fala no meu silêncio, reclina em mim a Tua fronte,
   Em         A7           D
Pois Tu és o meu céu e a minha fonte!

[Final]
   G          A7           Bm   G
Só Deus basta ao meu coração:
   Em         A7           D
Fica comigo, meu Hóspede e Senhor!',
  to_tsvector('portuguese', 'Meu Hóspede ' || '')
),
(
  'segura-na-mao-de-deus',
  'Segura na Mão de Deus',
  'Nelson Monteiro da Mota',
  'Nelson Monteiro da Mota',
  'G',
  76,
  '4/4',
  'Balada / Marcha Lenta',
  '↓  ↓ ↑  ↑ ↓ ↑',
  true,
  true,
  true,
  4,
  'Ação de Graças',
  'Tempo Comum',
  '',
  'liturgical',
  '[Intro] G  Dm7  G7  C  C#º  G  Em  A7  D7  G

[Primeira Parte]
G      Dm7   G7
1. Se as águas do mar da vida
C      C#º    G    D/F#
Quiserem te afogar,
Em           A7
Segura na mão de Deus
    D7
E vai!
G      Dm7   G7
Se as tristezas desta vida
C      C#º    G    D/F#
Quiserem te sufocar,
Em           D7          G   G7
Segura na mão de Deus e vai!

[Refrão]
C              D/C
Segura na mão de Deus,
Bm7         Em
Segura na mão de Deus,
Am7          D7          G   G7
Pois ela, ela te sustentará!
C              D/C
Não temas, segue adiante
Bm7         Em
E não olhes para trás:
Am7          D7          G
Segura na mão de Deus e vai!

[Segunda Parte]
G      Dm7   G7
2. Se a jornada é pesada
C      C#º    G    D/F#
E te cansas da caminhada,
Em           A7
Segura na mão de Deus
    D7
E vai!
G      Dm7   G7
Orando, jejuando,
C      C#º    G    D/F#
Confiando e vigiando,
Em           D7          G   G7
Segura na mão de Deus e vai!

[Refrão]

[Terceira Parte]
G      Dm7   G7
3. O Espírito do Senhor
C      C#º    G    D/F#
Sempre te revestirá,
Em           A7
Segura na mão de Deus
    D7
E vai!
G      Dm7   G7
Jesus Cristo prometeu
C      C#º    G    D/F#
Que jamais te deixará,
Em           D7          G   G7
Segura na mão de Deus e vai!

[Refrão Final]
C              D/C
Segura na mão de Deus,
Bm7         Em
Segura na mão de Deus,
Am7          D7          G   G7
Pois ela, ela te sustentará!
C              D/C
Não temas, segue adiante
Bm7         Em
E não olhes para trás:
Am7          D7          G
Segura na mão de Deus e vai!',
  to_tsvector('portuguese', 'Segura na Mão de Deus ' || '')
),
(
  'coracao-novo-banda-arkanjos',
  'Coração Novo',
  'Banda Arkanjos / Juninho Cassimiro',
  'Banda Arkanjos / Juninho Cassimiro',
  'C',
  70,
  '4/4',
  'Balada Lenta',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Ato Penitencial',
  'Qualquer',
  'Ez 36, 26',
  'adoracao',
  '[Intro] C  G/B  Am  F

[Primeira Parte]
C            G/B
Dá-me um coração novo,
Am           F
Dá-me um coração puro,
C          G/B
Que saiba perdoar,
Am          F
Que saiba amar!

[Refrão]
C            G
Lava a minha alma,
Am           F
Muda a minha vida,
C           G/B
Toma o meu coração,
Am             F
Faz dele Tua habitação!

[Segunda Parte]
C             G/B
Cria em mim, ó Deus,
Am           F
Um coração renovado,
C              G/B
Põe dentro de mim
Am             F
Um espírito dedicado!

[Refrão]
C            G
Lava a minha alma,
Am           F
Muda a minha vida,
C           G/B
Toma o meu coração,
Am             F
Faz dele Tua habitação!',
  to_tsvector('portuguese', 'Coração Novo ' || '')
),
(
  'quem-como-deus-banda-arkanjos',
  'Quem Como Deus? (São Miguel Arcanjo)',
  'Banda Arkanjos / Juninho Cassimiro',
  'Banda Arkanjos / Juninho Cassimiro',
  'Em',
  82,
  '4/4',
  'Balada Pop',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Final e Envio',
  'Qualquer',
  'Ap 12, 7',
  'devocional',
  '[Intro] Em  C  G  D

[Primeira Parte]
Em             C
Quem como Deus?
G              D
Ninguém como Deus!
Em             C
Quem como Deus?
G              D
Ninguém como Deus!

[Refrão]
Em               C
São Miguel Arcanjo,
G           D
Vem nos defender,
Em             C
Neste nosso combate,
G            D
Vem nos socorrer!

[Segunda Parte]
Em             C
Com Tua espada de luz,
G            D
Vem nos proteger,
Em          C
Sob as asas da fé,
G           D
Vamos vencer!

[Refrão]
Em               C
São Miguel Arcanjo,
G           D
Vem nos defender,
Em             C
Neste nosso combate,
G            D
Vem nos socorrer!',
  to_tsvector('portuguese', 'Quem Como Deus? (São Miguel Arcanjo) ' || '')
),
(
  'sentinela-da-manha-banda-arkanjos',
  'Sentinela da Manhã',
  'Banda Arkanjos',
  'Banda Arkanjos',
  'D',
  78,
  '4/4',
  'Balada',
  '↓   ↓ ↑   ↑ ↓',
  true,
  false,
  true,
  4,
  'Louvor / Vigília',
  'Qualquer',
  'Is 21, 11',
  'adoracao',
  '[Intro] D  A  Bm  G

[Primeira Parte]
D           A
Sentinela da manhã,
Bm          G
Vigia sem cessar,
D           A
A noite vai passar,
Bm           G
O Sol vai raiar!

[Refrão]
D          A
Eis que vem o Senhor,
Bm          G
Príncipe da Paz,
D           A
Todo joelho se dobrará,
Bm           G
Toda língua confessará!',
  to_tsvector('portuguese', 'Sentinela da Manhã ' || '')
),
(
  'deus-trino-padre-zeca',
  'Deus Trino (Em Nome do Pai)',
  'Padre Zeca',
  'Padre Zeca',
  'A',
  96,
  '4/4',
  'Balada Jovem',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  6,
  'Entrada',
  'Qualquer',
  'Mt 28, 19',
  'liturgica',
  '[Intro] A  D  A  E7

[Primeira Parte]
A
Em nome do Pai,
D
Em nome do Filho,
A
Em nome do Espírito Santo,
E7
Estamos aqui!
A
Em nome do Pai,
D
Em nome do Filho,
A
Em nome do Espírito Santo,
E7          A
Estamos aqui!

[Refrão]
D            E
Para louvar e agradecer,
C#m          F#m
Bendizer e adorar:
Bm           E7
Estamos aqui, Senhor,
A
A Teu dispor!
D            E
Para louvar e agradecer,
C#m          F#m
Bendizer e adorar:
Bm          E7
Te louvar e te bendizer,
A
Senhor!',
  to_tsvector('portuguese', 'Deus Trino (Em Nome do Pai) ' || '')
),
(
  'deus-e-dez-padre-zeca',
  'Deus É Dez',
  'Padre Zeca',
  'Padre Zeca',
  'D',
  110,
  '4/4',
  'Pop Animado',
  '↓   ↓ ↑   ↑ ↓',
  false,
  true,
  true,
  4,
  'Final e Envio',
  'Qualquer',
  'Sl 148',
  'popular',
  '[Intro] D  G  Bm  A

[Primeira Parte]
D
Tudo o que Jesus conquistou na cruz
G
É direito nosso, é nossa herança!
Bm
Todas as bênçãos de Deus pra nós
A
Tomamos posse, é nossa herança!

[Refrão]
D
Deus é dez pra mim!
G
Deus é dez pra você!
Bm
Deus é dez pra todos nós!
A              D
Deus é dez demais!',
  to_tsvector('portuguese', 'Deus É Dez ' || '')
),
(
  'quero-te-dar-a-paz-padre-zeca',
  'Quero Te Dar a Paz',
  'Padre Zeca',
  'Padre Zeca',
  'G',
  80,
  '4/4',
  'Balada',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Abraço da Paz',
  'Qualquer',
  'Jo 14, 27',
  'liturgica',
  '[Intro] G  Em  C  D7

[Primeira Parte]
G               Em
Aperte a minha mão,
C               D7
Irmão, quero te dar a paz!
G               Em
Do meu Senhor Jesus,
C               D7
A paz que Ele nos traz!

[Refrão]
G                Em
A paz do meu Senhor,
C              D7
A paz do Seu amor,
G              Em
Pra você, meu irmão,
C         D7       G
De todo o meu coração!',
  to_tsvector('portuguese', 'Quero Te Dar a Paz ' || '')
),
(
  'nas-asas-do-senhor-padre-zeca',
  'Nas Asas do Senhor',
  'Padre Zeca',
  'Padre Zeca',
  'D',
  72,
  '4/4',
  'Balada Lenta Orante',
  '↓   ↓ ↑   ↑ ↓',
  true,
  false,
  true,
  5,
  'Comunhão',
  'Qualquer',
  'Sl 91, 4',
  'adoracao',
  '[Intro] D  G  Bm  A

[Primeira Parte]
D                  G
Se a tempestade me alcançar,
Bm                 A
E as ondas tentarem me afogar,
D               G
Eu sei em quem confiei:
Bm              A
Em Tuas asas me abrigarei!

[Refrão]
D
Nas asas do Senhor
G
Eu vou voar,
Bm
Em Seu grande amor
A
Descansar!',
  to_tsvector('portuguese', 'Nas Asas do Senhor ' || '')
),
(
  'dia-de-sol-padre-alessandro-campos',
  'Dia de Sol',
  'Padre Alessandro Campos',
  'Padre Alessandro Campos',
  'G',
  112,
  '2/4',
  'Sertanejo Alegre',
  '↓ ↑ ↓ ↑',
  false,
  true,
  true,
  5,
  'Final e Envio',
  'Qualquer',
  'Sl 117, 24',
  'popular',
  '[Intro] G  D  C  G

[Primeira Parte]
G
Hoje é um dia de sol,
C
Hoje é dia de alegria,
D
Vem louvar ao Senhor,
G
Com Jesus e com Maria!

[Refrão]
G           D
Canta, meu povo,
C            G
Com fé no coração,
G           D
Jesus é o caminho,
C      D     G
A nossa salvação!',
  to_tsvector('portuguese', 'Dia de Sol ' || '')
),
(
  'esse-e-meu-deus-padre-alessandro-campos',
  'Esse É Meu Deus',
  'Padre Alessandro Campos',
  'Padre Alessandro Campos',
  'C',
  104,
  '4/4',
  'Toada Sertaneja',
  '↓   ↓ ↑   ↑ ↓',
  false,
  true,
  true,
  4,
  'Final e Envio',
  'Qualquer',
  'Ex 15, 2',
  'popular',
  '[Intro] C  G  Am  F

[Primeira Parte]
C
Esse é o Deus que abre o mar,
G
Esse é o Deus que faz milagre,
Am
Que não me deixa fraquejar,
F
Que cura toda enfermidade!

[Refrão]
C            G
Esse é o meu Deus poderoso,
Am           F
Esse é o meu Deus soberano!
C          G
Nele eu confio a minha vida,
Am        F     C
Nele eu espero todo ano!',
  to_tsvector('portuguese', 'Esse É Meu Deus ' || '')
),
(
  'diario-de-maria-martin-valverde',
  'Diário de Maria',
  'Martín Valverde',
  'Martín Valverde',
  'C',
  64,
  '4/4',
  'Balada Dolorosa',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  6,
  'Comunhão / Semana Santa',
  'Quaresma',
  'Jo 19, 25',
  'liturgica',
  '[Intro] C  G/B  Am  F  G

[Primeira Parte]
C            G/B
Te olhei nos olhos
Am
Quando eras pequenino,
F              Dm
Em meus braços te embalei
G
Com todo amor divino.

[Segunda Parte]
C             G/B
Hoje te vejo pregado
Am
Nesta cruz de dor e fel,
F            Dm
Entregando Tua vida
G
Por amor a Israel.

[Refrão]
C           G/B
Dorme, meu Filho,
Am
Dorme em paz,
F            Dm
A promessa do Teu Pai
G
Logo se cumprirá!
C            G/B
A morte não tem a palavra,
Am
Nem o sepulcro tem poder:
F            G
Ao terceiro dia
C
Hás de renascer!',
  to_tsvector('portuguese', 'Diário de Maria ' || '')
),
(
  'gloria-a-deus-nas-alturas-martin-valverde',
  'Glória a Deus nas Alturas (Glória)',
  'Martín Valverde',
  'Martín Valverde',
  'Dm',
  88,
  '4/4',
  'Balada Solene',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Glória',
  'Qualquer',
  'Lc 2, 14',
  'liturgica',
  '[Intro] Dm  C  Bb  A7

[Refrão]
Dm        C
Glória, glória,
Bb            A7
A Deus nas alturas!
Dm        C
E paz na terra
Bb     A7       Dm
Aos homens de amor!

[Primeira Parte]
Dm            C
Senhor Deus, Rei dos céus,
Bb             A7
Deus Pai Todo-Poderoso:
Dm             C
Nós vos louvamos,
Bb             A7
Nós vos bendizemos!

[Refrão]
Dm        C
Glória, glória,
Bb            A7
A Deus nas alturas!
Dm        C
E paz na terra
Bb     A7       Dm
Aos homens de amor!',
  to_tsvector('portuguese', 'Glória a Deus nas Alturas (Glória) ' || '')
),
(
  'invocamos-eros-biondini',
  'Invocamos',
  'Eros Biondini',
  'Eros Biondini',
  'E',
  68,
  '4/4',
  'Balada Lenta Orante',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Comunhão / Adoração',
  'Pentecostes',
  'Rm 8, 26',
  'adoracao',
  '[Intro] E  C#m  A  B7

[Primeira Parte]
E            C#m
Invocamos o Teu Nome,
A            B7
Invocamos Tua presença,
E            C#m
Invocamos Teu poder,
A           B7
Vem, Espírito Santo!

[Refrão]
E             C#m
Vem sobre nós, Senhor!
A             B7
Vem sobre nós, Senhor!
E          C#m
Com Teu fogo Santo,
A      B7       E
Vem renovar o mundo!',
  to_tsvector('portuguese', 'Invocamos ' || '')
),
(
  'civilizacao-do-amor-eros-biondini',
  'Civilização do Amor',
  'Eros Biondini',
  'Eros Biondini',
  'A',
  98,
  '4/4',
  'Pop Rock Católico',
  '↓   ↓ ↑   ↑ ↓',
  false,
  true,
  true,
  4,
  'Final e Envio',
  'Qualquer',
  '1 Jo 4, 7-12',
  'popular',
  '[Intro] A  D  F#m  E

[Primeira Parte]
A             D
Uma nova terra,
F#m          E
Um novo céu,
A              D
Onde a justiça reine,
F#m          E
Onde o amor seja lei!

[Refrão]
A            D
Construir a Civilização,
F#m          E
A Civilização do Amor!
A             D
Onde todos sejam irmãos,
F#m      E          A
Na presença do Senhor!',
  to_tsvector('portuguese', 'Civilização do Amor ' || '')
),
(
  'bendito-sejais-que-maravilha-turra',
  'Bendito Sejais (Que Maravilha, Senhor, Estar Aqui)',
  'Frei Luiz Turra',
  'Frei Luiz Turra',
  'G',
  76,
  '3/4',
  'Valsa Litúrgica',
  '↓   ↓ ↑',
  true,
  true,
  true,
  5,
  'Oferendas',
  'Qualquer',
  'Sl 103, 14; 1 Cor 10, 16',
  'liturgica',
  '[Intro] G  D  Em  C  D  G

[Refrão]
G              D
Bendito sejais, Senhor,
Em             C
Pelo pão que nós trazemos!
G               D
Bendito sejais, Senhor,
C        D       G
Pelo vinho que colhemos!

[Primeira Parte]
G              D
1. Fruto da terra e do trabalho,
Em               C
   Oferta pura do nosso altar;
G             D
   Em Teu Corpo e Teu Sangue,
C      D         G
   Jesus vai transformar!

[Refrão]
G              D
Bendito sejais, Senhor,
Em             C
Pelo pão que nós trazemos!
G               D
Bendito sejais, Senhor,
C        D       G
Pelo vinho que colhemos!',
  to_tsvector('portuguese', 'Bendito Sejais (Que Maravilha, Senhor, Estar Aqui) ' || '')
),
(
  'jesus-cristo-ontem-hoje-turra',
  'Jesus Cristo, Ontem, Hoje e Sempre',
  'Frei Luiz Turra',
  'Frei Luiz Turra',
  'G',
  88,
  '4/4',
  'Marcha Litúrgica',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Entrada',
  'Qualquer',
  'Hb 13, 8',
  'liturgica',
  '[Intro] G  C  D  G

[Refrão]
G               C
Jesus Cristo, ontem e hoje,
Am             D7
Jesus Cristo, sempre e sempre!
G             C
Ele é o Alfa, Ele é o Ômega,
G         D7       G
Rei dos reis eternamente!

[Primeira Parte]
G               C
1. Caminheiro da esperança,
Am              D7
   Vem guiar o nosso andar;
G               C
   Nesta mesa da Aliança,
G        D7        G
   Tua graça vem nos dar!

[Refrão]
G               C
Jesus Cristo, ontem e hoje,
Am             D7
Jesus Cristo, sempre e sempre!
G             C
Ele é o Alfa, Ele é o Ômega,
G         D7       G
Rei dos reis eternamente!',
  to_tsvector('portuguese', 'Jesus Cristo, Ontem, Hoje e Sempre ' || '')
),
(
  'sopra-em-nos-irma-ana-paula',
  'Sopra em Nós',
  'Irmã Ana Paula',
  'Irmã Ana Paula',
  'C',
  66,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Comunhão / Adoração',
  'Pentecostes',
  'Ez 37, 9',
  'adoracao',
  '[Intro] Am7  G/B  C  F

[Primeira Parte]
Am7         G/B
Sopra em nós Teu sopro, ó Pai,
C           F
Vem nos restaurar!
Am7         G/B
Sopra em nós Teu fogo, ó Deus,
C           F
Vem nos inflamar!

[Refrão]
C            G
Espírito de Deus,
Am7          F
Vem sobre nós!
C            G/B
Espírito de Amor,
Am7         F
Renova o coração!',
  to_tsvector('portuguese', 'Sopra em Nós ' || '')
),
(
  'fica-irma-ana-paula',
  'Fica',
  'Irmã Ana Paula',
  'Irmã Ana Paula',
  'D',
  68,
  '4/4',
  'Balada Lenta',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Qualquer',
  'Lc 24, 29',
  'liturgica',
  '[Intro] D  G  Bm  A

[Primeira Parte]
D            G
Fica, Senhor, já é tarde,
Bm             A
O dia já declinou;
D             G
Fica conosco à mesa,
Bm             A
Parte conosco o pão!

[Refrão]
D            G
Fica aqui, Senhor!
Bm           A
Fica aqui, Senhor!
D             G
Nossa alma tem sede
Bm       A      D
Do Teu divino amor!',
  to_tsvector('portuguese', 'Fica ' || '')
),
(
  'sobe-a-jerusalem-waldeci-farias',
  'Sobe a Jerusalém',
  'Waldeci Farias',
  'Waldeci Farias',
  'D',
  72,
  '3/4',
  'Valsa Quaresmal',
  '↓   ↓ ↑',
  true,
  true,
  true,
  6,
  'Oferendas',
  'Quaresma',
  'Lc 9, 51; Is 53',
  'liturgica',
  '[Intro] D  F#7  Bm  G  A7  D

[Primeira Parte]
D            F#7     Bm
Sobe a Jerusalém,
G            A7      D
Virgem Mãe tão dolorosa;
D             F#7    Bm
Leva em Tuas mãos de mãe
G             A7     D
Nossa prece piedosa!

[Refrão]
D            F#7    Bm
Trazemos o pão e o vinho,
G            A7      D
Ofertas do nosso altar:
D             F#7     Bm
Com Cristo no Seu caminho,
G          A7       D
Queremos nos ofertar!',
  to_tsvector('portuguese', 'Sobe a Jerusalém ' || '')
),
(
  'vem-e-eu-mostrarei-waldeci-farias',
  'Vem, e Eu Mostrarei (O Povo de Deus no Deserto)',
  'Waldeci Farias',
  'Waldeci Farias',
  'G',
  84,
  '4/4',
  'Balada Vocacional',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Entrada',
  'Qualquer',
  'Ex 3, 7-10',
  'liturgica',
  '[Intro] G  Em  C  D  G

[Primeira Parte]
G               Em
Vem, e Eu mostrarei
C               D
Que meu povo no deserto
G               Em
Não caminha sozinho:
C              D     G
Eu estou sempre por perto!

[Refrão]
G           Em
Vai, profeta do amor,
C            D
Leva a Minha Palavra!
G           Em
Eu serei tua força,
C          D        G
Tua voz que não se cala!',
  to_tsvector('portuguese', 'Vem, e Eu Mostrarei (O Povo de Deus no Deserto) ' || '')
),
(
  'recebe-nossa-vida-alianca-misericordia',
  'Recebe Nossa Vida',
  'Aliança de Misericórdia',
  'Aliança de Misericórdia',
  'F',
  70,
  '4/4',
  'Balada Suave',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Oferendas',
  'Qualquer',
  'Rm 12, 1',
  'liturgica',
  '[Intro] F  Am  Bb  C

[Primeira Parte]
F            Am
Recebe, Senhor,
Bb           C
O pão e o vinho;
F            Am
Recebe, Senhor,
Bb           C
O nosso carinho!

[Refrão]
Bb           C
Recebe a nossa vida,
Am           Dm
Nosso coração sincero;
Gm           C
Tudo o que nós somos,
Bb      C     F
A Ti nós entregamos!',
  to_tsvector('portuguese', 'Recebe Nossa Vida ' || '')
),
(
  'onde-reina-o-amor-ubi-caritas-taize',
  'Onde Reina o Amor (Ubi Caritas)',
  'Comunidade de Taizé',
  'Comunidade de Taizé',
  'F',
  60,
  '3/4',
  'Canto Meditativo Monástico',
  '↓   ↓ ↑',
  true,
  true,
  true,
  4,
  'Comunhão / Lava-Pés',
  'Semana Santa',
  '1 Jo 4, 16',
  'liturgica',
  '[Intro] F  C  Dm  Bb  C  F

[Refrão Contemplativo]
F      C        Dm
Onde reina o amor,
Bb      C     F
Deus aí está!
F      C        Dm
Onde reina o amor,
Bb      C     F
Deus aí está!',
  to_tsvector('portuguese', 'Onde Reina o Amor (Ubi Caritas) ' || '')
),
(
  'misericordia-senhor-taize',
  'Misericórdia, Senhor (Misericordias Domini)',
  'Comunidade de Taizé',
  'Comunidade de Taizé',
  'Dm',
  62,
  '4/4',
  'Ostinato Meditativo',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Ato Penitencial',
  'Quaresma',
  'Sl 89, 2',
  'liturgica',
  '[Intro] Dm  A  Dm  C  F  A  Dm

[Ostinato Meditativo]
Dm             A      Dm
Misericórdia, ó Senhor,
C              F      A
Pra sempre eu cantarei!
Dm             A      Dm
Misericórdia, ó Senhor,
Bb      A      Dm
Pra sempre cantarei!',
  to_tsvector('portuguese', 'Misericórdia, Senhor (Misericordias Domini) ' || '')
),
(
  'eis-me-aqui-senhor-frei-fabreti',
  'Eis-me Aqui, Senhor (O Senhor É o Pastor Que Me Conduz)',
  'Frei Fabreti',
  'Frei Fabreti',
  'E',
  72,
  '4/4',
  'Balada Pastoral Litúrgica',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Comunhão',
  'Qualquer',
  '1 Sm 3, 4; Is 6, 8',
  'liturgica',
  '[Intro] E  A  B7  E

[Refrão]
E              A
Eis-me aqui, Senhor!
B7             E
Eis-me aqui, Senhor!
C#m            F#m
Pra fazer Tua vontade,
B7             E
Pra viver no Teu amor!

[Primeira Parte]
E              A
1. O Senhor me chamou
B7             E
   Pelo meu próprio nome;
C#m            F#m
   Eu respondo com fé:
B7             E
   Eis-me aqui, Senhor!',
  to_tsvector('portuguese', 'Eis-me Aqui, Senhor (O Senhor É o Pastor Que Me Conduz) ' || '')
),
(
  'eu-me-levanto-salmo-50-veloso',
  'Eu Me Levanto (Salmo 50)',
  'Padre Reginaldo Veloso',
  'Padre Reginaldo Veloso',
  'Dm',
  68,
  '4/4',
  'Toada Penitencial Nordestina',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Ato Penitencial',
  'Quaresma',
  'Sl 50, 1-3',
  'liturgica',
  '[Intro] Dm  Gm  A7  Dm

[Refrão]
Dm            Gm
Eu me levanto hoje,
A7            Dm
Vou a meu Pai voltar:
Dm              Gm
Pequei contra o céu,
A7              Dm
Vem, Senhor, me perdoar!

[Primeira Parte]
Dm             Gm
1. Tende piedade de mim,
A7             Dm
   Ó Deus de bondade e amor;
Dm            Gm
   Lavai toda a minha culpa,
A7             Dm
   Perdoai o meu clamor!',
  to_tsvector('portuguese', 'Eu Me Levanto (Salmo 50) ' || '')
),
(
  'o-primeiro-olhar-anjos-de-resgate',
  'O Primeiro Olhar',
  'Anjos de Resgate',
  'Anjos de Resgate',
  'G',
  72,
  '4/4',
  'Balada Pop Romântica e Pastoral',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Comunhão / Matrimônio',
  'Qualquer',
  'Gn 2, 24',
  'adoracao',
  '[Intro] G  D/F#  Em  C  D

[Primeira Parte]
G            D/F#
Quando Te vi pela primeira vez,
Em           C
Senti meu coração disparar;
G           D/F#
Era o amor que Deus me prometeu,
Em          C          D
Pronto pra me abençoar!

[Refrão]
G           D/F#
Foi no primeiro olhar,
Em          C
No primeiro abraço,
G           D/F#
Que Deus uniu nossas vidas,
Em       D        G
Num só coração e laço!',
  to_tsvector('portuguese', 'O Primeiro Olhar ' || '')
),
(
  'a-cruz-sagrada-anjos-de-resgate',
  'A Cruz Sagrada (Oração de São Bento)',
  'Anjos de Resgate',
  'Anjos de Resgate',
  'Em',
  80,
  '4/4',
  'Pop Rock Orante',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Louvor / Combate Espiritual',
  'Qualquer',
  'Gl 6, 14',
  'devocional',
  '[Intro] Em  C  G  D

[Refrão]
Em              C
A Cruz Sagrada seja a minha luz!
G               D
Não seja o dragão meu guia!
Em              C
Retira-te, satanás!
G               D
Nunca me aconselhes coisas vãs!

[Segunda Parte]
Em             C
É mau o que tu me ofereces,
G              D
Bebe tu mesmo o teu veneno!
Em             C
A Cruz Sagrada seja a minha luz,
G        D       Em
Em Nome do Senhor Jesus!',
  to_tsvector('portuguese', 'A Cruz Sagrada (Oração de São Bento) ' || '')
),
(
  'forca-e-vitoria-eliana-ribeiro',
  'Força e Vitória',
  'Eliana Ribeiro',
  'Eliana Ribeiro',
  'Bm',
  100,
  '4/4',
  'Pop Animado',
  '↓   ↓ ↑   ↑ ↓',
  false,
  true,
  true,
  5,
  'Louvor / Final',
  'Qualquer',
  'Fl 4, 13',
  'popular',
  '[Intro] Bm  G  A  D  F#7

[Primeira Parte]
Bm
Todo joelho se dobrará,
G
Toda língua proclamará:
A
Jesus Cristo é o Senhor,
F#7
Para a glória do Pai!

[Refrão]
Bm          G
Força e vitória
A           D     F#7
Tem a nossa oração!
Bm          G
Força e vitória
A           Bm
No Sangue do Cordeiro!',
  to_tsvector('portuguese', 'Força e Vitória ' || '')
),
(
  'mae-peregrina-padre-antonio-maria',
  'Mãe Peregrina (Mãe Admirável)',
  'Padre Antonio Maria',
  'Padre Antonio Maria',
  'D',
  78,
  '4/4',
  'Toada Mariana',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Final e Envio / Mariano',
  'Qualquer',
  'Lc 1, 39',
  'devocional',
  '[Intro] D  G  A7  D

[Primeira Parte]
D              A7
Mãe Admirável, ó Mãe Peregrina,
G              A7         D
A Tua visita aquece e ilumina!
D              A7
Tu és a rainha do nosso rincão,
G               A7          D
Protege e acolhe o nosso coração!

[Refrão]
D             G
Vem, Mãe querida,
A7            D
Vem nos visitar!
D             G
Traz Tua bênção
A7            D
Pra todo este lar!',
  to_tsvector('portuguese', 'Mãe Peregrina (Mãe Admirável) ' || '')
),
(
  'cura-senhor-padre-antonio-maria',
  'Cura, Senhor',
  'Padre Antonio Maria',
  'Padre Antonio Maria',
  'C',
  68,
  '4/4',
  'Balada Lenta Orante',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  4,
  'Comunhão / Cura',
  'Qualquer',
  'Tg 5, 14',
  'adoracao',
  '[Intro] C  G  Am  F

[Primeira Parte]
C             G
Cura, Senhor, onde dói,
Am            F
Cura, Senhor, bem aqui!
C            G
Cura a ferida da alma,
Am           F
Dá-me a Tua santa calma!

[Refrão]
C           G
Cura, meu Senhor Jesus,
Am          F
Pela força da Tua Cruz!
C            G
Toca o meu coração,
Am      F      C
Dá-me a Tua salvação!',
  to_tsvector('portuguese', 'Cura, Senhor ' || '')
),
(
  'tempo-de-graca-ziza-fernandes',
  'Tempo de Graça',
  'Ziza Fernandes',
  'Ziza Fernandes',
  'G',
  70,
  '4/4',
  'Balada Poética',
  '↓   ↓ ↑   ↑ ↓',
  true,
  true,
  true,
  5,
  'Comunhão / Adoração',
  'Qualquer',
  '2 Cor 6, 2',
  'adoracao',
  '[Intro] G  C  Em  D

[Primeira Parte]
G            C
É tempo de graça,
Em           D
É tempo de paz;
G             C
O que ficou pra trás
Em            D
Não me fere mais!

[Refrão]
C            D
Deus faz nova todas as coisas,
Em           Bm
Deus refaz o meu caminho;
C            D
Nele posso descansar,
Em       D        G
Nunca estou sozinho!',
  to_tsvector('portuguese', 'Tempo de Graça ' || '')
),
(
  'fogo-suave-ziza-fernandes',
  'Fogo Suave',
  'Ziza Fernandes',
  'Ziza Fernandes',
  'E',
  64,
  '4/4',
  'Balada Lenta',
  '↓   ↓ ↑   ↑ ↓',
  true,
  false,
  true,
  4,
  'Comunhão / Adoração',
  'Pentecostes',
  'Ct 8, 6',
  'adoracao',
  '[Intro] E  C#m  A  B7

[Primeira Parte]
E              C#m
Fogo suave que queima,
A              B7
Que não consome a alma;
E              C#m
Chama que acalma o peito,
A            B7
Trazendo Tua calma!

[Refrão]
E          C#m
Arde em mim, Senhor!
A          B7
Arde com Teu amor!
E           C#m
Consome o meu viver,
A      B7       E
Vem me fazer renascer!',
  to_tsvector('portuguese', 'Fogo Suave ' || '')
)
ON CONFLICT (id) DO UPDATE SET
  title = EXCLUDED.title,
  cifra = EXCLUDED.cifra,
  original_key = EXCLUDED.original_key,
  search_vector = EXCLUDED.search_vector;
