-- ============================================================================
-- SANTA CIFRA - SEED MASSIVO DE 367 MÚSICAS CATÓLICAS PARA SUPABASE
-- ============================================================================
INSERT INTO public.songs (
  id, title, composer, liturgical_moment, liturgical_season, original_key,
  bpm, time_signature, rhythm_name, rhythm_pattern, is_most_used, is_simple,
  chord_count, youtube_url, liturgical_analysis, cifra
) VALUES
  ('toda-a-terra-te-exalta', 'Toda a Terra Te Exalta, ó Senhor', 'Hinário Litúrgico CNBB', 'Entrada', 'Tempo Comum', 'G', 92, '4/4', 'Marcha Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Toda+a+terra+te+exalta+CNBB', '{"status": "Aprovado Litúrgico (CNBB)", "score": 96, "documentRef": "IGMR 47-48 / Salmo 99", "biblicalRef": "Sl 99 (100); Cl 3, 16", "justification": "Canto clássico de abertura que reúne o povo de Deus em torno do altar com sobriedade e louvor bíblico.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D  G

[Refrão]
G           C         D        G
Toda a terra te exalta, ó Senhor!
            C        D         G
Toda a terra te canta um louvor!
            C          D       Em
Tu és nossa força, nossa salvação,
C            G          D        G
Reunidos em torno do teu santo altar!

[Estrofe 1]
G             Em          C       D
1. Vinde todos com cantos de alegria,
G             Em           C      D
Entrai em sua casa com ação de graças!
C              D          G       Em
Ele é o nosso Deus, nosso Salvador,
C              G            D       G
E nós somos o povo do seu pastoreio!'),
  ('de-alegria-vibrei-no-senhor', 'De Alegria Vibrei no Senhor', 'Pe. Zezinho / Salmo 121', 'Entrada', 'Tempo Comum', 'D', 96, '4/4', 'Marcha Rancho / Jovem', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=De+alegria+vibrei+no+Senhor+Padre+Zezinho', '{"status": "Aprovado Litúrgico (Inspiração Salmódica)", "score": 98, "documentRef": "IGMR 47 / Salmo 121", "biblicalRef": "Sl 121 (122), 1-2", "justification": "Paráfrase fiel da antífona clássica de entrada ''Laetatus sum'' (Que alegria quando me disseram: Vamos à Casa do Senhor).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

[Refrão]
D                    G          D
De alegria vibrei no Senhor,
                     E          A
Pois meus passos conduzem ao altar!
G                    D          Bm
Lá no céu os anjos cantam com amor:
Em        A          D
Vamos à Casa do Senhor!

[Estrofes]
D                     G           D
1. Que alegria quando a mim me disseram:
                      A           D
Vamos juntos à Casa do Pai!
G                     D           Bm
Nossos pés já se encontram às portas
Em        A           D
Da Jerusalém celestial!

D                     G           D
2. Para lá sobem todas as tribos,
                      A           D
Para o Nome do Senhor celebrar!
G                     D           Bm
Implorai a paz sobre a Igreja,
Em        A           D
Reunida ao redor deste altar!'),
  ('o-povo-de-deus-no-deserto-andava', 'O Povo de Deus no Deserto Andava', 'Tradicional Litúrgico / CNBB', 'Entrada', 'Tempo Comum', 'D', 94, '4/4', 'Toada / Caminhada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=O+povo+de+Deus+no+deserto+andava+cifra', '{"status": "Aprovado Litúrgico (Apenas 3 Acordes)", "score": 94, "documentRef": "IGMR 47 / Lumen Gentium 9", "biblicalRef": "Êx 16; Hb 11", "justification": "Excelente canto processional de entrada para iniciantes (usa apenas D, G, A). Expressa a Igreja peregrina rumo à Pátria celeste.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  D

D                                  A
1. O povo de Deus no deserto andava,
   G                 A             D
Mas à sua frente alguém caminhava.
D                                  A
O povo de Deus era rico de nada,
   G                 A             D    D7
Só tinha a esperança e o pó da estrada.

[Refrão]
   G                               D
Também sou teu povo, Senhor, e estou nessa estrada,
   A                               D    D7
Somente a tua graça me basta e mais nada!
   G                               D
Também sou teu povo, Senhor, e estou nessa estrada,
   A                               D
Somente a tua graça me basta e mais nada!

D                                  A
2. O povo de Deus também vacilava,
   G                 A             D
Às vezes custava a crer no amor.
D                                  A
O povo de Deus, chorando, rezava,
   G                 A             D    D7
Pedia perdão e recomeçava.'),
  ('senhor-quem-entrara-no-santuario', 'Senhor, Quem Entrará no Santuário pra Te Louvar', 'Tradicional Litúrgico (Salmo 23)', 'Entrada', 'Tempo Comum', 'C', 88, '4/4', 'Balada Simples', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Senhor+quem+entrara+no+santuario+cifra', '{"status": "Aprovado Litúrgico (Baseado no Salmo 23/24)", "score": 92, "documentRef": "IGMR 47 / Salmo 23, 3-4", "biblicalRef": "Sl 23 (24), 3-6", "justification": "Um dos cantos de entrada mais fáceis do repertório católico. Retoma literalmente o Salmo 23: ''Quem subirá ao monte do Senhor? Quem tem mãos puras e coração inocente''.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G  C

C                                   G
1. Senhor, quem entrará no santuário pra te louvar?
   F                  G             C     C7
Senhor, quem entrará no santuário pra te louvar?

[Refrão]
     F                  G
Quem tem as mãos limpas e o coração puro,
     C         Am       Dm          G
Quem não é vaidoso e sabe amar!
     F                  G
Quem tem as mãos limpas e o coração puro,
     C         Am       Dm   G     C
Quem não é vaidoso e sabe amar!

C                                   G
2. Senhor, eu quero entrar no santuário pra te louvar!
   F                  G             C     C7
Senhor, eu quero entrar no santuário pra te louvar!

     F                  G
Ó dá-me mãos limpas e um coração puro,
     C         Am       Dm          G
Arranca a vaidade, ensina-me a amar!
     F                  G
Ó dá-me mãos limpas e um coração puro,
     C         Am       Dm   G     C
Arranca a vaidade, ensina-me a amar!'),
  ('eis-o-tempo-de-conversao', 'Eis o Tempo de Conversão', 'Pe. José Weber / CNBB', 'Entrada', 'Quaresma', 'D', 74, '4/4', 'Balada Sóbria', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Eis+o+tempo+de+conversao+cifra', '{"status": "Oficial do Hinário Litúrgico da CNBB (Quaresma)", "score": 100, "documentRef": "IGMR 47 / Hinário Litúrgico CNBB", "biblicalRef": "2Cor 6, 2; Jl 2, 12", "justification": "Canto oficial por excelência do Tempo da Quaresma no Brasil.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Entrada • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A  D

[Refrão]
D        Em       A        D
Eis o tempo de conversão!
A                     D
Eis o dia da salvação!
Bm       G        A           D
Ao Pai voltemos, juntos andemos:
D        Em       A        D
Eis o tempo de conversão!

[Estrofes]
D                            A
1. Os caminhos do Senhor são verdade, são amor:
G              A             D
Dirigi os meus passos, ó Senhor!
D                            A
Vossa palavra é a luz que na estrada me conduz:
G              A             D
Converhei minha vida ao vosso amor!'),
  ('o-senhor-ressurgiu-aleluia', 'O Senhor Ressurgiu, Aleluia!', 'Hinário Litúrgico CNBB (Tempo Pascal)', 'Entrada', 'Páscoa', 'D', 98, '4/4', 'Marcha Festiva Pascal', '↓  ↓ ↑  ↑ ↓ ↑', true, false, 5, 'https://www.youtube.com/results?search_query=O+Senhor+ressurgiu+aleluia+cifra', '{"status": "Oficial do Hinário da CNBB (Páscoa)", "score": 100, "documentRef": "IGMR 47 / Tempo Pascal", "biblicalRef": "1Cor 5, 7; Ap 5, 12", "justification": "Exalta a Ressurreição do Cordeiro Pascal imolado e vitorioso.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Entrada • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  F#m  G  A  D

[Refrão]
D      F#m      G          D
O Senhor ressurgiu, aleluia, aleluia!
G      Em       A
É o Cordeiro Pascal, aleluia, aleluia!
D      F#m      G          D
Imolado por nós, aleluia, aleluia!
G      Em       F#m    G       A      D
É o Cristo, o Senhor, ele vive e venceu, aleluia!

[Estrofe 1]
Bm              F#m
1. O Cristo, Senhor ressuscitou,
G               A
A nossa esperança realizou:
Bm              F#m
Vencida a morte para sempre,
G               E          A
Triunfa a vida eternamente!'),
  ('da-cepa-brotou-a-rama', 'Da Cepa Brotou a Rama', 'Pe. Reginaldo Veloso / CNBB', 'Entrada', 'Advento', 'Em', 82, '4/4', 'Baião / Toada Sóbria', '↓  ↓ ↑  ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Da+cepa+brotou+a+rama+cifra', '{"status": "Oficial do Hinário Litúrgico da CNBB (Advento)", "score": 100, "documentRef": "IGMR 47 / Isaías 11, 1-2", "biblicalRef": "Is 11, 1-10", "justification": "Profecia messiânica de Isaías cantada com apenas 3 acordes básicos (Em, Am, B7).", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Entrada • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  B7  Em

[Refrão]
Em       B7          Em
Da cepa brotou a rama, da rama brotou a flor,
E7               Am     B7               Em
Da flor nasceu Maria, de Maria, o Salvador!

[Estrofe 1]
Am                     Em
1. O Espírito de Deus sobre ele pousará,
B7                     Em
De saber, de entendimento este Espírito será,
Am                     Em
De conselho e fortaleza, de ciência e de temor,
B7                     Em
Achará sua alegria no temor do seu Senhor!

[Segunda Parte]
   D                        G               Em
2. Nossos passos peregrinos vêm buscar a Tua paz,
   C                        B7              Em
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        Am              D
Acolhei nossa oração neste dia do Senhor,
   C                        B7              Em
Para a glória de Deus Pai, nosso eterno Criador!

[Final] Em  G  B7  Em'),
  ('cristaos-vinde-todos-natal', 'Cristãos, Vinde Todos (Adeste Fideles)', 'Hino Tradicional de Natal', 'Entrada', 'Natal', 'G', 86, '4/4', 'Hino Solene', '↓   ↓   ↓   ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cristaos+vinde+todos+cifra', '{"status": "Patrimônio Universal da Igreja (Adeste Fideles)", "score": 100, "documentRef": "Sacrosanctum Concilium 114 / Natal do Senhor", "biblicalRef": "Lc 2, 15", "justification": "Tradução oficial em vernáculo do clássico hino latino Adeste Fideles para a Missa do Natal.", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Entrada • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  G  C  G  D  G

G              D       G        C     G    D
1. Cristãos, vinde todos, com alegres cantos,
Em     D     C       D     G     D
Oh! Vinde, oh! Vinde até Belém!
G           C      D     Em         D
Vede nascido, vosso Rei eterno:

[Refrão]
G              D          G        C     G    D
Oh! Vinde, adoremos! Oh! Vinde, adoremos!
C       D      G   Em    C      D      G
Oh! Vinde, adoremos o Salvador!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Final] G  C  D7  G'),
  ('senhor-que-viestes-salvar', 'Senhor, que Viestes Salvar os Corações Arrependidos', 'Pe. Zeca / JMJ', 'Ato Penitencial', 'Qualquer', 'D', 68, '4/4', 'Balada Lenta Orante', '↓   ↓ ↑   ↑ ↓', true, true, 5, 'https://www.youtube.com/watch?v=2Tz8A_oR3n0', '{"status": "Fórmula Oficial III do Missal Romano", "score": 100, "documentRef": "IGMR 52 / Ordinário da Missa", "biblicalRef": "Sl 50; Lc 18, 13", "justification": "A música de Ato Penitencial mais cantada nas paróquias do Brasil, com texto 100% fiel ao Missal Romano.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G  A  D

D          A       Bm
Senhor que viestes salvar
G               A   D
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
Piedade, piedade, piedade de nós!'),
  ('senhor-tende-piedade-de-nos-simples', 'Senhor, Tende Piedade de Nós (Clássico 3 Acordes)', 'Missal Romano / Melodia Simples', 'Ato Penitencial', 'Qualquer', 'Em', 66, '4/4', 'Dedilhado / Balada Lenta', '↓   ↑ ↓   ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Senhor+tende+piedade+de+nos+missal', '{"status": "Texto Oficial do Kyrie Eleison (Missal Romano)", "score": 100, "documentRef": "IGMR 52", "biblicalRef": "Mt 20, 30", "justification": "Fórmula direta e curtíssima do Kyrie, ideal para Missas feriais, Quaresma e iniciantes no violão (apenas Em, Am, B7).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                       G               B7          Em
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   D                        C               B7          Em
E confiamos no abismo da Vossa eterna bondade;
   G                        Am              D
Olhai com misericórdia para o coração contrito,
   C                        B7              Em
Renovai a nossa aliança no Vosso amor infinito!

Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Senhor, tende piedade de nós!

Am                      Em
Cristo, tende piedade de nós!
B7                      Em
Cristo, tende piedade de nós!

Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Senhor, tende piedade de nós!

[Segunda Parte]
   Em                       G               B7          Em
2. Vós que viestes chamar os pecadores à conversão,
   D                        C               B7          Em
Curai as nossas feridas e dai-nos Vosso perdão;
   G                        Am              D
Purificai nossas vidas para a Santa Comunhão,
   C                        B7              Em
Conduzi os nossos passos no caminho da salvação!

Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Senhor, tende piedade de nós!

Am                      Em
Cristo, tende piedade de nós!
B7                      Em
Cristo, tende piedade de nós!

Em                      Am
Senhor, tende piedade de nós!
B7                      Em
Senhor, tende piedade de nós!

[Final] Em  G  B7  Em'),
  ('kyrie-eleison-shalom', 'Kyrie Eleison (Como a Ovelha Perdida)', 'Comunidade Católica Shalom / JMJ', 'Ato Penitencial', 'Qualquer', 'G', 70, '4/4', 'Balada Orante', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Como+a+ovelha+perdida+Kyrie+Shalom', '{"status": "Aprovado com Tropo Bíblico + Kyrie", "score": 95, "documentRef": "IGMR 52 / Lc 15, 4-7", "biblicalRef": "Lc 15, 4; Lc 23, 42", "justification": "Integra tropos evangélicos (o Bom Pastor, o Bom Ladrão) seguidos da aclamação tradicional grega Kyrie Eleison / Christe Eleison.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C  D

G                 D                 Em              C
1. Como a ovelha perdida, pelo pecado ferida,
G                 D                 C               D
Eu te suplico perdão, ó Bom Pastor!

[Refrão]
G      D      Em     C      G      D      C   D
Kyrie eleison! Kyrie eleison! Kyrie eleison!

G                 D                 Em              C
2. Como o ladrão perdoado, encontro o paraíso ao teu lado,
G                 D                 C               D
Lembra-te de mim, pecador, por tua cruz!

G       D       Em      C       G       D       C   D
Christe eleison! Christe eleison! Christe eleison!

G                 D                 Em              C
3. Como a pecadora caída, derramo aos teus pés minha vida,
G                 D                 C               D
Vê as lágrimas do meu coração e salva-me!

G      D      Em     C      G      D      G
Kyrie eleison! Kyrie eleison! Kyrie eleison!'),
  ('perdao-senhor-tantos-erros-cometi', 'Perdão, Senhor, Tantos Erros Cometi', 'Pe. Jonas Abib', 'Ato Penitencial', 'Qualquer', 'C', 68, '4/4', 'Balada Suave', '↓   ↓ ↑   ↑ ↓', false, true, 4, 'https://www.youtube.com/results?search_query=Perdao+Senhor+tantos+erros+cometi+cifra', '{"status": "Aprovado com Invocação Final de Piedade", "score": 88, "documentRef": "IGMR 51-52", "biblicalRef": "Sl 50", "justification": "Clássico bastante simples em Dó maior (C, Am, Dm, G).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G  C

[Primeira Parte]
   C                        F               G7          C
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   Am                       Dm              G7          C
E confiamos no abismo da Vossa eterna bondade;
   F                        G               Am
Olhai com misericórdia para o coração contrito,
   Dm                       G7              C
Renovai a nossa aliança no Vosso amor infinito!

C                Am          Dm               G
Perdão, Senhor, tantos erros cometi,
Em               Am          Dm       G       C    C7
Perdão, Senhor, tantas vezes me omiti!
F                G           Em               Am
Perdão, Senhor, pelos males que causei,
Dm               G           C        C7
Pelas coisas que falei, pelo irmão que não amei!

[Refrão]
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C
Meu pecado vem lavar com seu amor!

[Segunda Parte]
   C                        F               G7          C
2. Vós que viestes chamar os pecadores à conversão,
   Am                       Dm              G7          C
Curai as nossas feridas e dai-nos Vosso perdão;
   F                        G               Am
Purificai nossas vidas para a Santa Comunhão,
   Dm                       G7              C
Conduzi os nossos passos no caminho da salvação!

C                Am          Dm               G
Perdão, Senhor, tantos erros cometi,
Em               Am          Dm       G       C    C7
Perdão, Senhor, tantas vezes me omiti!
F                G           Em               Am
Perdão, Senhor, pelos males que causei,
Dm               G           C        C7
Pelas coisas que falei, pelo irmão que não amei!

[Refrão]
F        G        Em       Am
Piedade, Senhor, tem piedade, Senhor,
Dm       G        C
Meu pecado vem lavar com seu amor!

[Final] C  F  G7  C'),
  ('gloria-a-deus-nas-alturas-cnbb', 'Glória a Deus nas Alturas (Oficial da Liturgia)', 'Casemiro V. Nogueira / CNBB', 'Glória', 'Tempo Comum', 'E', 88, '4/4', 'Marcha Solene / Louvor', '↓  ↓  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/watch?v=kYJvY9Vd_G8', '{"status": "Texto Oficial Canônico do Missal Romano", "score": 100, "documentRef": "IGMR 53 / Sacrosanctum Concilium 112", "biblicalRef": "Lc 2, 14; Ap 5, 12", "justification": "Texto integral inalterado do Missal Romano. Cumpre perfeitamente a exigência canônica da IGMR 53.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Glória • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] E  B7  E

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
    E               B7
Senhor Deus, Rei dos céus,
    A           E
Deus Pai todo-poderoso:
    A              E
Nós vos louvamos, nós vos bendizemos,
    F#7           B7
Nós vos adoramos, nós vos glorificamos,
    A          B7     E
Nós vos damos graças por vossa imensa glória.

[Solo / Estrofe 2]
    E            B7
Senhor Jesus Cristo, Filho Unigênito,
    A              E
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai.
    A              E
Vós que tirais o pecado do mundo,
    F#7        B7
Tende piedade de nós.
    A              E
Vós que tirais o pecado do mundo,
    F#7           B7
Acolhei a nossa súplica.
    A              E
Vós que estais à direita do Pai,
    B7         E
Tende piedade de nós.

[Solo / Estrofe 3]
    E           B7
Só vós sois o Santo, só vós, o Senhor,
    A              E
Só vós, o Altíssimo, Jesus Cristo,
    A           E
Com o Espírito Santo,
       B7           E
Na glória de Deus Pai. Amém!'),
  ('gloria-a-deus-nas-alturas-simplificado-do', 'Glória a Deus nas Alturas (Fácil Sem Pestana em Dó)', 'Hinário Litúrgico CNBB', 'Glória', 'Tempo Comum', 'C', 90, '4/4', 'Balada Festiva', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Gloria+a+Deus+nas+alturas+CNBB+Do+maior', '{"status": "Texto Oficial do Missal (Arranjo Iniciante)", "score": 100, "documentRef": "IGMR 53", "biblicalRef": "Lc 2, 14", "justification": "Versão oficial do Hino de Louvor usando apenas C, Am, Dm e G — zero pestanas no violão!", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Glória • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G  C

[Refrão]
C       Am    Dm   G
Glória a Deus nas alturas!
C       Am    Dm   G
Glória a Deus nas alturas!
C          Em      Am         Dm   G    C
E paz na terra aos homens por Ele amados!

[Estrofe 1]
C                   Am
Senhor Deus, Rei dos céus, Deus Pai todo-poderoso:
Dm                  G
Nós vos louvamos, nós vos bendizemos,
C                   Am
Nós vos adoramos, nós vos glorificamos,
Dm                  G                  C
Nós vos damos graças por vossa imensa glória!

[Estrofe 2]
C                   Am
Senhor Jesus Cristo, Filho Unigênito,
Dm                  G
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai:
C                   Am
Vós que tirais o pecado do mundo, tende piedade de nós!
Dm                  G
Vós que tirais o pecado do mundo, acolhei a nossa súplica!
C                   Am                Dm    G    C
Vós que estais à direita do Pai, tende piedade de nós!

[Estrofe 3]
C                   Am
Só vós sois o Santo, só vós, o Senhor,
Dm                  G
Só vós, o Altíssimo, Jesus Cristo,
C                   Am       Dm   G    C
Com o Espírito Santo, na glória de Deus Pai. Amém!'),
  ('gloria-a-deus-nos-altos-ceus', 'Glória a Deus nos Altos Céus', 'Frei Fabreti / Hinário Litúrgico', 'Glória', 'Tempo Comum', 'G', 92, '3/4', 'Valsa Solene (3/4)', '↓   ↑ ↓   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Gloria+a+Deus+nos+altos+ceus+cifra', '{"status": "Versão Poética Aprovada pela CNBB", "score": 96, "documentRef": "IGMR 53 / Hinário CNBB", "biblicalRef": "Lc 2, 14", "justification": "Tradução poética oficial constante nos hinários da CNBB para o Hino de Louvor.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Glória • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D  G

G                         D
1. Glória a Deus nos altos céus,
C          D          G
Paz na terra a seus amados!
G                         D
A vós louvam, Rei celeste,
C          D          G
Os que foram libertados!

[Refrão]
C         D          G     Em
Glória a Deus, lá nos céus,
C         D          G
E paz aos seus. Amém!

G                         D
2. Deus e Pai, nós vos louvamos,
C          D          G
Adoramos, bendizemos;
G                         D
Damos glória ao vosso Nome,
C          D          G
Vossos dons agradecemos!'),
  ('o-senhor-e-meu-pastor-salmo-23', 'O Senhor É Meu Pastor, Nada Me Faltará (Salmo 23)', 'Lecionário Dominical / Salmo Responsorial', 'Salmo', 'Tempo Comum', 'G', 70, '3/4', 'Valsa Meditativa', '↓   ↑ ↓   ↑ ↓', true, true, 4, 'https://www.youtube.com/watch?v=3R6N5_Z2u4U', '{"status": "Palavra de Deus Oficial (Lecionário)", "score": 100, "documentRef": "IGMR 61 / Lecionário Romano", "biblicalRef": "Salmo 22 (23)", "justification": "Proclamação orante da Sagrada Escritura. O povo responde cantando o refrão bíblico.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Salmo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D  G

[Refrão]
G       Em      C        D
O Senhor é meu pastor, nada me faltará!
G       Em      C   D    G
O Senhor é meu pastor, nada me faltará!

[Estrofe 1]
G                Em
1. O Senhor é meu pastor, nada me falta;
C                Am           D
Em verdes pastagens me faz repousar.
C                D        G       Em
Conduz-me junto às águas refrescantes
C                 Am           D
E restaura as forças da minha alma.

[Estrofe 2]
G                 Em
2. Guia-me pelo caminho do bem,
C                 Am             D
Por causa da honra do seu santo Nome.
C                D            G      Em
Mesmo que eu passe pelo vale tenebroso,
C                 Am           D
Não temo mal algum, estais comigo!'),
  ('enviai-o-vosso-espirito-senhor-salmo-103', 'Enviai o Vosso Espírito, Senhor (Salmo 103)', 'Lecionário / Solenidade de Pentecostes', 'Salmo', 'Páscoa', 'C', 72, '4/4', 'Balada Suave', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Enviai+o+vosso+Espirito+Senhor+Salmo+103', '{"status": "Salmo Oficial do Lecionário (Vigília Pascal e Pentecostes)", "score": 100, "documentRef": "IGMR 61 / Salmo 103", "biblicalRef": "Sl 103 (104), 30", "justification": "Refrão salmódico oficial de Pentecostes com 4 acordes abertos (C, Am, F, G).", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Salmo • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  F  G  C

[Refrão]
C                      Am
Enviai o vosso Espírito, Senhor,
F              G               C
E da terra toda a face renovai!

[Estrofe 1]
Am                     Em
1. Bendize, ó minha alma, ao Senhor!
F                      G
Ó meu Deus e meu Senhor, como sois grande!
Am                     Em
Quão numerosas, ó Senhor, são vossas obras,
F                      G
E que sabedoria em todas elas!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Final] C  F  G7  C'),
  ('misericordia-o-senhor-pois-pecamos-salmo-50', 'Misericórdia, ó Senhor, pois Pecamos (Salmo 50)', 'Lecionário Quaresmal', 'Salmo', 'Quaresma', 'Em', 64, '4/4', 'Dedilhado Penitencial', 'P  i  m  a', true, true, 3, 'https://www.youtube.com/results?search_query=Misericordia+o+Senhor+pois+pecamos+Salmo+50', '{"status": "Salmo Oficial da Quarta-Feira de Cinzas e Quaresma", "score": 100, "documentRef": "IGMR 61 / Salmo 50", "biblicalRef": "Sl 50 (51)", "justification": "O Salmo Miserere, cantado com apenas 3 acordes menores/sóbrios (Em, Am, B7).", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Salmo • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
Em             Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!
Em             Am          B7         Em
Misericórdia, ó Senhor, pois pecamos!

[Estrofe 1]
Em                               Am
1. Tende piedade, ó meu Deus, misericórdia!
B7                               Em
Na imensidão de vosso amor, purificai-me!
Em                               Am
Lavai-me todo inteiro do pecado,
B7                               Em
E apagai completamente a minha culpa!

[Segunda Parte]
   D                        G               Em
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   C                        B7              Em
Pois olhou para a pequenez deste humilde servidor;
   G                        Am              D
Recebe a minha entrega, meu louvor e gratidão,
   C                        B7              Em
Permanece para sempre em minha vida e vocação!

[Final] Em  G  B7  Em'),
  ('aleluia-como-o-pai-me-amou', 'Aleluia, Como o Pai Me Amou', 'Pe. Zezinho / Hinário Litúrgico', 'Aclamação ao Evangelho', 'Tempo Comum', 'C', 82, '4/4', 'Aclamação Jubilosa', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/watch?v=6rL8P0rS_3M', '{"status": "Aprovado Litúrgico (Fora da Quaresma)", "score": 96, "documentRef": "IGMR 62-64 / João 15,9", "biblicalRef": "Jo 15, 9-10", "justification": "Aclamação evangélica clássica com versículo de São João.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  F  G  C

[Primeira Parte]
   C                        F               G          C
1. Vossa Palavra, Senhor, é lâmpada para os meus pés,
   Am                       Dm              G7          C
E luz que ilumina a estrada dos Vossos filhos fiéis;
   F                        G               Am
Fazei arder nosso peito ao escutar Vossa voz,
   Dm                       G7              C
Pois só Vós tendes palavras de vida eterna para nós!

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

[Segunda Parte]
   C                        F               G          C
2. Abri o nosso coração ao Santo Evangelho da paz,
   Am                       Dm              G7          C
Semente do Reino de Deus que fruto abundante nos traz;
   F                        G               Am
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Dm                       G7              C
E viver o Teu anúncio em cada canto e lugar!

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

[Final] C  F  G7  C'),
  ('aleluia-a-minha-alma-abrirei', 'Aleluia, a Minha Alma Abrirei', 'Tradicional Litúrgico', 'Aclamação ao Evangelho', 'Tempo Comum', 'C', 76, '4/4', 'Balada Suave', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Aleluia+a+minha+alma+abrirei+cifra', '{"status": "Aprovado Litúrgico (Super Simples)", "score": 92, "documentRef": "IGMR 62", "biblicalRef": "At 16, 14", "justification": "Canto de aclamação mais simples do Brasil (progressão C - Am - Dm - G).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G  C

[Primeira Parte]
   C                        F               G          C
1. Vossa Palavra, Senhor, é lâmpada para os meus pés,
   Am                       Dm              G7          C
E luz que ilumina a estrada dos Vossos filhos fiéis;
   F                        G               Am
Fazei arder nosso peito ao escutar Vossa voz,
   Dm                       G7              C
Pois só Vós tendes palavras de vida eterna para nós!

C        Am      Dm      G
Aleluia, aleluia, a minh''alma abrirei!
C        Am      Dm      G      C     C7
Aleluia, aleluia, Cristo é meu Rei!

F        G       Em      Am
Aleluia, aleluia, a minh''alma abrirei!
Dm       G       C
Aleluia, aleluia, Cristo é meu Rei!

[Segunda Parte]
   C                        F               G          C
2. Abri o nosso coração ao Santo Evangelho da paz,
   Am                       Dm              G7          C
Semente do Reino de Deus que fruto abundante nos traz;
   F                        G               Am
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Dm                       G7              C
E viver o Teu anúncio em cada canto e lugar!

C        Am      Dm      G
Aleluia, aleluia, a minh''alma abrirei!
C        Am      Dm      G      C     C7
Aleluia, aleluia, Cristo é meu Rei!

F        G       Em      Am
Aleluia, aleluia, a minh''alma abrirei!
Dm       G       C
Aleluia, aleluia, Cristo é meu Rei!

[Final] C  F  G7  C'),
  ('buscai-primeiro-o-reino-de-deus', 'Buscai Primeiro o Reino de Deus (Aleluia)', 'Comunidade de Taizé / Mateus 6,33', 'Aclamação ao Evangelho', 'Tempo Comum', 'C', 74, '4/4', 'Dedilhado / Balada', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Buscai+primeiro+o+reino+de+Deus+cifra', '{"status": "Texto Evangélico Literal (Mt 6, 33)", "score": 98, "documentRef": "IGMR 62 / Mateus 6, 33", "biblicalRef": "Mt 6, 33; Mt 4, 4", "justification": "Citação literal do Sermão da Montanha seguida do Aleluia meditativo.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Em  Am  F  C  G  C

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
Aleluia, Aleluia!'),
  ('louvor-e-gloria-a-ti-senhor-quaresma', 'Louvor e Glória a Ti, Senhor (Aclamação da Quaresma)', 'Lecionário Romano / CNBB', 'Aclamação ao Evangelho', 'Quaresma', 'D', 72, '4/4', 'Marcha Sóbria', '↓   ↓ ↑   ↑ ↓', true, true, 3, 'https://www.youtube.com/results?search_query=Louvor+e+gloria+a+ti+Senhor+Cristo+palavra+de+Deus', '{"status": "Fórmula Oficial do Lecionário para a Quaresma", "score": 100, "documentRef": "IGMR 62b (Quaresma - Sem Aleluia)", "biblicalRef": "Jo 6, 68", "justification": "Na Quaresma é estritamente proibido cantar o Aleluia. Esta é a aclamação oficial prescrita pela Igreja.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

[Primeira Parte]
   D                        G               A7          D
1. Vossa Palavra, Senhor, é lâmpada para os meus pés,
   Bm                       Em              A7          D
E luz que ilumina a estrada dos Vossos filhos fiéis;
   G                        A7              Bm
Fazei arder nosso peito ao escutar Vossa voz,
   Em                       A7              D
Pois só Vós tendes palavras de vida eterna para nós!

[Refrão]
D                 G          D
Louvor e glória a Ti, Senhor,
G                 A          D
Cristo, Palavra, Palavra de Deus!
D                 G          D
Louvor e glória a Ti, Senhor,
G        A        D
Cristo, Palavra de Deus!

[Versículo]
Bm                           F#m
Nem só de pão vive o homem, mas de toda palavra
G                            A
Que sai da boca de Deus!

[Segunda Parte]
   D                        G               A7          D
2. Abri o nosso coração ao Santo Evangelho da paz,
   Bm                       Em              A7          D
Semente do Reino de Deus que fruto abundante nos traz;
   G                        A7              Bm
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Em                       A7              D
E viver o Teu anúncio em cada canto e lugar!

[Refrão]
D                 G          D
Louvor e glória a Ti, Senhor,
G                 A          D
Cristo, Palavra, Palavra de Deus!
D                 G          D
Louvor e glória a Ti, Senhor,
G        A        D
Cristo, Palavra de Deus!

[Versículo]
Bm                           F#m
Nem só de pão vive o homem, mas de toda palavra
G                            A
Que sai da boca de Deus!

[Final] D  G  A7  D'),
  ('os-graos-que-formam-a-espiga', 'Os Grãos que Formam a Espiga', 'Frei Luiz Turra', 'Ofertório', 'Tempo Comum', 'F', 72, '3/4', 'Valsa Litúrgica (3/4)', '↓   ↑ ↓   ↑ ↓', true, true, 3, 'https://www.youtube.com/watch?v=7uC8Wb6e3-I', '{"status": "Aprovado CNBB (Hinário Litúrgico)", "score": 98, "documentRef": "IGMR 74 / CNBB Estudo 79", "biblicalRef": "1Cor 10, 17; Jo 12, 24", "justification": "Une a metáfora do trigo que se faz pão à oferta sacrificial da vida dos fiéis pela unidade da Igreja.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] F  Gm  C7  F

F                  Gm
1. Os grãos que formam a espiga
   C7            F
se unem pra serem pão
                   Gm
Os homens que são Igreja
   C7            F
se unem pela oblação

[Refrão]
F                  Gm
Diante do altar, Senhor,
   C7             F
entendo minha vocação:
                   Gm
Devo sacrificar a vida
   C7          F
por meu irmão!

F                  Gm
2. O grão caído na terra
   C7            F
só vive se vai morrer
                   Gm
É dando que se recebe,
   C7            F
morrendo se vai viver

F                  Gm
3. O vinho e o pão ofertamos,
   C7            F
são nossa resposta de amor
                   Gm
Pedimos humildemente:
   C7            F
"Aceita-nos, ó Senhor" '),
  ('sabes-senhor-o-que-temos', 'Sabes, Senhor, o que Temos É Tão Pouco pra Dar', 'Pe. Lindberg Pires', 'Ofertório', 'Tempo Comum', 'D', 70, '6/8', 'Balada 6/8 Suave', '↓  ↑ ↓ ↑  ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sabes+Senhor+o+que+temos+e+tao+pouco+pra+dar+cifra', '{"status": "Clássico Litúrgico de Ofertório", "score": 95, "documentRef": "IGMR 74", "biblicalRef": "Mc 12, 42-44; Jo 6, 9", "justification": "Canto tradicional de preparação das oferendas com harmonia simples em Ré maior (D, G, A, Bm).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

[Refrão]
D              G          A                  D
Sabes, Senhor, o que temos é tão pouco pra dar,
Bm             Em         A                  D
Mas este pouco nós queremos com os irmãos compartilhar!

[Estrofe 1]
G              Em         A                  D
1. Queremos nesta hora, diante dos irmãos,
Bm             Em         A                  D
Comprometer a vida, buscando a união.

[Estrofe 2]
G              Em         A                  D
2. Sabemos que é difícil os bens compartilhar,
Bm             Em         A                  D
Mas com a tua graça, Senhor, queremos dar!'),
  ('venho-senhor-minha-vida-oferecer', 'Venho, Senhor, Minha Vida Oferecer', 'Repertório Litúrgico Popular', 'Ofertório', 'Tempo Comum', 'G', 68, '4/4', 'Balada Lenta', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 5, 'https://www.youtube.com/results?search_query=Venho+Senhor+minha+vida+oferecer+cifra', '{"status": "Aprovado para Apresentação dos Dons", "score": 90, "documentRef": "IGMR 74 / Romanos 12, 1", "biblicalRef": "Rm 12, 1", "justification": "Baseado na exortação de São Paulo em Rm 12,1: ''Oferecei vossos corpos como sacrifício vivo, santo e agradável a Deus''.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C  D  G

G              D          Em         Bm
Venho, Senhor, minha vida oferecer
C              G          Am         D
Como oferta de amor e sacrifício:
G              D          Em         Bm
Quero minha vida a Ti entregar
C              D          G     G7
Como oferta viva em teu altar!

[Refrão]
C        D          G      Em
Pois pra te adorar foi que eu nasci,
C        D          G      G7
Cumpre em mim o teu querer!
C        D          G      Em
Faça o que está em teu coração,
C        D                 G
E que a cada dia eu queira mais e mais
Am       D          G
Estar ao teu lado, Senhor!'),
  ('meu-coracao-e-para-ti-senhor', 'Meu Coração É para Ti, Senhor (Pão e Vinho)', 'Tradicional Litúrgico', 'Ofertório', 'Tempo Comum', 'E', 74, '4/4', 'Balada Simples', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pao+e+vinho+para+ti+Senhor+meu+coracao+cifra', '{"status": "Aprovado (Estrutura Circular de 4 Acordes)", "score": 91, "documentRef": "IGMR 74", "biblicalRef": "Sl 115", "justification": "Usa a mesma sequência de 4 acordes do início ao fim, facilitando o canto imediato da assembleia.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] E  A  B7  E

E                      A
1. Pão e vinho para Ti, Senhor,
B7                     E
Pão e vinho para Ti, Senhor:
C#m                    F#m
Pão e vinho para Ti, Senhor,
B7                     E     E7
Meu coração é para Ti, Senhor!

[Refrão]
A                      B7
Porque Tu me deste a vida,
G#m                    C#m
Porque Tu me deste o existir,
F#m                    B7
Porque Tu me deste o carinho,
                       E
Me deste o amor!'),
  ('bendito-sejais-senhor-deus-do-universo', 'Bendito Sejais, Senhor Deus do Universo (Bendito e Louvado)', 'Missal Romano / Fórmula Litúrgica', 'Ofertório', 'Qualquer', 'Am', 76, '4/4', 'Toada Litúrgica', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Bendito+sejais+Senhor+Deus+do+universo+pelo+pao+e+vinho', '{"status": "Texto Oficial da Oração de Apresentação dos Dons", "score": 100, "documentRef": "IGMR 74 / Missal Romano", "biblicalRef": "Br 2; Sl 103", "justification": "Canta diretamente a bênção litúrgica sobre o pão e o vinho prescrita no Missal Romano.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Am  Dm  E7  Am

Am                     Dm
1. Bendito sejais, Senhor Deus do universo,
G                      C          E7
Pelo pão que recebemos de vossa bondade:
Am                     Dm
Fruto da terra e do trabalho humano,
E7                                Am
Que agora vos apresentamos, e para nós se vai tornar
Dm          E7       Am
O Pão da Vida!

[Refrão]
Dm          G        C        Am
Bendito seja Deus para sempre!
Dm          E7       Am
Bendito seja Deus para sempre!

Am                     Dm
2. Bendito sejais, Senhor Deus do universo,
G                      C          E7
Pelo vinho que recebemos de vossa bondade:
Am                     Dm
Fruto da videira e do trabalho humano,
E7                                Am
Que agora vos apresentamos, e para nós se vai tornar
Dm          E7       Am
O Vinho da Salvação!'),
  ('santo-senhor-deus-do-universo', 'Santo, Santo, Santo, Senhor Deus do Universo', 'Melodia Litúrgica Tradicional / Missal Romano', 'Santo', 'Qualquer', 'C', 78, '4/4', 'Balada Sagrada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/watch?v=O_5b7N3oW3U', '{"status": "Texto Bíblico Canônico Inalterado", "score": 100, "documentRef": "IGMR 79b / Isaías 6,3 / Mateus 21,9", "biblicalRef": "Is 6, 3; Sl 117; Mt 21, 9", "justification": "Aclamação celestial da Oração Eucarística com o texto exato da Liturgia e apenas 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Santo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G

[Primeira Parte]
C           Am
Santo, Santo, Santo
Dm              G
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
C              Am
Bendito aquele que vem
Dm             G
Em nome do Senhor!
C              Am
Bendito aquele que vem
Dm             G
Em nome do Senhor!

[Refrão Final]
C    F    C     F     G
Hosana nas alturas, Hosana!
C    F    C     F     G    C
Hosana nas alturas, Hosana!'),
  ('santo-dos-anjos-dm', 'Santo, Santo, Santo (Em Ré Menor Solene)', 'Hinário Litúrgico CNBB', 'Santo', 'Qualquer', 'Dm', 84, '4/4', 'Marcha Sóbria', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Santo+Senhor+Deus+do+universo+Re+menor', '{"status": "Texto Oficial do Missal Romano", "score": 100, "documentRef": "IGMR 79b", "biblicalRef": "Is 6, 3; Mt 21, 9", "justification": "Melodia solene em tom menor sem pestanas (Dm, Gm, C, A7), muito utilizada em todas as dioceses.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Santo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

Dm                     Gm
Santo, Santo, Santo, Senhor Deus do universo!
C                      F          A7
O céu e a terra proclamam a vossa glória!

[Refrão]
Dm                     Gm
Hosana nas alturas, hosana!
A7                     Dm
Hosana nas alturas, hosana!

Dm                     Gm
Bendito o que vem em nome do Senhor!
C                      F          A7
Bendito o que vem em nome do Senhor!

Dm                     Gm
Hosana nas alturas, hosana!
A7                     Dm
Hosana nas alturas, hosana!'),
  ('santo-solene-em-sol', 'Santo, Santo, Santo (Fácil em Sol Maior - 3 Acordes)', 'Missal Romano / Popular Litúrgico', 'Santo', 'Qualquer', 'G', 80, '4/4', 'Balada Simples', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Santo+Senhor+Deus+do+universo+Sol+maior', '{"status": "Texto Oficial Canônico (Apenas G, C, D)", "score": 100, "documentRef": "IGMR 79b", "biblicalRef": "Is 6, 3", "justification": "Arranjo de 3 acordes para o texto integral do Sanctus.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Santo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D  G

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

G                      C
Santo, Santo, Santo, Senhor Deus do universo!
D                      G
O céu e a terra proclamam a vossa glória!
G           C          D          G
Hosana, hosana, hosana nas alturas!

G                      C
Bendito o que vem em nome do Senhor!
G           C          D          G
Hosana, hosana, hosana nas alturas!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

G                      C
Santo, Santo, Santo, Senhor Deus do universo!
D                      G
O céu e a terra proclamam a vossa glória!
G           C          D          G
Hosana, hosana, hosana nas alturas!

G                      C
Bendito o que vem em nome do Senhor!
G           C          D          G
Hosana, hosana, hosana nas alturas!

[Final] G  C  D7  G'),
  ('cordeiro-de-deus-missal', 'Cordeiro de Deus (Agnus Dei em Ré Maior)', 'Texto Oficial do Missal Romano', 'Cordeiro de Deus', 'Qualquer', 'D', 64, '4/4', 'Súplica Orante Suave', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/watch?v=y7H_2zYtE_w', '{"status": "Texto Oficial Canônico (Fração do Pão)", "score": 100, "documentRef": "IGMR 83 / Apocalipse 5,6", "biblicalRef": "Jo 1, 29; Ap 5, 6-12", "justification": "Acompanha a fração do Pão Consagrado com o texto oficial imutável.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Cordeiro de Deus • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

[Primeira Parte]
   D                        A7              Bm
1. No silêncio agradecido deste encontro de oração,
   G                        Em              A7
Contemplo a Tua presença que habita em meu coração;
   D                        A7              Bm
Não há nada neste mundo que se possa comparar
   G                        A7              D
À doçura da Tua graça derramada neste altar!

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

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

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

[Final] D  G  A7  D'),
  ('cordeiro-de-deus-sol-maior', 'Cordeiro de Deus (Melodia Suave em Sol Maior)', 'CNBB / Comunidade Shalom', 'Cordeiro de Deus', 'Qualquer', 'G', 66, '4/4', 'Balada Lenta', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Cordeiro+de+Deus+que+tirais+o+pecado+do+mundo+Sol+maior', '{"status": "Texto Oficial do Missal Romano", "score": 100, "documentRef": "IGMR 83", "biblicalRef": "Jo 1, 29", "justification": "Progressão suave (G - Bm/Em - C - D) sem pestanas na versão simplificada.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Cordeiro de Deus • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D  G

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
Am               C          D              G
Tende piedade, tende piedade de nós!

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
Am               C          D              G
Tende piedade, tende piedade de nós!

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
C                D          C      D       G
Dai-nos a paz, dai-nos a vossa paz!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
Am               C          D              G
Tende piedade, tende piedade de nós!

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
Am               C          D              G
Tende piedade, tende piedade de nós!

G                Em         C              D
Cordeiro de Deus, que tirais o pecado do mundo,
C                D          C      D       G
Dai-nos a paz, dai-nos a vossa paz!

[Final] G  C  D7  G'),
  ('o-pao-da-vida-a-comunhao', 'O Pão da Vida, a Comunhão', 'Pe. José Weber', 'Comunhão', 'Tempo Comum', 'D', 76, '4/4', 'Balada Suave', '↓   ↓ ↑   ↑ ↓ ↑', true, false, 6, 'https://www.youtube.com/watch?v=FqGgR0b6dPk', '{"status": "Aprovado Litúrgico (Nota Máxima)", "score": 98, "documentRef": "IGMR 86-88 / CNBB Estudo 79", "biblicalRef": "Jo 6, 35; 1Cor 10, 16-17", "justification": "Canto eucarístico por excelência sobre o Pão da Vida e a partilha fraterna.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A7  D

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
corpo por vós doado: tomai, comei!" '),
  ('vejam-eu-andei-pelas-vilas', 'Vejam, Eu Andei Pelas Vilas', 'Frei Fabreti', 'Comunhão', 'Tempo Comum', 'D', 74, '4/4', 'Balada Eucarística', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 5, 'https://www.youtube.com/results?search_query=Vejam+eu+andei+pelas+vilas+cifra', '{"status": "Clássico da Comunhão Eucarística no Brasil", "score": 97, "documentRef": "IGMR 86 / Lucas 22, 19", "biblicalRef": "Lc 22, 19; Mt 25, 35", "justification": "Conecta o gesto eucarístico de Cristo na Ceia à missão de enxergar o Cristo nos pobres e sofredores.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G  A  D

D                     A                  Bm
1. Vejam: eu andei pelas vilas, apontei as saídas
        G                 A
Como o Pai me pediu.
D                     A                  Bm
Portas, eu cheguei para abri-las, eu curei as feridas
        G       A         D     D7
Como nunca se viu!

[Refrão]
G                     D                  Bm
Por onde formos também nós que brilhe a tua luz!
Em                    A                  D     D7
Fala, Senhor, na nossa voz, em nossa vida!
G                     D                  Bm
Nosso caminho então conduz, queremos ser assim:
Em                    A                  D
Que o Pão da Vida nos revigore no nosso "sim"!

D                     A                  Bm
2. Vejam: fiz de novo a leitura das raízes da vida
        G                 A
Que meu Pai vê melhor.
D                     A                  Bm
Luzes, acendi com brandura para a ovelha perdida
        G       A         D     D7
Não medi meu suor!'),
  ('eu-vim-para-que-todos-tenham-vida', 'Eu Vim para que Todos Tenham Vida', 'Pe. José Weber / CNBB', 'Comunhão', 'Tempo Comum', 'Em', 72, '4/4', 'Toada Suave', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+vim+para+que+todos+tenham+vida+cifra', '{"status": "Oficial do Hinário Litúrgico da CNBB", "score": 100, "documentRef": "IGMR 86 / João 10, 10", "biblicalRef": "Jo 10, 10; Jo 6, 51", "justification": "Refrão literal de Jo 10,10 com estrofes eucarísticas de São João. Extremamente simples de tocar.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
Em                        Am
Eu vim para que todos tenham vida,
B7                        Em
Que todos tenham vida plenamente!

[Estrofes]
Am                        Em
1. Reconstrói a tua vida em comunhão com teu Senhor,
B7                        Em
Reconstrói a tua vida em comunhão com teu irmão:
Am                        Em
Onde está o teu irmão, eu estou presente nele!

Am                        Em
2. Eu passei fazendo o bem, eu curei todos os males;
B7                        Em
Hoje és minha presença junto a todo sofredor:
Am                        Em
Onde sofre o teu irmão, eu estou sofrendo nele!'),
  ('tao-sublime-sacramento', 'Tão Sublime Sacramento (Tantum Ergo)', 'Santo Tomás de Aquino', 'Comunhão', 'Solenidades', 'D', 68, '4/4', 'Hino Sacro Solene', '↓   ↓   ↓   ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tao+sublime+sacramento+cifra', '{"status": "Tesouro Máximo da Liturgia Eucarística", "score": 100, "documentRef": "Sacrosanctum Concilium 112 / Missal Romano", "biblicalRef": "1Cor 11, 23-26", "justification": "Composto pelo Doutor Angélico Santo Tomás de Aquino para a Solenidade de Corpus Christi e Bênção do Santíssimo.", "repertoireType": "liturgica", "specialDay": "Corpus Christi e Trindade", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Corpus Christi e Trindade): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

D              A          D          G     D    A
1. Tão sublime Sacramento adoremos neste Altar,
D              A          Bm         G     A    D
Pois o Antigo Testamento deu ao Novo seu lugar!
G              D          A          D     G    A
Venha a fé, por suplemento, os sentidos completar!

D              A          D          G     D    A
2. Ao Eterno Pai cantemos e a Jesus, o Salvador,
D              A          Bm         G     A    D
Ao Espírito exaltemos, na Trindade eterno Amor!
G              D          A          D     G    A    D
Ao Deus Uno e Trino demos a alegria do louvor. Amém!

[Primeira Parte]
   D                        A7              Bm
1. Ao redor da Santa Mesa nos chamais à comunhão,
   G                        Em              A7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   D                        A7              Bm
Quem comer deste alimento para sempre viverá,
   G                        A7              D
E a sede mais profunda da sua alma saciará!

[Final] D  G  A7  D'),
  ('pelos-prados-e-campinas-verdejantes', 'Pelos Prados e Campinas Verdejantes', 'Frei Fabreti', 'Comunhão', 'Tempo Comum', 'G', 74, '4/4', 'Balada Suave', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pelos+prados+e+campinas+verdejantes+cifra', '{"status": "Aprovado Litúrgico (Paráfrase Eucarística do Salmo 23)", "score": 96, "documentRef": "IGMR 86 / Salmo 22 (23)", "biblicalRef": "Sl 22 (23); Jo 10, 11", "justification": "Canto de Comunhão muito acessível em Sol Maior (G, Em, C, D) sobre o Bom Pastor que prepara o banquete.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D  G

G                      Em
1. Pelos prados e campinas verdejantes eu vou,
C          Am          D
É o Senhor que me leva a descansar!
G                      Em
Junto às fontes de águas puras repousantes eu vou,
C          D           G     G7
Minhas forças o Senhor vai animar!

[Refrão]
C                      D              G          Em
Tu és, Senhor, o meu pastor! Por isso nada em minha vida faltará!
C                      D              G
Tu és, Senhor, o meu pastor! Por isso nada em minha vida faltará!

G                      Em
2. Nos caminhos mais seguros junto d''Ele eu vou,
C          Am          D
E pra sempre o seu Nome eu honrarei!
G                      Em
Se eu encontro mil abismos nos caminhos, eu vou:
C          D           G     G7
Segurança sempre tenho em suas mãos!'),
  ('eu-quisera-jesus-adorado', 'Eu Quisera, Jesus Adorado', 'Hino Eucarístico Tradicional (Congresso Eucarístico)', 'Comunhão', 'Solenidades', 'C', 72, '3/4', 'Valsa Sacra (3/4)', '↓   ↑ ↓   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+quisera+Jesus+adorado+cifra', '{"status": "Hino Tradicional Eucarístico Brasileiro", "score": 94, "documentRef": "Musicae Sacrae Disciplina", "biblicalRef": "Jo 6, 56", "justification": "Poesia clássica de adoração ao Santíssimo Sacramento no altar.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  C

C                                    G
1. Eu quisera, Jesus adorado, teu sacrário de amor rodear
Dm                 G                 C     G
De almas puras, florinhas mimosas, perfumando teu santo Altar!

[Refrão]
C                  F                 G                  C
O desejo de ver-te adorado tanto invade o meu coração,
Am                 Dm                G                  C
Que eu quisera estar noite e dia a teus pés em humilde oração!

C                                    G
2. Pelas almas, as mais pecadoras, eu te peço, Jesus, o perdão;
Dm                 G                 C     G
Dá-lhes todo o amor e carinho, todo o afeto do teu coração!

[Primeira Parte]
   C                        G               Am
1. Ao redor da Santa Mesa nos chamais à comunhão,
   F                        Dm              G7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   C                        G               Am
Quem comer deste alimento para sempre viverá,
   F                        G7              C
E a sede mais profunda da sua alma saciará!

[Final] C  F  G7  C'),
  ('alma-de-cristo-santificai-me', 'Alma de Cristo, Santificai-me (Anima Christi)', 'Santo Inácio de Loyola / Marco Frisina', 'Ação de Graças', 'Qualquer', 'D', 60, '4/4', 'Oração Meditativa Íntima', '↓   ↑ ↓   ↑', true, true, 5, 'https://www.youtube.com/watch?v=tA0VpC9E3tU', '{"status": "Oração Tradicional do Missal Romano", "score": 100, "documentRef": "IGMR 88 / Enchiridion Indulgentiarum", "biblicalRef": "Jo 19, 34; Gl 2, 20", "justification": "Oração eucarística presente no Missal Romano para a ação de graças após a Sagrada Comunhão.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G  D  A  D

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
D             G          A        D
Para que vos louve com os vossos Santos,
G          D        A        D
Pelos séculos dos séculos. Amém!'),
  ('sonda-me-senhor-salmo-138', 'Sonda-me, Senhor, e Me Conhece (Salmo 138)', 'Salmo 138 (139) / Meditativo', 'Ação de Graças', 'Tempo Comum', 'C', 62, '4/4', 'Dedilhado Suave', 'P  i  m  a', true, true, 4, 'https://www.youtube.com/results?search_query=Sonda+me+Senhor+e+me+conhece+Salmo+138', '{"status": "Salmo Bíblico Meditativo", "score": 93, "documentRef": "IGMR 88 / Salmo 138", "biblicalRef": "Sl 138 (139), 1-4.23-24", "justification": "Paráfrase meditativa do Salmo 138 para o momento de recolhimento pós-comunhão.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  Am  Dm  G  C

C                Am             Dm             G
1. Sonda-me, Senhor, e me conhece, quebranta o meu coração!
C                Am             Dm      G      C
Transforma-me conforme a tua Palavra e enche-me até que em mim
F        G       Em      Am     Dm      G      C
Se ache só a Ti, então, usa-me, Senhor, usa-me!

[Refrão]
F                G              Em             Am
Como um farol que brilha à noite, como ponte sobre as águas,
Dm               G              C              C7
Como abrigo no deserto, como flecha que acerta o alvo:
F                G              Em             Am
Eu quero ser usado da maneira que te agrade,
Dm               G              C
Em qualquer hora e em qualquer lugar!'),
  ('a-escolhida-uma-entre-todas', 'A Escolhida (Uma Entre Todas Foi a Escolhida)', 'Pe. Zezinho / Tradicional Mariano', 'Final', 'Qualquer', 'D', 74, '4/4', 'Balada Mariana', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Uma+entre+todas+foi+a+escolhida+cifra', '{"status": "Canto Mariano Clássico de Encerramento", "score": 96, "documentRef": "Lumen Gentium VIII / Canto Final", "biblicalRef": "Lc 1, 28-38", "justification": "Homenagem filial à Virgem do ''Sim'' no encerramento da celebração, tocada com 4 acordes simples (D, A, Bm/Em, G).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G  A  D

D                     A
1. Uma entre todas foi a escolhida:
Bm                    F#m
Foste tu, Maria, a serva preferida!
G                     D
Mãe do meu Senhor, Mãe do meu Salvador!

[Refrão]
D          Bm     G          A
Maria, cheia de graça e consolo,
D          Bm     G          A
Venha caminhar com teu povo:
G          A      D
Nossa Mãe sempre serás!

D                     A
2. Roga pelos pecadores desta terra,
Bm                    F#m
Roga pelo povo que em seu Deus espera!
G                     D
Mãe do meu Senhor, Mãe do meu Salvador!'),
  ('maria-de-nazare', 'Maria de Nazaré', 'Pe. Zezinho, scj', 'Final', 'Qualquer', 'D', 76, '3/4', 'Valsa (3/4)', '↓   ↑ ↓   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Maria+de+Nazare+Padre+Zezinho+cifra', '{"status": "Patrimônio da Música Católica no Brasil", "score": 97, "documentRef": "Marialis Cultus / Canto Final", "biblicalRef": "Lc 1, 26-56; Jo 19, 26-27", "justification": "Hino mariano consagrado para encerramento de celebrações e festas de Nossa Senhora.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A7  D

D                        Em
1. Maria de Nazaré, Maria me cativou,
A7                       D
Fez mais forte a minha fé e por filho me adotou!
D7                       G
Às vezes eu paro e fico a pensar,
Gm                       D
E sem perceber me vejo a rezar,
Bm                       Em
E meu coração se põe a cantar
A7                       D
Pra Virgem de Nazaré!

D7                       G
Menina que Deus amou e escolheu
Gm                       D
Pra Mãe de Jesus, o Filho de Deus,
Bm                       Em
Maria que o povo inteiro elegeu
A7                       D
Senhora e Mãe do Céu!

[Refrão]
D      Em     A7         D    Bm
Ave Maria, Ave Maria,
       Em     A7         D
Ave Maria, Mãe de Jesus!'),
  ('dai-nos-a-bencao-o-mae-querida', 'Dai-nos a Bênção, ó Mãe Querida (Nossa Senhora Aparecida)', 'Hino Tradicional da Padroeira do Brasil', 'Final', 'Solenidades', 'C', 86, '3/4', 'Valsa Devocional (3/4)', '↓   ↑ ↓   ↑ ↓', true, true, 3, 'https://www.youtube.com/results?search_query=Dai+nos+a+bencao+o+Mae+querida+cifra', '{"status": "Hino Popular à Padroeira do Brasil (3 Acordes)", "score": 95, "documentRef": "Diretório sobre Piedade Popular e Liturgia", "biblicalRef": "Lc 1, 48", "justification": "Tocado com apenas 3 acordes básicos (C, F, G) no envio das celebrações marianas.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G  C

[Refrão]
C                        G
Dai-nos a bênção, ó Mãe querida,
F          G             C
Nossa Senhora Aparecida!
C                        G
Dai-nos a bênção, ó Mãe querida,
F          G             C
Nossa Senhora Aparecida!

[Estrofe 1]
C                        G
1. Sob esse manto do azul do céu,
F          G             C
Guardai-nos sempre no amor de Deus!
C                        G
Eu me consagro ao vosso amor,
F          G             C
Ó Mãe querida do Salvador!'),
  ('ide-pelo-mundo-anunciai-o-evangelho', 'Ide pelo Mundo, Anunciai o Evangelho', 'Hinário Litúrgico Missionário', 'Final', 'Tempo Comum', 'G', 94, '4/4', 'Marcha de Envio', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Ide+pelo+mundo+anunciai+o+Evangelho+cifra', '{"status": "Canto de Envio Missionário (Mc 16, 15)", "score": 96, "documentRef": "IGMR 90 / Marcos 16, 15", "biblicalRef": "Mc 16, 15; Mt 28, 19-20", "justification": "Responde diretamente ao mandato final da Missa (''Ide em paz, e o Senhor vos acompanhe'').", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D  G

[Refrão]
G              C             D              G
Ide pelo mundo, anunciai o Evangelho!
Em             Am            D              G
Sede no mundo testemunhas do Senhor!

[Estrofe 1]
G              Em            C              D
1. O Espírito do Senhor sobre mim se derramou,
G              Em            C              D
Para anunciar a paz Ele mesmo me enviou!

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Final] G  C  D7  G'),
  ('vem-espirito-santo-pentecostes', 'Vem, Espírito Santo (Veni Sancte Spiritus)', 'Sequência de Pentecostes / Litúrgico', 'Entrada', 'Páscoa', 'C', 74, '4/4', 'Balada Orante', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Vem+Espirito+Santo+sequencia+pentecostes+cifra', '{"status": "Inspirado na Sequência Áurea Veni Sancte Spiritus", "score": 96, "documentRef": "IGMR 64 / Pentecostes", "biblicalRef": "At 2, 1-4", "justification": "Invocação ao Espírito Santo na Solenidade de Pentecostes e Crismas.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Entrada • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  F  G  C

C                Am          F              G
Vem, Espírito Santo, vem, vem iluminar!
C                Am          F      G       C
Nossos caminhos vem guiar, vem nos transformar!

[Estrofe 1]
Am               Em          F              G
1. Pai dos pobres, vem do Céu, doador dos dons de Deus,
Am               Em          F              G
Luz bendita dos corações, Consolador perfeito!

[Segunda Parte]
   Am                       F               C
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Dm                       G7              C
Na assembleia santa e viva que o Teu Espírito refaz;
   F                        G               Am
Acolhei nossa oração neste dia do Senhor,
   Dm                       G7              C
Para a glória de Deus Pai, nosso eterno Criador!

[Final] C  F  G7  C'),
  ('muitos-graos-de-trigo', 'Muitos Grãos de Trigo se Tornaram Pão', 'Pe. José Cândido / Ofertório', 'Ofertório', 'Tempo Comum', 'C', 78, '4/4', 'Balada Simples', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Muitos+graos+de+trigo+se+tornaram+pao+cifra', '{"status": "Aprovado Litúrgico (Catequese e Dominical)", "score": 94, "documentRef": "IGMR 74 / Didaqué 9", "biblicalRef": "Jo 12, 24; Didaqué 9, 4", "justification": "Retoma a antiquíssima oração cristã da Didaqué (século I) sobre os grãos dispersos pelas colinas que se unem num só pão.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G  C

C                        G
1. Muitos grãos de trigo se tornaram pão,
F          G             C     C7
Hoje são teu Corpo, ceia e comunhão!
F          G             Em          Am
Muitos grãos de trigo se tornaram pão!

[Refrão]
C                        G
Toma, Senhor, nossa vida em ação,
F          G             C     C7
Para mudá-la em fruto e missão!
F          G             Em          Am
Toma, Senhor, nossa vida em ação,
Dm         G             C
Para mudá-la em missão!'),
  ('antes-da-morte-e-ressurreicao', 'Antes da Morte e Ressurreição de Jesus', 'Hinário Litúrgico CNBB (Quinta-Feira Santa)', 'Comunhão', 'Quaresma', 'Dm', 70, '4/4', 'Toada Solene', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Antes+da+morte+e+ressurreicao+de+Jesus+cifra', '{"status": "Oficial do Hinário Litúrgico da CNBB", "score": 100, "documentRef": "IGMR 86 / Missa da Ceia do Senhor", "biblicalRef": "1Cor 11, 23-26; Jo 13, 1-15", "justification": "Narra fielmente a instituição da Eucaristia na Última Ceia.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

Dm                       Gm
1. Antes da morte e ressurreição de Jesus,
C                        F          A7
Ele, na Ceia, quis se entregar:
Dm                       Gm
Deu-se em comida e bebida pra nos salvar!

[Refrão]
Dm        Gm             C              F     A7
E quando amanhecer o dia eterno, a plena visão,
Dm        Gm             A7             Dm
Ressuscitaremos por crer nesta vida escondida no Pão!

[Segunda Parte]
   C7                       F               Dm
2. Mistério da fé divina que nos une em um só Corpo,
   Bb                       A7              Dm
Penhor da vida futura e do nosso eterno conforto;
   F                        Gm              C7
Fazei de nós, ó Jesus, testemunhas da caridade,
   Bb                       A7              Dm
Repartindo com os pobres o Pão da fraternidade!

[Final] Dm  F  A7  Dm'),
  ('estas-entre-nos-tu-es-minha-vida', 'Estás Entre Nós (Tu És Minha Vida, Outro Deus Não Há)', 'Pe. Jonas Abib / Tradicional', 'Comunhão', 'Tempo Comum', 'Em', 74, '4/4', 'Balada Suave', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tu+es+minha+vida+outro+Deus+nao+ha+cifra', '{"status": "Aprovado (Profissão de Fé Cristológica)", "score": 92, "documentRef": "IGMR 86 / João 14, 6", "biblicalRef": "Jo 14, 6; Fl 1, 21", "justification": "Usa a progressão circular clássica Em - C - D - G do início ao fim, sem pestanas.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  C  D  G  B7

Em             C              D              G
1. Tu és minha vida, outro Deus não há!
Em             C              D              G
Tu és minha estrada, a minha verdade!
Am             D              G              Em
Em Tua Palavra eu caminharei,
C              D              G              B7
Enquanto eu viver e até quando Tu quiseres!
Em             C              D              G
Já não sentirei temor, pois estás aqui:
Am             B7             Em
Tu estás no meio de nós!

[Segunda Parte]
   D                        G               Em
2. Mistério da fé divina que nos une em um só Corpo,
   C                        B7              Em
Penhor da vida futura e do nosso eterno conforto;
   G                        Am              D
Fazei de nós, ó Jesus, testemunhas da caridade,
   C                        B7              Em
Repartindo com os pobres o Pão da fraternidade!

[Final] Em  G  B7  Em'),
  ('provai-e-vede-quao-suave-salmo-33', 'Provai e Vede Quão Suave É o Senhor (Salmo 33)', 'Lecionário Dominical / Comunhão e Salmo', 'Salmo', 'Tempo Comum', 'D', 72, '4/4', 'Balada Meditativa', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Provai+e+vede+quao+suave+e+o+Senhor+Salmo+33', '{"status": "Salmo Eucarístico Tradicional desde a Igreja Primitiva", "score": 100, "documentRef": "IGMR 61 e 86 / Salmo 33", "biblicalRef": "Sl 33 (34), 9", "justification": "São Cirilo de Jerusalém (séc. IV) já atestava o canto deste salmo durante a Comunhão e Liturgia da Palavra.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Salmo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

[Refrão]
D               G          A              D
Provai e vede quão suave é o Senhor!
Bm              Em         A              D
Provai e vede quão suave é o Senhor!

[Estrofe 1]
D                          G
1. Bendirei o Senhor Deus em todo o tempo,
A                          D
Seu louvor estará sempre em minha boca.
Bm                         Em
Meu coração se glorifica no Senhor:
G               A          D
Que ouçam os humildes e se alegrem!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('pelo-irmao-que-nao-amei-piedade', 'Senhor, Tende Piedade e Perdoai a Nossa Culpa', 'Pe. Zezinho, scj', 'Ato Penitencial', 'Qualquer', 'D', 68, '4/4', 'Balada Lenta', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Senhor+tende+piedade+e+perdoai+a+nossa+culpa+Padre+Zezinho', '{"status": "Aprovado Litúrgico (Ato Penitencial)", "score": 95, "documentRef": "IGMR 52", "biblicalRef": "1Jo 4, 20; Sl 50", "justification": "Clássico de 4 acordes (D, G, A, Bm) que mantém as três invocações a Senhor e Cristo.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

D                        G              D
1. Senhor, tende piedade e perdoai a nossa culpa,
G                        A              D
E perdoai a nossa culpa!
Bm                       Em             A              D
Porque nós somos vosso povo, que vem pedir vosso perdão!

D                        G              D
2. Cristo, tende piedade e perdoai a nossa culpa,
G                        A              D
E perdoai a nossa culpa!
Bm                       Em             A              D
Porque nós somos vosso povo, que vem pedir vosso perdão!

D                        G              D
3. Senhor, tende piedade e perdoai a nossa culpa,
G                        A              D
E perdoai a nossa culpa!
Bm                       Em             A              D
Porque nós somos vosso povo, que vem pedir vosso perdão!'),
  ('gloria-eliana-ribeiro-liturgico', 'Glória a Deus nas Alturas (Arranjo Jovem Litúrgico)', 'Eliana Ribeiro / Missal Romano', 'Glória', 'Tempo Comum', 'D', 96, '4/4', 'Pop Rock Litúrgico Sóbrio', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Gloria+a+Deus+nas+alturas+Eliana+Ribeiro+cifra', '{"status": "Texto Oficial Integral do Missal Romano", "score": 100, "documentRef": "IGMR 53", "biblicalRef": "Lc 2, 14", "justification": "Uma das melodias mais cantadas por ministérios jovens que preserva palavra por palavra o texto oficial do Missal.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Glória • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

D                     G
Glória a Deus nas alturas,
A                     D
E paz na terra aos homens por Ele amados!
Bm                    G
Senhor Deus, Rei dos céus, Deus Pai todo-poderoso:
Em                    A
Nós vos louvamos, nós vos bendizemos,
G                     A                  D
Nós vos adoramos, nós vos glorificamos,
G                     A                  D
Nós vos damos graças por vossa imensa glória!

Bm                    G
Senhor Jesus Cristo, Filho Unigênito,
Em                    A                  D
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai:
Bm                    G                  A
Vós que tirais o pecado do mundo, tende piedade de nós!
Bm                    G                  A
Vós que tirais o pecado do mundo, acolhei a nossa súplica!
G                     A                  D
Vós que estais à direita do Pai, tende piedade de nós!

G                     A                  D     Bm
Só vós sois o Santo, só vós, o Senhor,
G                     A                  D
Só vós, o Altíssimo, Jesus Cristo,
G                     A                  D
Com o Espírito Santo, na glória de Deus Pai. Amém!'),
  ('a-vos-o-meu-senhor-salmo-24', 'A Vós, ó Meu Senhor, Elevo a Minha Alma (Salmo 24)', 'Lecionário (Advento e Tempo Comum)', 'Salmo', 'Advento', 'Em', 68, '4/4', 'Dedilhado / Balada', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=A+vos+o+meu+Senhor+elevo+a+minha+alma+Salmo+24', '{"status": "Salmo Oficial do 1º Domingo do Advento", "score": 100, "documentRef": "IGMR 61 / Salmo 24", "biblicalRef": "Sl 24 (25), 1-5", "justification": "Abre o Ano Litúrgico no 1º Domingo do Advento.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Salmo • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
Em             Am          B7             Em
A vós, ó meu Senhor, elevo a minha alma!
Em             Am          B7             Em
A vós, ó meu Senhor, elevo a minha alma!

[Estrofe 1]
Am                         Em
1. Mostrai-me, ó Senhor, vossos caminhos,
B7                         Em
E fazei-me conhecer a vossa estrada!
Am                         Em
Vossa verdade me oriente e me conduza,
B7                         Em
Porque sois o Deus da minha salvação!

[Segunda Parte]
   D                        G               Em
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   C                        B7              Em
Pois olhou para a pequenez deste humilde servidor;
   G                        Am              D
Recebe a minha entrega, meu louvor e gratidão,
   C                        B7              Em
Permanece para sempre em minha vida e vocação!

[Final] Em  G  B7  Em'),
  ('hoje-nasceu-para-nos-o-salvador-salmo-95', 'Hoje Nasceu para Nós o Salvador (Salmo 95 - Natal)', 'Lecionário do Natal do Senhor', 'Salmo', 'Natal', 'D', 78, '4/4', 'Balada Natalina', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Hoje+nasceu+para+nos+o+Salvador+Salmo+95', '{"status": "Salmo Oficial da Missa da Noite de Natal", "score": 100, "documentRef": "IGMR 61 / Missa do Galo", "biblicalRef": "Sl 95 (96); Lc 2, 11", "justification": "Refrão oficial da Noite de Natal cantado com 4 acordes abertos (D, G, Bm, A).", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Salmo • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

[Refrão]
D              G          A              D
Hoje nasceu para nós o Salvador,
Bm             G          A              D
Que é Cristo, o Senhor!

[Estrofe 1]
D                         G
1. Cantai ao Senhor Deus um canto novo,
A                         D
Cantai ao Senhor Deus, ó terra inteira!
Bm                        G
Cantai e bendizei seu santo Nome,
A                         D
Dia após dia anunciai sua salvação!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('este-e-o-dia-que-o-senhor-fez-salmo-117', 'Este É o Dia que o Senhor Fez para Nós (Salmo 117)', 'Lecionário do Domingo de Páscoa', 'Salmo', 'Páscoa', 'G', 86, '4/4', 'Exultante / Balada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Este+e+o+dia+que+o+Senhor+fez+para+nos+Salmo+117', '{"status": "Salmo Oficial do Domingo da Ressurreição", "score": 100, "documentRef": "IGMR 61 / Domingo de Páscoa", "biblicalRef": "Sl 117 (118), 24", "justification": "O Salmo Pascal por excelência da Igreja Católica.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Salmo • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D  G

[Refrão]
G              C             D              G
Este é o dia que o Senhor fez para nós:
Em             C             D              G
Alegremo-nos e nele exultemos!

[Estrofe 1]
G                            C
1. Dai graças ao Senhor, porque Ele é bom!
D                            G
"Eterna é a sua misericórdia!"
Em                           C
A casa de Israel agora o diga:
D                            G
"Eterna é a sua misericórdia!"

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('aleluia-alguem-do-povo-exclama', 'Aleluia, Alguém do Povo Exclama', 'Pe. Zezinho, scj', 'Aclamação ao Evangelho', 'Tempo Comum', 'D', 84, '4/4', 'Marcha Suave', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Aleluia+alguem+do+povo+exclama+cifra', '{"status": "Aprovado (Baseado em Lucas 11, 27-28)", "score": 96, "documentRef": "IGMR 62 / Lucas 11, 27-28", "biblicalRef": "Lc 11, 27-28", "justification": "Canta o diálogo evangélico sobre a bem-aventurança de quem ouve e guarda a Palavra de Deus.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A  D

[Refrão]
D        G       A        D
Aleluia, aleluia, aleluia!
D        G       A        D
Aleluia, aleluia, aleluia!

[Estrofe]
D                        A
1. Alguém do povo exclama: "Como é grande, ó Senhor,
G                        A                  D
Quem te gerou e alimentou!"
D                        A
Jesus responde: "Ó mulher, pra mim é feliz
G                        A                  D
Quem soube ouvir a voz de Deus e tudo guardou!"

[Segunda Parte]
   D                        G               A7          D
2. Abri o nosso coração ao Santo Evangelho da paz,
   Bm                       Em              A7          D
Semente do Reino de Deus que fruto abundante nos traz;
   G                        A7              Bm
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Em                       A7              D
E viver o Teu anúncio em cada canto e lugar!

[Final] D  G  A7  D'),
  ('aleluia-quando-estamos-unidos', 'Aleluia, Quando Estamos Unidos', 'Tradicional Litúrgico (Mt 18, 20)', 'Aclamação ao Evangelho', 'Tempo Comum', 'G', 80, '4/4', 'Dedilhado / Balada', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Aleluia+quando+estamos+unidos+cifra', '{"status": "Aprovado Litúrgico (Melodia de Greensleeves / Mt 18,20)", "score": 92, "documentRef": "IGMR 62", "biblicalRef": "Mt 18, 20", "justification": "Muito simples e conhecida por todas as assembleias paroquiais.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C  D  G

[Refrão]
G       D    Em   Bm     C       G       D
Aleluia, aleluia, aleluia!
G       D    Em   Bm     C       D       G
Aleluia, aleluia, aleluia!

[Estrofe]
Em                   Bm
1. Quando estamos unidos, estás entre nós,
C                    G          D
E nos falarás da tua vida!
Em                   Bm
Este nosso mundo sentido terá,
C                    D          G
Se tua Palavra renovar!

[Segunda Parte]
   G                        C               D7          G
2. Abri o nosso coração ao Santo Evangelho da paz,
   Em                       Am              D7          G
Semente do Reino de Deus que fruto abundante nos traz;
   C                        D7              Em
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Am                       D7              G
E viver o Teu anúncio em cada canto e lugar!

[Final] G  C  D7  G'),
  ('ofertas-singelas-pao-e-vinho', 'Ofertas Singelas, Pão e Vinho sobre a Mesa', 'Repertório Litúrgico Paroquial', 'Ofertório', 'Tempo Comum', 'C', 76, '4/4', 'Balada Simples', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Ofertas+singelas+pao+e+vinho+sobre+a+mesa+cifra', '{"status": "Aprovado para Apresentação das Oferendas", "score": 93, "documentRef": "IGMR 74", "biblicalRef": "Sl 115", "justification": "Canto tradicional de ofertório em Dó maior (C, G, Am, F) muito fácil para iniciantes.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  F  G  C

C                  G              Am             Em
1. Ofertas singelas, pão e vinho sobre a mesa colocamos,
F                  C              Dm             G
Sinal do trabalho que fizemos e aqui depositamos:

[Refrão]
F                  G              Em             Am
É teu também nosso coração!
Dm                 G              C              C7
Aceita, Senhor, a nossa oferta, que será depois, na certa,
F                  G              C
O teu próprio Ser!

[Segunda Parte]
   Am                       F               C
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Dm                       G7              C
As alegrias e esperanças que trazemos no coração;
   F                        G               Am
Pela força do Espírito Santo santificai estes dons,
   Dm                       G7              C
Sacrifício de louvor pelos nossos irmãos!

[Final] C  F  G7  C'),
  ('um-coracao-para-amar', 'Um Coração para Amar', 'Pe. Zezinho, scj', 'Ofertório', 'Tempo Comum', 'G', 76, '4/4', 'Balada Orante', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Um+coracao+para+amar+Padre+Zezinho+cifra', '{"status": "Clássico de Ofertório Vocacional e Dominical", "score": 94, "documentRef": "IGMR 74", "biblicalRef": "1Rs 3, 9; Rm 12, 1", "justification": "Expressa a entrega dos dons recebidos de Deus de volta ao seu Altar.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Am  D  G

G                        Am
1. Um coração para amar, pra perdoar e sentir,
D                        G
Para chorar e sorrir, ao me criar Tu me deste!
G                        Am
Um coração pra sonhar, inquieto e sempre a bater,
D                        G
Ansioso por entender as coisas que Tu disseste!

[Refrão]
G7                       C
Eis o que eu venho te dar,
D                        G      Em
Eis o que eu ponho no Altar:
Am                       D
Toma, Senhor, que ele é teu,
                         G
Meu coração não é meu!'),
  ('estar-em-tuas-maos-o-pai', 'Estar em Tuas Mãos, ó Pai (No Teu Altar)', 'Pe. José Weber / CNBB', 'Ofertório', 'Quaresma', 'Em', 68, '4/4', 'Toada Sóbria', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Estar+em+tuas+maos+o+Pai+cifra', '{"status": "Aprovado CNBB (Especial para Quaresma e Tempo Comum)", "score": 97, "documentRef": "IGMR 74 / Jo 12, 24", "biblicalRef": "Jo 12, 24; Lc 23, 46", "justification": "Medita sobre a semente que morre na terra para gerar o pão da eternidade.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
Em            Am          D              G
Estar em tuas mãos, ó Pai, e a vida oferecer
C             Am          B7             Em
No pão e no vinho a Ti, para o mundo florescer!

[Estrofe 1]
Em                        Am
1. O grão que morre na terra é vida nova a brotar:
D                         G              B7
Assim é a nossa oferta deposta neste Altar!

[Segunda Parte]
   D                        G               Em
2. Recebei, ó Pai bendito, nossa humilde oblação,
   C                        B7              Em
As alegrias e esperanças que trazemos no coração;
   G                        Am              D
Pela força do Espírito Santo santificai estes dons,
   C                        B7              Em
Sacrifício de louvor pelos nossos irmãos!

[Final] Em  G  B7  Em'),
  ('pao-da-vida-na-comunhao-jesus-se-da', 'Na Comunhão, Jesus Se Dá no Pão', 'Hinário Litúrgico / Catequese', 'Comunhão', 'Tempo Comum', 'C', 76, '4/4', 'Balada Suave', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Na+comunhao+Jesus+se+da+no+pao+cifra', '{"status": "Aprovado Litúrgico (Excelente para Iniciantes)", "score": 95, "documentRef": "IGMR 86 / João 6, 51", "biblicalRef": "Jo 6, 51-58", "justification": "Canto eucarístico cristalino e fácil (C, Am, Dm, G).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G  C

[Refrão]
C                  Am             Dm             G
Na Comunhão, Jesus se dá no Pão,
C                  Am             Dm      G      C
O Cordeiro Imolado é refeição!
F                  G              Em             Am
Nosso alimento de amor e salvação,
Dm                 G              C
Em torno deste Altar somos irmãos!

[Estrofe 1]
C                                 Am
1. O Pão da Vida és Tu, Jesus, o Pão do Céu,
Dm                                G
O Caminho, a Verdade, nossa Luz!
C                                 Am
Não haverá fome nem sede jamais
Dm                 G              C
Para quem de Ti se alimentar em paz!'),
  ('cantar-a-beleza-da-vida', 'Cantar a Beleza da Vida', 'Pe. José Weber / CNBB', 'Comunhão', 'Tempo Comum', 'C', 78, '4/4', 'Balada Litúrgica', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cantar+a+beleza+da+vida+cifra', '{"status": "Aprovado CNBB", "score": 95, "documentRef": "IGMR 86 / João 6", "biblicalRef": "Jo 6, 51; Jo 13, 34", "justification": "Muito cantado tanto na Entrada quanto na Comunhão dominical.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  F  G  C

C                        G              Am             Em
1. Cantar a beleza da vida, presente do amor sem igual:
F                        C              Dm             G
Missão do teu povo escolhido! Senhor, vem livrar-nos do mal!

[Refrão]
C                        G              Am             Em
Vem dar-nos teu Filho, Senhor, sustento no pão e no vinho,
F                        C              Dm      G      C
E a força do Espírito Santo unindo o teu povo a caminho!

[Segunda Parte]
   Am                       F               C
2. Mistério da fé divina que nos une em um só Corpo,
   Dm                       G7              C
Penhor da vida futura e do nosso eterno conforto;
   F                        G               Am
Fazei de nós, ó Jesus, testemunhas da caridade,
   Dm                       G7              C
Repartindo com os pobres o Pão da fraternidade!

[Final] C  F  G7  C'),
  ('sacramento-da-comunhao-nelsinho', 'Sacramento da Comunhão (Senhor, Quando Te Vejo)', 'Diácono Nelsinho Corrêa / Comunidade Canção Nova', 'Comunhão', 'Tempo Comum', 'D', 68, '4/4', 'Balada Eucarística Lenta', '↓   ↓ ↑   ↑ ↓ ↑', true, true, 5, 'https://www.youtube.com/results?search_query=Sacramento+da+Comunhao+Nelsinho+Correa+cifra', '{"status": "Aprovado para Comunhão e Pós-Comunhão", "score": 95, "documentRef": "IGMR 86-88", "biblicalRef": "Jo 17, 21; 1Cor 10, 17", "justification": "Profunda oração de fé na Presença Real e súplica pela unidade da Igreja (''Fazei de nós um só corpo e um só espírito'').", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G  A  D

D                A              Bm             F#m
Senhor, quando te vejo no Sacramento da Comunhão,
G                A              D              A
Sinto o Céu se abrir e uma luz a me atingir,
Em               G              A
Esfriando minha cabeça e esquentando meu coração!

D                A              Bm             F#m
Senhor, graças e louvores sejam dadas a todo momento:
G                A              D              A
Quero te louvar na dor e na alegria, e a cada dia,
Em               A              D              D7
Mais unido a Ti estar!

[Refrão]
G                A              F#m            Bm
Quero te receber com toda pureza e todo amor,
Em               A              D              D7
Como se fosse a primeira, a última, a única vez!
G                A              F#m            Bm
Fazei de nós, Senhor, um só corpo e um só espírito,
Em               A              D
No Sacramento do Amor!'),
  ('sim-eu-quero-que-a-luz-de-deus', 'Sim, Eu Quero que a Luz de Deus', 'Pe. José Weber', 'Final', 'Tempo Comum', 'C', 86, '4/4', 'Balada Jovem', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sim+eu+quero+que+a+luz+de+Deus+cifra', '{"status": "Clássico de Envio e Esperança Cristã", "score": 94, "documentRef": "IGMR 90 / Apocalipse 22, 20", "biblicalRef": "Ap 22, 20; Mt 5, 14-16", "justification": "Termina com o grito escatológico da Igreja primitiva: ''Amém! Vem, Senhor Jesus!'' (Maranathá).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G  C

[Refrão]
C                        Am
Sim, eu quero que a luz de Deus que um dia em mim brilhou,
Dm                       G
Jamais se esconda e não se apague em mim o seu fulgor!
C                        Am
Sim, eu quero que o meu Amor ajude o meu irmão
Dm                       G                      C
A caminhar guiado por tua mão, em tua lei, em tua luz, ó Senhor!

[Estrofe 1]
Am                       Em
1. Esta terra, os astros, o sertão em paz,
F                        G
Esta flor e o pássaro feliz que vês,
Am                       Em
Não sentirão, não poderão jamais viver
F                        G
Esta vida singular que Deus nos dá!'),
  ('obrigado-senhor-porque-es-meu-amigo', 'Obrigado, Senhor, Porque És Meu Amigo', 'Pe. Zezinho / Tradicional', 'Ação de Graças', 'Tempo Comum', 'G', 68, '4/4', 'Balada Suave', '↓   ↓ ↑   ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Obrigado+Senhor+porque+es+meu+amigo+cifra', '{"status": "Aprovado para Ação de Graças e Missas com Crianças", "score": 91, "documentRef": "IGMR 88 / Jo 15, 15", "biblicalRef": "Jo 15, 15; Sl 135", "justification": "Apenas 3 acordes principais (G, C, D), excelente para iniciantes.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  C  D  G

[Refrão]
G                        C
Obrigado, Senhor, porque és meu amigo,
D                        G
Porque sempre comigo Tu estás a falar!
G                        C
No perfume das flores, na harmonia das cores,
D                        G
E no mar que murmura o teu Nome a rezar!

[Estrofe 1]
Em                       Bm
1. Escondido Tu estás no verde das florestas,
C                        G
Nas aves em festa, no sol a brilhar!
Em                       Bm
Na sombra que abriga, na brisa amiga,
C                        D              G
Na fonte que corre ligeira a cantar!'),
  ('pelas-estradas-da-vida-santa-maria-vem', 'Pelas Estradas da Vida (Santa Maria, Vem)', 'M. Espinosa / Hinário Mariano', 'Final', 'Qualquer', 'C', 84, '4/4', 'Marcha / Caminhada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pelas+estradas+da+vida+nunca+sozinho+estas+cifra', '{"status": "Clássico Mariano Comunitário de Envio", "score": 96, "documentRef": "Lumen Gentium 62 / Canto Final", "biblicalRef": "At 1, 14; Lc 1, 38", "justification": "Canto mariano de peregrinação e envio missionário com 4 acordes abertos (C, F, G, Am).", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G  C

C                        F              C
1. Pelas estradas da vida, nunca sozinho estás;
F                        G              C     C7
Contigo pelo caminho, Santa Maria vai!

[Refrão]
F                        G              C          Am
Ó vem conosco, vem caminhar, Santa Maria, vem!
Dm                       G              C
Ó vem conosco, vem caminhar, Santa Maria, vem!

C                        F              C
2. Se pelo mundo os homens, sem conhecer-se vão,
F                        G              C     C7
Não negues nunca a tua mão a quem teencontrar!

[Primeira Parte]
   C                        G               Am
1. Alimentados na Mesa da Palavra e do Altar,
   F                        Dm              G7
Partimos agora em missão para o mundo iluminar;
   C                        G               Am
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   F                        G7              C
Seremos no dia a dia mensageiros do Teu amor!

[Final] C  F  G7  C'),
  ('hosana-ao-filho-de-davi-domingo-de-ramos-cnbb', 'Hosana ao Filho de Davi (Antífona de Abertura - Domingo de Ramos)', 'Hinário Litúrgico CNBB / Missal Romano', 'Entrada', 'Quaresma', 'D', 96, '4/4', 'Marcha Processional', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Hosana+ao+Filho+de+Davi+(Antífona+de+Abertura+-+Domingo+de+Ramos)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Antífona Oficial da Benção e Procissão de Ramos (Mt 21, 9)", "score": 100, "documentRef": "Missal Romano - Domingo de Ramos (IGMR 47)", "biblicalRef": "Mt 21, 9", "justification": "Antífona oficial do Missal Romano para o início da celebração do Domingo de Ramos.", "repertoireType": "liturgica", "specialDay": "Domingo de Ramos", "normExplanation": "Aprovada para a Santa Missa (Entrada • Domingo de Ramos): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Hosana ao Filho de Davi! Hosana ao Filho de Davi!
   Bm                       Em              A7          D
Bendito o que vem em nome do Senhor! Rei de Israel, hosana nas alturas!

[Primeira Parte]
   D                        G               A7          D
1. Os filhos dos hebreus, com ramos de oliveira,
   Bm                       Em              A7          D
Foram ao encontro do Senhor clamando nas alturas:

[Refrão]
   D                        G               A7          D
Hosana ao Filho de Davi! Hosana ao Filho de Davi!
   Bm                       Em              A7          D
Bendito o que vem em nome do Senhor! Rei de Israel, hosana nas alturas!

[Segunda Parte]
   D                        G               A7          D
2. Ao Senhor pertence a terra e tudo o que ela encerra,
   Bm                       Em              A7          D
O mundo inteiro com os seres que o povoam!

[Terceira Parte]
   D                        G               A7          D
3. Ó portas, levantai vossos frontões! Elevai-vos bem mais alto, antigas portas,
   Bm                       Em              A7          D
A fim de que o Rei da glória possa entrar!'),
  ('os-filhos-dos-hebreus-procissao-de-ramos', 'Os Filhos dos Hebreus (Procissão de Domingo de Ramos)', 'Hinário Litúrgico CNBB / Pe. José Weber, SVD', 'Entrada', 'Quaresma', 'G', 98, '4/4', 'Marcha Festiva', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Os+Filhos+dos+Hebreus+(Procissão+de+Domingo+de+Ramos)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Canto Oficial da Procissão de Ramos", "score": 100, "documentRef": "Missal Romano - Procissão de Ramos", "biblicalRef": "Mt 21, 8-9; Sl 23(24)", "justification": "Canto litúrgico oficial prescrito pelo Missal Romano para a procissão solene dos ramos.", "repertoireType": "liturgica", "specialDay": "Domingo de Ramos", "normExplanation": "Aprovada para a Santa Missa (Entrada • Domingo de Ramos): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Os filhos dos hebreus, com ramos de oliveira,
   Em                       Am              D7          G
Saíram ao encontro do Senhor, clamando:
   C            D7          G      Em       Am    D7    G
Hosana, hosana nas alturas! Hosana, hosana nas alturas!

[Primeira Parte]
   G                        C               D7          G
1. Ao Senhor pertence a terra e a sua plenitude,
   Em                       Am              D7          G
O mundo inteiro e todos os seus habitantes!

[Refrão]
   G                        C               D7          G
Os filhos dos hebreus, com ramos de oliveira,
   Em                       Am              D7          G
Saíram ao encontro do Senhor, clamando:
   C            D7          G      Em       Am    D7    G
Hosana, hosana nas alturas! Hosana, hosana nas alturas!

[Segunda Parte]
   G                        C               D7          G
2. Quem é este Rei da Glória? É o Senhor forte e poderoso,
   Em                       Am              D7          G
O Senhor poderoso nas batalhas, o Rei da Glória!'),
  ('meu-deus-meu-deus-por-que-me-abandonastes-salmo-ramos', 'Meu Deus, Meu Deus, Por Que Me Abandonastes? (Salmo 21 - Ramos)', 'Lecionário Dominical / Hinário Litúrgico CNBB', 'Salmo', 'Quaresma', 'Dm', 70, '4/4', 'Salmodia Meditativa', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Meu+Deus,+Meu+Deus,+Por+Que+Me+Abandonastes?+(Salmo+21+-+Ramos)+Lecionário+Dominical+cifra', '{"status": "Salmo Responsorial Próprio do Domingo de Ramos", "score": 100, "documentRef": "Lecionário Dominical - Domingo de Ramos (IGMR 61)", "biblicalRef": "Sl 21(22)", "justification": "Salmo responsorial oficial da Missa do Domingo de Ramos e da Paixão do Senhor.", "repertoireType": "liturgica", "specialDay": "Domingo de Ramos", "normExplanation": "Aprovada para a Santa Missa (Salmo • Domingo de Ramos): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              A7          Dm
Meu Deus, meu Deus, por que me abandonastes?
   Bb                       Gm              A7          Dm
Meu Deus, meu Deus, por que me abandonastes?

[Primeira Parte]
   Dm                                       Gm
1. Riem de mim todos aqueles que me veem,
   A7                                       Dm
Torcem os lábios e sacodem a cabeça:
   Bb                                       Gm
"Ao Senhor se confiou, Ele o liberte,
   A7                                       Dm
E agora o salve, se é verdade que Ele o ama!"

[Refrão]
   Dm                       Gm              A7          Dm
Meu Deus, meu Deus, por que me abandonastes?

[Segunda Parte]
   Dm                                       Gm
2. Cães numerosos me rodeiam furiosos,
   A7                                       Dm
E por um bando de malvados fui cercado;
   Bb                                       Gm
Transpassaram minhas mãos e os meus pés,
   A7                                       Dm
E eu posso contar todos os meus ossos!

[Terceira Parte]
   Dm                                       Gm
3. Eles repartem entre si as minhas vestes
   A7                                       Dm
E sorteiam entre si a minha túnica.
   Bb                                       Gm
Vós, porém, ó meu Senhor, não fiqueis longe;
   A7                                       Dm
Ó minha força, vinde logo em meu socorro!'),
  ('pecador-agora-e-tempo-quaresma-cnbb', 'Pecador, Agora É Tempo (Quarta-Feira de Cinzas e Quaresma)', 'Hinário Litúrgico CNBB / Tradicional Quaresmal', 'Ato Penitencial', 'Quaresma', 'Dm', 72, '4/4', 'Toque Quaresmal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pecador,+Agora+É+Tempo+(Quarta-Feira+de+Cinzas+e+Quaresma)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Canto Tradicional de Imposição das Cinzas e Penitência", "score": 99, "documentRef": "Missal Romano - Quarta-Feira de Cinzas", "biblicalRef": "Jl 2, 12-13; Mc 1, 15", "justification": "Canto tradicional brasileiro para a imposição das cinzas e celebrações penitenciais da Quaresma.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb                       Gm              A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!

[Primeira Parte]
   Dm                       Gm              A7          Dm
1. Neste tempo sacrossanto, o pecado faz horror;
   Bb                       Gm              A7          Dm
Contemplando a Cruz de Cristo, convertei-vos ao Senhor!

[Refrão]
   Dm                       Gm              A7          Dm
Pecador, agora é tempo de pesar e de temor:
   Bb                       Gm              A7          Dm
Serve a Deus, despreza o mundo, já não sejas pecador!

[Segunda Parte]
   Dm                       Gm              A7          Dm
2. Rasgai vossos corações, e não vossas vestes;
   Bb                       Gm              A7          Dm
Voltai para o vosso Deus, que é bondoso e compassivo!'),
  ('escuta-senhor-a-voz-do-teu-povo-attende-domine', 'Escuta, Senhor, a Voz do Teu Povo (Attende Domine - Quaresma)', 'Hinário Litúrgico CNBB / Canto Gregoriano', 'Entrada', 'Quaresma', 'Em', 72, '4/4', 'Balada Sóbria', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Escuta,+Senhor,+a+Voz+do+Teu+Povo+(Attende+Domine+-+Quaresma)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Hino Litúrgico Oficial da Quaresma (Attende Domine)", "score": 100, "documentRef": "Missal Romano / Liturgia Quaresmal", "biblicalRef": "Sl 50(51)", "justification": "Tradução litúrgica oficial do hino quaresmal Attende Domine: Escuta, Senhor, a compaixão do Teu povo.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Entrada • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
   Em                       Am              B7          Em
Escuta, Senhor, a voz do Teu povo, e tem compaixão de nós, pecadores!
   C                        Am              B7          Em
Attende, Domine, et miserere, quia peccavimus tibi!

[Primeira Parte]
   Em                       Am              B7          Em
1. Ó Rei supremo, Redentor do mundo, a Ti erguemos olhos suplicantes:
   C                        Am              B7          Em
Ouve, ó Cristo, a prece dos Teus servos!

[Refrão]
   Em                       Am              B7          Em
Escuta, Senhor, a voz do Teu povo, e tem compaixão de nós, pecadores!

[Segunda Parte]
   Em                       Am              B7          Em
2. Destra do Pai, pedra angular da Igreja, caminho santo da eterna vida:
   C                        Am              B7          Em
Lava as manchas dos nossos pecados!'),
  ('mudai-o-vosso-coracao-imposicao-das-cinzas', 'Mudai o Vosso Coração (Imposição das Cinzas - Quaresma)', 'Hinário Litúrgico CNBB / Pe. José Weber, SVD', 'Comunhão', 'Quaresma', 'Am', 76, '4/4', 'Balada Penitencial', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Mudai+o+Vosso+Coração+(Imposição+das+Cinzas+-+Quaresma)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Canto Oficial para a Imposição das Cinzas", "score": 100, "documentRef": "Missal Romano - Quarta-Feira de Cinzas (Jl 2, 13)", "biblicalRef": "Jl 2, 12-18; Mt 6, 1-6", "justification": "Canto próprio para o rito da imposição das cinzas na Quarta-Feira de Cinzas.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Am  Dm  E7  Am

[Refrão]
   Am                       Dm              G           C
Mudai o vosso coração, convertei-vos ao Senhor:
   Dm                       Am              E7          Am
Ele é benigno e compassivo, paciente e rico em amor!

[Primeira Parte]
   Am                       Dm              G           C
1. Lembrai-vos, ó homem, que sois pó, e ao pó haveis de voltar;
   Dm                       Am              E7          Am
Convertei-vos e crede no Evangelho da salvação!

[Refrão]
   Am                       Dm              G           C
Mudai o vosso coração, convertei-vos ao Senhor:
   Dm                       Am              E7          Am
Ele é benigno e compassivo, paciente e rico em amor!

[Segunda Parte]
   Am                       Dm              G           C
2. Criai em mim um coração que seja puro, dai-me de novo um espírito decidido;
   Dm                       Am              E7          Am
Restituí-me a alegria da vossa salvação!'),
  ('nos-nos-gloriamos-na-cruz-quinta-feira-santa', 'Quanto a Nós, Devemos Gloriar-nos na Cruz (Entrada - Quinta-Feira Santa)', 'Hinário Litúrgico CNBB / Pe. José Weber, SVD', 'Entrada', 'Quaresma', 'D', 84, '4/4', 'Marcha Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Quanto+a+Nós,+Devemos+Gloriar-nos+na+Cruz+(Entrada+-+Quinta-Feira+Santa)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Antífona de Entrada Oficial da Missa da Ceia do Senhor (Gl 6, 14)", "score": 100, "documentRef": "Missal Romano - Quinta-Feira Santa (Ceia do Senhor)", "biblicalRef": "Gl 6, 14; Sl 66(67)", "justification": "Antífona de entrada oficial da Missa Vespertina da Ceia do Senhor na Quinta-Feira Santa.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Quanto a nós, devemos gloriar-nos na Cruz
   Bm                       Em              A7          D
De nosso Senhor Jesus Cristo!
   G                        D               Em    A7    D
Que é nossa salvação, nossa vida, nossa esperança de ressurreição!

[Primeira Parte]
   D                        G               A7          D
1. Deus tenha piedade de nós e nos abençoe;
   Bm                       Em              A7          D
Faça brilhar sobre nós a luz da Sua face!

[Refrão]
   D                        G               A7          D
Quanto a nós, devemos gloriar-nos na Cruz
   Bm                       Em              A7          D
De nosso Senhor Jesus Cristo!

[Segunda Parte]
   D                        G               A7          D
2. Para que se conheçam na terra os Seus caminhos,
   Bm                       Em              A7          D
E entre todas as nações a Sua salvação!'),
  ('eu-vos-dou-um-novo-mandamento-lava-pes', 'Eu Vos Dou um Novo Mandamento (Rito do Lava-Pés - Quinta-Feira Santa)', 'Hinário Litúrgico CNBB / Missal Romano', 'Ofertório', 'Quaresma', 'C', 78, '4/4', 'Balada Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+Vos+Dou+um+Novo+Mandamento+(Rito+do+Lava-Pés+-+Quinta-Feira+Santa)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Antífona Oficial do Rito do Lava-Pés (Jo 13, 34)", "score": 100, "documentRef": "Missal Romano - Quinta-Feira Santa (Lava-Pés)", "biblicalRef": "Jo 13, 1-15.34-35", "justification": "Canto oficial proposto pelo Missal Romano para o rito do Lava-Pés na Quinta-Feira Santa.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Eu vos dou um novo mandamento: que vos ameis uns aos outros,
   Am                       Dm              G7          C
Assim como Eu vos amei, disse o Senhor!

[Primeira Parte]
   C                        F               G7          C
1. Levantou-se Jesus da Ceia, pôs água numa bacia
   Am                       Dm              G7          C
E começou a lavar os pés dos Seus discípulos, dando-lhes o exemplo.

[Refrão]
   C                        F               G7          C
Eu vos dou um novo mandamento: que vos ameis uns aos outros,
   Am                       Dm              G7          C
Assim como Eu vos amei, disse o Senhor!

[Segunda Parte]
   C                        F               G7          C
2. Nisto todos conhecerão que sois Meus discípulos:
   Am                       Dm              G7          C
Se tiverdes amor uns pelos outros, como Eu vos amei!'),
  ('onde-ha-caridade-e-amor-ubi-caritas-quinta-santa', 'Onde Há Caridade e Amor, Aí Está Deus (Ubi Caritas - Quinta-Feira Santa)', 'Hinário Litúrgico CNBB / Canto Gregoriano', 'Ofertório', 'Quaresma', 'F', 76, '4/4', 'Balada Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Onde+Há+Caridade+e+Amor,+Aí+Está+Deus+(Ubi+Caritas+-+Quinta-Feira+Santa)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Hino Oficial da Apresentação dos Dons na Quinta-Feira Santa", "score": 100, "documentRef": "Missal Romano - Quinta-Feira Santa (Ubi Caritas)", "biblicalRef": "1Jo 4, 16; 1Cor 13", "justification": "Hino prescrito pelo Missal Romano para a procissão das oferendas na Missa da Ceia do Senhor.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] F  Bb  C7  F

[Refrão]
   F                        Bb              C7          F
Onde há caridade e amor, onde há caridade e amor,
   Dm                       Gm              C7          F
Aí está Deus! Aí está Deus!

[Primeira Parte]
   F                        Bb              C7          F
1. O amor de Cristo nos reuniu num só rebanho;
   Dm                       Gm              C7          F
Exultemos de alegria e Nele nos alegremos!

[Refrão]
   F                        Bb              C7          F
Onde há caridade e amor, onde há caridade e amor,
   Dm                       Gm              C7          F
Aí está Deus! Aí está Deus!

[Segunda Parte]
   F                        Bb              C7          F
2. Temamos e amemos o Deus vivo,
   Dm                       Gm              C7          F
E amemo-nos uns aos outros de coração sincero!'),
  ('meu-povo-que-te-fiz-eu-improperios-sexta-santa', 'Meu Povo, Que Te Fiz Eu? (Impropérios - Sexta-Feira Santa)', 'Hinário Litúrgico CNBB / Missal Romano', 'Comunhão', 'Quaresma', 'Em', 68, '4/4', 'Lamento Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Meu+Povo,+Que+Te+Fiz+Eu?+(Impropérios+-+Sexta-Feira+Santa)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Canto Oficial da Adoração da Santa Cruz (Impropérios)", "score": 100, "documentRef": "Missal Romano - Sexta-Feira da Paixão do Senhor", "biblicalRef": "Mq 6, 3-4", "justification": "Canto litúrgico próprio da Adoração da Santa Cruz na Sexta-Feira da Paixão do Senhor.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
   Em                       Am              B7          Em
Meu povo, que te fiz Eu? Ou em que te contristei?
   C                        Am              B7          Em
Responde-Me! Responde-Me!
   G                        D               Am    B7    Em
Deus Santo, Deus Forte, Deus Imortal, tende piedade de nós!

[Primeira Parte]
   Em                       Am              B7          Em
1.Porque te tirei da terra do Egito,
   C                        Am              B7          Em
Tu preparaste uma Cruz para o teu Salvador!

[Refrão]
   Em                       Am              B7          Em
Meu povo, que te fiz Eu? Ou em que te contristei?
   C                        Am              B7          Em
Responde-Me! Responde-Me!

[Segunda Parte]
   Em                       Am              B7          Em
2. Porque te guiei quarenta anos pelo deserto e te sustentei com o maná,
   C                        Am              B7          Em
Tu preparaste uma Cruz para o teu Salvador!

[Terceira Parte]
   Em                       Am              B7          Em
3. Porque te plantei como a Minha vinha mais bela e escolhida,
   C                        Am              B7          Em
Tu Me deste vinagre na Minha sede e transpassaste o lado do teu Salvador!'),
  ('fiel-madeiro-da-santa-cruz-crux-fidelis-sexta-santa', 'Fiel Madeiro da Santa Cruz (Crux Fidelis - Sexta-Feira Santa)', 'Hinário Litúrgico CNBB / Venâncio Fortunato', 'Ação de Graças', 'Quaresma', 'Dm', 72, '4/4', 'Hino da Paixão', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Fiel+Madeiro+da+Santa+Cruz+(Crux+Fidelis+-+Sexta-Feira+Santa)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Hino Litúrgico Oficial da Adoração da Cruz (Crux Fidelis)", "score": 100, "documentRef": "Missal Romano - Sexta-Feira da Paixão", "biblicalRef": "Gl 6, 14", "justification": "Hino tradicional do Missal Romano para o momento da Adoração da Santa Cruz na Sexta-Feira Santa.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Ação de Graças • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              A7          Dm
Fiel Madeiro da Santa Cruz, árvore sem igual!
   Bb                       Gm              A7          Dm
Nenhuma selva produz flor, folha ou fruto igual:
   Gm                       Dm              A7          Dm
Doce lenho, doces cravos, que sustentam tão doce peso!

[Primeira Parte]
   Dm                       Gm              A7          Dm
1. Cantai, ó língua, o glorioso combate e o triunfo nobre da Cruz:
   Bb                       Gm              A7          Dm
O Redentor do mundo, imolado, venceu a morte por amor!

[Refrão]
   Dm                       Gm              A7          Dm
Fiel Madeiro da Santa Cruz, árvore sem igual!
   Gm                       Dm              A7          Dm
Doce lenho, doces cravos, que sustentam tão doce peso!'),
  ('exulte-de-alegria-proclamacao-da-pascoa-exsultet', 'Exulte de Alegria (Proclamação da Páscoa - Exsultet / Vigília Pascal)', 'Missal Romano / Hinário Litúrgico CNBB', 'Entrada', 'Páscoa', 'Am', 76, '4/4', 'Recitativo Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Exulte+de+Alegria+(Proclamação+da+Páscoa+-+Exsultet+/+Vigília+Pascal)+Missal+Romano+cifra', '{"status": "Precônio Pascal Oficial da Noite da Vigília Pascal", "score": 100, "documentRef": "Missal Romano - Vigília Pascal na Noite Santa", "biblicalRef": "Ex 14; Rm 6, 3-11", "justification": "Precônio Pascal (Exsultet) entoado diante do Círio Pascal na grande Vigília da Páscoa.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Entrada • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Am  G  F  E7

[Primeira Parte]
   Am                                       G
Exulte de alegria dos anjos a multidão!
   F                                        E7
Exultemos também nós pelos mistérios de Deus!
   Am                                       G
E por tão grande vitória, ressoe a trombeta da salvação!
   F                                        E7          Am
Alegre-se a terra inundada de tanta luz!

[Refrão]
   Am                       G               F           E7
Esta é a noite da Páscoa do Senhor!
   Am                       G               F     E7    Am
Esta é a noite em que Cristo quebrou as cadeias da morte e surgiu vitorioso!

[Segunda Parte]
   Am                                       G
Ó noite verdadeiramente feliz, que uniu o céu à terra,
   F                                        E7
E o ser humano ao seu Criador!
   Am                                       G
Recebei, ó Pai Santo, o sacrifício vespertino deste incenso,
   F                                        E7          Am
Na solene oferta desta vela acesa em vossa honra!'),
  ('cristo-ressuscitou-aleluia-sequencia-pascal', 'Cristo Ressuscitou, Aleluia! (Sequência da Páscoa - Victimae Paschali)', 'Hinário Litúrgico CNBB / Missal Romano', 'Aclamação ao Evangelho', 'Páscoa', 'D', 96, '4/4', 'Hino Pascal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cristo+Ressuscitou,+Aleluia!+(Sequência+da+Páscoa+-+Victimae+Paschali)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Sequência Oficial do Domingo de Páscoa (Victimae Paschali Laudes)", "score": 100, "documentRef": "Missal Romano - Domingo da Ressurreição (Obrigatória antes do Aleluia)", "biblicalRef": "1Cor 5, 7-8; Jo 20, 1-9", "justification": "Sequência oficial obrigatória do Domingo de Páscoa, cantada antes do Evangelho.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Cristo ressuscitou, Aleluia! Venceu a morte com amor!
   Bm                       Em              A7          D
Cristo ressuscitou, Aleluia! Vive para sempre o Senhor!

[Primeira Parte]
   D                        G               A7          D
1. Cantai, cristãos, afinal: "Salve, ó Vítima Pascal!"
   Bm                       Em              A7          D
Cordeiro inocente, o Cristo abriu-nos do Pai o aprisco!

[Refrão]
   D                        G               A7          D
Cristo ressuscitou, Aleluia! Venceu a morte com amor!

[Segunda Parte]
   D                        G               A7          D
2. Por toda ovelha imolado, do mundo lava o pecado;
   Bm                       Em              A7          D
Duelam forte e mais forte: é a Vida que vence a morte!

[Terceira Parte]
   D                        G               A7          D
3. "Dize-nos, ó Maria, que viste na galeria?"
   Bm                       Em              A7          D
"Vi o sepulcro de Cristo vazio e a glória do Ressuscitado!"'),
  ('este-e-o-dia-que-o-senhor-fez-para-nos-pascoa', 'Este É o Dia que o Senhor Fez para Nós (Salmo 117 - Páscoa)', 'Hinário Litúrgico CNBB / Pe. José Weber, SVD', 'Salmo', 'Páscoa', 'C', 96, '4/4', 'Salmo Festivo', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Este+É+o+Dia+que+o+Senhor+Fez+para+Nós+(Salmo+117+-+Páscoa)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Salmo Oficial da Vigília Pascal e Domingo de Páscoa", "score": 100, "documentRef": "Lecionário Dominical - Domingo de Páscoa (Sl 117)", "biblicalRef": "Sl 117(118)", "justification": "Salmo pascal por excelência da Vigília Pascal e do Domingo da Ressurreição.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Salmo • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Este é o dia que o Senhor fez para nós:
   Am                       Dm              G7          C
Alegremo-nos e Nele exultemos! Aleluia!

[Primeira Parte]
   C                        F               G7          C
1. Dai graças ao Senhor, porque Ele é bom!
   Am                       Dm              G7          C
"Eterna é a Sua misericórdia!" — diga a casa de Israel!

[Refrão]
   C                        F               G7          C
Este é o dia que o Senhor fez para nós:
   Am                       Dm              G7          C
Alegremo-nos e Nele exultemos! Aleluia!

[Segunda Parte]
   C                        F               G7          C
2. A mão direita do Senhor fez maravilhas, a mão direita do Senhor me levantou!
   Am                       Dm              G7          C
Não morrerei, mas ao contrário, viverei para cantar as grandes obras do Senhor!

[Terceira Parte]
   C                        F               G7          C
3. A pedra que os pedreiros rejeitaram tornou-se agora a pedra angular!
   Am                       Dm              G7          C
Pelo Senhor é que foi feito tudo isso: que maravilhas Ele fez a nossos olhos!'),
  ('vinde-espirito-santo-sequencia-de-pentecostes', 'Vinde, Espírito Santo (Sequência Oficial de Pentecostes - Veni Sancte Spiritus)', 'Hinário Litúrgico CNBB / Missal Romano', 'Aclamação ao Evangelho', 'Páscoa', 'G', 82, '4/4', 'Hino de Pentecostes', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Vinde,+Espírito+Santo+(Sequência+Oficial+de+Pentecostes+-+Veni+Sancte+Spiritus)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Sequência Oficial Obrigatória do Domingo de Pentecostes", "score": 100, "documentRef": "Missal Romano - Solenidade de Pentecostes", "biblicalRef": "At 2, 1-11; Jo 20, 19-23", "justification": "Sequência áurea Veni Sancte Spiritus, obrigatória na Missa do Domingo de Pentecostes antes do Evangelho.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Vinde, Espírito Santo, enchei os corações dos vossos fiéis
   Em                       Am              D7          G
E acendei neles o fogo do vosso amor!

[Primeira Parte]
   G                        C               D7          G
1. Espírito de Deus, enviai dos céus um raio de luz!
   Em                       Am              D7          G
Vinde, Pai dos pobres, dai aos corações vossos sete dons!

[Refrão]
   G                        C               D7          G
Vinde, Espírito Santo, enchei os corações dos vossos fiéis!

[Segunda Parte]
   G                        C               D7          G
2. Consolo que acalma, hóspede da alma, doce alívio, vinde!
   Em                       Am              D7          G
No labor descanso, na aflição remanso, no calor aragem!

[Terceira Parte]
   G                        C               D7          G
3. Lavai o que é impuro, regai o que é seco, curai o ferido;
   Em                       Am              D7          G
Dobrai o que é duro, guiai no caminho, dai-nos vossos dons!'),
  ('bendito-seja-deus-pai-santissima-trindade', 'Bendito Seja Deus Pai (Solenidade da Santíssima Trindade)', 'Hinário Litúrgico CNBB / Pe. José Weber, SVD', 'Entrada', 'Tempo Comum', 'D', 92, '4/4', 'Hino Trinitário', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Bendito+Seja+Deus+Pai+(Solenidade+da+Santíssima+Trindade)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Antífona de Entrada Oficial da Santíssima Trindade", "score": 100, "documentRef": "Missal Romano - Solenidade da Santíssima Trindade", "biblicalRef": "Tb 12, 6; Mt 28, 19", "justification": "Antífona oficial para a abertura da Missa na Solenidade da Santíssima Trindade.", "repertoireType": "liturgica", "specialDay": "Corpus Christi e Trindade", "normExplanation": "Aprovada para a Santa Missa (Entrada • Corpus Christi e Trindade): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Bendito seja Deus Pai, e o Filho Unigênito,
   Bm                       Em              A7          D
E o Espírito Santo, porque usou de misericórdia para conosco!

[Primeira Parte]
   D                        G               A7          D
1. Ó Senhor, nosso Deus, como é grande o vosso Nome
   Bm                       Em              A7          D
Por todo o universo, na terra e nos céus!

[Refrão]
   D                        G               A7          D
Bendito seja Deus Pai, e o Filho Unigênito,
   Bm                       Em              A7          D
E o Espírito Santo, porque usou de misericórdia para conosco!

[Segunda Parte]
   D                        G               A7          D
2. Glória ao Pai, e ao Filho, e ao Espírito Santo,
   Bm                       Em              A7          D
Como era no princípio, agora e sempre. Amém!'),
  ('louva-siao-o-salvador-lauda-sion-corpus-christi', 'Louva, Sião, o Salvador (Sequência de Corpus Christi - Lauda Sion)', 'São Tomás de Aquino / Hinário Litúrgico CNBB', 'Aclamação ao Evangelho', 'Tempo Comum', 'C', 88, '4/4', 'Hino Eucarístico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Louva,+Sião,+o+Salvador+(Sequência+de+Corpus+Christi+-+Lauda+Sion)+São+Tomás+de+Aquino+cifra', '{"status": "Sequência Oficial da Solenidade de Corpus Christi", "score": 100, "documentRef": "Missal Romano - Solenidade do Santíssimo Corpo e Sangue de Cristo", "biblicalRef": "Jo 6, 51-58", "justification": "Sequência eucarística composta por São Tomás de Aquino para a Solenidade de Corpus Christi.", "repertoireType": "liturgica", "specialDay": "Corpus Christi e Trindade", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Corpus Christi e Trindade): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Louva, Sião, o Salvador, o teu Guia e teu Pastor,
   Am                       Dm              G7          C
Com hinos e cânticos de júbilo!

[Primeira Parte]
   C                        F               G7          C
1. O tema de hoje é o Pão vivo e que dá a vida,
   Am                       Dm              G7          C
Que na Santa Ceia foi entregue aos doze irmãos!

[Refrão]
   C                        F               G7          C
Louva, Sião, o Salvador, o teu Guia e teu Pastor!

[Segunda Parte]
   C                        F               G7          C
2. Eis o Pão dos Anjos, feito pão dos peregrinos,
   Am                       Dm              G7          C
Verdadeiro pão dos filhos: Bom Pastor, verdadeiro Pão, tende piedade de nós!'),
  ('como-o-sol-nasce-da-aurora-advento-cnbb', 'Como o Sol Nasce da Aurora (Tempo do Advento - CNBB)', 'Hinário Litúrgico CNBB / Reginaldo Veloso', 'Comunhão', 'Advento', 'Em', 80, '4/4', 'Balada do Advento', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Como+o+Sol+Nasce+da+Aurora+(Tempo+do+Advento+-+CNBB)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Canto Litúrgico Mariano do Tempo do Advento", "score": 100, "documentRef": "Hinário Litúrgico CNBB - Advento", "biblicalRef": "Lc 1, 26-38.78", "justification": "Um dos mais belos cantos litúrgicos do Advento no Brasil, celebrando a Virgem Maria que traz o Sol da Justiça.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                       Am              B7          Em
1. Como o sol nasce da aurora, de Maria nascerá
   C                        Am              B7          Em
Aquele que a terra seca em jardim converterá!
   G                        D               Am          B7
Ó Belém, abre teus braços ao Pastor que a ti virá!

[Refrão]
   Em                       Am              D           G
Emanuel, Deus conosco, vem ao nosso mundo, vem!
   C                        Am              B7          Em
Emanuel, Deus conosco, vem ao nosso mundo, vem!

[Segunda Parte]
   Em                       Am              B7          Em
2. Ouve, ó Pastor do Teu povo, vem do alto céu onde estás!
   C                        Am              B7          Em
Desperta o Teu poder e vem para nos salvar!'),
  ('nasceu-nos-hoje-um-menino-natal-missa-noite', 'Nasceu-nos Hoje um Menino (Noite de Natal - CNBB)', 'Hinário Litúrgico CNBB / Pe. José Weber, SVD', 'Entrada', 'Natal', 'D', 96, '4/4', 'Marcha Natalina', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Nasceu-nos+Hoje+um+Menino+(Noite+de+Natal+-+CNBB)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Canto Oficial da Missa da Noite e do Dia de Natal (Is 9, 5)", "score": 100, "documentRef": "Missal Romano - Solenidade do Natal do Senhor", "biblicalRef": "Is 9, 1-6; Lc 2, 1-14", "justification": "Canto litúrgico oficial baseado na profecia de Isaías 9, 5 para a Solenidade do Natal do Senhor.", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Entrada • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Nasceu-nos hoje um Menino, e um Filho nos foi dado!
   Bm                       Em              A7          D
Grande é este pequenino: Rei da Paz será chamado!
   G            A7          D     Bm        Em    A7    D
Aleluia, aleluia! Rei da Paz será chamado!

[Primeira Parte]
   D                        G               A7          D
1. Cantai, cantai ao Senhor um canto novo,
   Bm                       Em              A7          D
Cantai ao Senhor, terra inteira!

[Refrão]
   D                        G               A7          D
Nasceu-nos hoje um Menino, e um Filho nos foi dado!

[Segunda Parte]
   D                        G               A7          D
2. O Senhor anunciou a salvação,
   Bm                       Em              A7          D
E às nações revelou Sua justiça!'),
  ('hoje-nasceu-para-nos-o-salvador-salmo-natal', 'Hoje Nasceu para Nós o Salvador (Salmo 95 - Missa da Noite de Natal)', 'Lecionário Dominical / Hinário Litúrgico CNBB', 'Salmo', 'Natal', 'C', 90, '4/4', 'Salmo de Natal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Hoje+Nasceu+para+Nós+o+Salvador+(Salmo+95+-+Missa+da+Noite+de+Natal)+Lecionário+Dominical+cifra', '{"status": "Salmo Responsorial Oficial da Missa da Noite de Natal", "score": 100, "documentRef": "Lecionário Dominical - Solenidade do Natal do Senhor", "biblicalRef": "Sl 95(96); Lc 2, 11", "justification": "Salmo responsorial oficial da Missa do Galo (Noite de Natal).", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Salmo • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Hoje nasceu para nós o Salvador,
   Am                       Dm              G7          C
Que é Cristo, o Senhor!

[Primeira Parte]
   C                        F               G7          C
1. Cantai ao Senhor Deus um canto novo,
   Am                       Dm              G7          C
Cantai ao Senhor Deus, ó terra inteira!
   F                        C               Dm          G7
Cantai e bendizei Seu santo Nome!

[Refrão]
   C                        F               G7          C
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Segunda Parte]
   C                        F               G7          C
2. Dia após dia anunciai Sua salvação,
   Am                       Dm              G7          C
Manifestai a Sua glória entre as nações,
   F                        C               Dm    G7    C
E entre os povos do universo Seus prodígios!'),
  ('dai-nos-a-bencao-o-mae-querida-aparecida', 'Dai-nos a Bênção, Ó Mãe Querida (Solenidade de Nossa Senhora Aparecida - 12 de Outubro)', 'Tradicional Mariano / Hinário Mariano Católico', 'Final', 'Tempo Comum', 'C', 96, '3/4', 'Valsa Mariana', '↓  ↑ ↑  ↓  ↑ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Dai-nos+a+Bênção,+Ó+Mãe+Querida+(Solenidade+de+Nossa+Senhora+Aparecida+-+12+de+Outubro)+Tradicional+Mariano+cifra', '{"status": "Hino da Padroeira do Brasil (12 de Outubro)", "score": 98, "documentRef": "Solenidade de Nossa Senhora da Conceição Aparecida", "biblicalRef": "Jo 2, 1-11; Ap 12, 1", "justification": "Hino tradicional de encerramento das celebrações da Padroeira do Brasil em 12 de outubro.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Refrão]
   C                        Dm              G7          C
Dai-nos a bênção, ó Mãe querida, Nossa Senhora Aparecida!
   Am                       Dm              G7          C
Dai-nos a bênção, ó Mãe querida, Nossa Senhora Aparecida!

[Primeira Parte]
   C                        Dm              G7          C
1. Sob esse manto do azul do céu, guardai-nos sempre no amor de Deus;
   Am                       Dm              G7          C
Eu me consagro ao vosso amor, ó Mãe querida do Salvador!

[Refrão]
   C                        Dm              G7          C
Dai-nos a bênção, ó Mãe querida, Nossa Senhora Aparecida!

[Segunda Parte]
   C                        Dm              G7          C
2. Sois nossa vida, sois nossa luz, ó Mãe amada do bom Jesus;
   Am                       Dm              G7          C
Abençoai nossa nação e cada lar, cada coração!'),
  ('jesus-cristo-ontem-hoje-e-sempre-cristo-rei', 'Jesus Cristo Ontem, Hoje e Sempre (Solenidade de Cristo Rei do Universo)', 'Hinário Litúrgico CNBB / Pe. José Weber, SVD', 'Entrada', 'Tempo Comum', 'G', 98, '4/4', 'Marcha Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Jesus+Cristo+Ontem,+Hoje+e+Sempre+(Solenidade+de+Cristo+Rei+do+Universo)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Canto Oficial de Abertura da Solenidade de Cristo Rei", "score": 100, "documentRef": "Missal Romano - Solenidade de Nosso Senhor Jesus Cristo, Rei do Universo", "biblicalRef": "Ap 1, 5-6; Hb 13, 8", "justification": "Hino solene de abertura para o último domingo do Ano Litúrgico: Solenidade de Cristo Rei.", "repertoireType": "liturgica", "specialDay": "Cristo Rei, Santos e Finados", "normExplanation": "Aprovada para a Santa Missa (Entrada • Cristo Rei, Santos e Finados): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Jesus Cristo, ontem, hoje e sempre! Ontem, hoje e sempre, Aleluia!
   Em                       Am              D7          G
A Ele a glória e o poder pelos séculos sem fim!

[Primeira Parte]
   G                        C               D7          G
1. Digno é o Cordeiro que foi imolado de receber o poder e a divindade,
   Em                       Am              D7          G
A sabedoria, a força e a honra pelos séculos dos séculos!

[Refrão]
   G                        C               D7          G
Jesus Cristo, ontem, hoje e sempre! Ontem, hoje e sempre, Aleluia!

[Segunda Parte]
   G                        C               D7          G
2. Seu Reino é um Reino eterno, e Seu domínio dura de geração em geração:
   Em                       Am              D7          G
Cristo vence, Cristo reina, Cristo impera!'),
  ('alegrai-vos-sempre-no-senhor-todos-os-santos', 'Alegremo-nos Todos no Senhor (Solenidade de Todos os Santos - 1º de Novembro)', 'Hinário Litúrgico CNBB / Missal Romano', 'Entrada', 'Tempo Comum', 'D', 94, '4/4', 'Marcha Festiva', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Alegremo-nos+Todos+no+Senhor+(Solenidade+de+Todos+os+Santos+-+1º+de+Novembro)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Antífona de Entrada Oficial da Solenidade de Todos os Santos", "score": 100, "documentRef": "Missal Romano - Solenidade de Todos os Santos (Mt 5, 1-12)", "biblicalRef": "Ap 7, 9-14; Mt 5, 1-12", "justification": "Canto oficial de entrada e comunhão (Bem-Aventuranças) para a Solenidade de Todos os Santos.", "repertoireType": "liturgica", "specialDay": "Cristo Rei, Santos e Finados", "normExplanation": "Aprovada para a Santa Missa (Entrada • Cristo Rei, Santos e Finados): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Alegremo-nos todos no Senhor, celebrando a festa de Todos os Santos!
   Bm                       Em              A7          D
Conosco se alegram os anjos e glorificam o Filho de Deus!

[Primeira Parte]
   D                        G               A7          D
1. Felizes os pobres em espírito, porque deles é o Reino dos Céus!
   Bm                       Em              A7          D
Felizes os mansos e puros de coração, porque verão a Deus!

[Refrão]
   D                        G               A7          D
Alegremo-nos todos no Senhor, celebrando a festa de Todos os Santos!

[Segunda Parte]
   D                        G               A7          D
2. Felizes os que promovem a paz, porque serão chamados filhos de Deus!
   Bm                       Em              A7          D
Alegrai-vos e exultai, porque é grande a vossa recompensa nos Céus!'),
  ('dai-lhes-senhor-o-descanso-eterno-finados', 'Dai-lhes, Senhor, o Descanso Eterno (Comemoração de Todos os Fiéis Defuntos - Finados)', 'Hinário Litúrgico CNBB / Missal Romano', 'Entrada', 'Tempo Comum', 'Dm', 72, '4/4', 'Balada da Esperança Pascal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Dai-lhes,+Senhor,+o+Descanso+Eterno+(Comemoração+de+Todos+os+Fiéis+Defuntos+-+Finados)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Antífona Oficial da Missa de Finados e Exéquias", "score": 100, "documentRef": "Missal Romano - Comemoração dos Fiéis Defuntos (2 de Novembro)", "biblicalRef": "1Ts 4, 14; Jo 11, 25", "justification": "Antífona oficial do Missal Romano (Requiem aeternam) para o Dia de Finados e Missas de Sétimo Dia.", "repertoireType": "liturgica", "specialDay": "Cristo Rei, Santos e Finados", "normExplanation": "Aprovada para a Santa Missa (Entrada • Cristo Rei, Santos e Finados): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              A7          Dm
Dai-lhes, Senhor, o descanso eterno,
   Bb                       Gm              A7          Dm
E brilhe para eles a vossa luz perpétua!

[Primeira Parte]
   Dm                       Gm              A7          Dm
1. Assim como Jesus morreu e ressuscitou,
   Bb                       Gm              A7          Dm
Assim também Deus levará com Jesus os que Nele adormeceram!

[Refrão]
   Dm                       Gm              A7          Dm
Dai-lhes, Senhor, o descanso eterno,
   Bb                       Gm              A7          Dm
E brilhe para eles a vossa luz perpétua!

[Segunda Parte]
   Dm                       Gm              A7          Dm
2. "Eu sou a Ressurreição e a Vida", diz o Senhor;
   Bb                       Gm              A7          Dm
"Quem crê em Mim, ainda que tenha morrido, viverá para sempre!"'),
  ('oracao-pela-familia-pe-zezinho', 'Oração pela Família', 'Padre Zezinho, scj', 'Ação de Graças', 'Qualquer', 'C', 76, '4/4', 'Guarânia / Balada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Oração+pela+Família+Padre+Zezinho,+scj+cifra', '{"status": "Clássico Pastoral Familiar (Ação de Graças / Bênção das Famílias)", "score": 95, "documentRef": "Estudo 79 CNBB / Diretório da Pastoral Familiar", "biblicalRef": "Ef 5, 21-33; Cl 3, 12-21", "justification": "Cântico consagrado nas paróquias brasileiras para bênção das famílias, matrimônios e envio final.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G7  C  G7  C

[Primeira Parte]
         C                                   G7
1. Que nenhuma família comece em qualquer de repente,
         Dm                 G7                C
Que nenhuma família termine por falta de amor!
                                             G7
Que o casal seja um para o outro de corpo e de mente,
       Dm                  G7                 C
E que nada no mundo separe um casal sonhador!

         C                                   G7
2. Que nenhuma família se abrigue debaixo da ponte,
         Dm                  G7                C
Que ninguém interfira no lar e na vida dos dois!
                                             G7
Que ninguém os obrigue a viver sem nenhum horizonte,
         Dm                    G7                    C
Que eles vivam do ontem, no hoje e em função de um depois!

[Refrão]
         C                   Dm
Que a família comece e termine sabendo onde vai,
        G7                                     C
E que o homem carregue nos ombros a graça de um pai!
                             Dm
Que a mulher seja um céu de ternura, aconchego e calor,
        C                  G7                 C
E que os filhos conheçam a força que brota do amor!
                 G7
Abençoa, Senhor, as famílias! Amém!
         F          G7          C
Abençoa, Senhor, a minha também!'),
  ('maria-de-nazare-pe-zezinho', 'Maria de Nazaré', 'Padre Zezinho, scj', 'Final', 'Qualquer', 'D', 72, '3/4', 'Valsa Sacra', '↓  ↑ ↓  ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Maria+de+Nazaré+Padre+Zezinho,+scj+cifra', '{"status": "Clássico Mariano Consagrado (Canto Final / Festas Marianas)", "score": 98, "documentRef": "Lumen Gentium 66-67 / Marialis Cultus", "biblicalRef": "Lc 1, 26-56; Jo 19, 25-27", "justification": "Uma das canções marianas mais cantadas no Brasil, profundamente bíblica e acessível no violão.", "repertoireType": "popular", "specialDay": "Solenidades Marianas", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  Em  A7  D

[Primeira Parte]
   D                  Em
1. Maria de Nazaré, Maria me cativou,
   A7                                D
Fez mais forte a minha fé e por filho me adotou!
   D7                     G
Às vezes eu paro e fico a pensar,
   Gm                     D
E sem perceber me vejo a rezar,
   Bm                     Em
E meu coração se põe a cantar
   A7                     D
Pra Virgem de Nazaré!

   D7                     G
Menina que Deus amou e escolheu
   Gm                     D
Pra Mãe de Jesus, o Filho de Deus,
   Bm                     Em
Maria que o povo inteiro elegeu
   A7                     D
Senhora e Mãe do Céu!

[Refrão]
D     Em     A7        D    Bm
Ave Maria, Ave Maria,
Em          A7        D
Ave Maria, Mãe de Jesus!'),
  ('utopia-pe-zezinho', 'Utopia (Das Muitas Coisas do Meu Tempo de Criança)', 'Padre Zezinho, scj', 'Ação de Graças', 'Qualquer', 'D', 82, '4/4', 'Toada / Dedilhado', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Utopia+(Das+Muitas+Coisas+do+Meu+Tempo+de+Criança)+Padre+Zezinho,+scj+cifra', '{"status": "Canto Vocacional e Catequético", "score": 92, "documentRef": "Estudo 79 CNBB / Catequese e Família", "biblicalRef": "Dt 6, 6-7; Pv 22, 6", "justification": "Cântico catequético sobre a transmissão da fé em família e a devoção a Jesus e Nossa Senhora.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A7  D  A7  D

[Primeira Parte]
         D                                   A7
1. Das muitas coisas do meu tempo de criança,
        Em               A7             D
Guardo vivo na lembrança o aconchego de meu lar.
         D7                                 G
No fim da tarde, quando tudo se aquietava,
        D                A7             D
A família se ajuntava lá no alpendre a conversar!

         D                                   A7
2. Meus pais não tinham nem escola e nem dinheiro,
        Em               A7             D
Todo dia o ano inteiro trabalhavam sem parar.
         D7                                 G
Faltava tudo, mas a gente nem ligava,
        D                A7             D
O importante não faltava: seu sorriso e seu olhar!

[Refrão]
        A7                                  D
Eu sozinho aprendi a viver mais ou menos,
        A7                                  D     D7
Mas em casa aprendi a ter fé e a rezar!
        G                                   D     Bm
Foi meu pai que ensinou a rezar o Pai-Nosso,
        Em              A7                  D
Foi mamãe que ensinou a rezar a Ave-Maria!'),
  ('amar-como-jesus-amou-pe-zezinho', 'Amar Como Jesus Amou', 'Padre Zezinho, scj', 'Comunhão', 'Tempo Comum', 'D', 86, '4/4', 'Balada Jovem', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Amar+Como+Jesus+Amou+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Caridade Fraterna e Mandamento Novo", "score": 95, "documentRef": "IGMR 86 / Evangelho de São João", "biblicalRef": "Jo 13, 34-35; Jo 15, 12", "justification": "Três acordes apenas (D, A7, G) cantando o Mandamento Novo de Cristo: amar como Jesus amou.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A7  D  G  D  A7  D

[Primeira Parte]
   D                                    A7
1. Um dia uma criança me parou, olhou-me nos meus olhos a sorrir,
                                         D
Caneta e papel na sua mão, tarefa escolar para cumprir.
                                   D7                     G
E perguntou no meio de um sorriso o que é preciso para ser feliz?

[Refrão]
   G                              D
Amar como Jesus amou, sonhar como Jesus sonhou,
   A7                             D      D7
Pensar como Jesus pensou, viver como Jesus viveu!
   G                              D              Bm
Sentir o que Jesus sentia, sorrir como Jesus sorria,
   Em                             A7             D
E ao chegar ao fim do dia, eu sei que dormiria muito mais feliz!'),
  ('um-certo-galileu-pe-zezinho', 'Um Certo Galileu', 'Padre Zezinho, scj', 'Aclamação ao Evangelho', 'Tempo Comum', 'D', 96, '4/4', 'Marcha / Jovem', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Um+Certo+Galileu+Padre+Zezinho,+scj+cifra', '{"status": "Canto Cristocêntrico Querigmático", "score": 94, "documentRef": "Estudo 79 CNBB / Catequese e Missão", "biblicalRef": "Mt 4, 18-22; Mc 1, 16-20", "justification": "Apenas 3 acordes (D, Em/G, A7) narrando o anúncio do Reino de Deus por Jesus da Galileia.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A7  D  A7  D

[Primeira Parte]
   D                                        A7
1. Um certo dia, à beira-mar, apareceu um jovem Galileu;
                                            D
Ninguém podia imaginar que alguém pudesse amar do jeito que Ele amava.
                                            A7
Seu jeito simples de conversar tocava o coração de quem O escutava!

[Refrão]
         D                                  A7
E seu nome era Jesus de Nazaré, sua fama se espalhou, todos queriam ver
         G                  A7              D
O profeta que tinha tanto amor e amava o pecador!

[Segunda Parte]
   D                                        A7
2. Naquelas praias, naquele mar, naquele rio, em casa de Zaqueu,
                                            D
Naquela estrada, naquele sol, e o povo a escutar histórias tão bonitas!'),
  ('estou-pensando-em-deus-pe-zezinho', 'Estou Pensando em Deus', 'Padre Zezinho, scj', 'Entrada', 'Tempo Comum', 'D', 82, '4/4', 'Balada / Meditação', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Estou+Pensando+em+Deus+Padre+Zezinho,+scj+cifra', '{"status": "Clássico de Reflexão e Abertura Comunitária", "score": 93, "documentRef": "Estudo 79 CNBB", "biblicalRef": "1Jo 4, 7-16; Mt 22, 37-39", "justification": "Canto clássico de fácil execução com 4 acordes sobre a volta da humanidade ao amor de Deus.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A7  D

[Refrão]
D                          Em
Estou pensando em Deus, estou pensando no amor!
A7                         D
Estou pensando em Deus, estou pensando no amor!

[Primeira Parte]
   D                                        Em
1. Os homens fogem do amor, e depois que se esvaziam,
   A7                                       D
No vazio se angustiam e duvidam de Você.
   G                                        D
Você chega perto deles, mesmo assim ninguém tem fé!

   D                                        Em
2. Eu me angustio quando vejo que depois de dois mil anos,
   A7                                       D
Entre tantos desenganos, poucos vivem sua fé.
   G                                        D
Muitos falam de esperança, mas esquecem de Você!'),
  ('nova-geracao-pe-zezinho', 'Nova Geração (Eu Venho do Sul e do Norte)', 'Padre Zezinho, scj', 'Entrada', 'Tempo Comum', 'Dm', 92, '4/4', 'Guarânia / Caminhada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Nova+Geração+(Eu+Venho+do+Sul+e+do+Norte)+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Entrada para Assembleias e Juventude", "score": 95, "documentRef": "IGMR 47 / Hinário Litúrgico", "biblicalRef": "Is 2, 3; Gl 3, 28", "justification": "Canto de entrada vibrante sobre a reunião do povo de todas as regiões em torno do altar.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  A7  Dm

[Primeira Parte]
   Dm                                       A7
1. Eu venho do Sul e do Norte, do Oeste e do Leste, de todo lugar!
                                            Dm
Estradas da vida eu percorro, levando socorro a quem precisar!
   Gm                                       Dm
Assunto de paz é meu forte, eu cruzo montanhas e vou aprender:
   A7                                       Dm    D7
O mundo não me satisfaz, o que eu quero é a paz, o que eu quero é viver!

[Refrão]
   Gm                  Dm
No peito eu levo uma cruz,
   Gm                  Dm        A7         Dm
No meu coração, o que disse Jesus! (2x)

[Segunda Parte]
   C7                       F               Dm
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Bb                       A7              Dm
Na assembleia santa e viva que o Teu Espírito refaz;
   F                        Gm              C7
Acolhei nossa oração neste dia do Senhor,
   Bb                       A7              Dm
Para a glória de Deus Pai, nosso eterno Criador!

[Final] Dm  F  A7  Dm'),
  ('minha-vida-tem-sentido-pe-zezinho', 'Minha Vida Tem Sentido', 'Padre Zezinho, scj', 'Ofertório', 'Tempo Comum', 'D', 80, '4/4', 'Balada Suave', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Minha+Vida+Tem+Sentido+Padre+Zezinho,+scj+cifra', '{"status": "Clássico de Apresentação dos Dons", "score": 96, "documentRef": "IGMR 74 / Estudo 79 CNBB", "biblicalRef": "Rm 12, 1; Mt 5, 23-24", "justification": "Canto de ofertório extremamente conhecido, unindo a entrega da vida ao pão e vinho no altar.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A7  D

[Refrão]
   D                       Em
Minha vida tem sentido cada vez que eu venho aqui,
   A7                      D
E te faço o meu pedido de não me esquecer de Ti!

[Primeira Parte]
   D                       G
1. Meu amor é como este pão, que era trigo,
   A7                      D
Que alguém plantou, depois colheu;
   Bm                      Em
E depois tornou-se salvação,
   A7                      D
E deu mais vida e alimentou o povo meu!

[Refrão do Ofertório]
   D          G            A7           D
Eu Te ofereço vinho e pão, eu Te ofereço meu amor!
   Bm         Em           A7           D
Eu Te ofereço vinho e pão, eu Te ofereço meu amor!'),
  ('sabes-senhor-pe-zezinho', 'Sabes, Senhor (Deus É Pai)', 'Padre Zezinho, scj / Lindberg Pires', 'Ofertório', 'Tempo Comum', 'D', 76, '4/4', 'Dedilhado / Balada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sabes,+Senhor+(Deus+É+Pai)+Padre+Zezinho,+scj+cifra', '{"status": "Canto Tradicional de Ofertório", "score": 98, "documentRef": "IGMR 74 / Hinário Litúrgico CNBB", "biblicalRef": "Jo 6, 9; At 4, 32", "justification": "Um dos cantos de ofertório mais amados e cantados nas paróquias brasileiras.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Bm  Em  A7  D

[Refrão]
D            Bm        Em              A7
Sabes, Senhor, o que temos é tão pouco pra dar,
Em           A7        D
Mas este pouco nós queremos com os irmãos compartilhar!

[Primeira Parte]
   G                   Em          Bm
1. Queremos nesta hora, diante dos irmãos,
   Em                  A7          D
Comprometer a vida, buscando a união!

   G                   Em          Bm
2. Sabemos que é difícil os bens compartilhar,
   Em                  A7          D
Mas com a Tua graça, Senhor, queremos dar!

[Primeira Parte]
   D                        A7              Bm
1. Apresentamos no altar o pão e o vinho do amor,
   G                        Em              A7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   D                        A7              Bm
Com eles depositamos nossa lida e vocação,
   G                        A7              D
Para que sejam transformados em fonte de salvação!

[Final] D  G  A7  D'),
  ('vocacao-se-ouvires-a-voz-do-vento-pe-zezinho', 'Vocação (Se Ouvires a Voz do Vento)', 'Padre Zezinho, scj', 'Comunhão', 'Tempo Comum', 'Em', 78, '4/4', 'Balada / Dedilhado', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Vocação+(Se+Ouvires+a+Voz+do+Vento)+Padre+Zezinho,+scj+cifra', '{"status": "Canto Vocacional e Missionário", "score": 96, "documentRef": "IGMR 86 / Mês Vocacional", "biblicalRef": "Is 6, 8; Mt 9, 37-38", "justification": "Clássico vocacional com 4 acordes simples (Em, Am, B7, E7) sobre o chamado de Deus.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                                      Am
1. Se ouvires a voz do vento, chamando sem cessar,
   B7                                      Em
Se ouvires a voz do tempo, mandando esperar:

[Refrão]
   E7          Am          D7              G
A decisão é tua! A decisão é tua!
   Am          Em          B7              Em
São muitos os convidados, quase ninguém tem tempo! (2x)

[Segunda Parte]
   Em                                      Am
2. Se ouvires a voz de Deus, chamando sem cessar,
   B7                                      Em
Se ouvires a voz do mundo, querendo te enganar:'),
  ('quando-jesus-passar-pe-zezinho', 'Quando Jesus Passar', 'Padre Zezinho, scj', 'Entrada', 'Tempo Comum', 'D', 94, '4/4', 'Marcha Alegre', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Quando+Jesus+Passar+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Acolhida e Prontidão Cristã", "score": 94, "documentRef": "IGMR 47 / Evangelho de Lucas", "biblicalRef": "Lc 19, 1-10", "justification": "Apenas 3 acordes (D, Em/G, A7), muito fácil para iniciantes tocarem na entrada da Missa.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A7  D

[Refrão]
   D                                Em
Quando Jesus passar, quando Jesus passar,
   A7                               D
Eu quero estar no meu lugar!

[Primeira Parte]
   D                                Em
1. No meu telônio ou jogando a rede,
   A7                               D
Sob a figueira ou a caminhar;
                                    Em
Buscando água pra minha sede,
   A7                               D
Querendo ver meu Senhor passar!

   D                                Em
2. No meu trabalho e na minha casa,
   A7                               D
No meu estudo e no meu lazer;
                                    Em
No compromisso e no meu descanso,
   A7                               D
No meu direito e no meu dever!'),
  ('alo-meu-deus-pe-zezinho', 'Alô, Meu Deus', 'Padre Zezinho, scj', 'Ato Penitencial', 'Quaresma', 'C', 74, '4/4', 'Balada / Oração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Alô,+Meu+Deus+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Reconciliação e Retorno ao Pai", "score": 91, "documentRef": "Catequese Penitencial / Lc 15", "biblicalRef": "Lc 15, 11-24", "justification": "Cântico inspirado no retorno do Filho Pródigo à casa do Pai, excelente para celebrações penitenciais.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Dm  G7  C

[Primeira Parte]
   C                                       Dm
1. Alô, meu Deus, fazia tanto tempo que eu não mais Te procurava,
   G7                                      C
Alô, meu Deus, senti saudades Tuas e acabei voltando aqui!
   C7                                      F
Andei por mil caminhos e, como as andorinhas,
   C                       G7              C
Eu vim fazer meu ninho em Tua casa e repousar!

[Refrão]
   F                                       C
Embora eu me afastasse e andasse desligado,
   Dm                      G7              C      C7
Meu coração cansado resolveu voltar!
   F                                       C      Am
Eu não me acostumei nas terras onde andei,
   Dm                      G7              C
Eu vim fazer meu ninho em Tua casa e repousar!'),
  ('cidadao-do-infinito-pe-zezinho', 'Cidadão do Infinito', 'Padre Zezinho, scj', 'Final', 'Tempo Comum', 'C', 88, '4/4', 'Toada Missionária', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cidadão+do+Infinito+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Envio Missionário e Vocacional", "score": 94, "documentRef": "IGMR 90 / Evangelii Nuntiandi", "biblicalRef": "Mt 13, 3-9; Fl 3, 20", "justification": "Hino missionário sobre semear a Palavra de Deus no mundo.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                                       G7
1. Por escutar uma voz que disse que faltava gente pra semear,
   Dm                      G7              C
Deixei meu lar e saí sorrindo e assobiando pra não chorar.
   C7                                      F
Fui trabalhar nos campos do Senhor,
   C                       G7              C
Semeei a paz e colhi o amor!

[Refrão]
   F                                       C
Sou cidadão do infinito, do infinito, do infinito,
   G7                                      C      C7
E semeando a paz por onde passo, eu vou!
   F                                       C      Am
Sou cidadão do infinito, do infinito, do infinito,
   Dm                      G7              C
Semeando a paz e o amor!'),
  ('palavra-de-salvacao-pe-zezinho', 'Palavra de Salvação', 'Padre Zezinho, scj', 'Aclamação ao Evangelho', 'Tempo Comum', 'C', 92, '4/4', 'Marcha Jovem', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Palavra+de+Salvação+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Aclamação à Palavra de Deus", "score": 96, "documentRef": "IGMR 62 / Jo 6, 68", "biblicalRef": "Jo 6, 68; Hb 4, 12", "justification": "Canto de preparação para o Evangelho baseado na confissão de São Pedro: ''Senhor, só Tu tens palavras de vida eterna''.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                                       G7
1. Palavra de salvação somente o Céu tem pra dar,
   F                       G7              C
Por isso meu coração se abre para escutar!

[Refrão]
   F                       C
Por mais difícil que seja seguir,
   G7                      C       C7
Tua Palavra queremos ouvir!
   F                       C       Am
Por mais difícil de se praticar,
   Dm         G7           C
Tua Palavra queremos guardar!

[Segunda Parte]
   C                        F               G          C
2. Abri o nosso coração ao Santo Evangelho da paz,
   Am                       Dm              G7          C
Semente do Reino de Deus que fruto abundante nos traz;
   F                        G               Am
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Dm                       G7              C
E viver o Teu anúncio em cada canto e lugar!

[Final] C  F  G7  C'),
  ('fala-senhor-pe-zezinho', 'Fala, Senhor, Palavra de Fraternidade', 'Padre Zezinho, scj', 'Aclamação ao Evangelho', 'Tempo Comum', 'D', 88, '4/4', 'Balada Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Fala,+Senhor,+Palavra+de+Fraternidade+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Escuta da Palavra", "score": 95, "documentRef": "IGMR 62 / 1Sm 3, 9", "biblicalRef": "1Sm 3, 9-10", "justification": "Canto bíblico inspirado na vocação do jovem Samuel para escuta da Palavra de Deus.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
D             G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
Palavra de fraternidade!
D             G         A7            D
Fala, Senhor! Fala, Senhor!
Bm            Em        A7            D
És luz da humanidade!

[Estrofe]
   G                    D
1. A Tua Palavra é fonte que corre,
   Em         A7        D
Penetra a nossa vida e não morre!

[Segunda Parte]
   D                        G               A7          D
2. Abri o nosso coração ao Santo Evangelho da paz,
   Bm                       Em              A7          D
Semente do Reino de Deus que fruto abundante nos traz;
   G                        A7              Bm
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Em                       A7              D
E viver o Teu anúncio em cada canto e lugar!

[Final] D  G  A7  D'),
  ('gloria-a-deus-na-imensidao-pe-zezinho', 'Glória a Deus na Imensidão', 'Padre Zezinho, scj', 'Glória', 'Tempo Comum', 'G', 98, '4/4', 'Marcha Festiva', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Glória+a+Deus+na+Imensidão+Padre+Zezinho,+scj+cifra', '{"status": "Hino de Louvor Trinitário", "score": 93, "documentRef": "IGMR 53 / Lc 2, 14", "biblicalRef": "Lc 2, 14", "justification": "Glória festivo com estrutura trinitária simples em 4 acordes (G, C, D7, Em).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Glória • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Refrão]
G                       C
Glória a Deus na imensidão,
D7                      G
E paz na terra ao homem nosso irmão! (2x)

[Estrofes]
   G                    C
1. Senhor Deus Pai Criador, onipotente Senhor,
   D7                   G
Nós Vos louvamos e bendizemos por Vosso imenso amor!

   G                    C
2. Senhor Jesus Unigênito, Cordeiro de Deus Salvador,
   D7                   G
Vós que tirais o pecado do mundo, acolhei nosso clamor!

   G                    C
3. Só Vós sois o Santo e Altíssimo, com o Espírito Consolador,
   D7                   G
Na glória de Deus Pai para sempre, amém, nosso louvor!'),
  ('mae-do-ceu-morena-pe-zezinho', 'Mãe do Céu Morena', 'Padre Zezinho, scj', 'Final', 'Qualquer', 'D', 82, '3/4', 'Valsa / Guarânia', '↓  ↑ ↓  ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Mãe+do+Céu+Morena+Padre+Zezinho,+scj+cifra', '{"status": "Clássico Mariano para Nossa Senhora Aparecida", "score": 97, "documentRef": "Lumen Gentium 67 / Festa da Padroeira", "biblicalRef": "Lc 1, 48; Ap 12, 1", "justification": "Canto mariano dedicado a Nossa Senhora Aparecida, Padroeira do Brasil, com apenas 4 acordes.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
D                       A7
Mãe do Céu morena, Senhora da América Latina,
Em                      A7                  D
De olhar e caridade tão divina, de cor igual à cor de tantas raças!
D                       A7
Virgem tão serena, Senhora destes povos tão sofridos,
Em                      A7                  D
Patrona dos pequenos e oprimidos, derrama sobre o Brasil as tuas graças!

[Primeira Parte]
   G                                        D
1. Derrama sobre os jovens tua luz, aos pobres vem mostrar o teu Jesus,
   A7                                       D
Ao mundo inteiro traz o teu amor de Mãe!
   G                                        D
Ensina quem tem tudo a partilhar, ensina quem tem pouco a não cansar,
   A7                                       D
E faz o nosso povo caminhar em paz!'),
  ('cantico-de-maria-magnificat-pe-zezinho', 'Cântico de Maria (Meu Espírito Exulta de Alegria)', 'Padre Zezinho, scj', 'Salmo', 'Advento', 'C', 84, '4/4', 'Balada Bíblica', '↓  ↓ ↑  ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Cântico+de+Maria+(Meu+Espírito+Exulta+de+Alegria)+Padre+Zezinho,+scj+cifra', '{"status": "Cântico Evangélico de Nossa Senhora (Magnificat)", "score": 100, "documentRef": "IGMR 61 / Lucas 1, 46-55", "biblicalRef": "Lc 1, 46-55", "justification": "Paráfrase fiel do Magnificat de Maria em Lucas 1, ideal para o Advento e solenidades marianas.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Salmo • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G7  C

[Refrão]
C             Am         Dm          G7
A minh''alma engrandece o Senhor,
Dm            G7         C
E meu espírito exulta em Deus, meu Salvador!

[Estrofes]
   C                     Am          Dm
1. Olhou a humildade de sua serva fiel,
   G7                                C
Doravante as gerações me chamarão bem-aventurada!

   C                     Am          Dm
2. O Poderoso fez em mim maravilhas,
   G7                                C
E Santo, eternamente Santo é o Seu Nome!

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Final] C  F  G7  C'),
  ('paz-inquieta-paz-de-cristo-pe-zezinho', 'Paz, Paz de Cristo', 'Padre Zezinho, scj', 'Ação de Graças', 'Tempo Comum', 'Em', 86, '4/4', 'Balada Comunitária', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Paz,+Paz+de+Cristo+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Fraternidade e Paz", "score": 92, "documentRef": "Estudo 79 CNBB", "biblicalRef": "Jo 14, 27", "justification": "Clássico sobre a verdadeira Paz de Cristo que nos impulsiona à caridade com os irmãos.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
Em                        Am
Paz, paz de Cristo, paz, paz que vem do amor,
B7                        Em
Te desejo, irmão!
Em                        Am
Paz que é a felicidade de ver em você
B7                        Em
Cristo, nosso Irmão!

[Estrofe]
   Am                     D7          G
1. Se algum dia na vida você de mim precisar,
   Am                     B7          Em
Saiba que sou seu amigo, pode comigo contar!

[Segunda Parte]
   D                        G               Em
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   C                        B7              Em
Pois olhou para a pequenez deste humilde servidor;
   G                        Am              D
Recebe a minha entrega, meu louvor e gratidão,
   C                        B7              Em
Permanece para sempre em minha vida e vocação!

[Final] Em  G  B7  Em'),
  ('aguia-pequena-pe-zezinho', 'Águia Pequena', 'Padre Zezinho, scj', 'Ação de Graças', 'Tempo Comum', 'D', 78, '4/4', 'Dedilhado / Balada', '↓  ↓ ↑  ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Águia+Pequena+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Confiança na Providência Divina", "score": 91, "documentRef": "Estudo 79 CNBB / Meditação Pós-Comunhão", "biblicalRef": "Is 40, 31; Sl 90", "justification": "Inspirado em Isaías 40, 31 sobre renovar as forças na presença do Senhor como as águias.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                                        A7
1. Tu me fizeste uma das Tuas criaturas, com ânsia de amar;
   G                    A7                  D
Águia pequena que nasceu para as alturas, com ânsia de voar!

[Refrão]
   G                                        D
E eu percebi que as minhas penas já cresceram,
   A7                                       D      D7
E que eu preciso abrir as asas e tentar!
   G                                        D      Bm
Se eu não tentar, não saberei como se voa,
   Em                   A7                  D
Não foi à toa que eu nasci para voar!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('ilumina-ilumina-pe-zezinho', 'Ilumina, Ilumina', 'Padre Zezinho, scj', 'Entrada', 'Advento', 'Am', 86, '4/4', 'Toada Profética', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Ilumina,+Ilumina+Padre+Zezinho,+scj+cifra', '{"status": "Canto Profético de Luz para Advento e Missão", "score": 95, "documentRef": "IGMR 47 / Isaías 9, 1", "biblicalRef": "Is 9, 1; Jo 8, 12", "justification": "Canto muito utilizado no Advento, Natal e celebrações da Palavra sobre Cristo Luz do Mundo.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Entrada • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Am  Dm  E7  Am

[Primeira Parte]
   Am                                       Dm
1. Meu povo estava no escuro, sem direção a caminhar,
   E7                                       Am
Mas veio a Luz de Jesus Cristo para o meu povo iluminar!

[Refrão]
   A7           Dm          G7              C
Ilumina, ilumina nossos passos, ó Senhor!
   Am           Dm          E7              Am
Ilumina, ilumina nosso mundo com Teu amor!

[Segunda Parte]
   G                        C               Am
2. Nossos passos peregrinos vêm buscar a Tua paz,
   F                        E7              Am
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        Dm              G
Acolhei nossa oração neste dia do Senhor,
   F                        E7              Am
Para a glória de Deus Pai, nosso eterno Criador!

[Final] Am  C  E7  Am'),
  ('de-la-do-interior-pe-zezinho', 'De Lá do Interior', 'Padre Zezinho, scj', 'Entrada', 'Tempo Comum', 'G', 88, '4/4', 'Sertanejo / Toada', '↓  ↓ ↑  ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=De+Lá+do+Interior+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Romaria e Peregrinação", "score": 92, "documentRef": "Diretório sobre Piedade Popular e Liturgia", "biblicalRef": "Sl 121", "justification": "Canto de acolhida dos romeiros e comunidades rurais que sobem ao santuário do Senhor.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                                        D7
1. De lá do interior eu vim, trazendo a minha fé no peito,
   C                    D7                  G
Pra agradecer ao bom Deus tudo o que Ele tem feito!

[Refrão]
   C                                        G
Romeiro da esperança, romeiro do amor,
   D7                                       G
Eu vim cantar na casa do meu Senhor!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Final] G  C  D7  G'),
  ('rosto-de-cristo-como-sao-belos-pe-zezinho', 'Como São Belos os Pés do Mensageiro', 'Padre Zezinho, scj', 'Final', 'Tempo Comum', 'G', 90, '4/4', 'Marcha Missionária', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Como+São+Belos+os+Pés+do+Mensageiro+Padre+Zezinho,+scj+cifra', '{"status": "Canto Bíblico de Envio Missionário", "score": 97, "documentRef": "IGMR 90 / Isaías 52, 7 / Romanos 10, 15", "biblicalRef": "Is 52, 7; Rm 10, 15", "justification": "Canto bíblico clássico para envio missionário, catequistas e ministros da Palavra.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D7  G

[Refrão]
G             Em          C               D7
Como são belos os pés do mensageiro
C             D7          G               D7
Que anuncia a paz!
G             Em          C               D7
Como são belos os pés do mensageiro
C             D7          G
Que anuncia o Senhor!

[Primeira Parte]
   G7                     C               Cm
1. Ele vive, Ele reina, Ele é Deus e Senhor!
   G                      Em              Am      D7      G
O seu Reino de amor e justiça para sempre permanecerá!

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Final] G  C  D7  G'),
  ('cantiga-por-sao-francisco-pe-zezinho', 'Cantiga por São Francisco', 'Padre Zezinho, scj', 'Comunhão', 'Tempo Comum', 'C', 82, '4/4', 'Balada Franciscana', '↓  ↓ ↑  ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Cantiga+por+São+Francisco+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Espiritualidade Franciscana e Fraternidade", "score": 94, "documentRef": "Estudo 79 CNBB", "biblicalRef": "Mt 5, 3-12", "justification": "Canto inspirado no testemunho evangélico de São Francisco de Assis.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                      Am              Dm          G7
1. O mundo precisa de paz, o mundo precisa de amor,
   Dm                     G7              C
E de gente que saiba seguir o Evangelho de Nosso Senhor!

[Refrão]
   F                      G7              C           Am
Irmão Sol, Irmã Lua, clareia a nossa estrada,
   Dm                     G7              C
Que a exemplo de São Francisco reconstruamos a Tua morada!

[Segunda Parte]
   Am                       F               C
2. Mistério da fé divina que nos une em um só Corpo,
   Dm                       G7              C
Penhor da vida futura e do nosso eterno conforto;
   F                        G               Am
Fazei de nós, ó Jesus, testemunhas da caridade,
   Dm                       G7              C
Repartindo com os pobres o Pão da fraternidade!

[Final] C  F  G7  C'),
  ('amar-e-doar-se-pe-zezinho', 'Amar É Doar-se', 'Padre Zezinho, scj', 'Ofertório', 'Tempo Comum', 'G', 78, '4/4', 'Balada Suave', '↓  ↓ ↑  ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Amar+É+Doar-se+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Ofertório e Doação Cristã", "score": 94, "documentRef": "IGMR 74", "biblicalRef": "Jo 15, 13", "justification": "Canto de apresentação das oferendas focado na entrega generosa da vida.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  Am  D7  G

[Refrão]
G             Em          Am              D7
Amar é doar-se sem medir o que se dá,
Am            D7          G
É fazer da própria vida um eterno ofertar!

[Estrofe]
   C                      D7              G           Em
1. Com o pão e com o vinho colocamos no altar
   Am                     D7              G
Nossa lida, nosso sonho e a vontade de amar!

[Segunda Parte]
   Em                       C               G
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Am                       D7              G
As alegrias e esperanças que trazemos no coração;
   C                        D7              Em
Pela força do Espírito Santo santificai estes dons,
   Am                       D7              G
Sacrifício de louvor pelos nossos irmãos!

[Final] G  C  D7  G'),
  ('noites-traicoeiras-pe-marcelo-rossi', 'Noites Traiçoeiras (Deus Está Aqui Neste Momento)', 'Padre Marcelo Rossi / Carlos Papae', 'Ação de Graças', 'Qualquer', 'G', 74, '4/4', 'Balada / Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Noites+Traiçoeiras+(Deus+Está+Aqui+Neste+Momento)+Padre+Marcelo+Rossi+cifra', '{"status": "Clássico de Adoração, Consolação e Ação de Graças", "score": 92, "documentRef": "Estudo 79 CNBB / Piedade Popular e Adoração", "biblicalRef": "Sl 29, 6; Mt 28, 20", "justification": "Uma das músicas católicas mais acessadas no Cifra Club; indicada para momentos de adoração, grupo de oração e ação de graças.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  Bm  C  D7  G

[Primeira Parte]
   G                        Bm
1. Deus está aqui neste momento,
   C                        D7              G
Sua presença é real em meu viver;
   G                        Bm
Entregue sua vida e seus problemas,
   C                        D7              G
Fale com Deus, Ele vai ajudar você!

[Segunda Parte]
   Em                       Bm
Oh, oh, Deus te trouxe aqui
   C                        D7              G
Para aliviar os teus sofrimentos;
   Em                       Bm
É Ele o autor da fé,
   C                        D7              G     G7
Do princípio ao fim, em todos os teus momentos!

[Refrão]
   C                        D7
E ainda se vier noites traiçoeiras,
   G                        Em
Se a cruz pesada for, Cristo estará contigo!
   Am                       D7
O mundo pode até fazer você chorar,
   G                        G7
Mas Deus te quer sorrindo! (2x)'),
  ('erguei-as-maos-pe-marcelo-rossi', 'Erguei as Mãos', 'Padre Marcelo Rossi', 'Final', 'Tempo Comum', 'A', 118, '4/4', 'Pop Louvor / Animado', '↓ ↑ ↓ ↑  ↓ ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Erguei+as+Mãos+Padre+Marcelo+Rossi+cifra', '{"status": "Clássico de Louvor Comunitário e Catequese Infantil", "score": 90, "documentRef": "Diretório de Missas com Crianças / Louvor Comunitário", "biblicalRef": "Sl 133, 2; Gn 12, 1-3", "justification": "Apenas 3 acordes (A, D, E), super simples no violão, ideal para encontros, catequese infantil e encerramento festivo.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] A  D  E  A

[Refrão]
   A                        D
Erguei as mãos e dai glória a Deus!
   E                        A
Erguei as mãos e dai glória a Deus!
   F#m                      Bm
Erguei as mãos e cantai como os filhos do Senhor!

[Primeira Parte]
   A                        D
1. Os animalzinhos subiram de dois em dois,
   E                        A
Os animalzinhos subiram de dois em dois:
   F#m                      Bm
O elefante e os passarinhos,
   E                        A
Como os filhos do Senhor!

[Segunda Parte]
   A                        D
2. O senhor Noé construiu uma arca,
   E                        A
O senhor Noé construiu uma arca:
   F#m                      Bm
Porque Deus falou que ia chover,
   E                        A
Como os filhos do Senhor!'),
  ('anjos-de-deus-pe-marcelo-rossi', 'Anjos de Deus (Se Acontecer um Barulho)', 'Padre Marcelo Rossi / Elizeu Gomes', 'Final', 'Tempo Comum', 'D', 110, '4/4', 'Country / Louvor', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Anjos+de+Deus+(Se+Acontecer+um+Barulho)+Padre+Marcelo+Rossi+cifra', '{"status": "Cântico de Louvor e Devoção aos Santos Anjos", "score": 90, "documentRef": "Piedade Popular / Grupo de Oração", "biblicalRef": "Sl 90, 11; Gn 28, 12", "justification": "Cifra clássica de 3 acordes (D, A, G) que se repete do início ao fim da música!", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  G  D

[Primeira Parte]
   D                                        A
1. Se acontecer um barulho perto de você,
                                            G
É um anjo chegando para receber
                                            D     A
Suas orações e levá-las a Deus!

   D                                        A
2. Então abra o coração e comece a louvar,
                                            G
Sinta o gozo do céu se derrama no altar,
                                            D     A
Que um anjo já vem com a bênção nas mãos!

[Refrão]
   D                                        A
Tem anjos voando neste lugar,
                                            G
No meio do povo e em cima do altar,
                                            D     A
Subindo e descendo em todas as direções!
   D                                        A
Não sei se a Igreja subiu ou se o Céu desceu,
                                            G
Só sei que está cheio de anjos de Deus,
            A                               D
Porque o próprio Deus está aqui!'),
  ('basta-querer-pe-marcelo-rossi', 'Basta Querer (Meu Pensamento Vive em Você)', 'Padre Marcelo Rossi / Jorge Guedes', 'Ação de Graças', 'Tempo Comum', 'G', 76, '4/4', 'Balada Romântica Sacra', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Basta+Querer+(Meu+Pensamento+Vive+em+Você)+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Intimidade com Cristo e Pós-Comunhão", "score": 93, "documentRef": "Estudo 79 CNBB / Ação de Graças", "biblicalRef": "Ap 3, 20; Sl 26", "justification": "Sucesso absoluto nas paróquias com 4 acordes simples (G, D, Em, C) para o momento de ação de graças.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C  G  D

[Primeira Parte]
   G                        D
1. Meu pensamento vive em Você,
   Em                       Bm
A luz do meu viver, Senhor;
   C                        G
Basta entrar, e eu me abrir
   Am                       D7
Pra Te amar, nem precisa perguntar: Te amo!

   G                        D
2. Há um clima todo diferente
   Em                       Bm
Que aquece e mexe com o coração da gente!

[Refrão]
   C                        D
É como um sonho, é como um sonho:
   G                        Em
Eu me dou por inteiro, Teu é o meu coração!
   C                        D
E ao Teu lado, eu sempre sigo,
   G                        Em
Já não há mais talvez, basta querer pra Te ver
   C            D           G
Outra vez, outra vez!'),
  ('quero-te-dar-a-paz-pe-marcelo-rossi', 'Paz (Quero Te Dar a Paz do Meu Senhor)', 'Padre Marcelo Rossi', 'Ação de Graças', 'Qualquer', 'G', 84, '4/4', 'Balada Fraterna', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Paz+(Quero+Te+Dar+a+Paz+do+Meu+Senhor)+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Fraternidade e Abraço da Paz", "score": 92, "documentRef": "Estudo 79 CNBB", "biblicalRef": "Jo 14, 27; Rm 12, 10", "justification": "Progressão clássica G – Em – C – D7 extremamente fácil para iniciantes.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  Em  C  D7  G

[Refrão]
   G                        Em
Quero te dar a paz do meu Senhor
   C                        D7
Com muito amor! (2x)

[Primeira Parte]
   G                        Em
1. Na flor vejo manifestar o poder da criação,
   C                        D7
Nos teus lábios eu vejo estar o sorriso de um irmão!
   G                        Em
Toda vez que eu te abraço e aperto a tua mão,
   C                        D7              G
Sinto forte o poder do amor dentro do meu coração!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('sonda-me-pe-marcelo-rossi', 'Sonda-me, Senhor, e Me Conhece (Salmo 138)', 'Padre Marcelo Rossi', 'Ato Penitencial', 'Quaresma', 'Em', 72, '4/4', 'Dedilhado / Oração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sonda-me,+Senhor,+e+Me+Conhece+(Salmo+138)+Padre+Marcelo+Rossi+cifra', '{"status": "Oração Salmódica de Exame de Consciência (Salmo 138)", "score": 97, "documentRef": "IGMR 51 / Salmo 138 (139)", "biblicalRef": "Sl 138, 1-24", "justification": "Paráfrase orante do Salmo 138 (''Senhor, vós me sondais e conheceis''), ideal para recolhimento e penitência.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  D7  G  B7

[Primeira Parte]
   Em                                      Am
1. Senhor, eu sei que Tu me sondas,
   D7                                      G       B7
Sei também que me conheces;
   Em                                      Am
Se me assento ou me levanto,
   B7                                      Em
Conheces meus pensamentos!

   Em                                      Am
2. Quer deitado ou quer andando,
   D7                                      G       B7
Sabes todos os meus passos;
   Em                                      Am
E antes que haja em mim palavras,
   B7                                      Em      E7
Sei que em tudo me conheces!

[Refrão]
   Am                       D7
Senhor, eu sei que Tu me sondas!
   G                        Em
Senhor, eu sei que Tu me sondas!
   Am                       B7
Senhor, eu sei que Tu me sondas,
   Em
Deus de amor!'),
  ('forca-e-vitoria-pe-marcelo-rossi', 'Força e Vitória (Todo Joelho Se Dobrará)', 'Padre Marcelo Rossi / Eliana Ribeiro', 'Ação de Graças', 'Tempo Comum', 'Bm', 78, '4/4', 'Balada Forte', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Força+e+Vitória+(Todo+Joelho+Se+Dobrará)+Padre+Marcelo+Rossi+cifra', '{"status": "Hino Bíblico de Exaltação de Cristo Senhor (Filipenses 2)", "score": 96, "documentRef": "Cântico de Filipenses 2, 10-11", "biblicalRef": "Fl 2, 9-11; Rm 8, 37", "justification": "Baseado no hino cristológico de Filipenses 2 (''Todo joelho se dobrará e toda língua proclamará que Jesus Cristo é o Senhor'').", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Bm  G  Em  F#7

[Primeira Parte]
   Bm                                      G
1. Todo joelho se dobrará, e toda língua proclamará
   Em                                      F#7
Que Jesus Cristo é o Senhor! (2x)

[Pré-Refrão]
   Em                       Bm
Nada poderá me abalar,
   Em                       Bm
Nada poderá me derrotar,
   G                        Em              F#7
Pois minha força e vitória tem um nome: é Jesus!

[Refrão]
   Bm                       G
Quero viver Tua Palavra,
   D                        A
Quero ser cheio do Teu Espírito,
   Em                       G               F#7         Bm
Mas só Te peço, livra-me do mal!'),
  ('a-minha-vida-e-do-mestre-pe-marcelo-rossi', 'Meu Mestre (A Minha Vida É do Mestre)', 'Padre Marcelo Rossi', 'Ofertório', 'Tempo Comum', 'G', 80, '4/4', 'Balada de Entrega', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Meu+Mestre+(A+Minha+Vida+É+do+Mestre)+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Entrega e Consagração a Cristo", "score": 94, "documentRef": "Estudo 79 CNBB", "biblicalRef": "Rm 14, 8; Mc 4, 39", "justification": "Quatro acordes abertos (G, Em, C, D) sobre pertencer inteiramente a Cristo, Mestre do mar e da vida.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D  G

[Refrão]
   G                        Em
A minha vida é do Mestre, meu coração é do meu Mestre,
   C                        Am              D
O meu caminho é do Mestre, minha esperança é meu Mestre!

[Primeira Parte]
   G                        Em
1. A Deus eu entreguei o barco do meu ser,
   C                        D
E entrei no mar afora pra navegar;
   G                        Em
Não temo mais as ondas que vêm me açoitar,
   C                        D               G
Pois o meu Mestre está comigo a governar!

[Segunda Parte]
   Em                       C               G
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Am                       D7              G
As alegrias e esperanças que trazemos no coração;
   C                        D7              Em
Pela força do Espírito Santo santificai estes dons,
   Am                       D7              G
Sacrifício de louvor pelos nossos irmãos!

[Final] G  C  D7  G'),
  ('derrama-o-teu-amor-aqui-pe-marcelo-rossi', 'Derrama o Teu Amor Aqui', 'Padre Marcelo Rossi / Celina Borges', 'Entrada', 'Pentecostes', 'G', 92, '4/4', 'Pop Rock Litúrgico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Derrama+o+Teu+Amor+Aqui+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Invocação do Amor de Deus e Fraternidade", "score": 94, "documentRef": "Rm 5, 5 / Pentecostes e Encontros", "biblicalRef": "Rm 5, 5; Ef 5, 14", "justification": "Quatro acordes (G, D, Em, C) em progressão universal, muito fácil e vibrante.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Entrada • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C  (2x)

[Primeira Parte]
   G                        D               Em          C
1. Senhor, eu quero obedecer a Tua voz,
   G                        D               Em          C
Derrama o Teu Espírito sobre todos nós!
   G                        D               Em          C
Senhor, eu quero mergulhar, me comprometer,
   G                        D               Em          C
Entrar na intimidade do Teu coração, derrama em nós Tua unção!

[Refrão]
   G                        D
Derrama o Teu amor aqui!
   Em                       C
Derrama o Teu amor aqui!
   G                        D
Faz chover sobre nós Água Viva! (2x)'),
  ('senhor-poe-teus-anjos-aqui-pe-marcelo-rossi', 'Senhor, Põe Teus Anjos Aqui', 'Padre Marcelo Rossi', 'Entrada', 'Tempo Comum', 'D', 88, '4/4', 'Balada / Oração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Senhor,+Põe+Teus+Anjos+Aqui+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Abertura para Grupos de Oração e Encontros", "score": 91, "documentRef": "Sl 90, 11 / Piedade Popular", "biblicalRef": "Sl 90, 11-12; Sl 33, 8", "justification": "Apenas 3 acordes (D, Em, A7) para abrir encontros paroquiais e vigílias.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A7  D

[Refrão]
   D                                        Em
Senhor, põe Teus anjos aqui!
   A7                                       D
Senhor, põe Teus anjos aqui!
   D7                                       G
Com a espada desembainhada, Senhor, põe Teus anjos aqui!
   D                        A7              D
Não deixe que o inimigo esccarneça e zombe de nós!

[Estrofe]
   G                        A7              D
1. Cobre, Senhor, com Teu Sangue precioso este lugar,
   Em                       A7              D
E envia São Miguel Arcanjo para nos guardar!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('cura-senhor-onde-doi-pe-marcelo-rossi', 'Cura, Senhor, Onde Dói', 'Padre Marcelo Rossi / Pe. Antônio Maria', 'Ação de Graças', 'Tempo Comum', 'C', 70, '4/4', 'Dedilhado / Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, false, 5, 'https://www.youtube.com/results?search_query=Cura,+Senhor,+Onde+Dói+Padre+Marcelo+Rossi+cifra', '{"status": "Oração de Cura Interior e Adoração Eucarística", "score": 93, "documentRef": "Adoração ao Santíssimo / Missas pelos Enfermos", "biblicalRef": "Mt 8, 17; Is 53, 4", "justification": "Canto profundamente contemplativo para adoração ao Santíssimo Sacramento e bênção dos enfermos.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G/B  Am  F  Dm  G7

[Primeira Parte]
   C                        G/B             Am
1. Vamos, Jesus, passear na minha vida,
   F                        Dm              G7
Quero voltar aos lugares em que fiquei só;
   C                        G/B             Am
Quero voltar lá contigo, vendo que estavas comigo,
   F                        G7              C      C7
Quero sentir Teu amor a me embalar!

[Refrão]
   F                        G7              C      Am
Cura, Senhor, onde dói! Cura, Senhor, bem aqui!
   Dm                       G7              C      C7
Cura, Senhor, onde eu não posso ir!
   F                        G7              C      Am
Quando a lembrança me faz adormecer,
   Dm                       G7              C
Sabes que a espada de dor entra em meu ser;
   F                        G7              C
Tu me carrega nos braços, leva-me com Teu abraço,
   Dm                       G7              C
Sinto minha alma a chorar junto de Ti!'),
  ('maria-da-minha-infancia-pe-marcelo-rossi', 'Maria da Minha Infância (Eu Era Pequeno, Nem Me Lembro)', 'Padre Marcelo Rossi / Padre Zezinho, scj', 'Final', 'Qualquer', 'D', 82, '4/4', 'Balada Mariana', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Maria+da+Minha+Infância+(Eu+Era+Pequeno,+Nem+Me+Lembro)+Padre+Marcelo+Rossi+cifra', '{"status": "Clássico Mariano Consagrado (Composto por Pe. Zezinho e gravado por Pe. Marcelo)", "score": 97, "documentRef": "Lumen Gentium 67 / Devoção Mariana", "biblicalRef": "Lc 1, 28.42", "justification": "Apenas 4 acordes (D, Em, A7, G) na canção mariana que marcou gerações na Igreja do Brasil.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A7  D

[Primeira Parte]
   D                                        Em
1. Eu era pequeno, nem me lembro,
   A7                                       D
Só lembro que à noite, ao pé da cama,
   D7                                       G
Juntava as mãozinhas e rezava apressado,
   A7                                       D
Mas rezava como alguém que ama!

   D                                        Em
2. Nas Ave-Marias que eu rezava,
   A7                                       D
Eu sempre engolia umas palavras,
   D7                                       G
E muito cansado acabava dormindo,
   A7                                       D
Mas dormia como quem amava!

[Refrão]
   G                                        D
Ave Maria, Mãe de Jesus,
   A7                                       D      D7
O tempo passa, não volta mais!
   G                                        D      Bm
Tenho saudades daquele tempo
   Em                       A7              D
Que eu te chamava de minha Mãe!
   G                                        D      Bm
Ave Maria, Mãe de Jesus,
   Em                       A7              D
Ave Maria, Mãe de Jesus!'),
  ('reunidos-aqui-pe-marcelo-rossi', 'Reunidos Aqui Só Pra Louvar o Senhor', 'Padre Marcelo Rossi / Tradicional Carismático', 'Entrada', 'Tempo Comum', 'G', 96, '4/4', 'Marcha Alegre', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Reunidos+Aqui+Só+Pra+Louvar+o+Senhor+Padre+Marcelo+Rossi+cifra', '{"status": "Canto Curto e Simples de Acolhida Comunitária", "score": 94, "documentRef": "IGMR 47 / Mt 18, 20", "biblicalRef": "Mt 18, 20; Sl 132, 1", "justification": "Três acordes básicos (G, C, D7) — excelente para iniciantes no violão abrirem celebrações.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                                        D7
Reunidos aqui só pra louvar o Senhor,
   C                        D7              G     G7
Novamente aqui, em união!

[Refrão]
   C                                        G
Algo bom vai acontecer,
   D7                                       G     G7
Algo bom Deus tem para nós!
   C                                        G     Em
Reunidos aqui só pra louvar o Senhor,
   Am                       D7              G
Novamente aqui, em união!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Final] G  C  D7  G'),
  ('tudo-e-do-pai-pe-marcelo-rossi', 'Tudo É do Pai (Eu Pensava Que Podia Viver Por Mim Mesmo)', 'Padre Marcelo Rossi / Frederico Cruz', 'Ação de Graças', 'Quaresma', 'G', 74, '4/4', 'Balada / Dedilhado', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tudo+É+do+Pai+(Eu+Pensava+Que+Podia+Viver+Por+Mim+Mesmo)+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Humildade, Gratidão e Retorno ao Pai", "score": 95, "documentRef": "Estudo 79 CNBB / Parábola do Filho Pródigo", "biblicalRef": "Lc 15, 11-32; Tg 1, 17", "justification": "Canto emocionante inspirado na parábola do Filho Pródigo e no reconhecimento de que toda graça vem de Deus.", "repertoireType": "popular", "specialDay": "Quaresma e CF", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C  D7  G

[Primeira Parte]
   G                        D               Em
1. Eu pensava que podia viver por mim mesmo,
   C                        Am              D7
Eu pensava que as coisas do mundo não iriam me derrubar;
   G                        D               Em
O orgulho tomou conta do meu ser,
   C                        Am              D7
E o pecado devastou o meu viver!

   C                        D7              G       Em
2. Fui embora, disse ao Pai: "Dá-me o que é meu!"
   Am                       D7              G       G7
Dá-me a parte que me cabe da herança!
   C                        D7              G       Em
Fui pro mundo, gastei tudo, me restou só o pecado,
   Am                       D7              G
Hoje eu sei que nada é meu, tudo é do Pai!

[Refrão]
   G                        D               Em
Tudo é do Pai! Toda honra e toda glória!
   C                        Am              D7
É Dele a vitória alcançada em minha vida!
   G                        D               Em
Tudo é do Pai! Se sou fraco e pecador,
   C                        D7              G
Bem mais forte é o meu Senhor, que me cura por amor!'),
  ('batiza-me-senhor-no-teu-espirito-pe-marcelo', 'Batiza-me, Senhor, no Teu Espírito (Vem, Espírito Santo)', 'Padre Marcelo Rossi / Tradicional', 'Comunhão', 'Pentecostes', 'Em', 78, '4/4', 'Balada Orante', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Batiza-me,+Senhor,+no+Teu+Espírito+(Vem,+Espírito+Santo)+Padre+Marcelo+Rossi+cifra', '{"status": "Canto Clássico de Crisma e Pentecostes", "score": 95, "documentRef": "Ritual da Confirmação / Pentecostes", "biblicalRef": "At 2, 1-4; Jo 20, 22", "justification": "Um dos cânticos ao Espírito Santo mais fáceis do repertório católico (Em, B7, Am, D7, G).", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  B7  Em

[Primeira Parte]
   Em                                      B7
1. Batiza-me, Senhor, no Teu Espírito,
                                            Em
Batiza-me, Senhor, no Teu Espírito,
                                            B7
Batiza-me, Senhor, no Teu Espírito,
   Am                       B7              Em      E7
E deixa-me sentir Teu fogo de amor, aqui no coração, Senhor!

[Refrão]
   Am                       D7              G       Em
Vem, Espírito Santo, vem sobre nós,
   Am                       B7              Em      E7
Como em Pentecostes, vem sobre nós!
   Am                       D7              G       Em
Transforma-me, Senhor, ilumina-me, Senhor,
   Am                       B7              Em
Inunda-me, Senhor, no Teu amor!'),
  ('seja-engrandecido-pe-marcelo-rossi', 'Seja Engrandecido', 'Padre Marcelo Rossi / Guilherme Kerr', 'Glória', 'Tempo Comum', 'G', 94, '4/4', 'Louvor Alegre', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Seja+Engrandecido+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Louvor e Exaltação a Deus", "score": 91, "documentRef": "Encontros e Grupos de Oração", "biblicalRef": "Sl 33, 4; Sl 144", "justification": "Quatro acordes abertos (G, Bm/Em, C, D7) muito fáceis de tocar.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Glória • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D7  G

[Primeira Parte]
   G                                        Em
1. Seja engrandecido, ó Deus da minha vida,
   C                        Am              D7
Tu és o meu Rochedo e a minha salvação!
   G                                        Em
És a minha rocha, a minha segurança,
   C                        D7              G     G7
És a minha paz, és o meu Senhor!

[Refrão]
   C                        D7              G     Em
Aleluia, aleluia, aleluia,
   Am                       D7              G     G7
Louvemos ao Senhor!
   C                        D7              G     Em
Aleluia, aleluia, aleluia,
   Am                       D7              G
Para sempre, amém!'),
  ('pai-nosso-pe-marcelo-rossi', 'Pai Nosso (Padre Marcelo Rossi)', 'Padre Marcelo Rossi', 'Cordeiro de Deus', 'Qualquer', 'G', 72, '4/4', 'Balada Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pai+Nosso+(Padre+Marcelo+Rossi)+Padre+Marcelo+Rossi+cifra', '{"status": "Oração Dominical (Observação Litúrgica Inclusa)", "score": 90, "documentRef": "IGMR 81 / Mateus 6, 9-13", "biblicalRef": "Mt 6, 9-13", "justification": "Melodia muito conhecida do Pai Nosso em 4 acordes (G, Em, C, D). Na Missa, observar sempre a letra oficial do Missal Romano.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Cordeiro de Deus • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D  G

[Primeira Parte]
   G                        Em
Pai nosso que estais no céu,
   C                        D
Santificado seja o Vosso nome,
   G                        Em
Venha a nós o Vosso Reino,
   C                        D
Seja feita a Vossa vontade,
   C                        D               G       Em
Assim na terra como no céu!

[Segunda Parte]
   G                        Em
O pão nosso de cada dia nos dai hoje,
   C                        D
Perdoai-nos as nossas ofensas,
   G                        Em
Assim como nós perdoamos a quem nos tem ofendido;
   C                        D               G       Em
E não nos deixeis cair em tentação,
   C            D           G
Mas livrai-nos do mal. Amém!'),
  ('quem-e-esta-que-avanca-como-a-aurora-pe-marcelo', 'Quem É Esta Que Avança Como a Aurora', 'Padre Marcelo Rossi / Cântico dos Cânticos 6,10', 'Final', 'Qualquer', 'G', 92, '4/4', 'Balada Mariana', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Quem+É+Esta+Que+Avança+Como+a+Aurora+Padre+Marcelo+Rossi+cifra', '{"status": "Antífona Bíblica Mariana (Cântico dos Cânticos 6, 10)", "score": 98, "documentRef": "Liturgia das Horas / Festas Marianas", "biblicalRef": "Ct 6, 10", "justification": "Apenas 3 acordes (G, C, D) com texto 100% bíblico extraído do Cântico dos Cânticos.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D  G

[Primeira Parte]
   G                                        C
Quem é esta que avança como a aurora,
   D                                        G
Temível como exército em ordem de batalha?
   G                                        C
Brilhante como o sol e como a lua,
   D                                        G
Mostrando o caminho aos filhos teus?

[Refrão]
   G                                        C
Ah, minha alma glorifica ao Senhor,
   D                                        G
Meu espírito exulta em Deus, meu Salvador! (2x)

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Final] G  C  D7  G'),
  ('eu-navegarei-pe-marcelo-rossi', 'Eu Navegarei no Oceano do Espírito', 'Padre Marcelo Rossi / Adoração', 'Ação de Graças', 'Pentecostes', 'Am', 74, '4/4', 'Balada Contemplativa', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+Navegarei+no+Oceano+do+Espírito+Padre+Marcelo+Rossi+cifra', '{"status": "Canto Clássico de Adoração e Invocação do Espírito Santo", "score": 93, "documentRef": "Vigílias de Pentecostes e Adoração", "biblicalRef": "Ez 47, 1-9; Jo 4, 24", "justification": "Ciclo fixo de 4 acordes (Am, G, F, E7) que se repete na música inteira — campeão de acessos no Cifra Club!", "repertoireType": "popular", "specialDay": "Pentecostes", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Am  G  F  E7

[Primeira Parte]
   Am                                       G
1. Eu navegarei no oceano do Espírito,
   F                                        E7
E ali adorarei ao Deus do meu amor!
   Am                                       G
Eu adorarei ao Deus da minha vida,
   F                                        E7
Que me compreendeu sem nenhuma explicação!

[Refrão]
   Am                                       G
Espírito, Espírito, que desce como fogo,
   F                                        E7
Vem como em Pentecostes e enche-me de novo! (2x)

[Segunda Parte]
   G                        C               Am
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   F                        E7              Am
Pois olhou para a pequenez deste humilde servidor;
   C                        Dm              G
Recebe a minha entrega, meu louvor e gratidão,
   F                        E7              Am
Permanece para sempre em minha vida e vocação!

[Final] Am  C  E7  Am'),
  ('espirito-enche-a-minha-vida-pe-marcelo', 'Espírito, Enche a Minha Vida', 'Padre Marcelo Rossi', 'Entrada', 'Pentecostes', 'C', 78, '4/4', 'Balada / Oração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Espírito,+Enche+a+Minha+Vida+Padre+Marcelo+Rossi+cifra', '{"status": "Oração ao Espírito Santo", "score": 94, "documentRef": "Efésios 5, 18 / Crisma e Pentecostes", "biblicalRef": "Ef 5, 18; Gl 5, 22", "justification": "Clássico de invocação ao Espírito Santo em Dó maior.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Entrada • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                        G               Am
1. Reunidos como Igreja ao redor do Teu altar,
   F                        Dm              G7
Atendemos ao chamado para juntos celebrar;
   C                        G               Am
Tua graça nos acolhe, Tua luz nos faz irmãos,
   F                        G7              C
Entoando com alegria este canto de união!

[Refrão]
   C                        F               G7
Espírito, enche a minha vida,
   Em                       Am
Enche-me do Teu poder,
   Dm                       G7              C      C7
Pois de Ti eu quero ser!
   F                        G7              Em     Am
Espírito, enche o meu ser!
   Dm                       G7              C
As minhas mãos eu quero levantar, e em louvor Te adorar!

[Segunda Parte]
   Am                       F               C
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Dm                       G7              C
Na assembleia santa e viva que o Teu Espírito refaz;
   F                        G               Am
Acolhei nossa oração neste dia do Senhor,
   Dm                       G7              C
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   C                        F               G7
Espírito, enche a minha vida,
   Em                       Am
Enche-me do Teu poder,
   Dm                       G7              C      C7
Pois de Ti eu quero ser!
   F                        G7              Em     Am
Espírito, enche o meu ser!
   Dm                       G7              C
As minhas mãos eu quero levantar, e em louvor Te adorar!

[Final] C  F  G7  C'),
  ('te-agradeco-pe-marcelo-rossi', 'Te Agradeço (Por Tudo o Que Tens Feito)', 'Padre Marcelo Rossi', 'Ação de Graças', 'Qualquer', 'G', 84, '4/4', 'Balada de Gratidão', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Te+Agradeço+(Por+Tudo+o+Que+Tens+Feito)+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Ação de Graças", "score": 94, "documentRef": "1Ts 5, 18 / Ação de Graças", "biblicalRef": "1Ts 5, 18; Sl 102", "justification": "Apenas 4 acordes (G, D, Em, C) para agradecer a Deus após a Comunhão.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D
1. Por tudo o que tens feito, por tudo o que vais fazer,
   Em                       C
Por Tuas promessas e tudo o que és,
   G                        D
Eu quero Te agradecer com todo o meu ser!

[Refrão]
   C                        G
Te agradeço, meu Senhor!
   C                        G
Te agradeço, meu Senhor!
   G                        D               Em
Te agradeço por me libertar e salvar,
   C                        D               G
Por ter morrido em meu lugar: Te agradeço!'),
  ('a-ele-a-gloria-eugenio-jorge', 'A Ele a Glória (Alfa, Ômega, Princípio e Fim)', 'Eugênio Jorge / Ministério Missão Mensagem Brasil', 'Ação de Graças', 'Qualquer', 'Em', 72, '4/4', 'Adoração Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Ele+a+Glória+(Alfa,+Ômega,+Princípio+e+Fim)+Eugênio+Jorge+cifra', '{"status": "Doxologia Bíblica Paulina (Romanos 11, 36)", "score": 99, "documentRef": "Romanos 11, 36 / Apocalipse 1, 8", "biblicalRef": "Rm 11, 36; Ap 1, 8", "justification": "Texto 100% bíblico extraído de Romanos 11, 36 (''Porque Dele, por Ele e para Ele são todas as coisas. A Ele a glória!'') com apenas 4 acordes (Em, C, D, G).", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Em  C  D  Em

[Primeira Parte]
   Em                                       C
Alfa, Ômega, Princípio e Fim,
   D                                        G       B7
Sim, Ele é! Sim, Ele é! (2x)
   Em                                       C
Lírio do Vale, Estrela da Manhã,
   D                                        Em
Para sempre cantarei o Seu louvor!

[Refrão]
   C                        D
A Ele a glória, a Ele o louvor,
   G                        Em
A Ele o domínio, Ele é o Senhor!
   C                        D
A Ele a glória, a Ele o louvor,
   B7                       Em
A Ele o domínio, Ele é o Senhor!

[Ponte Bíblica - Romanos 11,36]
   C                        D
Porque Dele, por Ele, para Ele são todas as coisas!
   G                        Em
Porque Dele, por Ele, para Ele são todas as coisas!'),
  ('so-por-ti-jesus-eugenio-jorge', 'Só Por Ti, Jesus (Quero Me Consumir)', 'Eugênio Jorge / Canção Nova', 'Ofertório', 'Qualquer', 'D', 70, '4/4', 'Dedilhado Contemplativo', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Só+Por+Ti,+Jesus+(Quero+Me+Consumir)+Eugênio+Jorge+cifra', '{"status": "Clássico de Adoração, Ofertório e Consagração Sacerdotal", "score": 98, "documentRef": "IGMR 74 / Adoração Eucarística", "biblicalRef": "Fl 2, 17; Sl 62", "justification": "Um dos cânticos mais belos e litúrgicos da música católica brasileira, muito usado em ordenações, adoração e ofertório.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  Em  A7  D

[Primeira Parte]
   D                        G               A7          Bm
1. Só por Ti, Jesus, quero me consumir,
   G                        Em              A7
Como vela que queima no altar, me consumir de amor!
   D                        G               A7          Bm
Só em Ti, Jesus, quero me derramar,
   G                        Em              A7          D      D7
Como o rio se entrega ao mar, me derramar de amor!

[Refrão]
   G                        A7
Pois Tu és o meu amparo, o meu refúgio,
   F#m                      Bm
És alegria de minh''alma!
   G                        A7
Só em Ti repousa a minha esperança,
   F#m                      Bm
Não vacilarei, e mesmo na dor,
   Em                       A7              D
Quero seguir até o fim!'),
  ('ninguem-te-ama-como-eu-martin-valverde', 'Ninguém Te Ama Como Eu', 'Martín Valverde / Eugênio Jorge', 'Ação de Graças', 'Quaresma', 'C', 68, '4/4', 'Balada / Dedilhado', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Ninguém+Te+Ama+Como+Eu+Martín+Valverde+cifra', '{"status": "Clássico de Contemplação da Cruz e Pós-Comunhão", "score": 96, "documentRef": "Sexta-Feira da Paixão / Ação de Graças", "biblicalRef": "Jo 15, 13; Gl 2, 20", "justification": "Quatro acordes universais (C, G/B, Am, F, G7) meditando o amor supremo de Cristo na Cruz.", "repertoireType": "popular", "specialDay": "Quaresma e CF", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F  Dm  G7

[Primeira Parte]
   C                        G               Am
1. Tenho esperado este momento,
   F                        Dm              G7
Tenho esperado que viesses a mim;
   C                        G               Am
Tenho esperado que me fales,
   F                        Dm              G7
Tenho esperado que estivesses assim!
   C                        G               Am
Eu sei bem o que tens vivido,
   F                        Dm              G7
Sei também que tens chorado;
   C                        G               Am
Eu sei bem que tens sofrido,
   F                        G7              C      G7
Pois permaneço ao teu lado!

[Refrão]
   C                        G               Am
Ninguém te ama como Eu!
   F                        Dm              G7
Ninguém te ama como Eu!
   C                        E7              Am
Olhe pra Cruz, esta é a minha grande prova:
   F                        G7              C
Ninguém te ama como Eu!'),
  ('chuva-de-graca-eliana-ribeiro', 'Chuva de Graça', 'Eliana Ribeiro / Canção Nova', 'Entrada', 'Pentecostes', 'G', 82, '4/4', 'Balada Carismática', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Chuva+de+Graça+Eliana+Ribeiro+cifra', '{"status": "Canto de Efusão do Espírito Santo (4 Acordes Fixos)", "score": 93, "documentRef": "Ez 34, 26 / Pentecostes", "biblicalRef": "Ez 34, 26; Jl 3, 1", "justification": "Usa exatamente os mesmos 4 acordes (G, D, Em, C) do início ao fim da música! Perfeita para iniciantes.", "repertoireType": "popular", "specialDay": "Pentecostes", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C  (2x)

[Primeira Parte]
   G                        D
1. Há uma chuva de graça aqui,
   Em                       C
Está chovendo sobre todos nós,
   G                        D
E quem mais se entregar,
   Em                       C
Mais se molhará!

   G                        D
2. Há uma semente pra germinar,
   Em                       C
E muitos frutos a se produzir,
   G                        D
Na terra do coração
   Em                       C
Derrama Tua graça!

[Refrão]
   G                        D
Chuva de graça pedimos a Ti,
   Em                       C
Chuva de graça derrama em nós!
   G                        D
Chuva de graça neste lugar,
   Em                       C               G
Derrama!'),
  ('barco-a-vela-eliana-ribeiro', 'Barco a Vela', 'Eliana Ribeiro / Canção Nova', 'Comunhão', 'Pentecostes', 'G', 76, '4/4', 'Balada Suave', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Barco+a+Vela+Eliana+Ribeiro+cifra', '{"status": "Canto de Docilidade ao Espírito Santo", "score": 94, "documentRef": "Jo 3, 8 / Crisma e Pentecostes", "biblicalRef": "Jo 3, 8; Rm 8, 14", "justification": "Inspirado em João 3, 8 (''O vento sopra onde quer''), com acordes simples em Sol maior.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Insisto em perseguir meus desejos,
   C                        Am              D7
Insisto em só fazer do meu jeito;
   G                        D               Em
Me perco querendo ser Deus de mim,
   C                        D7              G
Escolhe por mim, Senhor!

[Refrão]
   G                        D
Quero ser como um barco a vela,
   Em                       C
Ao sabor do vento do Espírito de Deus!
   G                        D
Leva-me onde queres, Senhor,
   Em                       C               G
Faz em mim o Teu querer!'),
  ('sacramento-da-comunhao-diacono-nelsinho-correa', 'Sacramento da Comunhão (Senhor, Quando Te Vejo no Sacramento)', 'Diácono Nelsinho Corrêa / Canção Nova', 'Comunhão', 'Qualquer', 'D', 74, '4/4', 'Balada Eucarística', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sacramento+da+Comunhão+(Senhor,+Quando+Te+Vejo+no+Sacramento)+Diácono+Nelsinho+Corrêa+cifra', '{"status": "Canto Eucarístico de Comunhão e Unidade da Igreja", "score": 99, "documentRef": "IGMR 86 / Sacrosanctum Concilium 47", "biblicalRef": "Jo 17, 21; 1Cor 10, 17", "justification": "Canto estritamente eucarístico para o momento da Comunhão e adoração ao Santíssimo Sacramento.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A/C#  Bm  G  Em  A7

[Primeira Parte]
   D                        A               Bm
1. Senhor, quando Te vejo no Sacramento da Comunhão,
   G                        Em              A7
Sinto o Céu se abrir e uma luz a me atingir,
   Em                       G               A7
Esfriando minha cabeça e esquentando meu coração!

   D                        A               Bm
2. Senhor, graças e louvores sejam dados a todo momento,
   G                        Em              A7
Quero Te louvar na dor e na alegria, e a cada dia!

[Refrão]
   D                        A               Bm
Quero Te receber com todo o meu amor,
   G                        A7              D
Senhor, fazei que sejamos um em Vós!
   G                        A7              F#m     Bm
Como o Pai está em Vós e Vós estais em nós,
   Em                       A7              D
Para que o mundo creia no Vosso amor!'),
  ('diante-do-rei-vida-reluz', 'Diante do Rei (Vem, Senhor Jesus, o Coração Já Bate Forte)', 'Walmir Alencar / Vida Reluz', 'Ação de Graças', 'Qualquer', 'A', 72, '4/4', 'Adoração ao Santíssimo', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Diante+do+Rei+(Vem,+Senhor+Jesus,+o+Coração+Já+Bate+Forte)+Walmir+Alencar+cifra', '{"status": "Hino Clássico de Adoração Eucarística", "score": 99, "documentRef": "Ritual da Sagrada Comunhão e o Culto do Mistério Eucarístico Fora da Missa", "biblicalRef": "Sl 94, 6; Fl 2, 10", "justification": "Um dos cantos mais executados em exposições do Santíssimo Sacramento e Corpus Christi em todo o Brasil.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] A  E  F#m  D  Bm  E7

[Primeira Parte]
   A                        E               F#m
1. Vem, Senhor Jesus, o coração já bate forte ao Te ver,
   D                        Bm              E7
A Tua graça hoje quero receber, sem a bênção do Senhor não sei viver!

   A                        E               F#m
2. Vem, Senhor Jesus, olhar o povo ao Teu redor me faz lembrar
   D                        Bm              E7
A multidão lá no caminho a Te esperar: vem, ó Santo de Israel, passar também neste lugar!

[Refrão]
   D                        E               A       F#m
É o Rei! À nossa frente está!
   Bm                       E               A       A7
É feliz quem O adorar!
   D                        E               A       F#m
É Jesus, o nosso Mestre e Rei!
   Bm                       E               A
Bem aqui, tão perto se deixa encontrar:
   D                        E               A
Diante do Rei dos reis todo joelho se dobrará!'),
  ('tao-sublime-sacramento-tradicional', 'Tão Sublime Sacramento (Tantum Ergo)', 'São Tomás de Aquino / Melodia Tradicional', 'Ação de Graças', 'Qualquer', 'D', 76, '4/4', 'Hino Solene Eucarístico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tão+Sublime+Sacramento+(Tantum+Ergo)+São+Tomás+de+Aquino+cifra', '{"status": "Hino Litúrgico Oficial da Bênção do Santíssimo Sacramento", "score": 100, "documentRef": "Missal Romano / Ritual do Culto Eucarístico", "biblicalRef": "1Cor 11, 23-26; Jo 6, 51", "justification": "Composto por São Tomás de Aquino para a Solenidade de Corpus Christi; padrão ouro da música sacra católica.", "repertoireType": "popular", "specialDay": "Corpus Christi e Trindade", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A7  D  G  D  A7  D

[Primeira Parte]
   D                        A7              D
1. Tão sublime Sacramento adoremos neste altar,
   G                        D               Em          A7
Pois o Antigo Testamento deu ao Novo seu lugar;
   D                        A7              D           G
Venha a fé, por suplemento, os sentidos completar!

[Segunda Parte]
   D                        A7              D
2. Ao Eterno Pai cantemos e a Jesus, o Salvador,
   G                        D               Em          A7
Ao Espírito exaltemos, na Trindade eterno Amor;
   D                        A7              D           G
Ao Deus Uno e Trino demos a alegria do louvor!
   D        A7      D
Amém! Amém!'),
  ('cantemos-a-jesus-sacramentado-tradicional', 'Cantemos a Jesus Sacramentado', 'Hinário Eucarístico Tradicional', 'Entrada', 'Qualquer', 'D', 86, '3/4', 'Hino / Valsa Sacra', '↓  ↑ ↓  ↑ ↓', true, true, 4, 'https://www.youtube.com/results?search_query=Cantemos+a+Jesus+Sacramentado+Hinário+Eucarístico+Tradicional+cifra', '{"status": "Hino Eucarístico Tradicional", "score": 100, "documentRef": "Ritual do Culto Eucarístico / Corpus Christi", "biblicalRef": "Jo 6, 51; Sl 147", "justification": "Hino eucarístico tradicional em 3/4 com apenas 4 acordes básicos.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              D
1. Cantemos a Jesus Sacramentado! Cantemos ao Senhor!
   G                        D               A7          D
Deus está aqui! Dos anjos adorado, adoremos a Cristo Redentor!

[Refrão]
   G                        D
Glória a Cristo Jesus! Céus e terra, bendizei ao Senhor!
   A7                       D               G           A7      D
Louvor e glória a Ti, ó Rei da glória! Amor pra sempre a Ti, ó Deus de amor!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('bendito-louvado-seja-santissimo-sacramento', 'Bendito, Louvado Seja o Santíssimo Sacramento', 'Tradição Litúrgica Luso-Brasileira', 'Ação de Graças', 'Qualquer', 'G', 78, '4/4', 'Canto Processional Eucarístico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Bendito,+Louvado+Seja+o+Santíssimo+Sacramento+Tradição+Litúrgica+Luso-Brasileira+cifra', '{"status": "Hino Tradicional de Adoração e Procissão de Corpus Christi", "score": 100, "documentRef": "Ritual do Culto Eucarístico / Piedade Eucarística", "biblicalRef": "Sl 112, 2", "justification": "Três acordes simples (G, C, D7) no hino mais tradicional das procissões do Santíssimo Sacramento.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        C               G
1. Bendito, louvado seja, bendito, louvado seja
   C                        D7              G
O Santíssimo Sacramento! (2x)

[Segunda Parte]
   G                        C               G
2. Os anjos, todos os anjos, os anjos, todos os anjos
   C                        D7              G
Louvem a Deus para sempre! Amém! (2x)

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Final] G  C  D7  G'),
  ('gloria-a-jesus-na-hostia-santa', 'Glória a Jesus na Hóstia Santa', 'Hinário Eucarístico Tradicional', 'Ação de Graças', 'Qualquer', 'G', 82, '4/4', 'Hino Eucarístico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Glória+a+Jesus+na+Hóstia+Santa+Hinário+Eucarístico+Tradicional+cifra', '{"status": "Hino Clássico de Adoração ao Santíssimo", "score": 100, "documentRef": "Ritual do Culto Eucarístico", "biblicalRef": "Jo 6, 35", "justification": "Clássico das quintas-feiras de adoração e de Corpus Christi.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ação de Graças • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        D7              G
1. Glória a Jesus na Hóstia Santa, que se consagra sobre o altar,
   C                        G               D7          G
E aos nossos olhos se levanta para o Brasil abençoar!

[Refrão]
   C                        G
Que o Santo Sacramento, que é o próprio Cristo Jesus,
   D7                       G               C           D7      G
Seja adorado e seja amado nesta terra de Santa Cruz!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('podes-reinar-eliana-ribeiro-agnus-dei', 'Podes Reinar (Senhor, Eu Sei Que É Teu Este Lugar)', 'Ministério Koinonya / Eliana Ribeiro', 'Entrada', 'Tempo Comum', 'G', 76, '4/4', 'Balada de Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Podes+Reinar+(Senhor,+Eu+Sei+Que+É+Teu+Este+Lugar)+Ministério+Koinonya+cifra', '{"status": "Canto de Acolhida da Presença do Senhor", "score": 93, "documentRef": "Solenidade de Cristo Rei / Adoração", "biblicalRef": "Sl 23, 7-10; Lc 19, 1-10", "justification": "Quatro acordes abertos (G, D, C, Em) muito populares nas paróquias e grupos de oração.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  C  G

[Primeira Parte]
   G                                        D
1. Senhor, eu sei que é Teu este lugar,
   C                                        G       D
Todos querem Te adorar, toma Tu a direção!
   G                                        D
Sim, ó vem, ó Santo Espírito, os espaços preencher,
   C                        D               G       G7
Reverência à Tua voz vamos fazer!

[Refrão]
   C                        D               G       Em
Podes reinar, Senhor Jesus, ó sim!
   C                        D               G       Em
O Teu poder Teu povo sentirá!
   C                        D               G       Em
Que bom, Senhor, saber que estás presente aqui:
   C                        D               G
Reina, Senhor, neste lugar!'),
  ('quero-mergulhar-nas-profundezas-cancao-nova', 'Quero Mergulhar nas Profundezas', 'Canção Nova / Salette Ferreira', 'Ação de Graças', 'Pentecostes', 'G', 72, '4/4', 'Balada Contemplativa', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Quero+Mergulhar+nas+Profundezas+Canção+Nova+cifra', '{"status": "Canto de Efusão do Espírito Santo", "score": 93, "documentRef": "1Cor 2, 10 / Pentecostes", "biblicalRef": "1Cor 2, 10; Ez 47", "justification": "Sequência fixa de 4 acordes (G, Bm/Em, C, D) super simples para momentos de oração.", "repertoireType": "popular", "specialDay": "Pentecostes", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  Em  C  D

[Refrão]
   G                                        Em
Quero mergulhar nas profundezas do Espírito de Deus,
   C                                        D
E descobrir Suas riquezas em meu coração! (2x)

[Estrofe]
   Em                                       Bm
1. É tão lindo, tão simples,
   C                        Am              D
Brisa leve tão suave, doce Espírito Santo de Deus!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('incendeia-minha-alma-padre-fabio-cancao-nova', 'Incendeia Minha Alma', 'Rogério / Canção Nova', 'Comunhão', 'Pentecostes', 'G', 74, '4/4', 'Balada ao Espírito Santo', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Incendeia+Minha+Alma+Rogério+cifra', '{"status": "Oração ao Espírito Santo", "score": 94, "documentRef": "Pentecostes e Crisma", "biblicalRef": "Lc 12, 49; Rm 8, 26", "justification": "Canto de invocação ao Espírito Santo em Sol maior.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D/F#  Em  C  D

[Primeira Parte]
   G                        D               Em
1. Espírito Santo, vinde falar em mim!
   C                        Am              D
Espírito Santo, vinde orar em mim!
   G                        D               Em
Vinde curar, vinde libertar
   C                        D               G       G7
Nossos corações de toda opressão!

[Refrão]
   C                        D               Bm      Em
Incendeia minha alma! Incendeia minha alma!
   Am                       D               G
Incendeia minha alma, Senhor! (2x)

[Segunda Parte]
   Em                       C               G
2. Mistério da fé divina que nos une em um só Corpo,
   Am                       D7              G
Penhor da vida futura e do nosso eterno conforto;
   C                        D7              Em
Fazei de nós, ó Jesus, testemunhas da caridade,
   Am                       D7              G
Repartindo com os pobres o Pão da fraternidade!

[Final] G  C  D7  G'),
  ('vem-louvar-hoje-e-tempo-de-louvar-a-deus', 'Hoje É Tempo de Louvar a Deus (Vem Louvar)', 'Monsenhor Jonas Abib / Canção Nova', 'Entrada', 'Tempo Comum', 'D', 104, '4/4', 'Pop Louvor', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Hoje+É+Tempo+de+Louvar+a+Deus+(Vem+Louvar)+Monsenhor+Jonas+Abib+cifra', '{"status": "Clássico Histórico de Louvor Comunitário", "score": 93, "documentRef": "1Cor 3, 16 / Encontros e Missas Jovens", "biblicalRef": "1Cor 3, 16; Sl 149", "justification": "Apenas 3 acordes (D, G, A7) na música inteira! Um dos maiores clássicos para iniciantes.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D  G  A7

[Primeira Parte]
   D                        G               A7          D       G  A7
1. Hoje é tempo de louvar a Deus, em nós agora habita o Seu Espírito!
   D                        G               A7          D
Então é só cantar e a Cristo exaltar,
   G                        Em              A7
E Sua glória encherá este lugar!

[Refrão]
   D                        G               D           A7
Vem louvar, vem louvar!
   D                        G               A7          D
Vem louvar, vem louvar!

[Segunda Parte]
   D                        G               A7          D       G  A7
2. No meio dos louvores Deus habita, é Seu prazer cumprir o que nos diz!'),
  ('o-senhor-e-rei-monsenhor-jonas-abib', 'O Senhor É Rei (O Senhor É Meu Pastor e Rei)', 'Monsenhor Jonas Abib / Pe. Marcelo Rossi', 'Entrada', 'Tempo Comum', 'Em', 108, '4/4', 'Rock / Balada Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=O+Senhor+É+Rei+(O+Senhor+É+Meu+Pastor+e+Rei)+Monsenhor+Jonas+Abib+cifra', '{"status": "Hino para a Solenidade de Cristo Rei e Entrada", "score": 96, "documentRef": "Solenidade de Nosso Senhor Jesus Cristo, Rei do Universo", "biblicalRef": "Sl 22; Sl 92; Ap 19, 16", "justification": "Apenas 3 acordes (Em, G, D, C) num dos maiores sucessos da música católica brasileira.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  G  D  C

[Refrão]
   Em                                       G
O Senhor é Rei, o Senhor é meu Pastor e Rei!
   D                                        C           Em
O Senhor está no Céu, o Senhor está no mar,
   C                        D               Em
Na extensão do infinito!

[Estrofe]
   G                        D
Está no Céu, está no mar,
   Em                       C               D
Na extensão do infinito! (2x)
   Em                                       G
Quando eu vacilar, eu não temerei,
   D                        C               Em
Pois o Senhor está comigo!'),
  ('restaura-nossa-casa-dunga-cancao-nova', 'Restaura Nossa Casa, Senhor (Restauração)', 'Dunga / Canção Nova', 'Ação de Graças', 'Tempo Comum', 'G', 76, '4/4', 'Balada Familiar', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Restaura+Nossa+Casa,+Senhor+(Restauração)+Dunga+cifra', '{"status": "Oração pela Restauração das Famílias", "score": 93, "documentRef": "Pastoral Familiar / Encontros de Casais", "biblicalRef": "Js 24, 15; Sl 127", "justification": "Quatro acordes em Sol maior para oração pelas famílias.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Deus vê o coração, sonda com compaixão,
   C                        Am              D
E sabe o tamanho da sua dor;
   G                        D               Em
Ele não pode pôr limites no Seu amor,
   C                        D               G
Pois sabe até onde vai todo pecador!

[Refrão]
   G                        D               Em
Restaura nossa casa, Senhor,
   C                        Am              D
Nossa família, nossa bênção!
   G                        D               Em
Derrama sobre nós o Teu amor,
   C                        D               G
Pois eu e minha casa serviremos ao Senhor!'),
  ('amigos-pela-fe-anjos-de-resgate', 'Amigos Pela Fé', 'Anjos de Resgate / Dalvimar Gallo', 'Ação de Graças', 'Qualquer', 'D', 74, '4/4', 'Balada Acústica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Amigos+Pela+Fé+Anjos+de+Resgate+cifra', '{"status": "Clássico de Fraternidade Cristã e Encontros", "score": 93, "documentRef": "Eclo 6, 14 / Jo 15, 15", "biblicalRef": "Eclo 6, 14; Jo 15, 15", "justification": "Uma das cifras católicas mais tocadas no Brasil para encontros de jovens, casais e ação de graças fraterna.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G  Em  A7

[Primeira Parte]
   D                        A               Bm
1. Quem me dará um ombro amigo quando eu precisar?
   G                        Em              A7
E se eu cair, se eu vacilar, quem vai me levantar?
   D                        A               Bm
Sou eu, quem vai ouvir você quando o mundo não puder te entender;
   G                        Em              A7          D
Foi Deus quem te escolheu pra ser o melhor amigo que eu pudesse ter!

[Refrão]
   D                        A               Bm
Amigos, pra sempre, bons amigos que nasceram pela fé!
   G                        Em              A7
Amigos, pra sempre, para sempre amigos sim, se Deus quiser!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('manda-teus-anjos-anjos-de-resgate', 'Manda Teus Anjos Sobre Nós', 'Anjos de Resgate / Dalvimar Gallo', 'Ação de Graças', 'Qualquer', 'G', 76, '4/4', 'Balada de Oração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Manda+Teus+Anjos+Sobre+Nós+Anjos+de+Resgate+cifra', '{"status": "Oração de Intercessão e Consolação", "score": 92, "documentRef": "Sl 90, 11 / Hb 1, 14", "biblicalRef": "Sl 90, 11; Hb 1, 14", "justification": "Quatro acordes abertos (G, D, Em, C) muito simples para momentos de oração.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Quando o meu coração está cansado de lutar,
   C                        Am              D
E as lágrimas insistem em rolar pelo meu rosto;
   G                        D               Em
Eu clamo a Ti, Senhor, que envies Teu socorro,
   C                        D               G
Pois só em Ti encontro abrigo e meu repouso!

[Refrão]
   G                        D               Em
Manda Teus anjos sobre nós,
   C                        Am              D
E abençoa todos que esperam em Vós!
   G                        D               Em
Manda Teus anjos pra nos ensinar
   C                        D               G
A Te louvar e glorificar!'),
  ('mais-que-amigos-anjos-de-resgate', 'Mais Que Amigos', 'Anjos de Resgate', 'Ação de Graças', 'Qualquer', 'G', 78, '4/4', 'Balada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Mais+Que+Amigos+Anjos+de+Resgate+cifra', '{"status": "Canto de Comunhão Fraterna", "score": 91, "documentRef": "Jo 15, 13-15", "biblicalRef": "Jo 15, 13-15", "justification": "Clássico de amizade cristã com acordes fáceis em Sol maior.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Não é preciso mais adormecer pra sonhar com um anjo descendo do céu,
   C                        Am              D
Basta fechar os olhos e saber que somos mais que amigos!

[Refrão]
   G                        D               Em
Mais que amigos, irmãos na fé,
   C                        D               G
Unidos pelo amor de Jesus de Nazaré!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('tua-familia-anjos-de-resgate', 'Tua Família (Percebe e Entende)', 'Anjos de Resgate', 'Ação de Graças', 'Qualquer', 'G', 74, '4/4', 'Balada Familiar', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tua+Família+(Percebe+e+Entende)+Anjos+de+Resgate+cifra', '{"status": "Canto para Bênção das Famílias e Casamentos", "score": 95, "documentRef": "Pastoral Familiar / Eclo 3, 1-16", "biblicalRef": "Eclo 3, 1-16; Cl 3, 13", "justification": "Muito tocada em Missas das famílias, bodas e encontros familiares.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C  D  G

[Primeira Parte]
   G                        D               Em
1. Percebe e entende que os melhores amigos
   C                        Am              D
São aqueles que estão em casa, esperando por ti!
   G                        D               Em
Acredita, nos momentos mais difíceis da vida,
   C                        D               G       G7
Eles sempre estarão por perto, pois só sabem te amar!

[Refrão]
   C                        D               G       Em
Tua família volta pra ela,
   Am                       D               G       G7
Tua família te ama e te espera
   C                        D               G       Em
Para ao teu lado sempre estar!
   Am                       D               G
Tua família, teu abrigo e teu lar!'),
  ('estou-aqui-anjos-de-resgate', 'Estou Aqui (Pra Ser Amado e Te Amar)', 'Anjos de Resgate / Dalvimar Gallo', 'Ação de Graças', 'Qualquer', 'A', 72, '4/4', 'Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Estou+Aqui+(Pra+Ser+Amado+e+Te+Amar)+Anjos+de+Resgate+cifra', '{"status": "Canto de Adoração Eucarística e Entrega", "score": 95, "documentRef": "Adoração ao Santíssimo", "biblicalRef": "1Jo 4, 19; Sl 26", "justification": "Excelente para adoração ao Santíssimo Sacramento e ação de graças após a Comunhão.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] A  E  F#m  D

[Refrão]
   A                        E               F#m
Estou aqui pra ser amado e Te amar,
   D                        Bm              E
Te olhar nos olhos e deixar-me apaixonar;
   A                        E               F#m
Diante de Ti, pra me render ao Teu amor,
   D                        E               A
E confessar minhas fraquezas: sou pecador!

[Estrofe]
   F#m                      C#m             D
1. Também estou aqui pra pedir perdão
   Bm                       E               A
Pelas almas que ainda não buscam Teu coração!

[Segunda Parte]
   F#m                      D               A
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Bm                       E7              A
Pois olhou para a pequenez deste humilde servidor;
   D                        E7              F#m
Recebe a minha entrega, meu louvor e gratidão,
   Bm                       E7              A
Permanece para sempre em minha vida e vocação!

[Final] A  D  E7  A'),
  ('seja-luz-anjos-de-resgate', 'Seja Luz', 'Anjos de Resgate / Marcelinho', 'Final', 'Tempo Comum', 'C', 88, '4/4', 'Pop Acústico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Seja+Luz+Anjos+de+Resgate+cifra', '{"status": "Canto de Envio Baseado no Sermão da Montanha (Mt 5, 14)", "score": 96, "documentRef": "IGMR 90 / Mateus 5, 14-16", "biblicalRef": "Mt 5, 14-16", "justification": "Quatro acordes simples (C, G, Am, F) inspirados em ''Vós sois a luz do mundo''.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am          F
1. Todo dia a gente pode ser melhor,
   C                        G               Am          F
Espalhar o bem e não deixar ninguém tão só!

[Refrão]
   C                        G
Seja luz! Ilumine quem está na escuridão!
   Am                       F
Seja sal da terra, estenda a sua mão!
   C                        G               Am          F       C
Brilhe a vossa luz diante dos irmãos, para a glória de Deus Pai!

[Segunda Parte]
   Am                       F               C
2. Onde houver dor e tristeza, levemos consolação,
   Dm                       G7              C
Onde houver treva e discórdia, semeemos o perdão;
   F                        G               Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm                       G7              C
Até que na Pátria eterna voltemos a nos encontrar!

[Final] C  F  G7  C'),
  ('perfeito-e-quem-te-criou-vida-reluz', 'Perfeito É Quem Te Criou', 'Walmir Alencar / Vida Reluz', 'Final', 'Qualquer', 'E', 74, '4/4', 'Balada Mariana', '↓  ↓ ↑  ↑ ↓ ↑', true, false, 5, 'https://www.youtube.com/results?search_query=Perfeito+É+Quem+Te+Criou+Walmir+Alencar+cifra', '{"status": "Hino Mariano de Contemplação da Anunciação", "score": 97, "documentRef": "Lucas 1, 28-38 / Marialis Cultus", "biblicalRef": "Lc 1, 28-38", "justification": "Uma das canções marianas mais consagradas da música católica contemporânea.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] E  B  C#m  A  B7  E

[Primeira Parte]
   E                        B               C#m
1. Se um dia um anjo declarou que tu eras cheia de Deus,
   A                        F#m             B7
Agora penso: quem sou eu para não te dizer também
   E                        B               C#m
Cheia de graça, ó Mãe? Cheia de graça, ó Mãe,
   A                        B7              E
Agraciada!

   E                        B               C#m
2. Se a Palavra ensinou que todos hão de concordar,
   A                        F#m             B7
E as gerações te proclamar, agora eu também direi:
   E                        B               C#m
Tu és bendita, ó Mãe! Tu és bendita, ó Mãe,
   A                        B7              E
Bem-aventurada!

[Refrão]
   C#m                      G#m             A
Surgiu um grande sinal no céu: uma Mulher revestida de sol,
   F#m                      A               B7
A lua debaixo de seus pés e na cabeça uma coroa!
   E                        B               C#m
Não há como se comparar: perfeito é Quem te criou!
   A                        F#m             B7          E
Se o Criador te coroou, te coroamos, ó Mãe, nossa Rainha!'),
  ('como-es-lindo-vida-reluz', 'Como És Lindo (Que Bom, Senhor, Ir ao Teu Encontro)', 'Walmir Alencar / Vida Reluz', 'Comunhão', 'Qualquer', 'D', 74, '4/4', 'Balada Eucarística', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Como+És+Lindo+(Que+Bom,+Senhor,+Ir+ao+Teu+Encontro)+Walmir+Alencar+cifra', '{"status": "Canto de Comunhão e Adoração ao Santíssimo", "score": 98, "documentRef": "IGMR 86 / Salmo 26, 4", "biblicalRef": "Sl 26, 4; Sl 83", "justification": "Clássico de Comunhão e Adoração sobre contemplar a beleza do Senhor na Sua casa.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G  Em  A7

[Primeira Parte]
   D                        A               Bm
1. Que bom, Senhor, ir ao Teu encontro,
   G                        Em              A7
Poder chegar e adentrar à Tua casa;
   Bm                       F#m             G
Sentar-me contigo e partilhar da mesma Mesa:

[Refrão]
   D                        A               Bm
Te olhar, Te tocar e Te dizer: Meu Deus, como és lindo!
   G                        Em              A7          D
Te olhar, Te tocar e Te dizer: Meu Deus, como és lindo!

[Segunda Parte]
   D                        A               Bm
2. Ó meu Senhor, sei que não sou nada:
   G                        Em              A7
Sem merecer fizeste em mim Tua morada;
   Bm                       F#m             G
Mas ao receber-Te, perfeita comunhão se cria:

[Refrão Final]
   D                        A               Bm
Sou em Ti, és em mim! Minh''alma diz: Meu Deus, como és lindo!
   G                        Em              A7          D
Sou em Ti, és em mim! Minh''alma diz: Meu Deus, como és lindo!

[Final] D  G  A7  D'),
  ('o-ceu-se-abre-ministerio-adoracao-e-vida', 'O Céu Se Abre', 'Walmir Alencar / Ministério Adoração e Vida', 'Ação de Graças', 'Qualquer', 'A', 74, '4/4', 'Adoração Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=O+Céu+Se+Abre+Walmir+Alencar+cifra', '{"status": "Canto de Adoração Eucarística e Louvor Celestial", "score": 97, "documentRef": "Apocalipse 4, 8 / Isaías 6, 3", "biblicalRef": "Ap 4, 8; Is 6, 3", "justification": "Quatro acordes em Lá maior (A, E, F#m, D) proclamando a santidade de Deus.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] A  E  F#m  D

[Primeira Parte]
   A                        E               F#m
1. Hoje o Céu se abre pra derramar
   D                        Bm              E
Sobre os corações toda a graça do Pai;
   A                        E               F#m
Eu também quero me derramar
   D                        E               A
De todo o meu coração nos braços do Pai!

[Refrão]
   A                        E
Vem, Espírito Santo, com Teu poder,
   F#m                      D
Tocar meu ser, fluir em mim!
   F#m                      E               D
Hoje eu posso ser um novo homem
   Bm                       E               A
Pelo Teu poder, renascer!'),
  ('abraco-de-pai-walmir-alencar', 'Abraço de Pai (Quanto Eu Esperei)', 'Walmir Alencar / Ministério Adoração e Vida', 'Ato Penitencial', 'Quaresma', 'D', 72, '4/4', 'Balada Contemplativa', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Abraço+de+Pai+(Quanto+Eu+Esperei)+Walmir+Alencar+cifra', '{"status": "Canto do Pai Misericordioso (Lucas 15)", "score": 96, "documentRef": "Lucas 15, 20 / Reconciliação", "biblicalRef": "Lc 15, 11-32", "justification": "Retrata o diálogo amoroso do Pai Misericordioso acolhendo o filho que volta para casa.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G  A7  D

[Primeira Parte]
   D                        A               Bm
1. Quanto Eu esperei! Ansioso queria te ver,
   G                        Em              A7
E te falar do que há em Mim, já não podia me conter!
   D                        A               Bm
Me decidiste voltar, de braços abertos vou te acolher,
   G                        A7              D
Pois te amo desde a eternidade, meu filho!

[Refrão]
   G                        A7              F#m     Bm
Dá-me teu coração, recebe o Meu abraço de Pai,
   Em                       A7              D
Não importa onde andaste: voltaste para Mim!

[Segunda Parte]
   D                        G               A7          D
2. Vós que viestes chamar os pecadores à conversão,
   Bm                       Em              A7          D
Curai as nossas feridas e dai-nos Vosso perdão;
   G                        A7              Bm
Purificai nossas vidas para a Santa Comunhão,
   Em                       A7              D
Conduzi os nossos passos no caminho da salvação!

[Final] D  G  A7  D'),
  ('em-teu-altar-adoracao-e-vida', 'Em Teu Altar', 'Walmir Alencar / Ministério Adoração e Vida', 'Ofertório', 'Qualquer', 'G', 76, '4/4', 'Balada de Ofertório', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Em+Teu+Altar+Walmir+Alencar+cifra', '{"status": "Canto de Entrega e Apresentação de Dons no Altar", "score": 96, "documentRef": "IGMR 74 / Rm 12, 1", "biblicalRef": "Rm 12, 1", "justification": "Quatro acordes simples (G, D, Em, C) para o momento de preparação das oferendas.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Diante de Tua presença me encontro, Senhor, Deus infinito;
   C                        Am              D
O Teu olhar me acompanha e sabes quem sou!
   G                        D               Em
Ao enxergar Tua grandeza e minha pequenez,
   C                        Am              D
Eu reconheço que minha história nada é sem o Teu amor!

[Refrão]
   G                        D               Em
Por isso venho buscar e pedir mais uma vez:
   C                        Am              D
Toma minha vida inteira em Teu altar!
   G                        D               Em
Tudo o que sou e o que tenho entrego em Tuas mãos,
   C                        D               G
Pois só em Ti, Senhor, encontro a salvação!'),
  ('hoje-livre-sou-adoracao-e-vida', 'Hoje Livre Sou', 'Walmir Alencar / Ministério Adoração e Vida', 'Ação de Graças', 'Páscoa', 'G', 78, '4/4', 'Pop Rock Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Hoje+Livre+Sou+Walmir+Alencar+cifra', '{"status": "Canto de Vitória Pascal e Confiança em Deus", "score": 94, "documentRef": "Gl 5, 1 / Jo 8, 36", "biblicalRef": "Gl 5, 1; Jo 8, 36", "justification": "Quatro acordes (G, D, Em, C) cantando a liberdade dos filhos de Deus em Cristo Ressuscitado.", "repertoireType": "popular", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Presença forte em mim, eu posso dizer: habita aqui!
   C                        Am              D
Meu coração inteiro se entregou a Ti, Senhor!

[Refrão]
   G                        D
Confiarei em Teu amor, e nos Teus braços descansarei!
   Em                       C
Pois Tu és fiel, Senhor, nunca falharás:
   G                        D               C       G
Hoje livre sou pelo Teu amor!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('tudo-posso-celina-borges', 'Tudo Posso Naquele Que Me Fortalece', 'Celina Borges', 'Ação de Graças', 'Tempo Comum', 'G', 78, '4/4', 'Balada Bíblica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tudo+Posso+Naquele+Que+Me+Fortalece+Celina+Borges+cifra', '{"status": "Canto Bíblico Paulino (Filipenses 4, 13)", "score": 96, "documentRef": "Filipenses 4, 13", "biblicalRef": "Fl 4, 13; 2Cor 12, 9-10", "justification": "Inspirado em Filipenses 4, 13 (''Tudo posso Naquele que me fortalece'') com acordes acessíveis em Sol maior.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
Posso, tudo posso Naquele que me fortalece:
   C                        Am              D
Nada e ninguém no mundo vai me fazer desistir!
   G                        D               Em
Quero, tudo quero, sem medo entregar meus projetos:
   C                        D               G
Deixar-me guiar nos caminhos que Deus desejou pra mim e ali estar!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
Posso, tudo posso Naquele que me fortalece:
   C                        Am              D
Nada e ninguém no mundo vai me fazer desistir!
   G                        D               Em
Quero, tudo quero, sem medo entregar meus projetos:
   C                        D               G
Deixar-me guiar nos caminhos que Deus desejou pra mim e ali estar!

[Final] G  C  D7  G'),
  ('nas-asas-do-senhor-celina-borges', 'Nas Asas do Senhor (Sei Que os Que Confiam no Senhor)', 'Celina Borges', 'Ação de Graças', 'Tempo Comum', 'G', 82, '4/4', 'Balada Bíblica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Nas+Asas+do+Senhor+(Sei+Que+os+Que+Confiam+no+Senhor)+Celina+Borges+cifra', '{"status": "Canto Bíblico de Esperança (Isaías 40, 31)", "score": 97, "documentRef": "Isaías 40, 31", "biblicalRef": "Is 40, 29-31", "justification": "Paráfrase musical direta de Isaías 40, 31 em 4 acordes simples (G, Em, C, D).", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  Em  C  D

[Primeira Parte]
   G                                        Em
1. Sei que os que confiam no Senhor
   C                                        D
Revigoram suas forças, suas forças se renovam!
   G                                        Em
Posso até cair ou vacilar, mas consigo levantar,
   C                        D               G       G7
Pois recebo d''Ele asas, e como águia me preparo pra voar!

[Refrão]
   C                        D               G       Em
Eu posso ir muito além de onde estou,
   C                        D               G       Em
Vou nas asas do Senhor!
   C                        D               G       Em
O Teu amor é o que me conduz:
   C                        D               G
Posso voar e subir sem me cansar!'),
  ('sem-voce-rosa-de-saron', 'Sem Você (Minha Alma Tem Sede de Ti)', 'Rosa de Saron / Guilherme de Sá', 'Ação de Graças', 'Qualquer', 'Em', 78, '4/4', 'Rock Acústico Sacro', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sem+Você+(Minha+Alma+Tem+Sede+de+Ti)+Rosa+de+Saron+cifra', '{"status": "Cântico de Sede de Deus (Salmo 62 / Salmo 41)", "score": 94, "documentRef": "Salmo 62, 2 / Salmo 41, 2", "biblicalRef": "Sl 62, 2; Sl 41, 2-3", "justification": "Uma das músicas mais tocadas do Rosa de Saron no Cifra Club, usando apenas 4 acordes (Em, C, G, D)!", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Em  C  G  D  (2x)

[Primeira Parte]
   Em                       C               G           D
1. Minha alma tem sede de Ti, ó meu Deus,
   Em                       C               G           D
Minha alma suspira por Ti!
   Em                       C               G           D
Como a corsa suspira pelas águas correntes,
   Em                       C               G           D
Assim minha alma anseia pelo Teu amor!

[Refrão]
   Em                       C
Pois sem Você não sei viver,
   G                        D
Não há caminho para os passos meus!
   Em                       C
Só em Tuas mãos encontro a paz,
   G                        D               Em
Tu és meu Tudo, meu Senhor e meu Deus!'),
  ('deus-cuida-de-mim-pe-fabio-de-melo', 'Deus Cuida de Mim', 'Padre Fábio de Melo / Kleber Lucas', 'Ação de Graças', 'Tempo Comum', 'G', 74, '4/4', 'Balada de Confiança', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Deus+Cuida+de+Mim+Padre+Fábio+de+Melo+cifra', '{"status": "Canto de Confiança na Divina Providência", "score": 93, "documentRef": "1Pd 5, 7 / Mt 6, 25-34", "biblicalRef": "1Pd 5, 7; Sl 120", "justification": "Quatro acordes simples em Sol maior sobre o cuidado providente de Deus.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Eu preciso aprender um pouco aqui, eu preciso aprender um pouco ali,
   C                        Am              D
Eu preciso aprender mais de Deus, porque Ele é quem cuida de mim!
   G                        D               Em
Se uma porta se fecha aqui, outras portas se abrem ali,
   C                        D               G
Eu preciso aprender mais de Deus, porque Ele é quem cuida de mim!

[Refrão]
   G                        D               Em
Deus cuida de mim na sombra das Suas asas,
   C                        Am              D
Deus cuida de mim, eu amo a Sua casa!
   G                        D               Em
E não ando sozinho, não estou sozinho, pois sei:
   C                        D               G
Deus cuida de mim!'),
  ('humano-demais-pe-fabio-de-melo', 'Tudo É do Pai / Humano Amor de Deus', 'Padre Fábio de Melo', 'Comunhão', 'Tempo Comum', 'C', 76, '4/4', 'Balada Poética', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tudo+É+do+Pai+/+Humano+Amor+de+Deus+Padre+Fábio+de+Melo+cifra', '{"status": "Canto de Contemplação da Encarnação do Verbo", "score": 95, "documentRef": "Jo 1, 14 / Fl 2, 6-8", "biblicalRef": "Jo 1, 14", "justification": "Meditação poética sobre o Verbo que se fez carne e armou sua tenda entre nós.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. O Deus que fez o céu e a terra quis morar em nosso chão,
   F                        Dm              G7
Partilhou a nossa mesa, repartiu o mesmo Pão!

[Refrão]
   C                        G               Am
Bendito seja o Verbo que entre nós veio habitar,
   F                        G7              C
E na Santa Eucaristia decidiu permanecer e nos amar!

[Segunda Parte]
   Am                       F               C
2. Mistério da fé divina que nos une em um só Corpo,
   Dm                       G7              C
Penhor da vida futura e do nosso eterno conforto;
   F                        G               Am
Fazei de nós, ó Jesus, testemunhas da caridade,
   Dm                       G7              C
Repartindo com os pobres o Pão da fraternidade!

[Final] C  F  G7  C'),
  ('alma-de-cristo-oracao-santo-inacio', 'Alma de Cristo (Anima Christi)', 'Santo Inácio de Loyola / Melodia Tradicional e Shalom', 'Ação de Graças', 'Qualquer', 'D', 68, '4/4', 'Oração Pós-Comunhão', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Alma+de+Cristo+(Anima+Christi)+Santo+Inácio+de+Loyola+cifra', '{"status": "Oração Tradicional do Missal Romano para Ação de Graças", "score": 100, "documentRef": "Missal Romano - Orações de Ação de Graças após a Missa", "biblicalRef": "Jo 6, 54-56; Jo 19, 34", "justification": "Oração clássica indulgenciada presente no Missal Romano para rezar e cantar logo após a Sagrada Comunhão.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  Bm  G  A7  D

[Primeira Parte]
   D                        Bm
Alma de Cristo, santificai-me!
   G                        A7              D
Corpo de Cristo, salvai-me!
   D                        Bm
Sangue de Cristo, inebriai-me!
   G                        A7              D
Água do lado de Cristo, lavai-me!

[Segunda Parte]
   G                        A7              F#m     Bm
Paixão de Cristo, confortai-me!
   Em                       A7              D       D7
Ó bom Jesus, ouvi-me!
   G                        A7              F#m     Bm
Dentro de Vossas chagas, escondei-me!
   Em                       A7              D
Não permitais que eu me separe de Vós!

[Final]
   D                        Bm
Do espírito maligno, defendei-me!
   G                        A7              D
Na hora da minha morte, chamai-me!
   G                        A7              Bm
E mandai-me ir para Vós, para que com Vossos santos Vos louve,
   Em                       A7              D
Por todos os séculos dos séculos. Amém!'),
  ('nada-te-perturbe-santa-teresa-davila', 'Nada Te Perturbe (Só Deus Basta)', 'Santa Teresa d''Ávila / Taizé & Liturgia', 'Ação de Graças', 'Qualquer', 'Am', 70, '4/4', 'Ostinato Contemplativo', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Nada+Te+Perturbe+(Só+Deus+Basta)+Santa+Teresa+d''Ávila+cifra', '{"status": "Oração Clássica de Santa Teresa de Jesus (Doutora da Igreja)", "score": 100, "documentRef": "Liturgia das Horas / Meditação Pós-Comunhão", "biblicalRef": "Sl 45, 2; Fl 4, 6-7", "justification": "Quatro acordes fixos (Am, Dm, G, C, E7) sobre o poema místico de Santa Teresa d''Ávila.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Am  Dm  G  C  E7  Am

[Primeira Parte]
   Am                       Dm              G
1. No silêncio agradecido deste encontro de oração,
   C                        F               E7
Contemplo a Tua presença que habita em meu coração;
   Am                       Dm              G
Não há nada neste mundo que se possa comparar
   C                        E7              Am
À doçura da Tua graça derramada neste altar!

[Refrão Contemplativo]
   Am                       Dm
Nada te perturbe, nada te espante,
   G                        C               E7
Quem a Deus tem, nada lhe falta!
   Am                       Dm
Nada te perturbe, nada te espante:
   E7                       Am
Só Deus basta! (2x)

[Segunda Parte]
   G                        C               Am
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   F                        E7              Am
Pois olhou para a pequenez deste humilde servidor;
   C                        Dm              G
Recebe a minha entrega, meu louvor e gratidão,
   F                        E7              Am
Permanece para sempre em minha vida e vocação!

[Refrão Contemplativo]
   Am                       Dm
Nada te perturbe, nada te espante,
   G                        C               E7
Quem a Deus tem, nada lhe falta!
   Am                       Dm
Nada te perturbe, nada te espante:
   E7                       Am
Só Deus basta! (2x)

[Final] Am  C  E7  Am'),
  ('celebra-a-vitoria-walmir-alencar-vida-reluz', 'Celebra a Vitória (Vê Quem Te Elegeu, Te Ungiu e Consagrou)', 'Walmir Alencar / Vida Reluz', 'Final', 'Qualquer', 'E', 82, '4/4', 'Balada de Louvor', '↓  ↓ ↑  ↑ ↓ ↑', true, false, 5, 'https://www.youtube.com/results?search_query=Celebra+a+Vitória+(Vê+Quem+Te+Elegeu,+Te+Ungiu+e+Consagrou)+Walmir+Alencar+cifra', '{"status": "Clássico de Walmir Alencar e Vida Reluz", "score": 96, "documentRef": "Isaías 43, 1 / Romanos 8, 37", "biblicalRef": "Is 43, 1-2; Rm 8, 37", "justification": "Um dos maiores clássicos compostos por Walmir Alencar no Ministério Vida Reluz sobre a eleição e vitória em Cristo.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] E  B/D#  C#m  A  F#m  B7

[Primeira Parte]
   E                        B/D#            C#m
1. Vê quem te elegeu, te ungiu e consagrou:
   A                        F#m             B7
Não temas, nos lábios santos teu nome ressoou!
   E                        B/D#            C#m
Não te chamou como um servo qualquer, mas com carinho um filho Seu,
   A                        F#m             B7
Te capacitou, toda força te deu, amparo e abrigo és para o irmão!

[Segunda Parte]
   C#m                      G#m             A
2. Não te detenhas, segue em frente, Deus caminha com teu passo;
   F#m                      A               B7
Mesmo que as lutas venham tentar te abater, Ele te sustenta no braço!

[Refrão]
   E                        B/D#            C#m
Celebra a vitória! O Senhor Jesus regressando está!
   A                        F#m             B7
Vitória se canta quando a vida inteira se entrega no altar!
   E                        B/D#            C#m
Celebra a vitória! O Senhor Jesus regressando está!
   A                        B7              E
Para o mundo inteiro ver que o Seu Reino já começou a brilhar!

[Final] E  A  B7  E'),
  ('sublime-walmir-alencar-adoracao-e-vida', 'Sublime (Sublime É o Teu Amor Por Mim)', 'Walmir Alencar / Ministério Adoração e Vida', 'Ação de Graças', 'Qualquer', 'G', 72, '4/4', 'Adoração Suave', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sublime+(Sublime+É+o+Teu+Amor+Por+Mim)+Walmir+Alencar+cifra', '{"status": "Canto Eucarístico de Ação de Graças", "score": 97, "documentRef": "Adoração Eucarística / 1 João 4, 10", "biblicalRef": "1Jo 4, 10; Jo 15, 13", "justification": "Composição profunda de Walmir Alencar para o momento de Ação de Graças após a Sagrada Comunhão.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
   G                        D/F#            Em
1. Tão sublime é o Teu amor por mim, não consigo compreender;
   C                        Am              D7
Sendo Deus infinito e Santo, vieste em meu coração viver!
   G                        D/F#            Em
Nos meus passos tão pequenos, Tua graça me alcançou,
   C                        D7              G       D7
E na Mesa da Eucaristia minha alma se saciou!

[Refrão]
   G                        D/F#            Em
Sublime presença que acalma o meu coração,
   C                        Am              D7
Jesus escondido na simplicidade do Pão!
   G                        D/F#            Em
Sublime mistério de amor que se entregou na Cruz,
   C                        D7              G
Minha vida inteira pertence a Ti, meu Jesus!

[Segunda Parte]
   Em                       Bm              C
2. Nada no mundo se compara à alegria de Te adorar,
   Am                       C               D7
E permanecer em silêncio diante do Teu santo altar!

[Final] G  C  D7  G'),
  ('deus-imenso-walmir-alencar-vida-reluz', 'Deus Imenso (Não Sou Nada, Eu Bem Sei)', 'Walmir Alencar / Vida Reluz', 'Ação de Graças', 'Qualquer', 'D', 70, '4/4', 'Balada de Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Deus+Imenso+(Não+Sou+Nada,+Eu+Bem+Sei)+Walmir+Alencar+cifra', '{"status": "Clássico de Adoração do Vida Reluz", "score": 98, "documentRef": "Salmo 8 / Adoração ao Santíssimo", "biblicalRef": "Sl 8, 4-5; Sl 144", "justification": "Clássico de Walmir Alencar e Vida Reluz meditando a pequenez humana diante do Deus Imenso que se faz próximo.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A/C#  Bm  G  Em  A7

[Primeira Parte]
   D                        A/C#            Bm
1. Não sou nada, eu bem sei, tão pequeno é o meu viver,
   G                        Em              A7
Mas quando olho para o céu vejo a grandeza do Teu poder!
   D                        A/C#            Bm
Mesmo assim olhas pra mim e me chamas pelo nome,
   G                        A7              D       D7
És o Pão que desce do céu para saciar a minha fome!

[Refrão]
   G                        A7              F#m         Bm
Deus imenso, Deus de amor, no Sacrário a me esperar,
   Em                       A7              D           D7
Quero abrir meu coração e em Teus braços descansar!
   G                        A7              F#m         Bm
Deus imenso, Rei dos reis, minha força e salvação,
   Em                       A7              D
Recebe o meu louvor e a minha eterna gratidão!

[Segunda Parte]
   Bm                       F#m             G
2. Quando a noite parecer fria e difícil de atravessar,
   Em                       G               A7
Tua luz no Santuário nunca deixará de brilhar!

[Final] D  G  A7  D'),
  ('invade-minh-alma-walmir-alencar-vida-reluz', 'Invade Minh''Alma', 'Walmir Alencar / Vida Reluz', 'Comunhão', 'Pentecostes', 'C', 74, '4/4', 'Balada Orante', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Invade+Minh''Alma+Walmir+Alencar+cifra', '{"status": "Canto de Comunhão e Efusão espiritual", "score": 96, "documentRef": "Romanos 5, 5 / João 14, 23", "biblicalRef": "Rm 5, 5; Jo 14, 23", "justification": "Canto consagrado do repertório de Walmir Alencar e Vida Reluz em 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G/B  Am  F  Dm  G7

[Primeira Parte]
   C                        G/B             Am
1. Vem, Senhor, visitar o interior do meu coração,
   F                        Dm              G7
Onde há sede de paz, derrama a Tua consolação!
   C                        G/B             Am
Sem a Tua presença eu nada posso realizar,
   F                        G7              C       C7
Só o Teu Espírito Santo me ensina a perdoar e amar!

[Refrão]
   F                        G7              Em          Am
Invade minh''alma, Senhor, preenche todo o meu viver,
   Dm                       G7              C           C7
Quero ser morada santa onde habita o Teu poder!
   F                        G7              Em          Am
Invade minh''alma, Senhor, com Tua graça e Tua luz,
   Dm                       G7              C
Para que o mundo veja em mim a Tua face, ó Jesus!

[Final] C  F  G7  C'),
  ('obra-nova-cristo-quer-fazer-vida-reluz', 'Obra Nova (Cristo Quer Fazer em Mim uma Obra Nova)', 'Walmir Alencar / Vida Reluz', 'Entrada', 'Tempo Comum', 'D', 92, '4/4', 'Pop Jovem / Acolhida', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Obra+Nova+(Cristo+Quer+Fazer+em+Mim+uma+Obra+Nova)+Walmir+Alencar+cifra', '{"status": "Clássico de Acolhida e Grupos de Oração", "score": 95, "documentRef": "Isaías 43, 19 / 2 Coríntios 5, 17", "biblicalRef": "Is 43, 19; 2Cor 5, 17", "justification": "Quatro acordes alegres (D, F#m/Bm, G, A7) muito cantados em aberturas de encontros, missas jovens e acolhidas.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Bm  G  A7  D  A7

[Refrão]
   D                        Bm
Tou, tou, tou, batendo na porta do teu coração:
   G                        A7
Cristo quer fazer em mim uma obra nova!
   D                        Bm
E o meu coração quer se abrir pra receber
   G                        A7              D
O amor que vem do Pai e tudo em nós renova!

[Primeira Parte]
   Bm                       F#m
1. Basta abrir a porta e deixar a luz entrar,
   G                        A7              D
Onde havia tristeza, a alegria vai morar!
   Bm                       F#m
Somos uma família reunida ao redor do altar,
   G                        E7              A7
Pronta para ouvir a Palavra e ao Senhor louvar!

[Segunda Parte]
   Bm                       F#m
2. Estende a tua mão ao irmão que está ao teu lado,
   G                        A7              D
Pois no amor de Jesus Cristo todo homem é transformado!

[Final] D  Bm  G  A7  D'),
  ('oferta-de-amor-venho-senhor-minha-vida-oferecer', 'Oferta de Amor (Venho, Senhor, Minha Vida Oferecer)', 'Ministério Koinonya / Comunidade Shalom', 'Ofertório', 'Qualquer', 'G', 74, '4/4', 'Balada de Ofertório', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Oferta+de+Amor+(Venho,+Senhor,+Minha+Vida+Oferecer)+Ministério+Koinonya+cifra', '{"status": "Clássico de Ofertório nas Paróquias (Romanos 12, 1)", "score": 96, "documentRef": "IGMR 74 / Romanos 12, 1", "biblicalRef": "Rm 12, 1", "justification": "Uma das músicas de Ofertório mais fáceis e mais cantadas nas Missas dominicais em todo o Brasil.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C  D7  G

[Primeira Parte]
   G                        D               Em
1. Venho, Senhor, minha vida oferecer
   C                        G               Am          D7
Como oferta de amor e sacrifício:
   G                        D               Em
Quero minha vida a Ti entregar
   C                        D7              G           G7
Como oferta viva em Teu altar!

[Refrão]
   C                        D7              G           Em
Pois pra Te adorar foi que eu nasci,
   C                        D7              G           Em
Cumpre em mim o Teu querer!
   C                        D7              G           Em
Faça o que está em Teu coração,
   C                        D7              G
E que a cada dia eu queira mais e mais
   Am           D7          G
Estar ao Teu lado, Senhor!'),
  ('belissimo-esposo-comunidade-shalom', 'Belíssimo Esposo', 'Comunidade Católica Shalom / Suely Façanha', 'Ação de Graças', 'Qualquer', 'G', 70, '4/4', 'Adoração Eucarística', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Belíssimo+Esposo+Comunidade+Católica+Shalom+cifra', '{"status": "Hino Contemplativo de Adoração Eucarística", "score": 98, "documentRef": "Salmo 44, 3 / Cântico dos Cânticos", "biblicalRef": "Sl 44, 3; Ct 5, 10", "justification": "Clássico da Comunidade Shalom para adoração ao Santíssimo Sacramento e ação de graças.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Belíssimo Esposo, mais belo que todos os homens,
   C                        Am              D
Em Teus lábios se derramou a graça!
   G                        D               Em
A Tua beleza me atrai, o Teu olhar me conquista,
   C                        D               G
Para sempre Teu serei, Senhor!

[Refrão]
   G                        D               Em
Ó Jesus, meu Amado, Esposo da minh''alma,
   C                        D               G
Ao Teus pés quero ficar e Te adorar!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('estrangeiro-aqui-comunidade-shalom', 'Estrangeiro Aqui (O Céu É o Meu Lugar)', 'Comunidade Católica Shalom / Missionário Shalom', 'Comunhão', 'Tempo Comum', 'G', 78, '4/4', 'Balada Jovem', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Estrangeiro+Aqui+(O+Céu+É+o+Meu+Lugar)+Comunidade+Católica+Shalom+cifra', '{"status": "Canto Escatológico sobre a Pátria Celeste (Filipenses 3, 20)", "score": 96, "documentRef": "Filipenses 3, 20 / 1Pedro 2, 11", "biblicalRef": "Fl 3, 20; Hb 13, 14", "justification": "Quatro acordes simples (G, D, Em, C) lembrando que nossa pátria definitiva é o Céu.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Eu sou estrangeiro aqui, o Céu é o meu lugar,
   C                        Am              D
É de onde vim, é pra onde vou, é lá onde eu vou morar!

[Refrão]
   G                        D               Em
O Senhor é minha luz e salvação, de quem terei medo?
   C                        D               G
O Senhor é a segurança da minha vida!

[Segunda Parte]
   Em                       C               G
2. Mistério da fé divina que nos une em um só Corpo,
   Am                       D7              G
Penhor da vida futura e do nosso eterno conforto;
   C                        D7              Em
Fazei de nós, ó Jesus, testemunhas da caridade,
   Am                       D7              G
Repartindo com os pobres o Pão da fraternidade!

[Final] G  C  D7  G'),
  ('yeshua-colo-de-deus-comunidade', 'Yeshua (Te Chamam de Deus e de Senhor)', 'Comunidade Colo de Deus / Comunidade Shalom', 'Ação de Graças', 'Qualquer', 'Em', 68, '4/4', 'Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Yeshua+(Te+Chamam+de+Deus+e+de+Senhor)+Comunidade+Colo+de+Deus+cifra', '{"status": "Canto de Adoração ao Santíssimo Nome de Jesus", "score": 94, "documentRef": "Catecismo 430 (Yeshua = Deus Salva)", "biblicalRef": "Mt 1, 21; Fl 2, 9-11", "justification": "Usa apenas 4 acordes repetidos (Em, C, G, D) do início ao fim! Muito fácil de tocar.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Em  C  G  D

[Primeira Parte]
   Em                                       C
1. Te chamam de Deus e de Senhor,
   G                                        D
Te chamam de Rei, de Salvador,
   Em                                       C
E eu me atrevo a Te chamar de meu Amor!
   G                                        D
E eu me atrevo a Te chamar de meu Amor!

[Refrão]
   Em                                       C
Yeshua, Yeshua,
   G                                        D
Tu és tão lindo, que eu nem sei me expressar!
   Em                                       C
Yeshua,Tu és tão lindo!
   G                        D               Em
Bendito é o Teu Nome, Jesus!'),
  ('acaso-nao-sabeis-colo-de-deus', 'Acaso Não Sabeis (Eu Me Consagro a Ti)', 'Flávio Vitor Jr. / Comunidade Colo de Deus', 'Final', 'Qualquer', 'D', 72, '4/4', 'Balada Mariana', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Acaso+Não+Sabeis+(Eu+Me+Consagro+a+Ti)+Flávio+Vitor+Jr.+cifra', '{"status": "Canto de Consagração a Nossa Senhora", "score": 96, "documentRef": "Lumen Gentium 62 / Nossa Senhora de Guadalupe", "biblicalRef": "Jo 19, 26-27", "justification": "Inspirada nas palavras de Nossa Senhora de Guadalupe a São Juan Diego (''Acaso não sabeis que eu sou da Imaculada?'').", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  G  Bm  A

[Primeira Parte]
   D                                        G
1. Eu me consagro a Ti, Mãe de Deus e minha,
   Bm                                       A
Eu me consagro a Ti, Mestra e Rainha!

[Refrão]
   G                                        D
Acaso não sabeis que eu sou da Imaculada?
   Bm                                       A
Acaso não sabeis, tenho uma Advogada?
   G                                        D
Só quem já foi órfão sabe o valor do amor de mãe,
   Bm                       A               D
Só quem já foi órfão sabe o valor do colo de Mãe!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Final] D  G  A7  D'),
  ('acalma-minha-tempestade-frei-gilson', 'Acalma Minha Tempestade', 'Frei Gilson / Som do Monte', 'Ação de Graças', 'Tempo Comum', 'G', 72, '4/4', 'Balada de Oração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Acalma+Minha+Tempestade+Frei+Gilson+cifra', '{"status": "Oração Evangélica sobre a Tempestade Acalmada (Marcos 4, 39)", "score": 96, "documentRef": "Marcos 4, 35-41", "biblicalRef": "Mc 4, 35-41; Sl 106, 29", "justification": "Quatro acordes simples (G, D, Em, C) meditando o Evangelho de Jesus acalmando o mar e o coração.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Refrão]
   G                                        D
Acalma minha tempestade,
   Em                                       C
Sossega o meu coração!
   G                                        D
Tu és o Mestre do vento e do mar,
   Em                       C               G
Em Tuas mãos seguro estou, Senhor!

[Primeira Parte]
   Em                       D               C
1. Mesmo quando as ondas se levantam contra o barco meu,
   Em                       D               C           D
Eu sei que estás na barca, ó Filho de Deus!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('eu-te-levantarei-frei-gilson', 'Eu Te Levantarei', 'Frei Gilson / Som do Monte', 'Ação de Graças', 'Quaresma', 'C', 70, '4/4', 'Balada de Consolação', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+Te+Levantarei+Frei+Gilson+cifra', '{"status": "Canto de Consolação e Esperança Cristã", "score": 94, "documentRef": "Isaías 41, 10 / Mateus 11, 28", "biblicalRef": "Is 41, 10; Mt 11, 28", "justification": "Quatro acordes fixos (C, G, Am, F) muito fáceis de tocar no violão e teclado.", "repertoireType": "popular", "specialDay": "Quaresma e CF", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Refrão]
   C                                        G
Filho, Eu te levantarei!
   Am                                       F
Filho, não te abandonarei!
   C                                        G
Mesmo quando tudo parecer perdido,
   Am                       F               C
Eu sou o teu Deus e estou contigo!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Refrão]
   C                                        G
Filho, Eu te levantarei!
   Am                                       F
Filho, não te abandonarei!
   C                                        G
Mesmo quando tudo parecer perdido,
   Am                       F               C
Eu sou o teu Deus e estou contigo!

[Final] C  F  G7  C'),
  ('deixa-deus-sonhar-em-ti-frei-gilson', 'Deixa Deus Sonhar em Ti', 'Frei Gilson / Som do Monte', 'Comunhão', 'Tempo Comum', 'G', 74, '4/4', 'Balada Vocacional', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Deixa+Deus+Sonhar+em+Ti+Frei+Gilson+cifra', '{"status": "Canto Vocacional e de Entrega à Vontade Divina", "score": 94, "documentRef": "Jeremias 29, 11 / Vocação", "biblicalRef": "Jr 29, 11; Ef 3, 20", "justification": "Quatro acordes abertos (G, D, Em, C) para momentos vocacionais e de entrega.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. Ao redor da Santa Mesa nos chamais à comunhão,
   C                        Am              D7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   G                        D7              Em
Quem comer deste alimento para sempre viverá,
   C                        D7              G
E a sede mais profunda da sua alma saciará!

[Refrão]
   G                        D
Deixa Deus sonhar em ti,
   Em                       C
Deixa Deus agir em ti!
   G                        D
Os planos do Senhor são maiores que os teus:
   Em                       C               G
Confia no amor de Deus!

[Segunda Parte]
   Em                       C               G
2. Mistério da fé divina que nos une em um só Corpo,
   Am                       D7              G
Penhor da vida futura e do nosso eterno conforto;
   C                        D7              Em
Fazei de nós, ó Jesus, testemunhas da caridade,
   Am                       D7              G
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   G                        D
Deixa Deus sonhar em ti,
   Em                       C
Deixa Deus agir em ti!
   G                        D
Os planos do Senhor são maiores que os teus:
   Em                       C               G
Confia no amor de Deus!

[Final] G  C  D7  G'),
  ('minha-essencia-thiago-brado', 'Minha Essência (Vim Até Aqui Derramar o Meu Passado em Ti)', 'Thiago Brado', 'Ato Penitencial', 'Quaresma', 'G', 72, '4/4', 'Balada Acústica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Minha+Essência+(Vim+Até+Aqui+Derramar+o+Meu+Passado+em+Ti)+Thiago+Brado+cifra', '{"status": "Canto de Conversão e Intimidade com Deus", "score": 94, "documentRef": "Celebracões Penitenciais e Adoração", "biblicalRef": "Sl 50; Lc 7, 37-50", "justification": "Uma das cifras católicas mais acessadas da última década, toda estruturada em 4 acordes (G, D, Em, C)!", "repertoireType": "popular", "specialDay": "Quaresma e CF", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                                        D
1. Vim até aqui derramar o meu passado em Ti,
   Em                                       C
Vim banhar os pés que andaram por aí sem carinho receber;
   G                                        D
Hoje estou aqui, não porque mereço, eu sei,
   Em                                       C
Pois Tu sabes por onde eu andei, conheces bem o meu perfume!

[Refrão]
   G                                        D
Mas Tu sabes também que o meu choro é sincero, porém,
   Em                                       C
Não tenho nada a oferecer, meu Senhor, mas Te dou a minha vida!
   G                                        D
É tudo que tenho, recebe o meu nada,
   Em                                       C               G
Refaz a morada, habita em mim!'),
  ('verdades-do-tempo-thiago-brado', 'Verdades do Tempo', 'Thiago Brado', 'Ação de Graças', 'Tempo Comum', 'C', 74, '4/4', 'Dedilhado / Acústico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Verdades+do+Tempo+Thiago+Brado+cifra', '{"status": "Canto Reflexivo sobre o Amor e o Tempo de Deus", "score": 93, "documentRef": "Eclesiastes 3, 1 / Mateus 6, 21", "biblicalRef": "Ecl 3, 1; Mt 6, 21", "justification": "Quatro acordes básicos (C, G, Am, F) de execução simples.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. Essa é uma canção de amor, veja onde está o seu coração;
   F                        G               C
Coloque-o na palma da mão de Deus!

[Refrão]
   C                        G               Am
O tempo passa e só o amor de Deus permanece,
   F                        G               C
Quem ama a Cristo nunca envelhece na fé!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Final] C  F  G7  C'),
  ('kyrie-eleison-como-a-ovelha-perdida-shalom', 'Kyrie Eleison (Como a Ovelha Perdida)', 'Comunidade Católica Shalom', 'Ato Penitencial', 'Qualquer', 'Bm', 74, '4/4', 'Balada Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Kyrie+Eleison+(Como+a+Ovelha+Perdida)+Comunidade+Católica+Shalom+cifra', '{"status": "Ato Penitencial Tropado Canônico (III Fórmula do Missal)", "score": 100, "documentRef": "IGMR 51-52 / Lucas 15, 4-6", "biblicalRef": "Lc 15, 4-6", "justification": "Um dos Atos Penitenciais mais cantados nas Missas no Brasil, unindo os tropos do Bom Pastor às invocações Kyrie/Christe Eleison.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Bm  G  D  A

[Primeira Parte]
   Bm                       F#m             G               D       A
1. Como a ovelha perdida, pelo pecado ferida,
   G                        D               Em              F#7
Eu Te suplico perdão, ó Bom Pastor!

[Refrão 1]
   Bm           G           D               A
Kyrie Eleison! Kyrie Eleison! Kyrie Eleison!

[Segunda Parte]
   Bm                       F#m             G               D       A
2. Como o ladrão perdoado, encontro o paraíso ao Teu lado,
   G                        D               Em              F#7
Lembra-Te de mim, pecador, por Tua Cruz!

[Refrão 2]
   Bm           G           D               A
Christe Eleison! Christe Eleison! Christe Eleison!

[Terceira Parte]
   Bm                       F#m             G               D       A
3. Como a pecadora caída, derramo aos Teus pés minha vida,
   G                        D               Em              F#7
Vê as lágrimas do meu coração e salva-me!

[Refrão 3]
   Bm           G           D               A       Bm
Kyrie Eleison! Kyrie Eleison! Kyrie Eleison!'),
  ('gloria-a-deus-nas-alturas-shalom-capella', 'Glória a Deus nas Alturas (Shalom)', 'Comunidade Católica Shalom', 'Glória', 'Qualquer', 'E', 104, '4/4', 'Pop Litúrgico Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Glória+a+Deus+nas+Alturas+(Shalom)+Comunidade+Católica+Shalom+cifra', '{"status": "Texto Oficial Integral do Missal Romano", "score": 100, "documentRef": "IGMR 53 / Missal Romano", "biblicalRef": "Lc 2, 14", "justification": "Fiel palavra por palavra ao Hino de Louvor do Missal Romano, muito cantado em paróquias e grupos jovens.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Glória • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] E  B  C#m  A

[Refrão]
   E                        B               C#m             A
Glória a Deus nas alturas, e paz na terra aos homens por Ele amados! (2x)

[Primeira Parte]
   E                        B               C#m             A
Senhor Deus, Rei dos céus, Deus Pai todo-poderoso:
   E                        B               C#m             A
Nós Vos louvamos, nós Vos bendizemos,
   E                        B               C#m             A
Nós Vos adoramos, nós Vos glorificamos,
   F#m                      B7              E
Nós Vos damos graças por Vossa imensa glória!

[Segunda Parte]
   C#m                      G#m             A               E
Senhor Jesus Cristo, Filho Unigênito,
   C#m                      G#m             A               B7
Senhor Deus, Cordeiro de Deus, Filho de Deus Pai:
   A                        B7              G#m             C#m
Vós que tirais o pecado do mundo, tende piedade de nós!
   A                        B7              G#m             C#m
Vós que tirais o pecado do mundo, acolhei a nossa súplica!
   A                        B7              E
Vós que estais à direita do Pai, tende piedade de nós!

[Terceira Parte]
   A                        B7              G#m             C#m
Só Vós sois o Santo, só Vós o Senhor, só Vós o Altíssimo, Jesus Cristo,
   F#m                      B7              E
Com o Espírito Santo, na glória de Deus Pai. Amém!'),
  ('santo-suely-facanha-shalom', 'Santo, Santo, Santo (Shalom / Suely Façanha)', 'Suely Façanha / Comunidade Shalom', 'Santo', 'Qualquer', 'Em', 82, '4/4', 'Solene Eucarístico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Santo,+Santo,+Santo+(Shalom+/+Suely+Façanha)+Suely+Façanha+cifra', '{"status": "Texto Litúrgico Integral do Sanctus", "score": 100, "documentRef": "IGMR 79b / Missal Romano", "biblicalRef": "Is 6, 3; Mt 21, 9", "justification": "Santo litúrgico em 4 acordes (Em, C, D, B7) com texto integral da Oração Eucarística.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Santo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  C  D  Em

[Primeira Parte]
   Em                       D               C               B7
Santo, Santo, Santo, Senhor Deus do universo!
   Em                       D               C               B7
O céu e a terra proclamam a Vossa glória!

[Refrão]
   G                        D               Em              C
Hosana nas alturas! Hosana!
   G                        D               B7              Em
Hosana nas alturas! Hosana!

[Segunda Parte]
   C                        D               G               Em
Bendito o que vem em nome do Senhor!
   C                        D               B7              Em
Hosana nas alturas! Hosana!'),
  ('cordeiro-de-deus-shalom', 'Cordeiro de Deus (Comunidade Shalom)', 'Comunidade Católica Shalom', 'Cordeiro de Deus', 'Qualquer', 'G', 72, '4/4', 'Balada Suave da Fração do Pão', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cordeiro+de+Deus+(Comunidade+Shalom)+Comunidade+Católica+Shalom+cifra', '{"status": "Texto Oficial Integral do Agnus Dei", "score": 100, "documentRef": "IGMR 83 / Missal Romano", "biblicalRef": "Jo 1, 29", "justification": "Agnus Dei com texto canônico integral e apenas 4 acordes (G, Bm/Em, C, D).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Cordeiro de Deus • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Primeira e Segunda Vezes]
   G                        Em              C               D
Cordeiro de Deus, que tirais o pecado do mundo,
   Am                       C               D               G
Tende piedade de nós! (2x)

[Terceira Vez]
   G                        Em              C               D
Cordeiro de Deus, que tirais o pecado do mundo,
   C                        D               G
Dai-nos a paz, dai-nos a paz, Senhor, a Vossa paz!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Primeira e Segunda Vezes]
   G                        Em              C               D
Cordeiro de Deus, que tirais o pecado do mundo,
   Am                       C               D               G
Tende piedade de nós! (2x)

[Terceira Vez]
   G                        Em              C               D
Cordeiro de Deus, que tirais o pecado do mundo,
   C                        D               G
Dai-nos a paz, dai-nos a paz, Senhor, a Vossa paz!

[Final] G  C  D7  G'),
  ('regaco-acolhedor-suely-facanha', 'Regaço Acolhedor (Salmo 130)', 'Suely Façanha / Comunidade Shalom', 'Ação de Graças', 'Qualquer', 'D', 70, '4/4', 'Dedilhado / Meditação', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Regaço+Acolhedor+(Salmo+130)+Suely+Façanha+cifra', '{"status": "Paráfrase do Salmo 130 (Como Criança no Colo da Mãe)", "score": 98, "documentRef": "Salmo 130 (131) / Pós-Comunhão", "biblicalRef": "Sl 130, 1-3", "justification": "Canto de profunda paz interior inspirado no Salmo 130.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  G  Em  A7  D

[Primeira Parte]
   D                        G               D
1. Oh, minh''alma, retorna à tua paz,
   G                        Em              A7
Como criança bem tranquila no regaço acolhedor de sua mãe!

[Refrão]
   D                        G               Bm          A7
Minha mãe é a Virgem Maria,
   G                        Em              A7          D
É ela que agora vai me acolher, me abraçar, me perdoar, me compreender,
   G                        A7              D
Me acalmar, me ensinar, me educar, me formar, me amar!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('eis-me-aqui-senhor-aqui-estou', 'Eis-me Aqui, Senhor (Aqui Estou Pra Fazer Tua Vontade)', 'Hinário Litúrgico CNBB / Pe. José Weber', 'Entrada', 'Tempo Comum', 'G', 86, '4/4', 'Marcha Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eis-me+Aqui,+Senhor+(Aqui+Estou+Pra+Fazer+Tua+Vontade)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Antífona Bíblica de Entrada e Vocação (Salmo 39 / Hebreus 10, 7)", "score": 100, "documentRef": "IGMR 47 / Salmo 39, 8-9 / Hebreus 10, 7", "biblicalRef": "Sl 39, 8-9; Hb 10, 7", "justification": "Texto 100% bíblico e litúrgico, ideal para Missa Dominical e Mês Vocacional.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Refrão]
   G                        C               D7              G
Eis-me aqui, Senhor! Eis-me aqui, Senhor!
   Em                       Am              D7              G
Pra fazer Tua vontade, pra viver no Teu amor:
   C                        D7              G
Eis-me aqui, Senhor!

[Estrofe]
   G                        Am              D7              G
1. O Senhor é o Pastor que me conduz, por caminhos nunca vistos me enviou;
   Em                       Am              D7              G
Sou chamado a ser fermento, sal e luz, e por isso respondi: aqui estou!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Final] G  C  D7  G'),
  ('cristo-quero-ser-instrumento-oracao-sao-francisco', 'Oração de São Francisco (Senhor, Fazei-me Instrumento de Vossa Paz)', 'Pe. Irala, sj / Tradicional Franciscano', 'Comunhão', 'Qualquer', 'Em', 78, '4/4', 'Dedilhado / Balada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Oração+de+São+Francisco+(Senhor,+Fazei-me+Instrumento+de+Vossa+Paz)+Pe.+Irala,+sj+cifra', '{"status": "Clássico Universal da Espiritualidade Cristã", "score": 98, "documentRef": "Estudo 79 CNBB / Festa de São Francisco", "biblicalRef": "Mt 5, 9; Gl 6, 14", "justification": "Uma das cifras católicas mais famosas de todos os tempos no Brasil.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                                       B7
1. Senhor, fazei-me instrumento de Vossa paz:
   Am                       B7              Em
Onde houver ódio, que eu leve o amor;
                                            B7
Onde houver ofensa, que eu leve o perdão;
   Am                       B7              Em
Onde houver discórdia, que eu leve a união;
   E7                       Am              D7          G
Onde houver dúvida, que eu leve a fé!

[Segunda Parte]
   Em                                       B7
2. Onde houver erro, que eu leve a verdade;
   Am                       B7              Em
Onde houver desespero, que eu leve a esperança;
                                            B7
Onde houver tristeza, que eu leve a alegria;
   E7                       Am              B7          Em
Onde houver trevas, que eu leve a luz!

[Refrão]
   E7                       Am              D7          G
Ó Mestre, fazei que eu procure mais
   B7                       Em
Consolar que ser consolado;
   E7                       Am              D7          G
Compreender que ser compreendido;
   B7                       Em              E7
Amar que ser amado!
   Am                       D7              G           Em
Pois é dando que se recebe, é perdoando que se é perdoado,
   Am                       B7              Em
E é morrendo que se vive para a vida eterna!'),
  ('vos-sois-o-caminho-a-verdade-e-a-vida', 'Vós Sois o Caminho, a Verdade e a Vida', 'Lindberg Pires / Hinário Litúrgico CNBB', 'Comunhão', 'Tempo Comum', 'D', 82, '4/4', 'Canto Processional de Comunhão', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Vós+Sois+o+Caminho,+a+Verdade+e+a+Vida+Lindberg+Pires+cifra', '{"status": "Antífona Bíblica de Comunhão (João 14, 6)", "score": 100, "documentRef": "IGMR 86 / João 14, 6 / João 6, 51", "biblicalRef": "Jo 14, 6; Jo 6, 51", "justification": "Clássico processional de Comunhão com refrão curto e fácil para toda a assembleia repetir sem folheto.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Vós sois o Caminho, a Verdade e a Vida,
   Bm                       Em              A7          D
O Pão da alegria descido do Céu! (2x)

[Estrofes]
   Bm                       F#m             G           D
1. Nós somos caminheiros que marcham para os céus,
   Em                       A7              D
Jesus é o Caminho que nos conduz a Deus!

   Bm                       F#m             G           D
2. Da noite da mentira, das trevas para a luz,
   Em                       A7              D
Busquemos a Verdade, Verdade é só Jesus!

   Bm                       F#m             G           D
3. Pecar é não ter vida, pecar é não ter luz;
   Em                       A7              D
Tem vida só quem segue os passos de Jesus!'),
  ('pelos-prados-e-campinas-salmo-22', 'Pelos Prados e Campinas Verdejantes Eu Vou (O Senhor É o Pastor)', 'Frei Fabreti, ofm / Salmo 22 (23)', 'Comunhão', 'Qualquer', 'D', 80, '4/4', 'Balada Pastoral', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pelos+Prados+e+Campinas+Verdejantes+Eu+Vou+(O+Senhor+É+o+Pastor)+Frei+Fabreti,+ofm+cifra', '{"status": "Clássico Litúrgico Baseado no Salmo 22 (O Bom Pastor)", "score": 100, "documentRef": "IGMR 61 e 86 / Salmo 22 (23)", "biblicalRef": "Sl 22, 1-6; Jo 10, 11", "justification": "Um dos cânticos litúrgicos mais amados e cantados da Igreja no Brasil para o Domingo do Bom Pastor e Comunhão.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        Bm              G
Pelos prados e campinas verdejantes eu vou,
   Em                       A7              D
É o Senhor que me leva a descansar!
   D                        Bm              G
Junto às fontes de águas puras, repousantes, eu vou,
   Em                       A7              D
Minhas forças o Senhor vai animar!

[Estrofes]
   G                        A7              D           Bm
1. Tu és, Senhor, o meu Pastor, por isso nada em minha vida faltará;
   Em                       A7              D
Nos teus caminhos de justiça e paz, sempre seguro caminharei!

   G                        A7              D           Bm
2. Tu preparas uma Mesa frente a mim, o meu cálice transborda de alegria;
   Em                       A7              D
Tua bondade e Teu amor me acompanham por todos os dias da minha vida!'),
  ('andavam-pensando-tao-tristes-emaus', 'Andavam Pensando Tão Tristes (Discípulos de Emaús)', 'Pe. Jocy Rodrigues / Hinário Litúrgico', 'Comunhão', 'Páscoa', 'D', 82, '4/4', 'Balada Eucarística', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Andavam+Pensando+Tão+Tristes+(Discípulos+de+Emaús)+Pe.+Jocy+Rodrigues+cifra', '{"status": "Canto Evangélico Pascal de Comunhão (Lucas 24, 13-35)", "score": 100, "documentRef": "IGMR 86 / Lucas 24, 29-31", "biblicalRef": "Lc 24, 13-35", "justification": "Narra o Evangelho dos discípulos de Emaús que reconhecem o Senhor ao partir o Pão.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Em  A7  D

[Primeira Parte]
   D                                        Em
1. Andavam pensando tão tristes, de Jerusalém a Emaús,
   A7                                       D
Os dois seguidores de Cristo, logo após o episódio da cruz;
   D7                                       G
Enquanto assim vão conversando, Jesus se achegou devagar:
   D                        A7              D
"De que vocês estão falando?" — E ao Senhor não puderam enxergar!

[Refrão]
   G                                        D
Fica conosco, Senhor, é tarde e a noite já vem!
   Em                       A7              D           D7
Fica conosco, Senhor, somos teus seguidores também! (2x)

[Segunda Parte]
   D                                        Em
2. Sentado com eles à mesa, deu graças e o Pão repartiu;
   A7                                       D
Dos dois, o coração ardia, e aos olhos a fé se lhes abriu!'),
  ('um-coracao-para-amar-ofertorio', 'Um Coração Para Amar', 'Pe. Zezinho, scj / Hinário de Ofertório', 'Ofertório', 'Tempo Comum', 'G', 84, '4/4', 'Balada de Ofertório', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Um+Coração+Para+Amar+Pe.+Zezinho,+scj+cifra', '{"status": "Clássico de Apresentação dos Dons e Vocação", "score": 96, "documentRef": "IGMR 74 / Ezequiel 36, 26", "biblicalRef": "Ez 36, 26; Mt 20, 28", "justification": "Canto de ofertório em 4 acordes simples (G, Em, C, D7) muito presente nos folhetos de Missa.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D7  G

[Primeira Parte]
   G                                        D7
1. Um coração para amar, pra perdoar e sentir,
   C                        D7              G
Para chorar e sorrir, ao me criar Tu me deste!
   G                                        D7
Um coração pra sonhar, inquieto e sempre a bater,
   C                        D7              G       G7
Ansioso por entender as coisas que Tu disseste!

[Refrão]
   C                        D7              G       Em
Eis o que eu venho Te dar, eis o que eu ponho no altar:
   Am                       D7              G       G7
Toma, Senhor, que ele é Teu, meu coração não é meu! (2x)

[Segunda Parte]
   Em                       C               G
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Am                       D7              G
As alegrias e esperanças que trazemos no coração;
   C                        D7              Em
Pela força do Espírito Santo santificai estes dons,
   Am                       D7              G
Sacrifício de louvor pelos nossos irmãos!

[Final] G  C  D7  G'),
  ('com-minha-mae-estarei-tradicional', 'Com Minha Mãe Estarei', 'Hinário Mariano Tradicional', 'Final', 'Qualquer', 'D', 84, '3/4', 'Valsa Mariana', '↓  ↑ ↓  ↑ ↓', true, true, 3, 'https://www.youtube.com/results?search_query=Com+Minha+Mãe+Estarei+Hinário+Mariano+Tradicional+cifra', '{"status": "Hino Mariano Tradicional Brasileiro", "score": 99, "documentRef": "Piedade Mariana / Canto Final", "biblicalRef": "Ap 12, 1; Lc 1, 48", "justification": "Apenas 3 acordes (D, A7, G) num dos hinos marianos mais tradicionais da Igreja Católica.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A7  D

[Refrão]
   D                                        A7
Com minha Mãe estarei na santa glória um dia,
   G                        D               A7          D
Ao lado da Virgem Maria, no Céu triunfarei!
   G                        D               A7          D
No Céu, no Céu, com minha Mãe estarei! (2x)

[Estrofe]
   D                                        A7
1. Com minha Mãe estarei, aos anjos me ajuntando,
   G                        A7              D
Do Onipotente ao mando, hosanas Lhe darei!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Final] D  G  A7  D'),
  ('santa-mae-maria-nessa-travessia', 'Santa Mãe Maria, Nessa Travessia (Manto Cor de Anil)', 'José Acácio Santana / Hinário Mariano', 'Final', 'Qualquer', 'C', 82, '4/4', 'Balada Mariana', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Santa+Mãe+Maria,+Nessa+Travessia+(Manto+Cor+de+Anil)+José+Acácio+Santana+cifra', '{"status": "Clássico Mariano Litúrgico de Envio", "score": 99, "documentRef": "Hinário Litúrgico CNBB / Canto Final", "biblicalRef": "Jo 2, 1-11; At 1, 14", "justification": "Quatro acordes simples (C, G7, F, Am) em um dos cantos finais marianos mais tradicionais da Missa.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                                        G7
1. Santa Mãe Maria, nessa travessia, cubra-nos teu manto cor de anil;
   Dm                       G7              C
Guarda nossa vida, Mãe Aparecida, Santa Padroeira do Brasil!

[Refrão]
   C        F       G7      C
Ave, Maria! Ave, Maria!
   C        F       G7      C
Ave, Maria! Ave, Maria!

[Segunda Parte]
   C                                        G7
2. Mulher peregrina, força feminina, a mais importante que existiu;
   Dm                       G7              C
Com justiça queres que nossas mulheres sejam construtoras do Brasil!'),
  ('imaculada-maria-de-deus', 'Imaculada, Maria de Deus', 'Frei Fabreti, ofm / Hinário Mariano', 'Final', 'Advento', 'D', 82, '4/4', 'Balada Mariana Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Imaculada,+Maria+de+Deus+Frei+Fabreti,+ofm+cifra', '{"status": "Canto Mariano de Advento e Solenidades de Nossa Senhora", "score": 100, "documentRef": "Solenidade da Imaculada Conceição (8 de Dezembro) / Hinário CNBB", "biblicalRef": "Lc 1, 28.38", "justification": "Quatro acordes (D, G, A7, Bm) celebrando Maria Imaculada, modelo da Igreja.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Final • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Imaculada, Maria de Deus,
   Bm                       Em              A7          D
Coração pobre acolhendo Jesus!
   D                        G               D
Imaculada, Maria do povo,
   Bm                       Em              A7          D
Mãe dos aflitos que estão junto à cruz!

[Estrofes]
   G                        A7              D           Bm
1. Um coração que era "Sim" para a vida, um coração que era "Sim" para o irmão,
   Em                       A7              D
Um coração que era "Sim" para Deus: Reino de Deus renovando este chão!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Final] D  G  A7  D'),
  ('salve-rainha-mae-de-misericordia', 'Salve Rainha, Mãe de Misericórdia', 'Antífona Mariana Oficial da Igreja', 'Final', 'Tempo Comum', 'D', 78, '4/4', 'Hino Mariano Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Salve+Rainha,+Mãe+de+Misericórdia+Antífona+Mariana+Oficial+da+Igreja+cifra', '{"status": "Antífona Mariana Oficial da Liturgia das Horas", "score": 100, "documentRef": "Liturgia das Horas - Completas / Missal Romano", "biblicalRef": "Lc 1, 42; Jo 19, 27", "justification": "Uma das 4 grandes Antífonas Marianas oficiais da Igreja Católica, prescrita para o Tempo Comum.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               D
Salve, Rainha, Mãe de misericórdia,
   G                        Em              A7          D
Vida, doçura, esperança nossa, salve!
   D                        G               D
A vós bradamos, os degredados filhos de Eva;
   G                        Em              A7          D
A vós suspiramos, gemendo e chorando neste vale de lágrimas!

[Segunda Parte]
   G                        A7              D           Bm
Eia, pois, Advogada nossa, esses vossos olhos misericordiosos
   Em                       A7              D
A nós volvei!
   G                        A7              D           Bm
E depois deste desterro, mostrai-nos Jesus, bendito fruto do vosso ventre!
   Em                       A7              D
Ó clemente, ó piedosa, ó doce sempre Virgem Maria!'),
  ('povo-de-reis-assembleia-santa-lucien-deiss', 'Povo de Reis, Assembleia Santa (Povo de Deus, Bendizei o Senhor)', 'Pe. Lucien Deiss / Hinário Litúrgico CNBB', 'Entrada', 'Tempo Comum', 'G', 88, '4/4', 'Hino Processional Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Povo+de+Reis,+Assembleia+Santa+(Povo+de+Deus,+Bendizei+o+Senhor)+Pe.+Lucien+Deiss+cifra', '{"status": "Hino Litúrgico Conciliar (1 Pedro 2, 9 / Lumen Gentium 9)", "score": 100, "documentRef": "IGMR 47 / 1Pedro 2, 9 / Sacrosanctum Concilium", "biblicalRef": "1Pd 2, 9; Ex 19, 6", "justification": "Obra-prima da música litúrgica pós-conciliar baseada em 1 Pedro 2, 9 sobre o sacerdócio comum dos fiéis.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D7  G

[Refrão]
   G                        Em              C           G
Povo de reis, assembleia santa,
   C                        G               Am          D7
Povo sacerdotal, povo de Deus,
   C            D7          G
Bendizei o Senhor!

[Estrofes]
   G                        Em              C           D7
1. Cantai a Deus um canto novo, pois Ele fez maravilhas;
   Em                       Am              D7          G
Mostrou a Sua glória às nações e salvou o Seu povo!

   G                        Em              C           D7
2. Nós Te cantamos, ó Filho amado do Pai,
   Em                       Am              D7          G
Nós Te louvamos, eterna Palavra saída de Deus!'),
  ('aleluia-a-minhalma-abrirei', 'Aleluia, a Minh''alma Abrirei', 'Tradicional Litúrgico', 'Aclamação ao Evangelho', 'Tempo Comum', 'C', 88, '4/4', 'Balada de Aclamação', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Aleluia,+a+Minh''alma+Abrirei+Tradicional+Litúrgico+cifra', '{"status": "Aclamação ao Evangelho Clássica e Simples", "score": 97, "documentRef": "IGMR 62", "biblicalRef": "At 16, 14; Lc 24, 45", "justification": "Quatro acordes básicos (C, Am, Dm, G7) — uma das aclamações mais fáceis para tocar na Missa.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G7  C

[Refrão]
   C                        Am              Dm          G7
Aleluia, aleluia, a minh''alma abrirei!
   C                        Am              Dm    G7    C
Aleluia, aleluia, Cristo é meu Rei!

[Versículo]
   F                        G7              C           Am
1. Fala, Senhor, que o Teu servo escuta:
   Dm                       G7              C
Tu tens palavras de vida eterna!

[Segunda Parte]
   C                        F               G          C
2. Abri o nosso coração ao Santo Evangelho da paz,
   Am                       Dm              G7          C
Semente do Reino de Deus que fruto abundante nos traz;
   F                        G               Am
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Dm                       G7              C
E viver o Teu anúncio em cada canto e lugar!

[Final] C  F  G7  C'),
  ('este-e-o-dia-que-o-senhor-fez-para-nos-salmo-117', 'Este É o Dia Que o Senhor Fez Para Nós (Salmo 117)', 'Pe. José Weber / Lecionário Dominical', 'Salmo', 'Páscoa', 'D', 92, '4/4', 'Salmo Pascal Festivo', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Este+É+o+Dia+Que+o+Senhor+Fez+Para+Nós+(Salmo+117)+Pe.+José+Weber+cifra', '{"status": "Salmo Responsorial do Domingo da Páscoa (Salmo 117)", "score": 100, "documentRef": "Lecionário Dominical - Domingo da Ressurreição / Salmo 117", "biblicalRef": "Sl 117, 1-2.16-17.22-24", "justification": "O Salmo mais importante do Ano Litúrgico, cantado na Vigília Pascal e no Domingo de Páscoa.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Salmo • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Este é o dia que o Senhor fez para nós:
   Bm                       Em              A7          D
Alegremo-nos e nele exultemos!

[Estrofes do Salmo 117]
   G                        A7              D           Bm
1. Dai graças ao Senhor, porque Ele é bom,
   Em                       A7              D
"Eterna é a Sua misericórdia!"

   G                        A7              D           Bm
2. A mão direita do Senhor fez maravilhas,
   Em                       A7              D
Não morrerei, mas ao contrário, viverei para cantar as grandes obras do Senhor!

   G                        A7              D           Bm
3. A pedra que os pedreiros rejeitaram
   Em                       A7              D
Tornou-se agora a pedra angular!'),
  ('a-vossa-palavra-senhor-salmo-18', 'Senhor, Tens Palavras de Vida Eterna (Salmo 18)', 'Ir. Miria T. Kolling / Lecionário Dominical', 'Salmo', 'Tempo Comum', 'C', 82, '4/4', 'Salmo Responsorial', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Senhor,+Tens+Palavras+de+Vida+Eterna+(Salmo+18)+Ir.+Miria+T.+Kolling+cifra', '{"status": "Salmo Responsorial Oficial do Lecionário (Salmo 18B)", "score": 100, "documentRef": "IGMR 61 / Salmo 18 (19) / João 6, 68", "biblicalRef": "Sl 18, 8-11; Jo 6, 68", "justification": "Salmo responsorial clássico em 4 acordes simples (C, F, Dm, G7).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Salmo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Refrão]
   C                        F               C
Senhor, tens palavras de vida eterna!
   Dm                       G7              C
Senhor, tens palavras de vida eterna!

[Estrofes do Salmo 18]
   C                        Am              Dm
1. A Lei do Senhor Deus é perfeita,
   G7                                       C
Conforto para a alma!
   C                        Am              Dm
O testemunho do Senhor é fiel,
   G7                                       C
Sabedoria dos humildes!

   C                        Am              Dm
2. Os preceitos do Senhor são precisos,
   G7                                       C
Alegria ao coração!
   C                        Am              Dm
O mandamento do Senhor é brilhante,
   G7                                       C
Para os olhos é uma luz!'),
  ('teu-sol-vai-brilhar-pe-zezinho', 'Teu Sol Vai Brilhar', 'Padre Zezinho, scj', 'Ação de Graças', 'Tempo Comum', 'C', 82, '4/4', 'Balada de Esperança', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Teu+Sol+Vai+Brilhar+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Esperança Cristã", "score": 93, "documentRef": "Estudo 79 CNBB", "biblicalRef": "Ml 3, 20; Sl 26", "justification": "Cântico de esperança cristã do Padre Zezinho em 4 acordes simples.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                        Am              Dm
1. Quando a noite parecer não terminar,
   G7                                       C
E a tristeza vier bater no coração:

[Refrão]
   F                        G7              C           Am
Teu sol vai brilhar, a luz vai chegar,
   Dm                       G7              C
Porque Deus jamais esquece quem sabe esperar!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Final] C  F  G7  C'),
  ('se-eu-fosse-um-cristal-pe-zezinho', 'Se Eu Fosse um Cristal', 'Padre Zezinho, scj', 'Ação de Graças', 'Tempo Comum', 'D', 76, '4/4', 'Dedilhado', '↓  ↓ ↑  ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Se+Eu+Fosse+um+Cristal+Padre+Zezinho,+scj+cifra', '{"status": "Canto de Transparência à Luz de Deus", "score": 92, "documentRef": "Estudo 79 CNBB", "biblicalRef": "Mt 5, 16", "justification": "Meditação sobre refletir a luz de Cristo como um cristal.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. Se eu fosse um cristal, deixaria Tua luz passar por mim;
   Bm                       Em              A7          D
Sem nada reter, refletindo o Teu amor até o fim!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('oracao-da-noite-perdoai-nos-senhor-pe-zezinho', 'Oração da Noite (Perdoai-nos, Senhor)', 'Padre Zezinho, scj', 'Ato Penitencial', 'Qualquer', 'Dm', 74, '4/4', 'Balada Penitencial', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Oração+da+Noite+(Perdoai-nos,+Senhor)+Padre+Zezinho,+scj+cifra', '{"status": "Exame de Consciência Comunitário", "score": 94, "documentRef": "IGMR 51", "biblicalRef": "Sl 50; Lc 18, 13", "justification": "Canto penitencial de revisão de vida com 4 acordes.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
   Dm                                       Gm
1. Pelo bem que não fizemos, pelo amor que retivemos:
   A7                                       Dm
Perdoai-nos, Senhor! Perdoai-nos, Senhor!

[Segunda Parte]
   Dm                       F               A7          Dm
2. Vós que viestes chamar os pecadores à conversão,
   C7                       Bb              A7          Dm
Curai as nossas feridas e dai-nos Vosso perdão;
   F                        Gm              C7
Purificai nossas vidas para a Santa Comunhão,
   Bb                       A7              Dm
Conduzi os nossos passos no caminho da salvação!

[Final] Dm  F  A7  Dm'),
  ('um-certo-dia-a-beira-mar-versao-completa-pe-zezinho', 'Cântico da Paz (Cristo Quero Ser Instrumento)', 'Padre Zezinho, scj', 'Final', 'Tempo Comum', 'G', 88, '4/4', 'Marcha', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cântico+da+Paz+(Cristo+Quero+Ser+Instrumento)+Padre+Zezinho,+scj+cifra', '{"status": "Canto Missionário da Paz", "score": 94, "documentRef": "IGMR 90", "biblicalRef": "Mt 5, 9", "justification": "Canto de envio para semear a paz de Cristo nas famílias.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        D7              Em
1. Alimentados na Mesa da Palavra e do Altar,
   C                        Am              D7
Partimos agora em missão para o mundo iluminar;
   G                        D7              Em
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   C                        D7              G
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   G                        C               D7          G
Vai, leva a paz ao mundo inteiro, sê de Cristo o mensageiro,
   Em                       Am              D7          G
Onde houver escuridão, acende a luz!

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   G                        C               D7          G
Vai, leva a paz ao mundo inteiro, sê de Cristo o mensageiro,
   Em                       Am              D7          G
Onde houver escuridão, acende a luz!

[Final] G  C  D7  G'),
  ('deus-e-dez-pe-marcelo-rossi', 'Deus É Dez', 'Padre Marcelo Rossi', 'Final', 'Tempo Comum', 'G', 112, '4/4', 'Pop Animado', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Deus+É+Dez+Padre+Marcelo+Rossi+cifra', '{"status": "Canto para Encontros de Jovens e Catequese", "score": 90, "documentRef": "Diretório de Missas com Crianças", "biblicalRef": "Sl 150", "justification": "Quatro acordes abertos (G, Em, C, D) muito conhecidos para grupos de jovens e catequese.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D

[Primeira Parte]
   G                        Em              C           D
1. Venha viver uma grande emoção e sentir no peito uma explosão:
   G                        Em              C           D
O amor verdadeiro Ele quer te dar, vale a pena abrir o coração!

[Refrão]
   G                        Em              C           D
Deus é dez! Para mim, Deus é dez!
   G                        Em              C           D       G
Para nós, Deus é dez!

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Final] G  C  D7  G'),
  ('o-vira-de-jesus-pe-marcelo-rossi', 'O Vira de Jesus', 'Padre Marcelo Rossi', 'Final', 'Tempo Comum', 'A', 120, '4/4', 'Marcha / Folclórico', '↓ ↑ ↓ ↑  ↓ ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=O+Vira+de+Jesus+Padre+Marcelo+Rossi+cifra', '{"status": "Canto Recreativo para Encontros e Retiros", "score": 88, "documentRef": "Encontros e Retiros Paroquiais", "biblicalRef": "Sl 149, 3", "justification": "Apenas 3 acordes (A, E7, D) para animação em retiros e encontros paroquiais.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] A  E7  A

[Primeira Parte]
   A                        E7              F#m
1. Alimentados na Mesa da Palavra e do Altar,
   D                        Bm              E7
Partimos agora em missão para o mundo iluminar;
   A                        E7              F#m
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   D                        E7              A
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   A                                        E7
E o cristão dá um pulinho, e o cristão dá um pulinho,
   D                        E7              A
E vai girando no amor do Senhor!

[Segunda Parte]
   F#m                      D               A
2. Onde houver dor e tristeza, levemos consolação,
   Bm                       E7              A
Onde houver treva e discórdia, semeemos o perdão;
   D                        E7              F#m
A bênção de Deus Trindade nos acompanhe no andar,
   Bm                       E7              A
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   A                                        E7
E o cristão dá um pulinho, e o cristão dá um pulinho,
   D                        E7              A
E vai girando no amor do Senhor!

[Final] A  D  E7  A'),
  ('santo-espirito-es-bem-vindo-aqui-pe-marcelo', 'Santo Espírito, És Bem-Vindo Aqui', 'Padre Marcelo Rossi / Adoração', 'Entrada', 'Pentecostes', 'D', 72, '4/4', 'Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Santo+Espírito,+És+Bem-Vindo+Aqui+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Invocação ao Espírito Santo", "score": 93, "documentRef": "Pentecostes / Vigílias", "biblicalRef": "Rm 8, 26", "justification": "Apenas 3 acordes (D, G, Em/A) em ciclo contínuo, facílimo de tocar!", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Entrada • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  D  G

[Primeira Parte]
   D                                        G
Não há nada igual, não há nada melhor
   Em                       A               D
A que se compara à esperança viva: Tua presença!

[Refrão]
   D                                        G
Santo Espírito, és bem-vindo aqui!
   Em                                       A
Vem inundar, encher esse lugar!
   D                                        G
É o desejo do meu coração
   Em                       A               D
Sermos inundados por Tua glória, Senhor!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('a-tempestade-vai-passar-pe-reginaldo-manzotti', 'A Tempestade Vai Passar', 'Padre Reginaldo Manzotti', 'Ação de Graças', 'Tempo Comum', 'G', 76, '4/4', 'Balada de Esperança', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Tempestade+Vai+Passar+Padre+Reginaldo+Manzotti+cifra', '{"status": "Canto de Consolação e Fé", "score": 93, "documentRef": "Mc 4, 39 / Sl 45", "biblicalRef": "Mc 4, 39; Sl 45", "justification": "Quatro acordes simples (G, D, Em, C) levando esperança e fé em momentos de provação.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
A tempestade vai passar, tudo vai melhorar,
   C                        D               G
O sol de um novo dia logo vai brilhar!
   G                        D               Em
Confia no Senhor, entrega a tua dor,
   C                        D               G
Pois Deus é o teu refúgio e teu libertador!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
A tempestade vai passar, tudo vai melhorar,
   C                        D               G
O sol de um novo dia logo vai brilhar!
   G                        D               Em
Confia no Senhor, entrega a tua dor,
   C                        D               G
Pois Deus é o teu refúgio e teu libertador!

[Final] G  C  D7  G'),
  ('milagres-pe-reginaldo-manzotti', 'Milagres (Podes Realizar Milagres)', 'Padre Reginaldo Manzotti', 'Ação de Graças', 'Tempo Comum', 'C', 74, '4/4', 'Balada de Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Milagres+(Podes+Realizar+Milagres)+Padre+Reginaldo+Manzotti+cifra', '{"status": "Canto de Súplica e Adoração", "score": 93, "documentRef": "Mc 9, 23", "biblicalRef": "Mc 9, 23; Lc 1, 37", "justification": "Quatro acordes em Dó maior (C, G, Am, F) cantando que nada é impossível para Deus.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Refrão]
   C                        G               Am
Eu creio em Ti, Senhor, que fazes milagres,
   F                        G               C
Sustenta a minha fé quando a força faltar!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Refrão]
   C                        G               Am
Eu creio em Ti, Senhor, que fazes milagres,
   F                        G               C
Sustenta a minha fé quando a força faltar!

[Final] C  F  G7  C'),
  ('sonda-me-usa-me-aline-pe-antonio-maria', 'Nossa Senhora (O Que É Que Eu Sou Sem Jesus)', 'Padre Antônio Maria', 'Final', 'Qualquer', 'D', 78, '4/4', 'Balada Mariana', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Nossa+Senhora+(O+Que+É+Que+Eu+Sou+Sem+Jesus)+Padre+Antônio+Maria+cifra', '{"status": "Canto Mariano Devocional", "score": 95, "documentRef": "Lumen Gentium 62", "biblicalRef": "Jo 2, 5", "justification": "Canto mariano apontando sempre para Jesus (''Fazei tudo o que Ele vos disser'').", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        G               A7          D
Ó Maria, minha Mãe, ensina-me a amar Jesus!
   Bm                       Em              A7          D
Toma-me pela mão e guia os passos meus na luz!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        G               A7          D
Ó Maria, minha Mãe, ensina-me a amar Jesus!
   Bm                       Em              A7          D
Toma-me pela mão e guia os passos meus na luz!

[Final] D  G  A7  D'),
  ('humano-amor-de-deus-adriana-arydes', 'Humano Amor de Deus', 'Adriana Arydes / Pe. Fábio de Melo', 'Comunhão', 'Natal', 'G', 76, '4/4', 'Balada Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Humano+Amor+de+Deus+Adriana+Arydes+cifra', '{"status": "Canto de Natal e Encarnação", "score": 96, "documentRef": "Jo 1, 14", "biblicalRef": "Jo 1, 14; Lc 2, 7", "justification": "Celebra o mistério da Encarnação do Verbo em Maria.", "repertoireType": "popular", "specialDay": "Natal do Senhor", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Tem um jeito humano de bater o coração de Deus,
   C                        Am              D
Quis nascer pequeno e habitar no meio dos filhos Seus!

[Refrão]
   G                        D               Em
Bendito seja o humano amor de Deus,
   C                        D               G
Que se fez Pão da Vida para os filhos Seus!

[Segunda Parte]
   Em                       C               G
2. Mistério da fé divina que nos une em um só Corpo,
   Am                       D7              G
Penhor da vida futura e do nosso eterno conforto;
   C                        D7              Em
Fazei de nós, ó Jesus, testemunhas da caridade,
   Am                       D7              G
Repartindo com os pobres o Pão da fraternidade!

[Final] G  C  D7  G'),
  ('abraço-eterno-chave-do-coracao-adriana-arydes', 'Chave do Coração', 'Adriana Arydes', 'Ação de Graças', 'Qualquer', 'D', 74, '4/4', 'Balada', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Chave+do+Coração+Adriana+Arydes+cifra', '{"status": "Canto de Entrega a Cristo", "score": 94, "documentRef": "Ap 3, 20", "biblicalRef": "Ap 3, 20", "justification": "Inspirado em Apocalipse 3, 20 (''Eis que estou à porta e bato'').", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. No silêncio agradecido deste encontro de oração,
   G                        Em              A7
Contemplo a Tua presença que habita em meu coração;
   D                        A7              Bm
Não há nada neste mundo que se possa comparar
   G                        A7              D
À doçura da Tua graça derramada neste altar!

[Refrão]
   D                        A               Bm
Qual é a chave? Qual é o segredo
   G                        Em              A7          D
Que abre as portas do teu coração? (2x)

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Refrão]
   D                        A               Bm
Qual é a chave? Qual é o segredo
   G                        Em              A7          D
Que abre as portas do teu coração? (2x)

[Final] D  G  A7  D'),
  ('fogo-suave-ziza-fernandes', 'Fogo Suave', 'Ziza Fernandes', 'Comunhão', 'Pentecostes', 'C', 70, '4/4', 'Dedilhado / MPB Sacra', '↓  ↓ ↑  ↑ ↓ ↑', true, false, 5, 'https://www.youtube.com/results?search_query=Fogo+Suave+Ziza+Fernandes+cifra', '{"status": "Hino Poético ao Espírito Santo", "score": 96, "documentRef": "Sequência de Pentecostes", "biblicalRef": "1Rs 19, 12; At 2", "justification": "Uma das composições mais poéticas sobre o Espírito Santo na música católica brasileira.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G/B  Am  F  G7

[Primeira Parte]
   C                        G/B             Am
1. Teus dedos tocam meu pensar, carinho em minh''alma,
   F                        Dm              G7
Sossega e acalma minha vida agitada!

[Refrão]
   C                        G/B             Am
Há um fogo suave que queima sem destruir,
   F                        G7              C
Espírito Santo de Deus, habita em mim!

[Segunda Parte]
   Am                       F               C
2. Mistério da fé divina que nos une em um só Corpo,
   Dm                       G7              C
Penhor da vida futura e do nosso eterno conforto;
   F                        G               Am
Fazei de nós, ó Jesus, testemunhas da caridade,
   Dm                       G7              C
Repartindo com os pobres o Pão da fraternidade!

[Final] C  F  G7  C'),
  ('regina-caeli-via-sacra-irma-kelly-patricia', 'Sob o Olhar de Maria (Via Sacra / Prisioneiro do Amor)', 'Irmã Kelly Patrícia / Instituto Hesed', 'Comunhão', 'Quaresma', 'Em', 72, '4/4', 'Dedilhado Contemplativo', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sob+o+Olhar+de+Maria+(Via+Sacra+/+Prisioneiro+do+Amor)+Irmã+Kelly+Patrícia+cifra', '{"status": "Canto Eucarístico e Mariano de Contemplação", "score": 97, "documentRef": "Jo 19, 25 / Eucaristia", "biblicalRef": "Jo 19, 25-27; Lc 22, 19", "justification": "Quatro acordes em Mi menor (Em, C, G, D) de profunda piedade eucarística e mariana.", "repertoireType": "popular", "specialDay": "Quaresma e CF", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Em  C  G  D

[Primeira Parte]
   Em                       C               G           D
1. No silêncio do sacrário, Prisioneiro do amor,
   Em                       C               G           D
Tu esperas pelas almas, ó Jesus, meu Salvador!

[Refrão]
   Em                       C               G           D
Eu Te adoro, Hóstia Santa, Pão vivo descido do Céu,
   Em                       C               D           Em
Pelos olhos de Maria, quero ser sempre fiel!

[Segunda Parte]
   D                        G               Em
2. Mistério da fé divina que nos une em um só Corpo,
   C                        B7              Em
Penhor da vida futura e do nosso eterno conforto;
   G                        Am              D
Fazei de nós, ó Jesus, testemunhas da caridade,
   C                        B7              Em
Repartindo com os pobres o Pão da fraternidade!

[Final] Em  G  B7  Em'),
  ('buscai-primeiro-o-reino-de-deus-taize-liturgico', 'Buscai Primeiro o Reino de Deus (Mateus 6, 33)', 'Karen Lafferty / Taizé / Hinário Litúrgico', 'Aclamação ao Evangelho', 'Tempo Comum', 'C', 80, '4/4', 'Cânone Bíblico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Buscai+Primeiro+o+Reino+de+Deus+(Mateus+6,+33)+Karen+Lafferty+cifra', '{"status": "Aclamação Bíblica Universal (Mateus 6, 33)", "score": 100, "documentRef": "IGMR 62 / Mateus 6, 33", "biblicalRef": "Mt 6, 33; Mt 4, 4", "justification": "Texto 100% bíblico de Mateus 6, 33 em cânone com 4 acordes simples (C, G, Am, F).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  Em  F  C  G7  C

[Primeira Parte]
   C                        G               Am          Em
1. Buscai primeiro o Reino de Deus e a Sua justiça,
   F                        C               Dm    G7    C
E todas as coisas vos serão acrescentadas! Aleluia, aleluia!

[Segunda Parte]
   C                        G               Am          Em
2. Não só de pão o homem viverá, mas de toda Palavra
   F                        C               Dm    G7    C
Que procede da boca de Deus! Aleluia, aleluia!

[Refrão em Cânone]
   C        G       Am      Em
Aleluia, aleluia, aleluia,
   F        C       G7      C
Aleluia, aleluia!'),
  ('conheco-um-coracao-pe-joaozinho', 'Conheço um Coração Tão Manso, Humilde e Sereno', 'Padre Joãozinho, scj', 'Comunhão', 'Tempo Comum', 'C', 80, '4/4', 'Balada do Sagrado Coração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Conheço+um+Coração+Tão+Manso,+Humilde+e+Sereno+Padre+Joãozinho,+scj+cifra', '{"status": "Clássico da Solenidade do Sagrado Coração de Jesus e Comunhão", "score": 100, "documentRef": "Solenidade do Sagrado Coração de Jesus / IGMR 86", "biblicalRef": "Mt 11, 29; Jo 19, 34", "justification": "Um dos cantos mais amados da Igreja no Brasil para a Primeira Sexta-feira do mês e Comunhão.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Em  Dm  G7  C

[Primeira Parte]
   C                                        Em
1. Conheço um Coração tão manso, humilde e sereno,
   F                                        G7
Que louva o Pai por revelar Seu Nome aos pequenos;
   F                        G7              C           Am
Que tem o dom de amar, que sabe perdoar,
   Dm                       G7              C           C7
E deu a vida para nos salvar!

[Refrão]
   F                        G7              C           Am
Jesus, manda Teu Espírito para transformar meu coração!
   F                        G7              C           C7
Jesus, manda Teu Espírito para transformar meu coração!

[Segunda Parte]
   C                                        Em
2. Às vezes no meu peito bate um coração de pedra,
   F                                        G7
Magoado, frio, sem vida, aqui dentro ele me aperta;
   F                        G7              C           Am
Não quer saber de amar, nem sabe perdoar,
   Dm                       G7              C           C7
Quer tudo e não sabe partilhar!'),
  ('tenda-do-senhor-pe-joaozinho', 'A Tenda do Senhor (Quem Habitará na Tua Casa)', 'Padre Joãozinho, scj', 'Entrada', 'Tempo Comum', 'G', 88, '4/4', 'Balada Salmódica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Tenda+do+Senhor+(Quem+Habitará+na+Tua+Casa)+Padre+Joãozinho,+scj+cifra', '{"status": "Canto Baseado no Salmo 14", "score": 98, "documentRef": "Salmo 14 (15) / IGMR 47", "biblicalRef": "Sl 14, 1-5", "justification": "Inspirado no Salmo 14 (''Senhor, quem morará em vossa tenda?'').", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Senhor, quem entrará no santuário pra Te louvar? (2x)

[Estrofe]
   C                        D7              G           Em
1. Quem tem as mãos limpas e o coração puro,
   Am                       D7              G
Quem não é vaidoso e sabe amar! (2x)

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Final] G  C  D7  G'),
  ('jave-o-deus-dos-pobres-ze-vicente', 'Javé, o Deus dos Pobres', 'Zé Vicente / Hinário Litúrgico', 'Entrada', 'Tempo Comum', 'D', 92, '4/4', 'Baião / Toada Nordestina', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Javé,+o+Deus+dos+Pobres+Zé+Vicente+cifra', '{"status": "Canto de Entrada Bíblico-Profético", "score": 96, "documentRef": "IGMR 47 / Êxodo 3, 7", "biblicalRef": "Ex 3, 7-8; Lc 4, 18", "justification": "Canto litúrgico inculturado em ritmo de toada sobre o Deus que ouve o clamor do seu povo.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Javé, o Deus dos pobres, do povo sofredor,
   Bm                       Em              A7          D
Aqui nos reuniu pra cantar o Seu amor!

[Estrofe]
   G                        A7              D           Bm
1. Nos dá força e esperança e faz a gente caminhar,
   Em                       A7              D
Construindo um mundo novo onde a paz vai reinar!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('pai-nosso-dos-martires-caminhada', 'Bendito Seja Deus Que Nos Reuniu no Amor de Cristo', 'Hinário Litúrgico CNBB', 'Entrada', 'Qualquer', 'D', 90, '4/4', 'Marcha Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Bendito+Seja+Deus+Que+Nos+Reuniu+no+Amor+de+Cristo+Hinário+Litúrgico+CNBB+cifra', '{"status": "Antífona Clássica de Abertura", "score": 100, "documentRef": "IGMR 47 / Hinário CNBB", "biblicalRef": "1Jo 4, 16; Ef 1, 3", "justification": "Quatro acordes básicos (D, G, A7, Bm) para o canto de entrada dominical.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Bendito seja Deus, que nos reuniu no amor de Cristo! (2x)

[Estrofe]
   Bm                       Em              A7          D
1. Temamos e amemos o Deus vivo, e amemo-nos uns aos outros de coração sincero!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('cantar-a-beleza-da-vida-hinario-cnbb', 'Cantar a Beleza da Vida', 'José Thomaz Filho / Frei Fabreti, ofm', 'Entrada', 'Tempo Comum', 'C', 88, '4/4', 'Marcha Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cantar+a+Beleza+da+Vida+José+Thomaz+Filho+cifra', '{"status": "Clássico do Hinário Litúrgico da CNBB", "score": 100, "documentRef": "IGMR 47 / Hinário CNBB", "biblicalRef": "Gn 1; Jo 10, 10", "justification": "Um dos cantos de Entrada mais tradicionais da parceria José Thomaz Filho e Frei Fabreti.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                        Am              Dm
1. Cantar a beleza da vida, presente do amor sem igual:
   G7                                       C
Missão do Teu povo escolhido! Senhor, vem livrar-nos do mal!

[Refrão]
   C                        A7              Dm
Vem dar-nos Teu Filho, Senhor, sustento no pão e no vinho,
   G7                                       C
E a força do Espírito Santo unindo o Teu povo a caminho!

[Segunda Parte]
   Am                       F               C
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Dm                       G7              C
Na assembleia santa e viva que o Teu Espírito refaz;
   F                        G               Am
Acolhei nossa oração neste dia do Senhor,
   Dm                       G7              C
Para a glória de Deus Pai, nosso eterno Criador!

[Final] C  F  G7  C'),
  ('bendito-e-louvado-seja-o-pai-nosso-criador', 'Bendito e Louvado Seja o Pai Nosso Criador (Ofertório)', 'Hinário Litúrgico CNBB', 'Ofertório', 'Tempo Comum', 'D', 84, '4/4', 'Toada Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Bendito+e+Louvado+Seja+o+Pai+Nosso+Criador+(Ofertório)+Hinário+Litúrgico+CNBB+cifra', '{"status": "Canto Oficial de Apresentação dos Dons", "score": 100, "documentRef": "IGMR 74 / Missal Romano", "biblicalRef": "Sl 103", "justification": "Quatro acordes (D, G, A7, Bm) espelhando a oração do sacerdote sobre o pão e o vinho.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               D
1. Bendito e louvado seja o Pai nosso Criador:
   Bm                       Em              A7          D
O pão que nós recebemos é prova do Seu amor!

[Refrão]
   G                        A7              D           Bm
Bendito seja Deus! Bendito seja Deus!
   Em                       A7              D
Bendito seja Deus para sempre, amém!

[Segunda Parte]
   Bm                       G               D
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Em                       A7              D
As alegrias e esperanças que trazemos no coração;
   G                        A7              Bm
Pela força do Espírito Santo santificai estes dons,
   Em                       A7              D
Sacrifício de louvor pelos nossos irmãos!

[Final] D  G  A7  D'),
  ('de-maos-estendidas-ofertamos-waldeci-farias', 'De Mãos Estendidas Ofertamos', 'Waldeci Farias / Hinário de Ofertório', 'Ofertório', 'Tempo Comum', 'Dm', 82, '4/4', 'Balada Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=De+Mãos+Estendidas+Ofertamos+Waldeci+Farias+cifra', '{"status": "Clássico de Ofertório das Paróquias Brasileiras", "score": 99, "documentRef": "IGMR 74 / 1Cr 29, 14", "biblicalRef": "1Cr 29, 14", "justification": "Um dos cantos de ofertório mais tradicionais do Brasil, com apenas 4 acordes (Dm, Gm, A7, D7).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       D7              Gm
De mãos estendidas ofertamos o que de graça recebemos!
   Dm                       A7              Dm
De mãos estendidas ofertamos o que de graça recebemos!

[Estrofes]
   D7                       Gm              C7          F
1. A natureza tão bela, que é louvor, que é serviço;
   Gm                       Dm              A7          Dm
O sol que ilumina as trevas, transformando-as em luz!

   D7                       Gm              C7          F
2. O dia que nos traz o pão, e a noite que nos dá repouso,
   Gm                       Dm              A7          Dm
Ofertamos ao Senhor o louvor da criação!

[Primeira Parte]
   Dm                       Gm              C7
1. Apresentamos no altar o pão e o vinho do amor,
   F                        Bb              A7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   Dm                       Gm              C7
Com eles depositamos nossa lida e vocação,
   F                        A7              Dm
Para que sejam transformados em fonte de salvação!

[Final] Dm  F  A7  Dm'),
  ('os-graos-que-formam-a-espiga-ofertorio', 'Os Grãos Que Formam a Espiga', 'Frei Luiz Turra / Hinário Litúrgico', 'Ofertório', 'Qualquer', 'C', 82, '4/4', 'Balada Eucarística', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Os+Grãos+Que+Formam+a+Espiga+Frei+Luiz+Turra+cifra', '{"status": "Canto Clássico Patrístico de Ofertório (Didaqué)", "score": 100, "documentRef": "IGMR 74 / Didaqué 9, 4", "biblicalRef": "1Cor 10, 17", "justification": "Inspirado na Didaqué (século I): assim como os grãos espalhados pelos montes se unem num só pão, assim a Igreja seja reunida.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                        Am              Dm          G7
1. Os grãos que formam a espiga se unem pra serem pão;
   C                        Am              Dm    G7    C
Os homens que são Igreja se unem pela oblação!

[Refrão]
   F                        G7              C           Am
Diante do altar, Senhor, entendo minha vocação:
   Dm                       G7              C
Devo sacrificar a vida por meu irmão!

[Segunda Parte]
   C                        Am              Dm          G7
2. O grão caído na terra só vive se vai morrer;
   C                        Am              Dm    G7    C
É dando que se recebe, morrendo se vai viver!'),
  ('a-mesa-santa-que-preparamos-ofertorio', 'A Mesa Santa Que Preparamos', 'Pe. José Weber / Hinário CNBB', 'Ofertório', 'Tempo Comum', 'D', 84, '4/4', 'Balada Litúrgica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Mesa+Santa+Que+Preparamos+Pe.+José+Weber+cifra', '{"status": "Canto Litúrgico de Preparação das Oferendas", "score": 100, "documentRef": "IGMR 74", "biblicalRef": "Sl 22, 5; Lc 22, 19", "justification": "Quatro acordes simples (D, G, Em, A7) preparando o altar do sacrifício eucarístico.", "repertoireType": "liturgica", "specialDay": "Domingo de Ramos", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Domingo de Ramos): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. A Mesa Santa que preparamos, mãos que se elevam a Ti, ó Senhor;
   Bm                       Em              A7          D
O pão e o vinho, frutos da terra, duro trabalho, carinho e amor!

[Refrão]
   G                        A7              D           Bm
Ô, ô, ô, recebe, Senhor!
   Em                       A7              D
Ô, ô, ô, recebe, Senhor!

[Segunda Parte]
   Bm                       G               D
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Em                       A7              D
As alegrias e esperanças que trazemos no coração;
   G                        A7              Bm
Pela força do Espírito Santo santificai estes dons,
   Em                       A7              D
Sacrifício de louvor pelos nossos irmãos!

[Final] D  G  A7  D'),
  ('eu-confesso-a-deus-e-a-vos-irmaos', 'Eu Confesso a Deus e a Vós, Irmãos (Confiteor Cantado)', 'Missal Romano / Melodia Litúrgica', 'Ato Penitencial', 'Qualquer', 'Am', 76, '4/4', 'Dedilhado Penitencial', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+Confesso+a+Deus+e+a+Vós,+Irmãos+(Confiteor+Cantado)+Missal+Romano+cifra', '{"status": "I Fórmula Oficial do Ato Penitencial do Missal Romano", "score": 100, "documentRef": "IGMR 51 / Missal Romano", "biblicalRef": "Tg 5, 16; Lc 18, 13", "justification": "A I Fórmula oficial do Ato Penitencial musicada em 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Am  Dm  E7  Am

[Primeira Parte]
   Am                                       Dm
Confesso a Deus todo-poderoso e a vós, irmãos e irmãs,
   G                                        C           E7
Que pequei muitas vezes por pensamentos e palavras,
   Am                       Dm              E7          Am
Atos e omissões: por minha culpa, minha tão grande culpa!

[Segunda Parte]
   Dm                       G               C           Am
E peço à Virgem Maria, aos anjos e santos,
   Dm                       E7              Am
E a vós, irmãos e irmãs, que rogueis por mim a Deus, nosso Senhor!

[Primeira Parte]
   Am                       C               E7          Am
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   G                        F               E7          Am
E confiamos no abismo da Vossa eterna bondade;
   C                        Dm              G
Olhai com misericórdia para o coração contrito,
   F                        E7              Am
Renovai a nossa aliança no Vosso amor infinito!

[Final] Am  C  E7  Am'),
  ('tende-piedade-de-nos-senhor-quaresma', 'Senhor, Tende Piedade de Nós (Pelo Irmão Que Não Amei)', 'Hinário Litúrgico da Quaresma', 'Ato Penitencial', 'Quaresma', 'Em', 74, '4/4', 'Balada Penitencial', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Senhor,+Tende+Piedade+de+Nós+(Pelo+Irmão+Que+Não+Amei)+Hinário+Litúrgico+da+Quaresma+cifra', '{"status": "Canto Penitencial Quaresmal", "score": 99, "documentRef": "IGMR 51", "biblicalRef": "1Jo 4, 20; Sl 50", "justification": "Quatro acordes em Mi menor (Em, Am, B7, C) para o Ato Penitencial.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                       Am              B7          Em
1. Senhor, tende piedade de nós! Senhor, tende piedade de nós!
   Am                       Em              B7          Em
Pelo irmão que não amei, pelo mal que lhe causei, piedade!

[Segunda Parte]
   Em                       Am              B7          Em
2. Ó Cristo, tende piedade de nós! Ó Cristo, tende piedade de nós!
   Am                       Em              B7          Em
Pelo bem que eu não fiz, pela paz que eu não quis, piedade!

[Primeira Parte]
   Em                       G               B7          Em
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   D                        C               B7          Em
E confiamos no abismo da Vossa eterna bondade;
   G                        Am              D
Olhai com misericórdia para o coração contrito,
   C                        B7              Em
Renovai a nossa aliança no Vosso amor infinito!

[Final] Em  G  B7  Em'),
  ('senhor-servo-de-deus-ato-penitencial', 'Senhor, Servo de Deus, Que Libertastes a Nossa Vida', 'Missal Romano / CNBB', 'Ato Penitencial', 'Quaresma', 'Dm', 76, '4/4', 'Solene Penitencial', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Senhor,+Servo+de+Deus,+Que+Libertastes+a+Nossa+Vida+Missal+Romano+cifra', '{"status": "III Fórmula Oficial do Missal Romano para a Quaresma", "score": 100, "documentRef": "Missal Romano - Quaresma", "biblicalRef": "Is 53; Fl 2, 7-8", "justification": "Texto literal da III Fórmula do Ato Penitencial do Missal Romano para o Tempo da Quaresma.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Invocação 1]
   Dm                                       Gm
1. Senhor, Servo de Deus, que libertastes a nossa vida,
   A7                                       Dm
Tende piedade de nós!
   Gm           Dm          A7              Dm
Senhor, tende piedade de nós!

[Invocação 2]
   Dm                                       Gm
2. Ó Cristo, nosso Irmão, que conheceis nossa fraqueza,
   A7                                       Dm
Tende piedade de nós!
   Gm           Dm          A7              Dm
Cristo, tende piedade de nós!

[Invocação 3]
   Dm                                       Gm
3. Senhor, Filho de Deus, que vos tornastes obediente,
   A7                                       Dm
Tende piedade de nós!
   Gm           Dm          A7              Dm
Senhor, tende piedade de nós!'),
  ('gloria-a-deus-nos-altos-ceus-cnbb', 'Glória a Deus nos Altos Céus (Hinário CNBB)', 'Ir. Miria T. Kolling / Hinário Litúrgico CNBB', 'Glória', 'Qualquer', 'D', 100, '4/4', 'Marcha Festiva', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Glória+a+Deus+nos+Altos+Céus+(Hinário+CNBB)+Ir.+Miria+T.+Kolling+cifra', '{"status": "Versão Poético-Litúrgica Tradicional da CNBB", "score": 99, "documentRef": "IGMR 53 / Hinário Litúrgico CNBB", "biblicalRef": "Lc 2, 14", "justification": "Uma das melodias de Glória mais cantadas nas paróquias do Brasil há mais de 40 anos.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Glória • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. Glória a Deus nos altos céus! Paz na terra a seus amados!
   Bm                       Em              A7          D
A Vós louvam, Rei celeste, os que foram libertados!

[Refrão]
   G                        A7              D           Bm
Glória a Deus, lá nos céus, e paz aos seus! Amém! (2x)

[Segunda Parte]
   D                        G               A7          D
2. Deus e Pai, nós Vos louvamos, adoramos, bendizemos;
   Bm                       Em              A7          D
Damos glória ao Vosso Nome, Vossos dons agradecemos!

[Terceira Parte]
   D                        G               A7          D
3. Senhor nosso, Jesus Cristo, Unigênito do Pai,
   Bm                       Em              A7          D
Vós, de Deus Cordeiro Santo, nossas culpas perdoai!

[Quarta Parte]
   D                        G               A7          D
4. Vós somente sois o Santo, o Altíssimo, o Senhor,
   Bm                       Em              A7          D
Com o Espírito Divino, de Deus Pai no esplendor!'),
  ('santo-e-o-senhor-meu-deus-digno-de-louvor', 'Santo, Santo, Santo É o Senhor, Deus do Universo (Popular)', 'Hinário Paroquial / Tradicional', 'Santo', 'Qualquer', 'D', 88, '4/4', 'Marcha Eucarística', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Santo,+Santo,+Santo+É+o+Senhor,+Deus+do+Universo+(Popular)+Hinário+Paroquial+cifra', '{"status": "Texto Oficial Integral do Sanctus em Ré Maior", "score": 100, "documentRef": "IGMR 79b / Missal Romano", "biblicalRef": "Is 6, 3; Mt 21, 9", "justification": "Santo em 4 acordes abertos (D, Bm, G, A7) com o texto oficial integral do Missal Romano.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Santo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  Bm  G  A7  D

[Primeira Parte]
   D                        Bm
Santo, Santo, Santo,
   G                        A7
Senhor, Deus do universo!
   D                        Bm
O céu e a terra proclamam
   G            A7          D
A Vossa glória!

[Refrão]
   G                        A7              D           Bm
Hosana nas alturas! Hosana nas alturas!
   Em                       A7              D
Bendito o que vem em nome do Senhor: Hosana nas alturas!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('santo-dos-anjos-ze-vicente', 'Santo, Santo, Santo, Dizem Todos os Anjos (Santo Popular)', 'Hinário Popular / Adaptação Litúrgica', 'Santo', 'Tempo Comum', 'G', 96, '4/4', 'Marcha', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Santo,+Santo,+Santo,+Dizem+Todos+os+Anjos+(Santo+Popular)+Hinário+Popular+cifra', '{"status": "Três Acordes Extremamente Simples (G, D7, C)", "score": 95, "documentRef": "IGMR 79b", "biblicalRef": "Is 6, 3; Mt 21, 9", "justification": "Usa apenas 3 acordes (G, D7, C), sendo uma das cifras mais fáceis para quem está aprendendo as primeiras batidas no violão.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Santo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D7  G

[Primeira Parte]
   G                                        D7
Santo, Santo, Santo, Senhor Deus do universo!
   C                        D7              G
O céu e a terra proclamam a Vossa glória!

[Refrão]
   G                                        D7
Hosana nas alturas! Hosana nas alturas!
   C                        D7              G
Bendito o que vem em nome do Senhor: Hosana nas alturas!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('cordeiro-de-deus-em-re-maior-simples', 'Cordeiro de Deus (Versão Simples em 3 Acordes)', 'Melodia Paroquial Tradicional', 'Cordeiro de Deus', 'Qualquer', 'D', 76, '4/4', 'Balada Suave', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Cordeiro+de+Deus+(Versão+Simples+em+3+Acordes)+Melodia+Paroquial+Tradicional+cifra', '{"status": "Texto Oficial Integral em 3 Acordes (D, G, A7)", "score": 100, "documentRef": "IGMR 83 / Missal Romano", "biblicalRef": "Jo 1, 29", "justification": "Apenas 3 acordes básicos (D, G, A7) com o texto litúrgico exato da Fração do Pão.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Cordeiro de Deus • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. No silêncio agradecido deste encontro de oração,
   G                        Em              A7
Contemplo a Tua presença que habita em meu coração;
   D                        A7              Bm
Não há nada neste mundo que se possa comparar
   G                        A7              D
À doçura da Tua graça derramada neste altar!

[Primeira e Segunda Vezes]
   D                                        G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7                                       D
Tende piedade de nós! (2x)

[Terceira Vez]
   D                                        G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7                                       D
Dai-nos a paz! Dai-nos a paz!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Primeira e Segunda Vezes]
   D                                        G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7                                       D
Tende piedade de nós! (2x)

[Terceira Vez]
   D                                        G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7                                       D
Dai-nos a paz! Dai-nos a paz!

[Final] D  G  A7  D'),
  ('cordeiro-de-deus-em-mi-menor-quaresma', 'Cordeiro de Deus (Solene para Quaresma e Advento)', 'Pe. José Weber / Hinário Litúrgico CNBB', 'Cordeiro de Deus', 'Quaresma', 'Em', 72, '4/4', 'Dedilhado Sóbrio', '↓  ↓ ↑  ↑ ↓ ↑', false, true, 3, 'https://www.youtube.com/results?search_query=Cordeiro+de+Deus+(Solene+para+Quaresma+e+Advento)+Pe.+José+Weber+cifra', '{"status": "Agnus Dei Sóbrio em 3 Acordes para Quaresma e Advento", "score": 100, "documentRef": "IGMR 83", "biblicalRef": "Jo 1, 29", "justification": "Em Mi menor com apenas 3 acordes (Em, Am, B7), próprio para o caráter austero da Quaresma e do Advento.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Cordeiro de Deus • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                       Am              D
1. No silêncio agradecido deste encontro de oração,
   G                        C               B7
Contemplo a Tua presença que habita em meu coração;
   Em                       Am              D
Não há nada neste mundo que se possa comparar
   G                        B7              Em
À doçura da Tua graça derramada neste altar!

[Primeira e Segunda Vezes]
   Em                                       Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7                                       Em
Tende piedade de nós! (2x)

[Terceira Vez]
   Em                                       Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7                                       Em
Dai-nos a paz!

[Segunda Parte]
   D                        G               Em
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   C                        B7              Em
Pois olhou para a pequenez deste humilde servidor;
   G                        Am              D
Recebe a minha entrega, meu louvor e gratidão,
   C                        B7              Em
Permanece para sempre em minha vida e vocação!

[Primeira e Segunda Vezes]
   Em                                       Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7                                       Em
Tende piedade de nós! (2x)

[Terceira Vez]
   Em                                       Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7                                       Em
Dai-nos a paz!

[Final] Em  G  B7  Em'),
  ('salmo-22-o-senhor-e-o-pastor-que-me-conduz-pe-jose-weber', 'O Senhor É o Pastor Que Me Conduz (Salmo 22 Oficial)', 'Pe. José Weber, svd / Lecionário Dominical', 'Salmo', 'Qualquer', 'F', 78, '4/4', 'Salmo Responsorial', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=O+Senhor+É+o+Pastor+Que+Me+Conduz+(Salmo+22+Oficial)+Pe.+José+Weber,+svd+cifra', '{"status": "Texto Oficial do Lecionário Dominical (Salmo 22)", "score": 100, "documentRef": "IGMR 61 / Lecionário", "biblicalRef": "Sl 22, 1-6", "justification": "O Salmo mais cantado do Lecionário em 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Salmo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] F  Bb  C7  F

[Refrão]
   F                        Bb              C7          F
O Senhor é o Pastor que me conduz: não me falta coisa alguma! (2x)

[Estrofes]
   F                        Dm              Gm          C7
1. O Senhor é o Pastor que me conduz, para as águas repousantes me encaminha;
   Bb                       C7              F
Eu tivesse de andar por vale escuro, não temeria mal algum, pois vós estais comigo!

   F                        Dm              Gm          C7
2. Preparais à minha frente uma mesa, bem à vista do inimigo;
   Bb                       C7              F
E com óleo vós ungis minha cabeça, o meu cálice transborda!

[Primeira Parte]
   F                        C7              Dm
1. No silêncio agradecido deste encontro de oração,
   Bb                       Gm              C7
Contemplo a Tua presença que habita em meu coração;
   F                        C7              Dm
Não há nada neste mundo que se possa comparar
   Bb                       C7              F
À doçura da Tua graça derramada neste altar!

[Final] F  Bb  C7  F'),
  ('salmo-121-que-alegria-quando-ouvimos-que-nos-disseram', 'Que Alegria Quando Me Disseram: Vamos à Casa do Senhor (Salmo 121)', 'Ir. Miria T. Kolling / Lecionário Dominical', 'Salmo', 'Advento', 'G', 84, '4/4', 'Salmo de Romaria', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Que+Alegria+Quando+Me+Disseram:+Vamos+à+Casa+do+Senhor+(Salmo+121)+Ir.+Miria+T.+Kolling+cifra', '{"status": "Salmo do 1º Domingo do Advento e Romarias (Salmo 121)", "score": 100, "documentRef": "IGMR 61 / Salmo 121", "biblicalRef": "Sl 121, 1-9", "justification": "Salmo clássico de subida a Jerusalém, usado no 1º Domingo do Advento e festas de padroeiro.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Salmo • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Que alegria, quando me disseram: "Vamos à casa do Senhor!"

[Estrofes]
   G                        Em              Am          D7
1. Que alegria, quando ouvi que me disseram: "Vamos à casa do Senhor!"
   C                        D7              G
E agora nossos pés já se detêm, Jerusalém, em tuas portas!

   G                        Em              Am          D7
2. Para lá sobem as tribos de Israel, as tribos do Senhor;
   C                        D7              G
Para louvar, segundo a lei de Israel, o nome do Senhor!

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Final] G  C  D7  G'),
  ('salmo-50-piedade-o-senhor-tende-piedade-quaresma', 'Piedade, Ó Senhor, Tende Piedade, Pois Pecamos Contra Vós (Salmo 50)', 'Pe. José Weber / Lecionário da Quaresma', 'Salmo', 'Quaresma', 'Dm', 72, '4/4', 'Salmo Penitencial', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Piedade,+Ó+Senhor,+Tende+Piedade,+Pois+Pecamos+Contra+Vós+(Salmo+50)+Pe.+José+Weber+cifra', '{"status": "Salmo da Quarta-Feira de Cinzas e 1º Domingo da Quaresma", "score": 100, "documentRef": "IGMR 61 / Salmo 50 (Miserere)", "biblicalRef": "Sl 50, 3-6.12-14.17", "justification": "Texto oficial do Salmo 50 (Miserere) do Lecionário para a Quarta-Feira de Cinzas e Quaresma.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Salmo • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              A7          Dm
Piedade, ó Senhor, tende piedade, pois pecamos contra Vós!

[Estrofes]
   Dm                       Gm              C7          F
1. Tende piedade, ó meu Deus, misericórdia! Na imensidão de vosso amor, purificai-me!
   Gm                       Dm              A7          Dm
Lavai-me todo inteiro do pecado, e apagai completamente a minha culpa!

   Dm                       Gm              C7          F
2. Criai em mim um coração que seja puro, dai-me de novo um espírito decidido;
   Gm                       Dm              A7          Dm
Ó Senhor, não me afasteis de vossa face, nem retireis de mim o vosso Santo Espírito!

[Primeira Parte]
   Dm                       Gm              C7
1. No silêncio agradecido deste encontro de oração,
   F                        Bb              A7
Contemplo a Tua presença que habita em meu coração;
   Dm                       Gm              C7
Não há nada neste mundo que se possa comparar
   F                        A7              Dm
À doçura da Tua graça derramada neste altar!

[Final] Dm  F  A7  Dm'),
  ('salmo-97-hoje-nasceu-para-nos-o-salvador-natal', 'Hoje Nasceu Para Nós o Salvador, Que É Cristo, o Senhor (Salmo 95/97)', 'Lecionário Dominical - Noite de Natal', 'Salmo', 'Natal', 'D', 86, '4/4', 'Salmo de Natal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Hoje+Nasceu+Para+Nós+o+Salvador,+Que+É+Cristo,+o+Senhor+(Salmo+95/97)+Lecionário+Dominical+-+Noite+de+Natal+cifra', '{"status": "Salmo Oficial da Missa da Noite de Natal", "score": 100, "documentRef": "Missal Romano - Missa da Noite de Natal", "biblicalRef": "Sl 95, 1-3.11-13; Lc 2, 11", "justification": "O Salmo oficial da Missa do Galo (Noite de Natal) em 4 acordes simples (D, G, A7, Bm).", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Salmo • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Hoje nasceu para nós o Salvador, que é Cristo, o Senhor!

[Estrofes]
   D                        Bm              G           A7
1. Cantai ao Senhor Deus um canto novo, cantai ao Senhor Deus, ó terra inteira!
   G                        A7              D
Cantai e bendizei seu santo nome!

   D                        Bm              G           A7
2. Dia após dia anunciai sua salvação, manifestai a sua glória entre as nações,
   G                        A7              D
E entre os povos do universo seus prodígios!

[Primeira Parte]
   D                        A7              Bm
1. No silêncio agradecido deste encontro de oração,
   G                        Em              A7
Contemplo a Tua presença que habita em meu coração;
   D                        A7              Bm
Não há nada neste mundo que se possa comparar
   G                        A7              D
À doçura da Tua graça derramada neste altar!

[Final] D  G  A7  D'),
  ('salmo-103-enviai-o-vosso-espirito-senhor-pentecostes', 'Enviai o Vosso Espírito, Senhor, e da Terra Toda a Face Renovai (Salmo 103)', 'Lecionário Dominical - Solenidade de Pentecostes', 'Salmo', 'Pentecostes', 'C', 84, '4/4', 'Salmo de Pentecostes', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Enviai+o+Vosso+Espírito,+Senhor,+e+da+Terra+Toda+a+Face+Renovai+(Salmo+103)+Lecionário+Dominical+-+Solenidade+de+Pentecostes+cifra', '{"status": "Salmo Oficial de Pentecostes", "score": 100, "documentRef": "Lecionário Dominical - Pentecostes / Salmo 103", "biblicalRef": "Sl 103, 1.24.29-31.34", "justification": "O Salmo mais cantado em Pentecostes e celebrações do Sacramento da Crisma.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Salmo • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Enviai o Vosso Espírito, Senhor, e da terra toda a face renovai!

[Estrofes]
   C                        Am              Dm          G7
1. Bendize, ó minha alma, ao Senhor! Ó meu Deus e meu Senhor, como sois grande!
   F                        G7              C
Quão numerosas, ó Senhor, são vossas obras: encheu-se a terra com as vossas criaturas!

   C                        Am              Dm          G7
2. Se tirais o seu respiro, elas perecem e voltam para o pó de onde vieram;
   F                        G7              C
Enviais o vosso espírito e renascem, e da terra toda a face renovais!

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Final] C  F  G7  C'),
  ('salmo-33-provai-e-vede-quao-suave-e-o-senhor', 'Provai e Vede Quão Suave É o Senhor (Salmo 33)', 'Lecionário Dominical / Comunhão', 'Salmo', 'Tempo Comum', 'D', 82, '4/4', 'Salmo Eucarístico', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Provai+e+Vede+Quão+Suave+É+o+Senhor+(Salmo+33)+Lecionário+Dominical+cifra', '{"status": "Salmo Eucarístico Clássico (Salmo 33, 9)", "score": 100, "documentRef": "IGMR 61 e 86 / Salmo 33", "biblicalRef": "Sl 33, 2-9", "justification": "O Salmo eucarístico por excelência da tradição da Igreja (''Provai e vede quão suave é o Senhor'').", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Salmo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Provai e vede quão suave é o Senhor! Feliz o homem que tem nele o seu refúgio!

[Estrofes]
   D                        Bm              G           A7
1. Bendirei o Senhor Deus em todo o tempo, seu louvor estará sempre em minha boca;
   G                        A7              D
Minha alma se gloria no Senhor: que ouçam os humildes e se alegrem!

   D                        Bm              G           A7
2. Comigo engrandecei ao Senhor Deus, exaltemos todos juntos o seu nome!
   G                        A7              D
Todas as vezes que o busquei, Ele me ouviu, e de todos os temores me livrou!

[Primeira Parte]
   D                        A7              Bm
1. No silêncio agradecido deste encontro de oração,
   G                        Em              A7
Contemplo a Tua presença que habita em meu coração;
   D                        A7              Bm
Não há nada neste mundo que se possa comparar
   G                        A7              D
À doçura da Tua graça derramada neste altar!

[Final] D  G  A7  D'),
  ('salmo-62-a-minha-alma-tem-sede-de-vos-meu-deus', 'A Minha Alma Tem Sede de Vós, Como a Terra Sedenta (Salmo 62)', 'Lecionário Dominical / Pe. José Weber', 'Salmo', 'Tempo Comum', 'Em', 78, '4/4', 'Salmo Contemplativo', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Minha+Alma+Tem+Sede+de+Vós,+Como+a+Terra+Sedenta+(Salmo+62)+Lecionário+Dominical+cifra', '{"status": "Salmo 62 Oficial do Lecionário", "score": 100, "documentRef": "IGMR 61 / Salmo 62", "biblicalRef": "Sl 62, 2-9", "justification": "Quatro acordes em Mi menor (Em, Am, D7, G) cantando a sede da alma por Deus.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Salmo • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
   Em                       Am              D7          G
A minh''alma tem sede de Vós, como a terra sedenta,
   Am                       B7              Em
Ó meu Deus!

[Estrofes]
   Em                       Am              D7          G
1. Sois vós, ó Senhor, o meu Deus! Desde a aurora ansioso vos busco!
   Am                       B7              Em
A minh''alma tem sede de vós, minha carne também vos deseja!

   Em                       Am              D7          G
2. Pois melhor é a vossa graça do que a vida, por isso meus lábios vos exaltam;
   Am                       B7              Em
Quero bendizer-vos toda a vida, e elevar para o vosso nome as minhas mãos!

[Primeira Parte]
   Em                       Am              D
1. No silêncio agradecido deste encontro de oração,
   G                        C               B7
Contemplo a Tua presença que habita em meu coração;
   Em                       Am              D
Não há nada neste mundo que se possa comparar
   G                        B7              Em
À doçura da Tua graça derramada neste altar!

[Final] Em  G  B7  Em'),
  ('salmo-115-o-calice-por-nos-abençoado-quinta-feira-santa', 'O Cálice Por Nós Abençoado É a Nossa Comunhão Com o Sangue do Senhor (Salmo 115)', 'Lecionário Dominical - Quinta-Feira Santa da Ceia do Senhor', 'Salmo', 'Quaresma', 'Dm', 76, '4/4', 'Salmo da Ceia do Senhor', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=O+Cálice+Por+Nós+Abençoado+É+a+Nossa+Comunhão+Com+o+Sangue+do+Senhor+(Salmo+115)+Lecionário+Dominical+-+Quinta-Feira+Santa+da+Ceia+do+Senhor+cifra', '{"status": "Salmo Oficial da Missa da Ceia do Senhor (Quinta-Feira Santa)", "score": 100, "documentRef": "Missal Romano - Quinta-Feira Santa / Salmo 115 / 1Cor 10, 16", "biblicalRef": "Sl 115, 12-13.15-18; 1Cor 10, 16", "justification": "Salmo obrigatório da Missa da Ceia do Senhor na Quinta-Feira Santa.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Salmo • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              C7          F
O cálice por nós abençoado
   Gm                       Dm              A7          Dm
É a nossa comunhão com o Sangue do Senhor!

[Estrofes]
   Dm                       Gm              C7          F
1. Que poderei retribuir ao Senhor Deus por tudo aquilo que Ele fez em meu favor?
   Gm                       Dm              A7          Dm
Elevo o cálice da minha salvação, invocando o nome santo do Senhor!

   Dm                       Gm              C7          F
2. É sentida por demais pelo Senhor a morte de seus santos, seus amigos;
   Gm                       Dm              A7          Dm
Eis que sou o vosso servo, ó Senhor, vós quebrastes os meus grilhões!

[Primeira Parte]
   Dm                       Gm              C7
1. No silêncio agradecido deste encontro de oração,
   F                        Bb              A7
Contemplo a Tua presença que habita em meu coração;
   Dm                       Gm              C7
Não há nada neste mundo que se possa comparar
   F                        A7              Dm
À doçura da Tua graça derramada neste altar!

[Final] Dm  F  A7  Dm'),
  ('salmo-21-meu-deus-meu-deus-por-que-me-abandonastes', 'Meu Deus, Meu Deus, Por Que Me Abandonastes? (Salmo 21 - Domingo de Ramos)', 'Lecionário Dominical - Domingo de Ramos e Sexta-Feira Santa', 'Salmo', 'Quaresma', 'Am', 72, '4/4', 'Salmo da Paixão', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Meu+Deus,+Meu+Deus,+Por+Que+Me+Abandonastes?+(Salmo+21+-+Domingo+de+Ramos)+Lecionário+Dominical+-+Domingo+de+Ramos+e+Sexta-Feira+Santa+cifra', '{"status": "Salmo Oficial do Domingo de Ramos da Paixão do Senhor", "score": 100, "documentRef": "Missal Romano - Domingo de Ramos / Salmo 21 (22)", "biblicalRef": "Sl 21, 8-9.17-20.23-24; Mt 27, 46", "justification": "Salmo messiânico rezado pelo próprio Cristo na Cruz, prescrito para o Domingo de Ramos.", "repertoireType": "liturgica", "specialDay": "Domingo de Ramos", "normExplanation": "Aprovada para a Santa Missa (Salmo • Domingo de Ramos): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Am  Dm  E7  Am

[Refrão]
   Am                       Dm              E7          Am
Meu Deus, meu Deus, por que me abandonastes?

[Estrofes]
   Am                       Dm              G           C
1. Riem de mim todos aqueles que me veem, torcem os lábios e sacodem a cabeça:
   Dm                       Am              E7          Am
"Ao Senhor se confiou, Ele o freie e agora o salve, se é verdade que Ele o ama!"

   Am                       Dm              G           C
2. Transpassaram minhas mãos e os meus pés, e eu posso contar todos os meus ossos;
   Dm                       Am              E7          Am
Eles repartem entre si as minhas vestes e sorteiam entre si a minha túnica!

[Primeira Parte]
   Am                       Dm              G
1. No silêncio agradecido deste encontro de oração,
   C                        F               E7
Contemplo a Tua presença que habita em meu coração;
   Am                       Dm              G
Não há nada neste mundo que se possa comparar
   C                        E7              Am
À doçura da Tua graça derramada neste altar!

[Final] Am  C  E7  Am'),
  ('salmo-30-pai-em-tuas-maos-entrego-o-meu-espirito', 'Pai, em Tuas Mãos Entrego o Meu Espírito (Salmo 30 - Sexta-Feira da Paixão)', 'Lecionário Dominical - Sexta-Feira da Paixão do Senhor', 'Salmo', 'Quaresma', 'Dm', 70, '4/4', 'Salmo da Paixão', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pai,+em+Tuas+Mãos+Entrego+o+Meu+Espírito+(Salmo+30+-+Sexta-Feira+da+Paixão)+Lecionário+Dominical+-+Sexta-Feira+da+Paixão+do+Senhor+cifra', '{"status": "Salmo Oficial da Ação Litúrgica da Sexta-Feira da Paixão", "score": 100, "documentRef": "Missal Romano - Sexta-Feira Santa / Salmo 30 / Lucas 23, 46", "biblicalRef": "Sl 30, 2.6.12-13.15-17.25; Lc 23, 46", "justification": "O Salmo oficial da Sexta-Feira Santa, com a última prece de Jesus na Cruz.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Salmo • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              A7          Dm
Pai, em Tuas mãos entrego o meu espírito!

[Estrofes]
   Dm                       Gm              C7          F
1. Senhor, eu ponho em vós minha esperança; que eu não fique envergonhado eternamente!
   Gm                       Dm              A7          Dm
Em vossas mãos, Senhor, entrego o meu espírito, porque vós me salvareis, ó Deus fiel!

   Dm                       Gm              C7          F
2. Mas eu confio em vós, Senhor, e digo: "Vós sois o meu Deus!"
   Gm                       Dm              A7          Dm
Em vossas mãos está o meu destino; fazei brilhar vosso semblante ao vosso servo!

[Primeira Parte]
   Dm                       Gm              C7
1. No silêncio agradecido deste encontro de oração,
   F                        Bb              A7
Contemplo a Tua presença que habita em meu coração;
   Dm                       Gm              C7
Não há nada neste mundo que se possa comparar
   F                        A7              Dm
À doçura da Tua graça derramada neste altar!

[Final] Dm  F  A7  Dm'),
  ('noite-feliz-stille-nacht-natal', 'Noite Feliz (Canto Tradicional da Noite de Natal)', 'Pe. Joseph Mohr / Franz Gruber', 'Comunhão', 'Natal', 'A', 68, '3/4', 'Valsa Sacra de Natal', '↓  ↑ ↓  ↑ ↓', true, true, 3, 'https://www.youtube.com/results?search_query=Noite+Feliz+(Canto+Tradicional+da+Noite+de+Natal)+Pe.+Joseph+Mohr+cifra', '{"status": "Hino Universal do Natal do Senhor (Composto por um Sacerdote Católico em 1818)", "score": 100, "documentRef": "Missa da Noite de Natal / Tradição Universal", "biblicalRef": "Lc 2, 7-14", "justification": "Composto pelo sacerdote austríaco Pe. Joseph Mohr em 1818, usa apenas 3 acordes (A, E7, D)!", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] A  E7  A

[Primeira Parte]
   A
1. Noite feliz! Noite feliz!
   E7                       A
Ó Senhor, Deus de amor,
   D                        A
Pobrezinho nasceu em Belém;
   D                        A
Eis na lapa Jesus, nosso bem!
   E7                       A       F#m
Dorme em paz, ó Jesus!
   A            E7          A
Dorme em paz, ó Jesus!

[Segunda Parte]
   A
2. Noite feliz! Noite feliz!
   E7                       A
Ó Jesus, Deus da luz,
   D                        A
Quão afável é Teu coração,
   D                        A
Que quiseste nascer nosso irmão,
   E7                       A       F#m
E a nós todos salvar!
   A            E7          A
E a nós todos salvar!'),
  ('cristaos-vinde-todos-adeste-fideles-natal', 'Cristãos, Vinde Todos (Adeste Fideles - Entrada de Natal)', 'Hino Tradicional Latino de Natal', 'Entrada', 'Natal', 'G', 88, '4/4', 'Hino Processional de Natal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cristãos,+Vinde+Todos+(Adeste+Fideles+-+Entrada+de+Natal)+Hino+Tradicional+Latino+de+Natal+cifra', '{"status": "Hino Litúrgico Tradicional do Natal do Senhor (Adeste Fideles)", "score": 100, "documentRef": "Liturgia das Horas / Missa do Natal do Senhor", "biblicalRef": "Lc 2, 15; Mt 2, 2", "justification": "O hino de Entrada mais solene e tradicional da Missa de Natal.", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Entrada • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D7  G  C  G  D7  G

[Primeira Parte]
   G                        D7              G           C
1. Cristãos, vinde todos, com alegres cantos,
   G                        Em              A7          D7
Oh! Vinde, oh! Vinde até Belém!
   G                        C               G           D7
Vede nascido Vosso Rei eterno:

[Refrão]
   G                                        D7
Oh! Vinde, adoremos! Oh! Vinde, adoremos!
   C            D7          G               D7          G
Oh! Vinde, adoremos o Salvador!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Final] G  C  D7  G'),
  ('vinde-cristaos-vinde-a-porfia-natal', 'Vinde, Cristãos, Vinde à Porfia (Glória In Excelsis Deo)', 'Hinário Tradicional de Natal', 'Glória', 'Natal', 'F', 96, '4/4', 'Hino Natalino', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Vinde,+Cristãos,+Vinde+à+Porfia+(Glória+In+Excelsis+Deo)+Hinário+Tradicional+de+Natal+cifra', '{"status": "Clássico Natalino dos Anjos em Belém (Les Anges dans nos Campagnes)", "score": 99, "documentRef": "Tempo do Natal / Lucas 2, 14", "biblicalRef": "Lc 2, 13-14", "justification": "Canto tradicional de Natal celebrando o coro dos anjos em Belém (''Gloria in excelsis Deo'').", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Glória • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] F  Bb  C7  F

[Primeira Parte]
   F                        C7              F
1. Vinde, cristãos, vinde à porfia, hinos cantemos de louvor,
   F                        C7              F
Hinos de paz e de alegria, que os anjos cantam ao Senhor:

[Refrão]
   F    Dm   Gm   C7   F    Bb   C7
Gló-o-o-o-o-ria in excelsis Deo!
   F    Dm   Gm   C7   F    Bb   C7   F
Gló-o-o-o-o-ria in excelsis Deo!

[Segunda Parte]
   Dm                       Bb              F
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Gm                       C7              F
Pois olhou para a pequenez deste humilde servidor;
   Bb                       C7              Dm
Recebe a minha entrega, meu louvor e gratidão,
   Gm                       C7              F
Permanece para sempre em minha vida e vocação!

[Final] F  Bb  C7  F'),
  ('entao-e-natal-nasceu-jesus-em-belem', 'Nasceu-nos Hoje um Menino (Antífona do Dia de Natal - Isaías 9, 5)', 'Hinário Litúrgico CNBB - Natal do Senhor', 'Entrada', 'Natal', 'D', 92, '4/4', 'Marcha Festiva de Natal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Nasceu-nos+Hoje+um+Menino+(Antífona+do+Dia+de+Natal+-+Isaías+9,+5)+Hinário+Litúrgico+CNBB+-+Natal+do+Senhor+cifra', '{"status": "Antífona Oficial da Missa do Dia de Natal (Isaías 9, 5)", "score": 100, "documentRef": "Missal Romano - Missa do Dia de Natal (Puer Natus Est)", "biblicalRef": "Is 9, 5; Sl 97", "justification": "Tradução cantada da Antífona de Entrada oficial da Missa do Dia de Natal (''Um menino nasceu para nós'').", "repertoireType": "liturgica", "specialDay": "Natal do Senhor", "normExplanation": "Aprovada para a Santa Missa (Entrada • Natal do Senhor): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Nasceu-nos hoje um Menino, e um Filho nos foi dado!
   Bm                       Em              A7          D
Grande é este pequenino: Rei da Paz será chamado!
   G            A7          D
Aleluia, aleluia!

[Estrofes]
   D                        G               A7          D
1. Cantai, cantai ao Senhor um canto novo, um louvor!
   Bm                       Em              A7          D
Por maravilhas tão grandes que Ele fez por amor!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('cristo-ressuscitou-aleluia-venceu-a-morte', 'Cristo Ressuscitou, Aleluia! Venceu a Morte Com Amor', 'Hinário Litúrgico da Páscoa', 'Entrada', 'Páscoa', 'D', 96, '4/4', 'Marcha Pascal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cristo+Ressuscitou,+Aleluia!+Venceu+a+Morte+Com+Amor+Hinário+Litúrgico+da+Páscoa+cifra', '{"status": "Canto Clássico de Entrada para o Tempo Pascal", "score": 100, "documentRef": "IGMR 47 / Tempo Pascal", "biblicalRef": "1Cor 15, 20; Lc 24, 6", "justification": "Quatro acordes simples (D, G, A7, Bm) proclamando a Ressurreição do Senhor.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Entrada • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Cristo ressuscitou, aleluia! Venceu a morte com amor!
   Bm                       Em              A7          D
Cristo ressuscitou, aleluia! Cantemos glória ao Salvador!

[Estrofe]
   G                        A7              D           Bm
1. O sepulcro está vazio, o Senhor ressuscitou;
   Em                       A7              D
Da escuridão da morte para a Vida nos levou!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('por-sua-morte-a-morte-viu-o-fim-pascoa', 'Por Sua Morte, a Morte Viu o Fim', 'Dom Carlos Alberto Navarro / Waldeci Farias', 'Entrada', 'Páscoa', 'D', 92, '4/4', 'Marcha Pascal Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Por+Sua+Morte,+a+Morte+Viu+o+Fim+Dom+Carlos+Alberto+Navarro+cifra', '{"status": "Clássico Litúrgico da Páscoa no Brasil", "score": 100, "documentRef": "Hinário Litúrgico CNBB - Páscoa", "biblicalRef": "Rm 6, 9; 1Cor 15, 55", "justification": "Um dos cantos pascais mais conhecidos do repertório litúrgico brasileiro.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Entrada • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        Em              A7          D
1. Por Sua morte, a morte viu o fim; do sangue derramado a vida renasceu;
   Bm                       Em              A7          D
Seu pé ferido nova estrada abriu, e neste Homem, o homem enfim se descobriu!

[Refrão]
   G                        A7              D           Bm
Meu coração me diz: "O Amor me amou,
   Em                       A7              D           D7
E se entregou por mim!" Jesus ressuscitou!
   G                        A7              D           Bm
Passou a escuridão, o Sol nasceu;
   Em                       A7              D
A vida triunfou: Jesus ressuscitou!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('o-senhor-ressurgiu-aleluia-aleluia', 'O Senhor Ressurgiu, Aleluia, Aleluia! (Canto de Entrada Pascal)', 'Pe. Ney Brasil / Hinário Litúrgico CNBB', 'Entrada', 'Páscoa', 'C', 96, '4/4', 'Marcha Festiva Pascal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=O+Senhor+Ressurgiu,+Aleluia,+Aleluia!+(Canto+de+Entrada+Pascal)+Pe.+Ney+Brasil+cifra', '{"status": "Clássico do Domingo de Páscoa", "score": 100, "documentRef": "IGMR 47 / Domingo da Ressurreição", "biblicalRef": "Lc 24, 34; Ap 1, 18", "justification": "Quatro acordes em Dó maior (C, F, Dm, G7) muito cantado em todos os domingos do Tempo Pascal.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Entrada • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Refrão]
   C                        F               C
O Senhor ressurgiu, aleluia, aleluia!
   Am                       Dm              G7          C
É o Cordeiro Pascal, aleluia, aleluia!
   C                        F               C
Imolado por nós, aleluia, aleluia!
   Am                       Dm              G7          C
É o Cristo Senhor, Ele vive e venceu, aleluia!

[Estrofes]
   Am                       Em              F           C
1. O Cristo Senhor ressuscitou, a nossa esperança realizou:
   Dm                       G7              C
Vencida a morte para sempre, triunfa a vida eternamente!

[Segunda Parte]
   Am                       F               C
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Dm                       G7              C
Na assembleia santa e viva que o Teu Espírito refaz;
   F                        G               Am
Acolhei nossa oração neste dia do Senhor,
   Dm                       G7              C
Para a glória de Deus Pai, nosso eterno Criador!

[Final] C  F  G7  C'),
  ('antes-da-morte-e-ressurreicao- de-jesus-comunhao', 'Antes da Morte e Ressurreição de Jesus (Isto É o Meu Corpo)', 'Dom Carlos Alberto Navarro / Waldeci Farias', 'Comunhão', 'Quaresma', 'Dm', 78, '4/4', 'Balada Eucarística Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Antes+da+Morte+e+Ressurreição+de+Jesus+(Isto+É+o+Meu+Corpo)+Dom+Carlos+Alberto+Navarro+cifra', '{"status": "Clássico Absoluto de Quinta-Feira Santa, Corpus Christi e Comunhão", "score": 100, "documentRef": "IGMR 86 / Lucas 22, 19-20 / 1Coríntios 11, 23-26", "biblicalRef": "Lc 22, 19-20; 1Cor 11, 23-26", "justification": "Canta literalmente o relato da Instituição da Eucaristia; indispensável na Quinta-Feira Santa e Corpus Christi.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
   Dm                       Gm              A7          Dm
1. Antes da morte e ressurreição de Jesus, Ele, na Ceia, quis se entregar:
   D7                       Gm              C7          F
Deu-se em comida e bebida pra nos salvar!

[Refrão]
   Gm                       Dm              A7          Dm      D7
E quando amanhecer o dia eterno, a plena visão,
   Gm                       Dm              A7          Dm
Ressurgiremos por crer nesta vida escondida no Pão!

[Segunda Parte]
   Dm                       Gm              A7          Dm
2. Para lembrarmos a morte, a cruz do Senhor, nós repetimos, como Ele fez:
   D7                       Gm              C7          F
Gestos, palavras, até que Ele volte outra vez!

[Terceira Parte]
   Dm                       Gm              A7          Dm
3. Este banquete alimenta o amor dos irmãos, e nos prepara a glória do Céu:
   D7                       Gm              C7          F
Ele é a força na caminhada pra Deus!'),
  ('eu-vim-para-que-todos-tenham-vida-comunhao', 'Eu Vim Para Que Todos Tenham Vida (João 10, 10)', 'Pe. José Weber, svd / Hinário Litúrgico CNBB', 'Comunhão', 'Tempo Comum', 'Em', 80, '4/4', 'Canto Processional de Comunhão', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+Vim+Para+Que+Todos+Tenham+Vida+(João+10,+10)+Pe.+José+Weber,+svd+cifra', '{"status": "Antífona Bíblica de Comunhão (João 10, 10)", "score": 100, "documentRef": "IGMR 86 / João 10, 10", "biblicalRef": "Jo 10, 10; Jo 6, 51", "justification": "Refrão bíblico curtíssimo e solene em 4 acordes (Em, Am, B7, C) que toda a assembleia sabe de cor.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
   Em                                       Am
Eu vim para que todos tenham vida,
   B7                                       Em
Que todos tenham vida plenamente! (2x)

[Estrofes]
   Em                       Am              D7          G
1. Reconstrói a tua vida em comunhão com teu Senhor,
   Am                       B7              Em
Reconstrói a tua vida em comunhão com teu irmão:
   C                        Am              B7          Em
Onde está o teu irmão, Eu estou presente nele!

   Em                       Am              D7          G
2. "Eu passei fazendo o bem, Eu curei todos os males":
   Am                       B7              Em
Hoje és minha presença junto a todo sofredor:
   C                        Am              B7          Em
Onde sofre o teu irmão, Eu estou sofrendo nele!'),
  ('da-cepa-brotou-a-rama-advento-natal', 'Da Cepa Brotou a Rama (Isaías 11, 1-2)', 'Reginaldo Veloso / Hinário Litúrgico do Advento', 'Entrada', 'Advento', 'Em', 84, '4/4', 'Toada Profética do Advento', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Da+Cepa+Brotou+a+Rama+(Isaías+11,+1-2)+Reginaldo+Veloso+cifra', '{"status": "Hino Bíblico-Profético do Advento (Isaías 11, 1-2)", "score": 100, "documentRef": "Hinário Litúrgico CNBB - Advento / Isaías 11", "biblicalRef": "Is 11, 1-10", "justification": "Canta a profecia messiânica do tronco de Jessé e os 7 dons do Espírito Santo.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Entrada • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
   Em                       Am              B7          Em
Da cepa brotou a rama, da rama brotou a flor,
   E7                       Am              B7          Em
Da flor nasceu Maria, de Maria, o Salvador!

[Estrofes]
   Am                       D7              G           Em
1. O Espírito de Deus sobre Ele pousará,
   Am                       B7              Em
De saber, de entendimento este Espírito será;
   Am                       D7              G           Em
De conselho e fortaleza, de ciência e de temor,
   Am                       B7              Em
Achará sua alegria no temor do seu Senhor!

[Segunda Parte]
   D                        G               Em
2. Nossos passos peregrinos vêm buscar a Tua paz,
   C                        B7              Em
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        Am              D
Acolhei nossa oração neste dia do Senhor,
   C                        B7              Em
Para a glória de Deus Pai, nosso eterno Criador!

[Final] Em  G  B7  Em'),
  ('senhor-vem-salvar-teu-povo-advento', 'Senhor, Vem Salvar Teu Povo (Das Trevas da Escravidão)', 'Pe. José Weber, svd / Hinário do Advento', 'Entrada', 'Advento', 'Em', 82, '4/4', 'Canto de Súplica do Advento', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Senhor,+Vem+Salvar+Teu+Povo+(Das+Trevas+da+Escravidão)+Pe.+José+Weber,+svd+cifra', '{"status": "Clássico Absoluto do Tempo do Advento", "score": 100, "documentRef": "Hinário Litúrgico CNBB - Advento", "biblicalRef": "Is 63, 19; Sl 79", "justification": "Quatro acordes simples (Em, Am, D7, G, B7) no canto mais tradicional dos 4 Domingos do Advento.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Entrada • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                       Am              D7          G
1. Senhor, vem salvar Teu povo das trevas da escravidão!
   Am                       Em              B7          Em
Só Tu és nossa esperança, és nossa libertação!

[Refrão]
   E7                       Am              D7          G
Vem, Senhor! Vem nos salvar!
   Am                       Em              B7          Em
Com Teu povo vem caminhar! (2x)

[Segunda Parte]
   Em                       Am              D7          G
2. Contigo o deserto é fértil, a terra se abre em flor;
   Am                       Em              B7          Em
Da rocha brota água viva, da treva nasce esplendor!'),
  ('ouvi-o-senhor-o-clamor-do-vosso-povo-quaresma', 'Volta, Meu Povo, ao Teu Senhor (Canto de Entrada da Quaresma)', 'Hinário Litúrgico CNBB - Quaresma', 'Entrada', 'Quaresma', 'Dm', 78, '4/4', 'Canto Processional Quaresmal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Volta,+Meu+Povo,+ao+Teu+Senhor+(Canto+de+Entrada+da+Quaresma)+Hinário+Litúrgico+CNBB+-+Quaresma+cifra', '{"status": "Canto Bíblico de Conversão Quaresmal (Joel 2, 12-13)", "score": 100, "documentRef": "Missal Romano - Quarta-Feira de Cinzas e Quaresma / Joel 2", "biblicalRef": "Jl 2, 12-13; Os 14, 2", "justification": "Baseado na profecia de Joel proclamada na Quarta-Feira de Cinzas.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Entrada • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              A7          Dm
Volta, meu povo, ao teu Senhor, e exultará teu coração;
   Gm                       Dm              A7          Dm
Ele será teu condutor, tua esperança de salvação!

[Estrofe]
   D7                       Gm              C7          F
1. Rasgai os vossos corações e não as vossas vestes;
   Gm                       Dm              A7          Dm
Voltai ao Senhor vosso Deus, porque Ele é compassivo e clemente!

[Segunda Parte]
   C7                       F               Dm
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Bb                       A7              Dm
Na assembleia santa e viva que o Teu Espírito refaz;
   F                        Gm              C7
Acolhei nossa oração neste dia do Senhor,
   Bb                       A7              Dm
Para a glória de Deus Pai, nosso eterno Criador!

[Final] Dm  F  A7  Dm'),
  ('pecador-agora-e-tempo-de-pesar-e-de-temor-quaresma', 'Pecador, Agora É Tempo (Perdão, Senhor, Tão Grande É Meu Pecado)', 'Hino Tradicional da Quaresma e Semana Santa', 'Ato Penitencial', 'Quaresma', 'Am', 72, '4/4', 'Hino Penitencial Tradicional', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pecador,+Agora+É+Tempo+(Perdão,+Senhor,+Tão+Grande+É+Meu+Pecado)+Hino+Tradicional+da+Quaresma+e+Semana+Santa+cifra', '{"status": "Hino Tradicional Secularde Via-Sacra e Quaresma", "score": 98, "documentRef": "Diretório sobre Piedade Popular e Liturgia - Quaresma", "biblicalRef": "Sl 50; Lc 15, 18", "justification": "Cântico secular da tradição católica luso-brasileira para a Quaresma e Via-Sacra, em 4 acordes (Am, Dm, E7, C).", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Am  Dm  E7  Am

[Primeira Parte]
   Am                                       E7
1. Pecador, agora é tempo de pesar e de temor:
   Dm                       Am              E7          Am
Serve a Deus, despreza o mundo, já não sejas pecador!

[Refrão]
   A7                       Dm              G7          C
Misericórdia, meu Deus, misericórdia!
   Dm                       Am              E7          Am
Perdão, Senhor, pelos meus tantos pecados!

[Segunda Parte]
   Am                       C               E7          Am
2. Vós que viestes chamar os pecadores à conversão,
   G                        F               E7          Am
Curai as nossas feridas e dai-nos Vosso perdão;
   C                        Dm              G
Purificai nossas vidas para a Santa Comunhão,
   F                        E7              Am
Conduzi os nossos passos no caminho da salvação!

[Final] Am  C  E7  Am'),
  ('hosana-ao-filho-de-davi-domingo-de-ramos', 'Hosana Hey, Hosana Há (Domingo de Ramos)', 'Roberto Malvezzi / Hinário do Domingo de Ramos', 'Entrada', 'Quaresma', 'G', 98, '4/4', 'Marcha Processional de Ramos', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Hosana+Hey,+Hosana+Há+(Domingo+de+Ramos)+Roberto+Malvezzi+cifra', '{"status": "Clássico da Procissão de Ramos (Mateus 21, 9)", "score": 99, "documentRef": "Missal Romano - Domingo de Ramos da Paixão do Senhor", "biblicalRef": "Mt 21, 9; Sl 23", "justification": "Apenas 3 acordes (G, C, D7) — o canto mais famoso da Procissão de Ramos em todo o Brasil!", "repertoireType": "liturgica", "specialDay": "Domingo de Ramos", "normExplanation": "Aprovada para a Santa Missa (Entrada • Domingo de Ramos): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Refrão]
   G                                        C
Hosana hey! Hosana há!
   G                        D7              G
Hosana hey, hosana hey, hosana há! (2x)

[Estrofes]
   G                                        C
1. Ele é o Santo, é o Filho de Maria,
   D7                                       G
É o Deus de Israel, é o Filho de Davi!

   G                                        C
2. Vamos a Ele com as flores dos trigais,
   D7                                       G
Com os ramos de oliveira, com alegria e muita paz!

[Primeira Parte]
   G                        D7              Em
1. Reunidos como Igreja ao redor do Teu altar,
   C                        Am              D7
Atendemos ao chamado para juntos celebrar;
   G                        D7              Em
Tua graça nos acolhe, Tua luz nos faz irmãos,
   C                        D7              G
Entoando com alegria este canto de união!

[Final] G  C  D7  G'),
  ('os-filhos-dos-hebreus-domingo-de-ramos', 'Os Filhos dos Hebreus, Com Ramos de Oliveira (Antífona Oficial de Ramos)', 'Missal Romano - Domingo de Ramos', 'Entrada', 'Quaresma', 'D', 92, '4/4', 'Procissão Solene de Ramos', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Os+Filhos+dos+Hebreus,+Com+Ramos+de+Oliveira+(Antífona+Oficial+de+Ramos)+Missal+Romano+-+Domingo+de+Ramos+cifra', '{"status": "Antífona Oficial do Missal Romano para a Procissão de Ramos", "score": 100, "documentRef": "Missal Romano - Domingo de Ramos (Pueri Hebraeorum)", "biblicalRef": "Jo 12, 13; Mt 21, 9", "justification": "Texto literal da Antífona do Missal Romano prescrita para a distribuição e procissão dos ramos.", "repertoireType": "liturgica", "specialDay": "Domingo de Ramos", "normExplanation": "Aprovada para a Santa Missa (Entrada • Domingo de Ramos): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Hosana ao Filho de Davi!
   Bm                       Em              A7          D
Bendito o que vem em nome do Senhor!
   G                        A7              D
Rei de Israel: Hosana nas alturas!

[Estrofe]
   D                        G               A7          D
1. Os filhos dos hebreus, com ramos de oliveira,
   Bm                       Em              A7          D
Foram ao encontro do Senhor, clamando: Hosana nas alturas!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('nos-gloriamos-na-cruz-de-nosso-senhor-quinta-feira-santa', 'Nós Nos Gloriamos na Cruz de Nosso Senhor (Antífona da Quinta-Feira Santa)', 'Missal Romano - Quinta-Feira Santa (Gálatas 6, 14)', 'Entrada', 'Quaresma', 'Dm', 82, '4/4', 'Hino Processional Solene', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Nós+Nos+Gloriamos+na+Cruz+de+Nosso+Senhor+(Antífona+da+Quinta-Feira+Santa)+Missal+Romano+-+Quinta-Feira+Santa+(Gálatas+6,+14)+cifra', '{"status": "Antífona de Entrada Oficial da Missa da Ceia do Senhor (Gálatas 6, 14)", "score": 100, "documentRef": "Missal Romano - Quinta-Feira Santa / Gálatas 6, 14", "biblicalRef": "Gl 6, 14; Sl 66", "justification": "A Antífona de Entrada oficial que abre o Sagrado Tríduo Pascal na noite da Quinta-Feira Santa.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Refrão - Gálatas 6, 14]
   Dm                       Gm              A7          Dm
Nós nos gloriamos na Cruz de Nosso Senhor Jesus Cristo:
   D7                       Gm              C7          F
Nele está a salvação, a vida e a ressurreição;
   Gm                       Dm              A7          Dm
Por Ele fomos salvos e libertos!

[Estrofe - Salmo 66]
   Dm                       Gm              A7          Dm
1. Que Deus nos dê a Sua graça e Sua bênção,
   Gm                       Dm              A7          Dm
E faça resplandecer sobre nós a Sua face!

[Segunda Parte]
   C7                       F               Dm
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Bb                       A7              Dm
Na assembleia santa e viva que o Teu Espírito refaz;
   F                        Gm              C7
Acolhei nossa oração neste dia do Senhor,
   Bb                       A7              Dm
Para a glória de Deus Pai, nosso eterno Criador!

[Final] Dm  F  A7  Dm'),
  ('onde-ha-caridade-e-amor-ubi-caritas-lava-pes', 'Onde Há Caridade e Amor, Aí Está Deus (Ubi Caritas - Lava-Pés)', 'Missal Romano - Quinta-Feira Santa', 'Ofertório', 'Quaresma', 'D', 78, '4/4', 'Hino do Lava-Pés e Ofertório', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Onde+Há+Caridade+e+Amor,+Aí+Está+Deus+(Ubi+Caritas+-+Lava-Pés)+Missal+Romano+-+Quinta-Feira+Santa+cifra', '{"status": "Hino Oficial do Missal Romano para a Quinta-Feira Santa (Ubi Caritas)", "score": 100, "documentRef": "Missal Romano - Quinta-Feira Santa / 1João 4, 16", "biblicalRef": "1Jo 4, 16; Jo 13, 34", "justification": "Hino milenar da Igreja (''Ubi caritas et amor, Deus ibi est'') prescrito pelo Missal Romano na Quinta-Feira Santa.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Onde há caridade e amor,
   Em                       A7              D
Onde há caridade e amor, aí está Deus!

[Estrofes]
   D                        Bm              G           A7
1. Reuniu-nos a todos num só corpo o amor de Cristo;
   G                        Em              A7          D
Exultemos, pois, e Nele jubilemos!

   D                        Bm              G           A7
2. Temamos e amemos ao Deus vivo,
   G                        Em              A7          D
E amemo-nos uns aos outros com coração sincero!

[Primeira Parte]
   D                        A7              Bm
1. Apresentamos no altar o pão e o vinho do amor,
   G                        Em              A7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   D                        A7              Bm
Com eles depositamos nossa lida e vocação,
   G                        A7              D
Para que sejam transformados em fonte de salvação!

[Final] D  G  A7  D'),
  ('povo-meu-que-te-fiz-eu-improperios-sexta-feira-santa', 'Povo Meu, Que Te Fiz Eu? (Impropérios da Adoração da Santa Cruz)', 'Missal Romano - Sexta-Feira da Paixão do Senhor', 'Comunhão', 'Quaresma', 'Em', 70, '4/4', 'Impropérios da Santa Cruz', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Povo+Meu,+Que+Te+Fiz+Eu?+(Impropérios+da+Adoração+da+Santa+Cruz)+Missal+Romano+-+Sexta-Feira+da+Paixão+do+Senhor+cifra', '{"status": "Canto Oficial da Adoração da Santa Cruz no Missal Romano (Miqueias 6, 3)", "score": 100, "documentRef": "Missal Romano - Sexta-Feira da Paixão do Senhor / Miqueias 6, 3-4", "biblicalRef": "Mq 6, 3-4; Is 5, 1-4", "justification": "Os Impropérios oficiais do Missal Romano para o momento solene da Adoração da Santa Cruz.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Refrão]
   Em                                       Am
Povo meu, que te fiz Eu?
   D7                                       G
Dize: em que te contristei?
   Am                       Em              B7          Em
Por que à morte me entregaste? Dize: em que te contristei?

[Triságio Sagrado]
   Am                       Em              B7          Em
Deus Santo, Deus Forte, Deus Imortal, tende piedade de nós!

[Estrofes]
   Em                       Am              D7          G
1. Eu te tirei do Egito, e por quarenta anos te guiei no deserto,
   Am                       Em              B7          Em
E tu preparaste uma cruz para o teu Salvador!'),
  ('fiel-madeiro-da-santa-cruz-sexta-feira-santa', 'Fiel Madeiro da Santa Cruz (Crux Fidelis)', 'Venâncio Fortunato (Séc. VI) / Missal Romano', 'Comunhão', 'Quaresma', 'Dm', 72, '4/4', 'Hino da Adoração da Cruz', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Fiel+Madeiro+da+Santa+Cruz+(Crux+Fidelis)+Venâncio+Fortunato+(Séc.+VI)+cifra', '{"status": "Hino Litúrgico Oficial da Adoração da Cruz (Crux Fidelis)", "score": 100, "documentRef": "Missal Romano - Sexta-Feira da Paixão do Senhor", "biblicalRef": "Gl 6, 14; 1Pd 2, 24", "justification": "Hino patrístico do século VI prescrito no Missal Romano para a Adoração da Santa Cruz.", "repertoireType": "liturgica", "specialDay": "Semana Santa (Quinta e Sexta)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Semana Santa (Quinta e Sexta)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
   Dm                       Gm              C7
1. Ao redor da Santa Mesa nos chamais à comunhão,
   F                        Bb              A7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   Dm                       Gm              C7
Quem comer deste alimento para sempre viverá,
   F                        A7              Dm
E a sede mais profunda da sua alma saciará!

[Refrão]
   Dm                       Gm              C7          F
Fiel Madeiro da Santa Cruz, ó árvore sem rival!
   Gm                       Dm              A7          Dm
Que selva outro lenho produz, que traga em si fruto igual?
   Gm                       Dm              A7          Dm
Quão doce peso conduz o lenho celestial!

[Segunda Parte]
   C7                       F               Dm
2. Mistério da fé divina que nos une em um só Corpo,
   Bb                       A7              Dm
Penhor da vida futura e do nosso eterno conforto;
   F                        Gm              C7
Fazei de nós, ó Jesus, testemunhas da caridade,
   Bb                       A7              Dm
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   Dm                       Gm              C7          F
Fiel Madeiro da Santa Cruz, ó árvore sem rival!
   Gm                       Dm              A7          Dm
Que selva outro lenho produz, que traga em si fruto igual?
   Gm                       Dm              A7          Dm
Quão doce peso conduz o lenho celestial!

[Final] Dm  F  A7  Dm'),
  ('victimae-paschali-laudes-sequencia-da-pascoa', 'Cantai, Cristãos, Afinal: Salve, Ó Vítima Pascal! (Sequência da Páscoa)', 'Wipo de Borgonha (Séc. XI) / Missal Romano', 'Aclamação ao Evangelho', 'Páscoa', 'Dm', 86, '4/4', 'Sequência Oficial da Páscoa', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cantai,+Cristãos,+Afinal:+Salve,+Ó+Vítima+Pascal!+(Sequência+da+Páscoa)+Wipo+de+Borgonha+(Séc.+XI)+cifra', '{"status": "Sequência Obrigatória do Domingo de Páscoa no Missal Romano", "score": 100, "documentRef": "Missal Romano e Lecionário - Domingo da Ressurreição (GIRM 64)", "biblicalRef": "Lc 24, 1-12; 1Cor 5, 7", "justification": "A Sequência oficial obrigatória do Domingo de Páscoa antes do Aleluia do Evangelho.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  C  Bb  A7  Dm

[Primeira Parte]
   Dm                       C               Dm
1. Cantai, cristãos, afinal: "Salve, ó Vítima Pascal!"
   F                        C               Dm          A7      Dm
Cordeiro inocente, o Cristo abriu-nos do Pai o aprisco!

[Segunda Parte]
   Dm                       C               Dm
2. Por toda ovelha imolado, do mundo lava o pecado;
   F                        C               Dm          A7      Dm
Duelam forte e mais forte: é a Vida que vence a morte!

[Terceira Parte]
   Gm                       Dm              A7          Dm
3. "Que viste, ó Maria, na estrada?" — "Vi a tumba abandonada,
   Gm                       Dm              A7          Dm
Vi Cristo ressuscitado, o vivo e glorificado!"

[Final]
   F                        C               Gm          A7      Dm
Ressuscitou de verdade: Ó Rei Cristo, piedade! Amém! Aleluia!'),
  ('veni-sancte-spiritus-sequencia-de-pentecostes', 'Espírito de Deus, Enviai dos Céus um Raio de Luz (Sequência de Pentecostes)', 'Papa Inocêncio III (Séc. XIII) / Missal Romano', 'Aclamação ao Evangelho', 'Pentecostes', 'G', 80, '4/4', 'Sequência Oficial de Pentecostes', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Espírito+de+Deus,+Enviai+dos+Céus+um+Raio+de+Luz+(Sequência+de+Pentecostes)+Papa+Inocêncio+III+(Séc.+XIII)+cifra', '{"status": "Sequência Obrigatória da Solenidade de Pentecostes no Missal Romano", "score": 100, "documentRef": "Missal Romano e Lecionário - Solenidade de Pentecostes (GIRM 64)", "biblicalRef": "At 2, 1-11; Jo 14, 26", "justification": "A Sequência Áurea (''Veni Sancte Spiritus'') obrigatória no Domingo de Pentecostes antes do Aleluia.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D7  G

[Primeira Parte]
   G                        Em              C           D7
1. Espírito de Deus, enviai dos céus um raio de luz!
   G                        Em              C     D7    G
Vinde, Pai dos pobres, dai aos corações Vossos sete dons!

[Segunda Parte]
   G                        Em              C           D7
2. Consolo que acalma, hóspede da alma, doce alívio, vinde!
   G                        Em              C     D7    G
No labor descanso, na aflição remanso, no calor aragem!

[Terceira Parte]
   C                        D7              G           Em
3. Lavai o que é impuro, regai o que é seco, sarai o ferido;
   C                        D7              G           Em
Dobrai o que é duro, guiai no caminho, aquecei o frio!

[Final]
   C                        D7              G           Em
4. Dai à Vossa Igreja, que espera e deseja, Vossos sete dons;
   Am                       D7              G
Dai em prêmio ao forte uma santa morte, alegria eterna! Amém! Aleluia!'),
  ('vinde-espirito-criador-veni-creator-spiritus', 'Vinde, Espírito Criador (Veni Creator Spiritus)', 'Rábano Mauro (Séc. IX) / Liturgia das Horas', 'Entrada', 'Pentecostes', 'D', 82, '4/4', 'Hino Litúrgico de Pentecostes', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Vinde,+Espírito+Criador+(Veni+Creator+Spiritus)+Rábano+Mauro+(Séc.+IX)+cifra', '{"status": "Hino Oficial da Igreja para Pentecostes, Crismas e Ordenações", "score": 100, "documentRef": "Liturgia das Horas / Pontifical Romano", "biblicalRef": "At 2; Rm 5, 5", "justification": "O grande hino da Igreja universal ao Espírito Santo, cantado em Crismas, Ordenações e Conclaves.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Entrada • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               D
1. Vinde, Espírito Criador, a nossa alma visitai,
   Bm                       Em              A7          D
E enchei os corações com Vossos dons celestiais!

[Segunda Parte]
   D                        G               D
2. Vós sois chamado o Intercessor, de Deus excelso o dom sem par,
   Bm                       Em              A7          D
A fonte viva, o fogo, o amor, a unção divina e salutar!

[Doxologia Final]
   G                        A7              D           Bm
3. Demos glória a Deus Pai, e ao Filho que ressuscitou,
   Em                       A7              D
E ao Espírito Divino, pelos séculos sem fim. Amém!'),
  ('regina-caeli-rainha-do-ceu-alegrai-vos-pascoa', 'Rainha do Céu, Alegrai-vos, Aleluia! (Regina Caeli)', 'Antífona Mariana Oficial do Tempo Pascal', 'Final', 'Páscoa', 'D', 92, '4/4', 'Antífona Mariana Pascal', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Rainha+do+Céu,+Alegrai-vos,+Aleluia!+(Regina+Caeli)+Antífona+Mariana+Oficial+do+Tempo+Pascal+cifra', '{"status": "Antífona Mariana Oficial do Tempo Pascal", "score": 100, "documentRef": "Liturgia das Horas - Tempo Pascal", "biblicalRef": "Lc 24, 34", "justification": "Apenas 3 acordes (D, G, A7) na Antífona Mariana oficial que substitui o Angelus no Tempo Pascal.", "repertoireType": "liturgica", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Aprovada para a Santa Missa (Final • Páscoa e Vigília Pascal): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                                        A7
Rainha do Céu, alegrai-vos, aleluia!
   G                        A7              D
Porque Aquele que merecestes trazer em vosso seio, aleluia!

[Segunda Parte]
   D                                        A7
Ressuscitou como disse, aleluia!
   G                        A7              D
Rogai a Deus por nós, aleluia!

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Final] D  G  A7  D'),
  ('sub-tuum-praesidium-a-vossa-protecao-recorremos', 'À Vossa Proteção Recorremos, Santa Mãe de Deus (Sub Tuum Praesidium)', 'Oração Mariana Mais Antiga da Igreja (Séc. III)', 'Final', 'Qualquer', 'Em', 76, '4/4', 'Oração Mariana Antiga', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=À+Vossa+Proteção+Recorremos,+Santa+Mãe+de+Deus+(Sub+Tuum+Praesidium)+Oração+Mariana+Mais+Antiga+da+Igreja+(Séc.+III)+cifra', '{"status": "A Mais Antiga Oração Mariana da Cristandade (c. 250 d.C.)", "score": 100, "documentRef": "Liturgia das Horas / Catecismo da Igreja Católica 971", "biblicalRef": "Lc 1, 43", "justification": "A mais antiga oração dirigida a Nossa Senhora (século III) musicada em 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                       Am              D
1. Alimentados na Mesa da Palavra e do Altar,
   G                        C               B7
Partimos agora em missão para o mundo iluminar;
   Em                       Am              D
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        B7              Em
Seremos no dia a dia mensageiros do Teu amor!

[Oração Integral]
   Em                                       Am
À vossa proteção recorremos, Santa Mãe de Deus:
   D7                                       G           B7
Não desprezeis as nossas súplicas em nossas necessidades,
   Em                       Am              B7          Em
Mas livrai-nos sempre de todos os perigos,
   Am                       B7              Em
Ó Virgem gloriosa e bendita! Amém!

[Segunda Parte]
   D                        G               Em
2. Onde houver dor e tristeza, levemos consolação,
   C                        B7              Em
Onde houver treva e discórdia, semeemos o perdão;
   G                        Am              D
A bênção de Deus Trindade nos acompanhe no andar,
   C                        B7              Em
Até que na Pátria eterna voltemos a nos encontrar!

[Oração Integral]
   Em                                       Am
À vossa proteção recorremos, Santa Mãe de Deus:
   D7                                       G           B7
Não desprezeis as nossas súplicas em nossas necessidades,
   Em                       Am              B7          Em
Mas livrai-nos sempre de todos os perigos,
   Am                       B7              Em
Ó Virgem gloriosa e bendita! Amém!

[Final] Em  G  B7  Em'),
  ('te-deum-a-vos-o-deus-louvamos', 'A Vós, Ó Deus, Louvamos (Hino Te Deum de Ação de Graças)', 'Santo Ambrósio e Santo Agostinho (Séc. IV) / Missal Romano', 'Ação de Graças', 'Qualquer', 'D', 88, '4/4', 'Hino Solene de Ação de Graças', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Vós,+Ó+Deus,+Louvamos+(Hino+Te+Deum+de+Ação+de+Graças)+Santo+Ambrósio+e+Santo+Agostinho+(Séc.+IV)+cifra', '{"status": "O Hino Oficial de Ação de Graças da Igreja Universal (Te Deum)", "score": 100, "documentRef": "Liturgia das Horas / Missal Romano - Fim de Ano e Solenidades", "biblicalRef": "Is 6, 3; Sl 144", "justification": "O grande hino Te Deum cantado nas solenidades, ordenações e na Missa de Ação de Graças de fim de ano.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ação de Graças • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. A Vós, ó Deus, louvamos, a Vós, Senhor, cantamos;
   Bm                       Em              A7          D
A Vós, Eterno Pai, adora toda a terra!

[Refrão]
   G                        A7              D           Bm
Santo, Santo, Santo, Senhor Deus do universo!
   Em                       A7              D
Em Vós, Senhor, esperamos: não sejamos confundidos para sempre!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('forca-de-paz-padre-zezinho', 'Força de Paz (Paz Inquieta)', 'Padre Zezinho, scj', 'Final', 'Tempo Comum', 'D', 88, '4/4', 'Marcha Jovem', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Força+de+Paz+(Paz+Inquieta)+Padre+Zezinho,+scj+cifra', '{"status": "Canto Missionário da Paz", "score": 94, "documentRef": "Estudo 79 CNBB", "biblicalRef": "Jo 14, 27", "justification": "Clássico do Padre Zezinho sobre ser força de paz no mundo.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        G               A7          D
Quero ser força de paz, onde houver guerra levar o amor;
   Bm                       Em              A7          D
Ser um cristão que não cansa jamais de anunciar o Senhor!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        G               A7          D
Quero ser força de paz, onde houver guerra levar o amor;
   Bm                       Em              A7          D
Ser um cristão que não cansa jamais de anunciar o Senhor!

[Final] D  G  A7  D'),
  ('deus-e-amor-pe-zezinho', 'Deus É Amor (1 João 4, 8)', 'Padre Zezinho, scj', 'Comunhão', 'Tempo Comum', 'C', 80, '4/4', 'Balada Bíblica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Deus+É+Amor+(1+João+4,+8)+Padre+Zezinho,+scj+cifra', '{"status": "Canto Bíblico Joânico (1 João 4, 8)", "score": 97, "documentRef": "IGMR 86 / 1João 4, 8", "biblicalRef": "1Jo 4, 7-16", "justification": "Quatro acordes básicos (C, Am, Dm, G7) cantando que Deus é Amor e quem permanece no amor permanece em Deus.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                        G               Am
1. Ao redor da Santa Mesa nos chamais à comunhão,
   F                        Dm              G7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   C                        G               Am
Quem comer deste alimento para sempre viverá,
   F                        G7              C
E a sede mais profunda da sua alma saciará!

[Refrão]
   C                        Am              Dm          G7
Deus é Amor, Deus é Amor: quem vive no amor vive em Deus,
   Dm                       G7              C
E Deus vive nele, porque Deus é Amor!

[Segunda Parte]
   Am                       F               C
2. Mistério da fé divina que nos une em um só Corpo,
   Dm                       G7              C
Penhor da vida futura e do nosso eterno conforto;
   F                        G               Am
Fazei de nós, ó Jesus, testemunhas da caridade,
   Dm                       G7              C
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   C                        Am              Dm          G7
Deus é Amor, Deus é Amor: quem vive no amor vive em Deus,
   Dm                       G7              C
E Deus vive nele, porque Deus é Amor!

[Final] C  F  G7  C'),
  ('louvemos-ao-senhor-pe-marcelo-rossi', 'Louvemos ao Senhor (Subamos à Montanha do Senhor)', 'Padre Marcelo Rossi / Adhemar de Campos', 'Entrada', 'Tempo Comum', 'G', 104, '4/4', 'Pop Louvor', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Louvemos+ao+Senhor+(Subamos+à+Montanha+do+Senhor)+Padre+Marcelo+Rossi+cifra', '{"status": "Canto de Entrada para Encontros e Grupos de Oração", "score": 92, "documentRef": "Is 2, 3 / Sl 99", "biblicalRef": "Is 2, 3; Sl 99", "justification": "Quatro acordes em Sol maior para abertura festiva de encontros.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D7

[Primeira Parte]
   G                        Em              C           D7
1. Louvemos ao Senhor, louvemos ao Senhor,
   G                        Em              C     D7    G
Adoremos no Seu santo monte, nosso Pai amado!
   C                        D7              G           Em
Seu Nome é santo! Louvemos ao Senhor!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Final] G  C  D7  G'),
  ('faz-um-milagre-em-mim-pe-marcelo-rossi', 'Faz um Milagre em Mim (Como Zaqueu)', 'Padre Marcelo Rossi / Régis Danese', 'Ação de Graças', 'Tempo Comum', 'G', 74, '4/4', 'Balada Evangélica', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Faz+um+Milagre+em+Mim+(Como+Zaqueu)+Padre+Marcelo+Rossi+cifra', '{"status": "Canto Baseado no Evangelho de Zaqueu (Lucas 19, 1-10)", "score": 94, "documentRef": "Lucas 19, 1-10", "biblicalRef": "Lc 19, 1-10", "justification": "Quatro acordes fixos (G, D, Em, C) do início ao fim, inspirado na conversão de Zaqueu.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

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
Porque o Senhor é o meu bem maior: faz um milagre em mim!'),
  ('soberano-eliana-ribeiro', 'Soberano, Maravilhoso', 'Eliana Ribeiro / Canção Nova', 'Ação de Graças', 'Qualquer', 'D', 72, '4/4', 'Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Soberano,+Maravilhoso+Eliana+Ribeiro+cifra', '{"status": "Canto de Adoração ao Santíssimo", "score": 95, "documentRef": "Adoração Eucarística", "biblicalRef": "Sl 92; Ap 4, 11", "justification": "Quatro acordes em Ré maior (D, A, Bm, G) para adoração ao Santíssimo Sacramento.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. No silêncio agradecido deste encontro de oração,
   G                        Em              A7
Contemplo a Tua presença que habita em meu coração;
   D                        A7              Bm
Não há nada neste mundo que se possa comparar
   G                        A7              D
À doçura da Tua graça derramada neste altar!

[Refrão]
   D                        A               Bm          G
Soberano, Maravilhoso, Deus que não sabe o que é falhar!
   D                        A               Bm    G     D
Fiel e Poderoso, diante de Ti quero me prostrar!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Refrão]
   D                        A               Bm          G
Soberano, Maravilhoso, Deus que não sabe o que é falhar!
   D                        A               Bm    G     D
Fiel e Poderoso, diante de Ti quero me prostrar!

[Final] D  G  A7  D'),
  ('gratidao-eu-encontrei-um-amor-perfeito', 'Gratidão (Eu Encontrei um Amor Perfeito - Lucas 17, 15)', 'padre / Canção Nova / Raquel Carpenter', 'Ação de Graças', 'Qualquer', 'G', 72, '4/4', 'Balada de Ação de Graças', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Gratidão+(Eu+Encontrei+um+Amor+Perfeito+-+Lucas+17,+15)+padre+cifra', '{"status": "Canto de Ação de Graças (O Leproso Agradecido - Lucas 17)", "score": 96, "documentRef": "Lucas 17, 15-18 / Pós-Comunhão", "biblicalRef": "Lc 17, 15-18; Sl 115", "justification": "Quatro acordes (G, D, Em, C) para agradecer a Jesus Sacramentado após a Comunhão.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

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
E estar sempre perto de Ti!'),
  ('eis-me-aqui-senhor-comunidade-shalom', 'Eis-me Aqui (Comunidade Shalom)', 'Comunidade Católica Shalom', 'Ofertório', 'Tempo Comum', 'C', 74, '4/4', 'Balada Vocacional', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eis-me+Aqui+(Comunidade+Shalom)+Comunidade+Católica+Shalom+cifra', '{"status": "Canto Vocacional e de Oferta de Vida", "score": 96, "documentRef": "Isaías 6, 8 / IGMR 74", "biblicalRef": "Is 6, 8", "justification": "Quatro acordes simples (C, G, Am, F) de oferta vocacional.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. Apresentamos no altar o pão e o vinho do amor,
   F                        Dm              G7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   C                        G               Am
Com eles depositamos nossa lida e vocação,
   F                        G7              C
Para que sejam transformados em fonte de salvação!

[Refrão]
   C                        G               Am
Eis-me aqui, Senhor, pra fazer Tua vontade,
   F                        G               C
Toma a minha vida, consagra o meu coração!

[Segunda Parte]
   Am                       F               C
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Dm                       G7              C
As alegrias e esperanças que trazemos no coração;
   F                        G               Am
Pela força do Espírito Santo santificai estes dons,
   Dm                       G7              C
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   C                        G               Am
Eis-me aqui, Senhor, pra fazer Tua vontade,
   F                        G               C
Toma a minha vida, consagra o meu coração!

[Final] C  F  G7  C'),
  ('tu-es-o-centro-frei-gilson', 'Tu És o Centro da Minha Vida', 'Frei Gilson / Som do Monte', 'Ação de Graças', 'Qualquer', 'G', 72, '4/4', 'Adoração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tu+És+o+Centro+da+Minha+Vida+Frei+Gilson+cifra', '{"status": "Canto Cristocêntrico de Adoração", "score": 96, "documentRef": "Colossenses 1, 17-18", "biblicalRef": "Cl 1, 17-18", "justification": "Quatro acordes (G, D, Em, C) proclamando Jesus como o centro de toda a vida cristã.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D
Tu és o centro da minha vida,
   Em                       C
És a razão da minha alegria!
   G                        D
Não quero nada além de Ti, Jesus:
   Em                       C               G
Tu és meu Tudo, meu Senhor!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D
Tu és o centro da minha vida,
   Em                       C
És a razão da minha alegria!
   G                        D
Não quero nada além de Ti, Jesus:
   Em                       C               G
Tu és meu Tudo, meu Senhor!

[Final] G  C  D7  G'),
  ('fogo-abrasador-comunidade-shalom', 'Fogo Abrasador', 'Comunidade Católica Shalom / Suely Façanha', 'Comunhão', 'Pentecostes', 'D', 74, '4/4', 'Balada de Consagração', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Fogo+Abrasador+Comunidade+Católica+Shalom+cifra', '{"status": "Hino de Consagração e Amor Esponsal a Cristo", "score": 97, "documentRef": "Cântico dos Cânticos 8, 6", "biblicalRef": "Ct 8, 6; Lc 12, 49", "justification": "Clássico da Comunidade Shalom em Ré maior.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A               Bm
1. Se Tu inflamas o meu coração,
   G                        Em              A7
Se Tu somente és a minha razão de viver e amar:

[Refrão]
   D                        A               Bm
Em tuas mãos minha vida está, Teu coração é onde quero morar,
   G                        A7              D
E unir-me em amor como um fogo abrasador!

[Segunda Parte]
   Bm                       G               D
2. Mistério da fé divina que nos une em um só Corpo,
   Em                       A7              D
Penhor da vida futura e do nosso eterno conforto;
   G                        A7              Bm
Fazei de nós, ó Jesus, testemunhas da caridade,
   Em                       A7              D
Repartindo com os pobres o Pão da fraternidade!

[Final] D  G  A7  D'),
  ('maranatha-vem-senhor-jesus-advento', 'Maranathá! Vem, Senhor Jesus! (Apocalipse 22, 20)', 'Pe. Reginaldo Veloso / Comunidade Shalom', 'Entrada', 'Advento', 'Am', 84, '4/4', 'Clamor do Advento', '↓  ↓ ↑  ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Maranathá!+Vem,+Senhor+Jesus!+(Apocalipse+22,+20)+Pe.+Reginaldo+Veloso+cifra', '{"status": "Clamor Escatológico Bíblico do Advento (Apocalipse 22, 20 / 1Cor 16, 22)", "score": 100, "documentRef": "Catecismo 451 / Missal Romano - Advento", "biblicalRef": "Ap 22, 20; 1Cor 16, 22", "justification": "Quatro acordes em Lá menor (Am, Dm, G, C, E7) entoando a prece aramaica dos primeiros cristãos: Maranathá!", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Entrada • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Am  Dm  G  C  E7  Am

[Refrão]
   Am                       Dm              G           C
Maranathá! Vem, Senhor Jesus!
   Dm                       Am              E7          Am
Maranathá! Vem, Senhor Jesus!

[Estrofe]
   Am                       Dm              G           C
1. O Espírito e a Esposa dizem: "Vem!" E quem ouve diga também: "Vem!"
   Dm                       Am              E7          Am
Vem depressa visitar a Tua vinha, ó Sol nascente da justiça!

[Segunda Parte]
   G                        C               Am
2. Nossos passos peregrinos vêm buscar a Tua paz,
   F                        E7              Am
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        Dm              G
Acolhei nossa oração neste dia do Senhor,
   F                        E7              Am
Para a glória de Deus Pai, nosso eterno Criador!

[Final] Am  C  E7  Am'),
  ('sopra-em-nos-fraternidade-sao-joao-paulo-ii', 'Sopra em Nós (Vento Impetuoso)', 'Fraternidade São João Paulo II', 'Comunhão', 'Pentecostes', 'Em', 76, '4/4', 'Balada / Adoração', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sopra+em+Nós+(Vento+Impetuoso)+Fraternidade+São+João+Paulo+II+cifra', '{"status": "Canto de Pentecostes e Adoração", "score": 96, "documentRef": "Atos 2, 1-4", "biblicalRef": "At 2, 1-4; Ez 37", "justification": "Um dos maiores hinos da Fraternidade São João Paulo II, todo estruturado em 4 acordes simples (Em, C, G, D).", "repertoireType": "popular", "specialDay": "Pentecostes", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Em  C  G  D

[Primeira Parte]
   Em                                       C
1. Minh''alma tem sede de Ti, ó meu Deus,
   G                                        D
Minh''alma suspira pelo Teu amor!
   Em                                       C
Vem com Teu fogo aquecer meu coração,
   G                                        D
Renova em mim a Tua unção!

[Refrão]
   Em                                       C
Sopra em nós, sopra em nós,
   G                                        D
Somos Teus filhos, ó Pai, estamos aqui!
   Em                                       C
Sopra em nós, Vento impetuoso,
   G                        D               Em
Espírito Santo de Deus, vem sobre nós!'),
  ('leao-de-juda-fraternidade-sao-joao-paulo-ii', 'Leão de Judá / Filho de Davi', 'Fraternidade São João Paulo II', 'Ação de Graças', 'Qualquer', 'Dm', 80, '4/4', 'Adoração Solene', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Leão+de+Judá+/+Filho+de+Davi+Fraternidade+São+João+Paulo+II+cifra', '{"status": "Canto Cristológico (Apocalipse 5, 5)", "score": 95, "documentRef": "Apocalipse 5, 5", "biblicalRef": "Ap 5, 5; Mc 10, 47", "justification": "Clássico da Fraternidade São João Paulo II exaltando Cristo como o Leão da Tribo de Judá.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Dm  Bb  F  C

[Primeira Parte]
   Dm                       Bb              F           C
1. Ouço o som do céu que desce sobre este altar,
   Dm                       Bb              F           C
É o Cordeiro Santo que veio reinar!

[Refrão]
   Dm                       Bb
Filho de Davi, tem compaixão de mim!
   F                        C
Leão da Tribo de Judá, vem vencer em mim!

[Segunda Parte]
   C7                       F               Dm
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Bb                       A7              Dm
Pois olhou para a pequenez deste humilde servidor;
   F                        Gm              C7
Recebe a minha entrega, meu louvor e gratidão,
   Bb                       A7              Dm
Permanece para sempre em minha vida e vocação!

[Final] Dm  F  A7  Dm'),
  ('tudo-passa-so-deus-nao-passa-fsjpii', 'Tudo Passa (Só Deus Basta)', 'Fraternidade São João Paulo II', 'Ação de Graças', 'Qualquer', 'G', 74, '4/4', 'Balada Orante', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tudo+Passa+(Só+Deus+Basta)+Fraternidade+São+João+Paulo+II+cifra', '{"status": "Meditação Pós-Comunhão", "score": 96, "documentRef": "Santa Teresa d''Ávila", "biblicalRef": "Sl 45; Mt 24, 35", "justification": "Canto de entrega e confiança da Fraternidade São João Paulo II em 4 acordes.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D
Tudo passa, tudo passará,
   Em                       C
Mas o Teu amor jamais mudará!
   G                        D
Quem a Deus tem, nada lhe falta:
   Em                       C               G
Só Deus basta, só Deus basta!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D
Tudo passa, tudo passará,
   Em                       C
Mas o Teu amor jamais mudará!
   G                        D
Quem a Deus tem, nada lhe falta:
   Em                       C               G
Só Deus basta, só Deus basta!

[Final] G  C  D7  G'),
  ('sacramento-de-amor-toca-de-assis', 'Sacramento de Amor (Deus Escondido no Pão)', 'Fraternidade Toca de Assis', 'Comunhão', 'Qualquer', 'D', 70, '4/4', 'Dedilhado Eucarístico', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sacramento+de+Amor+(Deus+Escondido+no+Pão)+Fraternidade+Toca+de+Assis+cifra', '{"status": "Hino Eucarístico da Fraternidade Toca de Assis", "score": 100, "documentRef": "IGMR 86 / Culto Eucarístico", "biblicalRef": "Jo 6, 51; Is 45, 15", "justification": "Canto profundamente eucarístico da Fraternidade Toca de Assis, próprio para Comunhão e Adoração ao Santíssimo.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G  Em  A7

[Primeira Parte]
   D                        A               Bm
1. Olhando para a Hóstia Santa sobre o altar,
   G                        Em              A7
Contemplo o Mistério de um Deus que só sabe amar;
   D                        A               Bm
Tão grande e tão pequeno, escondido neste Pão,
   G                        A7              D       D7
Faz morada humilde em meu pobre coração!

[Refrão]
   G                        A7              F#m     Bm
Sacramento de Amor, Pão dos Anjos, meu Senhor!
   Em                       A7              D       D7
Adoro-Te em silêncio, meu Deus e Salvador!
   G                        A7              F#m     Bm
No altar e nos irmãos que sofrem sem calor,
   Em                       A7              D
Quero amar-Te e servir-Te, ó Jesus, meu Redentor!'),
  ('adorador-por-excelencia-toca-de-assis', 'Adorador por Excelência (Pra Sempre Teu)', 'Fraternidade Toca de Assis', 'Ação de Graças', 'Qualquer', 'G', 72, '4/4', 'Balada Franciscana', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Adorador+por+Excelência+(Pra+Sempre+Teu)+Fraternidade+Toca+de+Assis+cifra', '{"status": "Canto Eucarístico e Franciscano", "score": 98, "documentRef": "Adoração ao Santíssimo", "biblicalRef": "Jo 4, 23-24", "justification": "Clássico da Toca de Assis unindo a adoração ao Santíssimo Sacramento e o amor aos pobres.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Diante do Sacrário dobram-se os joelhos meus,
   C                        Am              D
Aqui encontro a fonte da vida, o próprio Deus!

[Refrão]
   G                        D               Em
Quero ser adorador em espírito e em verdade,
   C                        Am              D
Viver aos pés do altar e servir na caridade!
   G                        D               Em
Pra sempre Teu, Jesus Sacramentado,
   C                        D               G
Seja para sempre bendito e adorado!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Final] G  C  D7  G'),
  ('nos-pobres-te-encontrei-fraternidade-o-caminho', 'Nos Pobres Te Encontrei (Tive Fome e Me Deste de Comer)', 'Fraternidade O Caminho', 'Comunhão', 'Quaresma', 'Em', 74, '4/4', 'Balada Evangélica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Nos+Pobres+Te+Encontrei+(Tive+Fome+e+Me+Deste+de+Comer)+Fraternidade+O+Caminho+cifra', '{"status": "Canto Baseado em Mateus 25, 35-40", "score": 99, "documentRef": "IGMR 86 / Mateus 25, 35-40", "biblicalRef": "Mt 25, 35-40", "justification": "Canto da Fraternidade O Caminho meditando a presença real de Cristo na Eucaristia e nos mais pobres.", "repertoireType": "popular", "specialDay": "Quaresma e CF", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Em  C  G  D

[Primeira Parte]
   Em                       C               G           D
1. Tive fome e me deste de comer, tive sede e me deste de beber;
   Em                       C               G           D
Era forasteiro e me acolheste em teu lar, no irmão ferido vi Teu olhar!

[Refrão]
   C                        D               G           Em
Todas as vezes que fizestes ao menor dos meus irmãos,
   Am                       B7              Em
Foi a Mim que o fizestes, diz o Senhor!

[Segunda Parte]
   D                        G               Em
2. Mistério da fé divina que nos une em um só Corpo,
   C                        B7              Em
Penhor da vida futura e do nosso eterno conforto;
   G                        Am              D
Fazei de nós, ó Jesus, testemunhas da caridade,
   C                        B7              Em
Repartindo com os pobres o Pão da fraternidade!

[Final] Em  G  B7  Em'),
  ('totus-tuus-maria-fraternidade-arca-de-maria', 'Totus Tuus Maria (Todo Teu, ó Mãe)', 'Fraternidade Arca de Maria', 'Final', 'Qualquer', 'D', 74, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Totus+Tuus+Maria+(Todo+Teu,+ó+Mãe)+Fraternidade+Arca+de+Maria+cifra', '{"status": "Canto de Consagração Mariana (Tratado de São Luís Maria Grignion de Montfort)", "score": 97, "documentRef": "Lumen Gentium 62", "biblicalRef": "Jo 19, 26-27", "justification": "Canto de consagração a Jesus por mãos de Maria da Fraternidade Arca de Maria.", "repertoireType": "popular", "specialDay": "Solenidades Marianas", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        A               Bm
Totus Tuus, Maria! Todo teu eu quero ser!
   G                        Em              A7          D
Por tuas mãos maternas, a Jesus pertencer!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        A               Bm
Totus Tuus, Maria! Todo teu eu quero ser!
   G                        Em              A7          D
Por tuas mãos maternas, a Jesus pertencer!

[Final] D  G  A7  D'),
  ('ruah-sopro-de-deus-alianca-de-misericordia', 'Ruah (Espírito Santo Repousa)', 'Comunidade Aliança de Misericórdia', 'Comunhão', 'Pentecostes', 'Am', 72, '4/4', 'Balada ao Espírito Santo', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Ruah+(Espírito+Santo+Repousa)+Comunidade+Aliança+de+Misericórdia+cifra', '{"status": "Canto de Invocação ao Espírito Santo", "score": 95, "documentRef": "Isaías 61, 1 / Lucas 4, 18", "biblicalRef": "Is 61, 1; Lc 4, 18", "justification": "Quatro acordes fixos (Am, F, C, G) do início ao fim da música da Comunidade Aliança de Misericórdia.", "repertoireType": "popular", "specialDay": "Pentecostes", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Am  F  C  G

[Primeira Parte]
   Am                       F               C           G
1. O Espírito do Senhor repousa sobre mim,
   Am                       F               C           G
Porque o Senhor me ungiu e enviou para anunciar a paz!

[Refrão]
   Am                       F
Ruah, Ruah, Sopro de Deus,
   C                        G
Vem renovar os corações dos filhos Teus!

[Segunda Parte]
   G                        C               Am
2. Mistério da fé divina que nos une em um só Corpo,
   F                        E7              Am
Penhor da vida futura e do nosso eterno conforto;
   C                        Dm              G
Fazei de nós, ó Jesus, testemunhas da caridade,
   F                        E7              Am
Repartindo com os pobres o Pão da fraternidade!

[Final] Am  C  E7  Am'),
  ('mao-no-arado-comunidade-recado', 'Mão no Arado (Ninguém Olha Para Trás)', 'Comunidade Recado', 'Final', 'Tempo Comum', 'G', 90, '4/4', 'Pop Missionário', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Mão+no+Arado+(Ninguém+Olha+Para+Trás)+Comunidade+Recado+cifra', '{"status": "Canto Vocacional e Missionário (Lucas 9, 62)", "score": 96, "documentRef": "IGMR 90 / Lucas 9, 62", "biblicalRef": "Lc 9, 62", "justification": "Clássico da Comunidade Recado inspirado no Evangelho de Lucas (''Quem põe a mão no arado não olha para trás'').", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. Alimentados na Mesa da Palavra e do Altar,
   C                        Am              D7
Partimos agora em missão para o mundo iluminar;
   G                        D7              Em
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   C                        D7              G
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   G                        D               Em
Quem põe a mão no arado não pode olhar pra trás,
   C                        D               G
Seguir Jesus de perto é encontrar a verdadeira paz!

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   G                        D               Em
Quem põe a mão no arado não pode olhar pra trás,
   C                        D               G
Seguir Jesus de perto é encontrar a verdadeira paz!

[Final] G  C  D7  G'),
  ('fidelidade-comunidade-pantokrator', 'Fidelidade (Ser Teu Tudo, Senhor)', 'Comunidade Católica Pantokrator', 'Ofertório', 'Tempo Comum', 'D', 74, '4/4', 'Balada de Entrega', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Fidelidade+(Ser+Teu+Tudo,+Senhor)+Comunidade+Católica+Pantokrator+cifra', '{"status": "Canto de Oferta Vocacional e Fidelidade", "score": 96, "documentRef": "IGMR 74", "biblicalRef": "Ap 2, 10", "justification": "Hino da Comunidade Católica Pantokrator sobre a resposta fiel ao chamado de Deus.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. Apresentamos no altar o pão e o vinho do amor,
   G                        Em              A7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   D                        A7              Bm
Com eles depositamos nossa lida e vocação,
   G                        A7              D
Para que sejam transformados em fonte de salvação!

[Refrão]
   D                        A               Bm
Recebe, Senhor, minha fidelidade sobre este altar,
   G                        A7              D
No pão e no vinho, minha vida inteira quero ofertar!

[Segunda Parte]
   Bm                       G               D
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Em                       A7              D
As alegrias e esperanças que trazemos no coração;
   G                        A7              Bm
Pela força do Espírito Santo santificai estes dons,
   Em                       A7              D
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   D                        A               Bm
Recebe, Senhor, minha fidelidade sobre este altar,
   G                        A7              D
No pão e no vinho, minha vida inteira quero ofertar!

[Final] D  G  A7  D'),
  ('alegra-te-cheia-de-graca-obra-de-maria', 'Alegra-te, Cheia de Graça (Servir Com Alegria)', 'Comunidade Obra de Maria', 'Final', 'Qualquer', 'G', 84, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Alegra-te,+Cheia+de+Graça+(Servir+Com+Alegria)+Comunidade+Obra+de+Maria+cifra', '{"status": "Canto Mariano de Evangelização (Lucas 1, 28)", "score": 97, "documentRef": "Lucas 1, 28-45", "biblicalRef": "Lc 1, 28-45", "justification": "Hino do carisma da Comunidade Obra de Maria: evangelizar de todas as formas com a alegria de Nossa Senhora.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        D7              Em
1. Alimentados na Mesa da Palavra e do Altar,
   C                        Am              D7
Partimos agora em missão para o mundo iluminar;
   G                        D7              Em
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   C                        D7              G
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   G                        C               D7          G
Alegra-te, cheia de graça, o Senhor é contigo!
   Em                       Am              D7          G
Com Maria partimos apressados para servir ao irmão amigo!

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   G                        C               D7          G
Alegra-te, cheia de graça, o Senhor é contigo!
   Em                       Am              D7          G
Com Maria partimos apressados para servir ao irmão amigo!

[Final] G  C  D7  G'),
  ('mae-da-divina-graca-doce-mae-de-deus', 'Doce Mãe de Deus, Rainha da Paz', 'Comunidade Católica Doce Mãe de Deus', 'Final', 'Qualquer', 'C', 78, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Doce+Mãe+de+Deus,+Rainha+da+Paz+Comunidade+Católica+Doce+Mãe+de+Deus+cifra', '{"status": "Canto Mariano Final", "score": 96, "documentRef": "Lumen Gentium 62", "biblicalRef": "Lc 1, 48", "justification": "Quatro acordes simples (C, Am, Dm, G7) em louvor à Mãe de Deus.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                        G               Am
1. Alimentados na Mesa da Palavra e do Altar,
   F                        Dm              G7
Partimos agora em missão para o mundo iluminar;
   C                        G               Am
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   F                        G7              C
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   C                        Am              Dm          G7
Doce Mãe de Deus, olha pelos filhos teus,
   Dm                       G7              C
Conduze nossos passos ao Reino dos Céus!

[Segunda Parte]
   Am                       F               C
2. Onde houver dor e tristeza, levemos consolação,
   Dm                       G7              C
Onde houver treva e discórdia, semeemos o perdão;
   F                        G               Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm                       G7              C
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   C                        Am              Dm          G7
Doce Mãe de Deus, olha pelos filhos teus,
   Dm                       G7              C
Conduze nossos passos ao Reino dos Céus!

[Final] C  F  G7  C'),
  ('hino-campanha-da-fraternidade-2024-amizade-social', 'Vós Sois Todos Irmãos e Irmãs (Hino da Campanha da Fraternidade 2024)', 'CNBB - Campanha da Fraternidade 2024 (Fraternidade e Amizade Social)', 'Entrada', 'Quaresma', 'D', 82, '4/4', 'Hino Oficial da CF', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Vós+Sois+Todos+Irmãos+e+Irmãs+(Hino+da+Campanha+da+Fraternidade+2024)+CNBB+-+Campanha+da+Fraternidade+2024+(Fraternidade+e+Amizade+Social)+cifra', '{"status": "Hino Oficial da CNBB para a Quaresma (Mateus 23, 8)", "score": 100, "documentRef": "CNBB - Campanha da Fraternidade 2024 / Fratelli Tutti", "biblicalRef": "Mt 23, 8; Sl 132", "justification": "Hino oficial da Campanha da Fraternidade da CNBB sobre a Amizade Social (''Vós sois todos irmãos e irmãs'').", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Entrada • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        Bm              G           A7
1. Convertei-vos e crede no Evangelho, eis o tempo favorável da mudança;
   G                        D               Em    A7    D
Superando a divisão e a indiferença, construamos a amizade e a esperança!

[Refrão]
   G                        A7              F#m         Bm
"Vós sois todos irmãos e irmãs!" — é Palavra de Cristo, o Senhor;
   Em                       A7              D
Pois um só é o nosso Pai: vivamos na paz e no amor!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Final] D  G  A7  D'),
  ('hino-campanha-da-fraternidade-2023-fome', 'Dai-lhes Vós Mesmos de Comer (Hino da Campanha da Fraternidade 2023)', 'CNBB - Campanha da Fraternidade 2023 (Fraternidade e Fome)', 'Ofertório', 'Quaresma', 'G', 84, '4/4', 'Toada Litúrgica da CF', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Dai-lhes+Vós+Mesmos+de+Comer+(Hino+da+Campanha+da+Fraternidade+2023)+CNBB+-+Campanha+da+Fraternidade+2023+(Fraternidade+e+Fome)+cifra', '{"status": "Hino Oficial da CNBB (Mateus 14, 16)", "score": 100, "documentRef": "CNBB - Campanha da Fraternidade 2023 / Mateus 14, 16", "biblicalRef": "Mt 14, 13-21; Jo 6, 1-15", "justification": "Baseado no mandato evangélico de Jesus na multiplicação dos pães: ''Dai-lhes vós mesmos de comer!''.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        Em              Am          D7
1. Vocês que têm fome e sede de justiça, venham todos para a Mesa da partilha;
   C                        G               Am    D7    G
Cinco pães e dois peixinhos ofertados saciarão a multidão que é família!

[Refrão]
   C                        D7              G           Em
"Dai-lhes vós mesmos de comer!" — ordena o Mestre com compaixão;
   Am                       D7              G
Na Eucaristia aprendemos a repartir a vida e o pão!

[Segunda Parte]
   Em                       C               G
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Am                       D7              G
As alegrias e esperanças que trazemos no coração;
   C                        D7              Em
Pela força do Espírito Santo santificai estes dons,
   Am                       D7              G
Sacrifício de louvor pelos nossos irmãos!

[Final] G  C  D7  G'),
  ('hino-campanha-da-fraternidade-2022-educacao', 'Fala Com Sabedoria, Ensina Com Amor (Hino da Campanha da Fraternidade 2022)', 'CNBB - Campanha da Fraternidade 2022 (Fraternidade e Educação)', 'Entrada', 'Quaresma', 'C', 84, '4/4', 'Marcha Litúrgica da CF', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Fala+Com+Sabedoria,+Ensina+Com+Amor+(Hino+da+Campanha+da+Fraternidade+2022)+CNBB+-+Campanha+da+Fraternidade+2022+(Fraternidade+e+Educação)+cifra', '{"status": "Hino Oficial da CNBB (Provérbios 31, 26)", "score": 100, "documentRef": "CNBB - Campanha da Fraternidade 2022 / Provérbios 31, 26", "biblicalRef": "Pv 31, 26; Mc 10, 14", "justification": "Hino oficial da Campanha da Fraternidade sobre a missão cristã de educar com sabedoria e amor.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Entrada • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                        G               Am
1. Reunidos como Igreja ao redor do Teu altar,
   F                        Dm              G7
Atendemos ao chamado para juntos celebrar;
   C                        G               Am
Tua graça nos acolhe, Tua luz nos faz irmãos,
   F                        G7              C
Entoando com alegria este canto de união!

[Refrão]
   C                        Am              Dm          G7
Fala com sabedoria, ensina com amor!
   F                        G7              C
Em Cristo Mestre encontramos a verdade que liberta e dá valor!

[Segunda Parte]
   Am                       F               C
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Dm                       G7              C
Na assembleia santa e viva que o Teu Espírito refaz;
   F                        G               Am
Acolhei nossa oração neste dia do Senhor,
   Dm                       G7              C
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   C                        Am              Dm          G7
Fala com sabedoria, ensina com amor!
   F                        G7              C
Em Cristo Mestre encontramos a verdade que liberta e dá valor!

[Final] C  F  G7  C'),
  ('hino-campanha-da-fraternidade-2020-vida-dom-e-compromisso', 'Viu, Sentiu Compaixão e Cuidou Dele (Hino da Campanha da Fraternidade 2020)', 'CNBB - Campanha da Fraternidade 2020 (Fraternidade e Vida: Dom e Compromisso)', 'Comunhão', 'Quaresma', 'Dm', 78, '4/4', 'Balada Quaresmal da CF', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Viu,+Sentiu+Compaixão+e+Cuidou+Dele+(Hino+da+Campanha+da+Fraternidade+2020)+CNBB+-+Campanha+da+Fraternidade+2020+(Fraternidade+e+Vida:+Dom+e+Compromisso)+cifra', '{"status": "Hino Oficial da CNBB (O Bom Samaritano - Lucas 10, 33-34)", "score": 100, "documentRef": "CNBB - Campanha da Fraternidade 2020 / Irmã Dulce dos Pobres", "biblicalRef": "Lc 10, 25-37", "justification": "Inspirado na parábola do Bom Samaritano e no testemunho de Santa Dulce dos Pobres.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
   Dm                       Gm              C7
1. Ao redor da Santa Mesa nos chamais à comunhão,
   F                        Bb              A7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   Dm                       Gm              C7
Quem comer deste alimento para sempre viverá,
   F                        A7              Dm
E a sede mais profunda da sua alma saciará!

[Refrão]
   Dm                       Gm              C7          F
Deus viu, sentiu compaixão, e cuidou de seu povo com amor!
   Gm                       Dm              A7          Dm
Aprendamos do Bom Samaritano a cuidar da vida na dor!

[Segunda Parte]
   C7                       F               Dm
2. Mistério da fé divina que nos une em um só Corpo,
   Bb                       A7              Dm
Penhor da vida futura e do nosso eterno conforto;
   F                        Gm              C7
Fazei de nós, ó Jesus, testemunhas da caridade,
   Bb                       A7              Dm
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   Dm                       Gm              C7          F
Deus viu, sentiu compaixão, e cuidou de seu povo com amor!
   Gm                       Dm              A7          Dm
Aprendamos do Bom Samaritano a cuidar da vida na dor!

[Final] Dm  F  A7  Dm'),
  ('hino-campanha-da-fraternidade-2015-eu-vim-para-servir', 'Eu Vim Para Servir (Hino da Campanha da Fraternidade 2015)', 'CNBB - Campanha da Fraternidade 2015 (Marcos 10, 45)', 'Comunhão', 'Quaresma', 'G', 82, '4/4', 'Balada Litúrgica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+Vim+Para+Servir+(Hino+da+Campanha+da+Fraternidade+2015)+CNBB+-+Campanha+da+Fraternidade+2015+(Marcos+10,+45)+cifra', '{"status": "Hino Oficial da CNBB (Marcos 10, 45)", "score": 100, "documentRef": "CNBB - Campanha da Fraternidade 2015 / Marcos 10, 45", "biblicalRef": "Mc 10, 45; Jo 13, 14", "justification": "Canta as palavras do Filho do Homem: ''Eu não vim para ser servido, mas para servir e dar a vida''.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D7  G

[Primeira Parte]
   G                        D7              Em
1. Ao redor da Santa Mesa nos chamais à comunhão,
   C                        Am              D7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   G                        D7              Em
Quem comer deste alimento para sempre viverá,
   C                        D7              G
E a sede mais profunda da sua alma saciará!

[Refrão]
   G                        Em              C           D7
"Eu vim para servir, Eu vim para servir
   Am                       D7              G
E dar a minha vida em resgate por muitos!" (2x)

[Segunda Parte]
   Em                       C               G
2. Mistério da fé divina que nos une em um só Corpo,
   Am                       D7              G
Penhor da vida futura e do nosso eterno conforto;
   C                        D7              Em
Fazei de nós, ó Jesus, testemunhas da caridade,
   Am                       D7              G
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   G                        Em              C           D7
"Eu vim para servir, Eu vim para servir
   Am                       D7              G
E dar a minha vida em resgate por muitos!" (2x)

[Final] G  C  D7  G'),
  ('hino-campanha-da-fraternidade-2013-juventude-eis-me-aqui', 'Eis-me Aqui, Envia-me! (Hino da Campanha da Fraternidade 2013 - Juventude)', 'CNBB - Campanha da Fraternidade 2013 (Isaías 6, 8)', 'Final', 'Quaresma', 'D', 90, '4/4', 'Marcha Jovem Litúrgica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eis-me+Aqui,+Envia-me!+(Hino+da+Campanha+da+Fraternidade+2013+-+Juventude)+CNBB+-+Campanha+da+Fraternidade+2013+(Isaías+6,+8)+cifra', '{"status": "Hino Oficial da CNBB e JMJ Rio 2013 (Isaías 6, 8)", "score": 100, "documentRef": "CNBB - Campanha da Fraternidade 2013 / Isaías 6, 8", "biblicalRef": "Is 6, 8; Jr 1, 7", "justification": "Canto vocacional e missionário da Campanha da Fraternidade da Juventude.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Final • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        G               A7          D
Quem enviarei? Quem irá por nós?
   Bm                       Em              A7          D
"Eis-me aqui, Senhor, envia-me a mim!"

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        G               A7          D
Quem enviarei? Quem irá por nós?
   Bm                       Em              A7          D
"Eis-me aqui, Senhor, envia-me a mim!"

[Final] D  G  A7  D'),
  ('soberano-poderoso-deus-tony-allysson', 'Poderoso Deus / Soberano', 'Tony Allysson', 'Ação de Graças', 'Qualquer', 'G', 72, '4/4', 'Adoração', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Poderoso+Deus+/+Soberano+Tony+Allysson+cifra', '{"status": "Canto de Adoração", "score": 95, "documentRef": "Adoração ao Santíssimo", "biblicalRef": "Ap 4, 8; Sl 92", "justification": "Quatro acordes fixos (G, D, Em, C) na voz de Tony Allysson.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D
Poderoso Deus, Soberano Rei,
   Em                       C
Diante do Teu trono me prostrarei!
   G                        D
Santo é o Teu Nome, digno de louvor,
   Em                       C               G
Recebe a minha vida, ó meu Senhor!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D
Poderoso Deus, Soberano Rei,
   Em                       C
Diante do Teu trono me prostrarei!
   G                        D
Santo é o Teu Nome, digno de louvor,
   Em                       C               G
Recebe a minha vida, ó meu Senhor!

[Final] G  C  D7  G'),
  ('filho-de-davi-tony-allysson', 'Filho de Davi (Tem Compaixão de Mim)', 'Tony Allysson', 'Ato Penitencial', 'Quaresma', 'Em', 74, '4/4', 'Balada de Súplica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Filho+de+Davi+(Tem+Compaixão+de+Mim)+Tony+Allysson+cifra', '{"status": "Clamor Evangélico do Cego de Jericó (Marcos 10, 47)", "score": 96, "documentRef": "Marcos 10, 47-52", "biblicalRef": "Mc 10, 47-52", "justification": "Baseado na oração bíblica de Bartimeu: ''Jesus, Filho de Davi, tem compaixão de mim!''.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  C  G  D

[Primeira Parte]
   Em                       G               B7          Em
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   D                        C               B7          Em
E confiamos no abismo da Vossa eterna bondade;
   G                        Am              D
Olhai com misericórdia para o coração contrito,
   C                        B7              Em
Renovai a nossa aliança no Vosso amor infinito!

[Refrão]
   Em                       C
Jesus, Filho de Davi, tem compaixão de mim!
   G                        D
Jesus, Filho de Davi, cura o meu coração!

[Segunda Parte]
   Em                       G               B7          Em
2. Vós que viestes chamar os pecadores à conversão,
   D                        C               B7          Em
Curai as nossas feridas e dai-nos Vosso perdão;
   G                        Am              D
Purificai nossas vidas para a Santa Comunhão,
   C                        B7              Em
Conduzi os nossos passos no caminho da salvação!

[Refrão]
   Em                       C
Jesus, Filho de Davi, tem compaixão de mim!
   G                        D
Jesus, Filho de Davi, cura o meu coração!

[Final] Em  G  B7  Em'),
  ('entao-volta-diego-fernandes', 'Então Volta (Casa do Pai)', 'Diego Fernandes', 'Ato Penitencial', 'Quaresma', 'C', 74, '4/4', 'Balada de Reconciliação', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Então+Volta+(Casa+do+Pai)+Diego+Fernandes+cifra', '{"status": "Canto de Retorno ao Pai", "score": 94, "documentRef": "Lucas 15, 20", "biblicalRef": "Lc 15, 11-24", "justification": "Canto de reconciliação de Diego Fernandes em 4 acordes simples (C, G, Am, F).", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        F               G7          C
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   Am                       Dm              G7          C
E confiamos no abismo da Vossa eterna bondade;
   F                        G               Am
Olhai com misericórdia para o coração contrito,
   Dm                       G7              C
Renovai a nossa aliança no Vosso amor infinito!

[Refrão]
   C                        G               Am
Então volta para a casa do teu Pai,
   F                        G               C
Os braços d''Ele abertos sempre estão por ti!

[Segunda Parte]
   C                        F               G7          C
2. Vós que viestes chamar os pecadores à conversão,
   Am                       Dm              G7          C
Curai as nossas feridas e dai-nos Vosso perdão;
   F                        G               Am
Purificai nossas vidas para a Santa Comunhão,
   Dm                       G7              C
Conduzi os nossos passos no caminho da salvação!

[Refrão]
   C                        G               Am
Então volta para a casa do teu Pai,
   F                        G               C
Os braços d''Ele abertos sempre estão por ti!

[Final] C  F  G7  C'),
  ('amar-te-mais-davidson-silva', 'Amar-Te Mais', 'Davidson Silva / Comunidade Shalom', 'Ação de Graças', 'Qualquer', 'D', 70, '4/4', 'Dedilhado / Adoração', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Amar-Te+Mais+Davidson+Silva+cifra', '{"status": "Canto Eucarístico de Ação de Graças (João 21, 15-17)", "score": 98, "documentRef": "João 21, 15-17 / Pós-Comunhão", "biblicalRef": "Jo 21, 15-17", "justification": "Inspirado na resposta de São Pedro a Jesus Ressuscitado: ''Senhor, Tu sabes tudo, Tu sabes que eu Te amo''.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A               Bm
1. Senhor, Tu sabes tudo, Tu sabes que Te amo,
   G                        Em              A7
Mesmo na minha fraqueza, pelo Teu Nome eu clamo!

[Refrão]
   D                        A               Bm
Amar-Te mais que a mim mesmo, amar-Te mais que tudo que há aqui,
   G                        A7              D
Entregar a minha vida inteira só por Ti!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Final] D  G  A7  D'),
  ('eu-sou-teu-ana-gabriela', 'Eu Sou Teu (Mais Que Tudo)', 'Ana Gabriela', 'Ofertório', 'Tempo Comum', 'G', 76, '4/4', 'Balada Jovem', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Eu+Sou+Teu+(Mais+Que+Tudo)+Ana+Gabriela+cifra', '{"status": "Canto Jovem de Oferta de Vida", "score": 94, "documentRef": "IGMR 74", "biblicalRef": "Ct 6, 3", "justification": "Quatro acordes em Sol maior na voz de Ana Gabriela.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. Apresentamos no altar o pão e o vinho do amor,
   C                        Am              D7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   G                        D7              Em
Com eles depositamos nossa lida e vocação,
   C                        D7              G
Para que sejam transformados em fonte de salvação!

[Refrão]
   G                        D               Em
Eu sou Teu, inteiramente Teu, Senhor,
   C                        D               G
Toma em Tuas mãos minha vida e meu amor!

[Segunda Parte]
   Em                       C               G
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Am                       D7              G
As alegrias e esperanças que trazemos no coração;
   C                        D7              Em
Pela força do Espírito Santo santificai estes dons,
   Am                       D7              G
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   G                        D               Em
Eu sou Teu, inteiramente Teu, Senhor,
   C                        D               G
Toma em Tuas mãos minha vida e meu amor!

[Final] G  C  D7  G'),
  ('fiat-faca-se-em-mim-laura-salvador', 'Fiat (Faça-se em Mim Segundo a Tua Palavra)', 'Laura Salvador', 'Final', 'Advento', 'C', 74, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Fiat+(Faça-se+em+Mim+Segundo+a+Tua+Palavra)+Laura+Salvador+cifra', '{"status": "Canto Mariano da Anunciação (Lucas 1, 38)", "score": 98, "documentRef": "Lucas 1, 38", "biblicalRef": "Lc 1, 38", "justification": "Canta o ''Fiat'' de Nossa Senhora na Anunciação do Anjo Gabriel.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Final • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. Alimentados na Mesa da Palavra e do Altar,
   F                        Dm              G7
Partimos agora em missão para o mundo iluminar;
   C                        G               Am
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   F                        G7              C
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   C                        G               Am
Eis aqui a serva do Senhor:
   F                        G               C
Faça-se em mim segundo a Tua Palavra!

[Segunda Parte]
   Am                       F               C
2. Onde houver dor e tristeza, levemos consolação,
   Dm                       G7              C
Onde houver treva e discórdia, semeemos o perdão;
   F                        G               Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm                       G7              C
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   C                        G               Am
Eis aqui a serva do Senhor:
   F                        G               C
Faça-se em mim segundo a Tua Palavra!

[Final] C  F  G7  C'),
  ('teu-amor-me-sustentara-juninho-cassimiro', 'Teu Amor Me Sustentará', 'Juninho Cassimiro', 'Ação de Graças', 'Tempo Comum', 'A', 74, '4/4', 'Balada de Oração', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Teu+Amor+Me+Sustentará+Juninho+Cassimiro+cifra', '{"status": "Canto de Confiança na Graça de Deus", "score": 95, "documentRef": "2Coríntios 12, 9", "biblicalRef": "2Cor 12, 9", "justification": "Composição de Juninho Cassimiro em 4 acordes (A, E, F#m, D).", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] A  E  F#m  D

[Primeira Parte]
   A                        E7              F#m
1. No silêncio agradecido deste encontro de oração,
   D                        Bm              E7
Contemplo a Tua presença que habita em meu coração;
   A                        E7              F#m
Não há nada neste mundo que se possa comparar
   D                        E7              A
À doçura da Tua graça derramada neste altar!

[Refrão]
   A                        E               F#m
Basta-me a Tua graça, Teu amor me sustentará;
   D                        E               A
Na minha fraqueza a Tua força brilhará!

[Segunda Parte]
   F#m                      D               A
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Bm                       E7              A
Pois olhou para a pequenez deste humilde servidor;
   D                        E7              F#m
Recebe a minha entrega, meu louvor e gratidão,
   Bm                       E7              A
Permanece para sempre em minha vida e vocação!

[Refrão]
   A                        E               F#m
Basta-me a Tua graça, Teu amor me sustentará;
   D                        E               A
Na minha fraqueza a Tua força brilhará!

[Final] A  D  E7  A'),
  ('maria-passa-a-frente-olivia-ferreira', 'Maria Passa à Frente', 'Olívia Ferreira', 'Final', 'Qualquer', 'D', 76, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Maria+Passa+à+Frente+Olívia+Ferreira+cifra', '{"status": "Canto de Devoção Mariana", "score": 95, "documentRef": "Jo 2, 1-11", "biblicalRef": "Jo 2, 1-11", "justification": "Oração mariana muito popular nas paróquias e grupos de oração.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        A               Bm
Maria, passa à frente, vai abrindo estradas e caminhos;
   G                        A7              D
Onde Maria põe a mão, Jesus derrama a Sua bênção!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        A               Bm
Maria, passa à frente, vai abrindo estradas e caminhos;
   G                        A7              D
Onde Maria põe a mão, Jesus derrama a Sua bênção!

[Final] D  G  A7  D'),
  ('o-senhor-e-a-minha-forca-salette-ferreira', 'O Senhor É a Minha Força (Neemias 8, 10)', 'Salette Ferreira / Canção Nova', 'Entrada', 'Tempo Comum', 'G', 88, '4/4', 'Marcha Bíblica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=O+Senhor+É+a+Minha+Força+(Neemias+8,+10)+Salette+Ferreira+cifra', '{"status": "Canto Bíblico de Alegria no Senhor (Neemias 8, 10)", "score": 98, "documentRef": "Neemias 8, 10 / Salmo 27", "biblicalRef": "Ne 8, 10; Sl 27, 7", "justification": "Baseado em Neemias 8, 10 (''A alegria do Senhor é a nossa força'').", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        D7              Em
1. Reunidos como Igreja ao redor do Teu altar,
   C                        Am              D7
Atendemos ao chamado para juntos celebrar;
   G                        D7              Em
Tua graça nos acolhe, Tua luz nos faz irmãos,
   C                        D7              G
Entoando com alegria este canto de união!

[Refrão]
   G                        C               D7          G
A alegria do Senhor é a nossa força!
   Em                       Am              D7          G
A alegria do Senhor é a nossa força!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   G                        C               D7          G
A alegria do Senhor é a nossa força!
   Em                       Am              D7          G
A alegria do Senhor é a nossa força!

[Final] G  C  D7  G'),
  ('a-forca-do-amor-marcio-todeschini', 'A Força do Amor', 'Márcio Todeschini / Canção Nova', 'Comunhão', 'Tempo Comum', 'D', 76, '4/4', 'Balada Eucarística', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Força+do+Amor+Márcio+Todeschini+cifra', '{"status": "Canto sobre o Amor de Cristo na Eucaristia", "score": 96, "documentRef": "Romanos 8, 35", "biblicalRef": "Rm 8, 35-39", "justification": "Composição de Márcio Todeschini sobre o amor de Cristo que vence toda dor.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. Ao redor da Santa Mesa nos chamais à comunhão,
   G                        Em              A7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   D                        A7              Bm
Quem comer deste alimento para sempre viverá,
   G                        A7              D
E a sede mais profunda da sua alma saciará!

[Refrão]
   D                        A               Bm
Quem nos separará do amor de Cristo?
   G                        A7              D
Em todas as coisas somos mais que vencedores!

[Segunda Parte]
   Bm                       G               D
2. Mistério da fé divina que nos une em um só Corpo,
   Em                       A7              D
Penhor da vida futura e do nosso eterno conforto;
   G                        A7              Bm
Fazei de nós, ó Jesus, testemunhas da caridade,
   Em                       A7              D
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   D                        A               Bm
Quem nos separará do amor de Cristo?
   G                        A7              D
Em todas as coisas somos mais que vencedores!

[Final] D  G  A7  D'),
  ('a-vitoria-e-nossa-pitter-di-laura', 'A Vitória É Nossa Pelo Sangue de Jesus', 'Pitter Di Laura / Canção Nova', 'Ação de Graças', 'Páscoa', 'G', 82, '4/4', 'Balada Pascal', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Vitória+É+Nossa+Pelo+Sangue+de+Jesus+Pitter+Di+Laura+cifra', '{"status": "Canto de Vitória Pascal (Apocalipse 12, 11)", "score": 94, "documentRef": "Apocalipse 12, 11", "biblicalRef": "Ap 12, 11", "justification": "Quatro acordes em Sol maior na voz de Pitter Di Laura.", "repertoireType": "popular", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
Pelo Sangue do Cordeiro alcançamos redenção,
   C                        D               G
Nele está nossa vitória e nossa salvação!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
Pelo Sangue do Cordeiro alcançamos redenção,
   C                        D               G
Nele está nossa vitória e nossa salvação!

[Final] G  C  D7  G'),
  ('sopra-espirito-emanuel-stenio', 'Sopra, Espírito de Deus', 'Emanuel Stênio / Canção Nova', 'Entrada', 'Pentecostes', 'Em', 78, '4/4', 'Balada de Pentecostes', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Sopra,+Espírito+de+Deus+Emanuel+Stênio+cifra', '{"status": "Invocação ao Espírito Santo", "score": 95, "documentRef": "Ezequiel 37, 9", "biblicalRef": "Ez 37, 9", "justification": "Canto de Pentecostes e Crisma em 4 acordes simples (Em, C, G, D).", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Entrada • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  C  G  D

[Primeira Parte]
   Em                       Am              D
1. Reunidos como Igreja ao redor do Teu altar,
   G                        C               B7
Atendemos ao chamado para juntos celebrar;
   Em                       Am              D
Tua graça nos acolhe, Tua luz nos faz irmãos,
   G                        B7              Em
Entoando com alegria este canto de união!

[Refrão]
   Em                       C               G           D
Vem dos quatro ventos, ó Espírito de Deus,
   Em                       C               D           Em
Sopra sobre nós e dá vida aos filhos Teus!

[Segunda Parte]
   D                        G               Em
2. Nossos passos peregrinos vêm buscar a Tua paz,
   C                        B7              Em
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        Am              D
Acolhei nossa oração neste dia do Senhor,
   C                        B7              Em
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   Em                       C               G           D
Vem dos quatro ventos, ó Espírito de Deus,
   Em                       C               D           Em
Sopra sobre nós e dá vida aos filhos Teus!

[Final] Em  G  B7  Em'),
  ('reunidos-em-teu-nome-amor-e-adoracao', 'Reunidos em Teu Nome', 'Ministério Amor e Adoração / Canção Nova', 'Entrada', 'Tempo Comum', 'G', 88, '4/4', 'Pop Litúrgico', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Reunidos+em+Teu+Nome+Ministério+Amor+e+Adoração+cifra', '{"status": "Canto de Abertura Comunitária (Mateus 18, 20)", "score": 97, "documentRef": "IGMR 47 / Mateus 18, 20", "biblicalRef": "Mt 18, 20", "justification": "Excelente canto de Entrada para a Missa Dominical.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. Reunidos como Igreja ao redor do Teu altar,
   C                        Am              D7
Atendemos ao chamado para juntos celebrar;
   G                        D7              Em
Tua graça nos acolhe, Tua luz nos faz irmãos,
   C                        D7              G
Entoando com alegria este canto de união!

[Refrão]
   G                        D               Em
Reunidos em Teu Nome, celebramos Teu amor,
   C                        D               G
No altar da Eucaristia Te adoramos, ó Senhor!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   G                        D               Em
Reunidos em Teu Nome, celebramos Teu amor,
   C                        D               G
No altar da Eucaristia Te adoramos, ó Senhor!

[Final] G  C  D7  G'),
  ('tu-es-meu-tudo-thiago-tome', 'Senhor, Tu És Meu Tudo', 'Thiago Tomé / Canção Nova', 'Ação de Graças', 'Qualquer', 'C', 72, '4/4', 'Adoração', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Senhor,+Tu+És+Meu+Tudo+Thiago+Tomé+cifra', '{"status": "Oração Pós-Comunhão", "score": 95, "documentRef": "Salmo 72, 25", "biblicalRef": "Sl 72, 25-26", "justification": "Quatro acordes em Dó maior (C, G, Am, F) na voz do Pe. Thiago Tomé.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Refrão]
   C                        G               Am
Quem tenho eu no céu senão a Ti?
   F                        G               C
E na terra nada quero além de Ti, meu Senhor!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Refrão]
   C                        G               Am
Quem tenho eu no céu senão a Ti?
   F                        G               C
E na terra nada quero além de Ti, meu Senhor!

[Final] C  F  G7  C'),
  ('coracao-adorador-rogerinha-moreira', 'Coração Adorador', 'Rogerinha Moreira / Canção Nova', 'Ação de Graças', 'Qualquer', 'D', 72, '4/4', 'Balada de Adoração', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Coração+Adorador+Rogerinha+Moreira+cifra', '{"status": "Canto de Adoração Eucarística", "score": 95, "documentRef": "João 4, 24", "biblicalRef": "Jo 4, 24", "justification": "Canto suave de adoração em Ré maior.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. No silêncio agradecido deste encontro de oração,
   G                        Em              A7
Contemplo a Tua presença que habita em meu coração;
   D                        A7              Bm
Não há nada neste mundo que se possa comparar
   G                        A7              D
À doçura da Tua graça derramada neste altar!

[Refrão]
   D                        A               Bm
Dá-me um coração adorador, fiel e sincero,
   G                        A7              D
Pois somente a Tua presença é tudo o que eu quero!

[Segunda Parte]
   Bm                       G               D
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Em                       A7              D
Pois olhou para a pequenez deste humilde servidor;
   G                        A7              Bm
Recebe a minha entrega, meu louvor e gratidão,
   Em                       A7              D
Permanece para sempre em minha vida e vocação!

[Refrão]
   D                        A               Bm
Dá-me um coração adorador, fiel e sincero,
   G                        A7              D
Pois somente a Tua presença é tudo o que eu quero!

[Final] D  G  A7  D'),
  ('confiarei-pe-adriano-zandona', 'Confiarei no Teu Amor', 'Padre Adriano Zandoná', 'Ação de Graças', 'Tempo Comum', 'G', 74, '4/4', 'Balada de Esperança', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Confiarei+no+Teu+Amor+Padre+Adriano+Zandoná+cifra', '{"status": "Canto de Confiança em Deus (Salmo 36, 5)", "score": 95, "documentRef": "Salmo 36, 5", "biblicalRef": "Sl 36, 5", "justification": "Quatro acordes simples (G, D, Em, C) do Pe. Adriano Zandoná.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
Entrega o teu caminho ao Senhor, confia Nele,
   C                        D               G
E tudo o mais Ele fará por ti!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
Entrega o teu caminho ao Senhor, confia Nele,
   C                        D               G
E tudo o mais Ele fará por ti!

[Final] G  C  D7  G'),
  ('maos-ensanguentadas-de-jesus-pe-cleidimar', 'Mãos Ensanguentadas de Jesus', 'Padre Cleidimar Moreira / Devocional', 'Ato Penitencial', 'Quaresma', 'D', 72, '4/4', 'Balada de Súplica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Mãos+Ensanguentadas+de+Jesus+Padre+Cleidimar+Moreira+cifra', '{"status": "Oração às Santas Chagas de Cristo", "score": 94, "documentRef": "João 20, 27", "biblicalRef": "Jo 20, 27; Is 53, 5", "justification": "Canto devocional às Santas Chagas de Nosso Senhor Jesus Cristo.", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   Bm                       Em              A7          D
E confiamos no abismo da Vossa eterna bondade;
   G                        A7              Bm
Olhai com misericórdia para o coração contrito,
   Em                       A7              D
Renovai a nossa aliança no Vosso amor infinito!

[Refrão]
   D                        G               D
Mãos ensanguentadas de Jesus, mãos feridas lá na Cruz!
   Bm                       Em              A7          D
Vem tocar em minha vida, vem curar meu coração!

[Segunda Parte]
   D                        G               A7          D
2. Vós que viestes chamar os pecadores à conversão,
   Bm                       Em              A7          D
Curai as nossas feridas e dai-nos Vosso perdão;
   G                        A7              Bm
Purificai nossas vidas para a Santa Comunhão,
   Em                       A7              D
Conduzi os nossos passos no caminho da salvação!

[Refrão]
   D                        G               D
Mãos ensanguentadas de Jesus, mãos feridas lá na Cruz!
   Bm                       Em              A7          D
Vem tocar em minha vida, vem curar meu coração!

[Final] D  G  A7  D'),
  ('o-que-e-que-eu-sou-sem-jesus-pe-alessandro-campos', 'O Que É Que Eu Sou Sem Jesus', 'Padre Alessandro Campos', 'Ação de Graças', 'Tempo Comum', 'G', 86, '3/4', 'Guarânia Sertaneja', '↓ ↑ ↓ ↑ ↓', true, true, 3, 'https://www.youtube.com/results?search_query=O+Que+É+Que+Eu+Sou+Sem+Jesus+Padre+Alessandro+Campos+cifra', '{"status": "Clássico Sertanejo Católico (João 15, 5)", "score": 94, "documentRef": "João 15, 5", "biblicalRef": "Jo 15, 5", "justification": "Apenas 3 acordes (G, D7, C) — uma das músicas católicas sertanejas mais conhecidas do Brasil!", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D7  G  C  G  D7  G

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                                        D7
O que é que eu sou sem Jesus?
   C                        D7              G
Nada, nada, nada!
   G                        G7              C
Sem Jesus eu sou folha seca que o vento leva,
   G                        D7              G
Com Jesus a minha vida está abençoada!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                                        D7
O que é que eu sou sem Jesus?
   C                        D7              G
Nada, nada, nada!
   G                        G7              C
Sem Jesus eu sou folha seca que o vento leva,
   G                        D7              G
Com Jesus a minha vida está abençoada!

[Final] G  C  D7  G'),
  ('restaura-minha-fe-pe-juarez-de-castro', 'Restaura Minha Fé, Senhor', 'Padre Juarez de Castro', 'Ação de Graças', 'Tempo Comum', 'C', 74, '4/4', 'Balada', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Restaura+Minha+Fé,+Senhor+Padre+Juarez+de+Castro+cifra', '{"status": "Oração de Fé (Lucas 17, 5)", "score": 94, "documentRef": "Lucas 17, 5", "biblicalRef": "Lc 17, 5", "justification": "Quatro acordes em Dó maior na voz do Padre Juarez de Castro.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Refrão]
   C                        G               Am
Aumenta a minha fé, restaura o meu viver,
   F                        G               C
Em Tuas mãos, Senhor, entrego todo o meu ser!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Refrão]
   C                        G               Am
Aumenta a minha fé, restaura o meu viver,
   F                        G               C
Em Tuas mãos, Senhor, entrego todo o meu ser!

[Final] C  F  G7  C'),
  ('no-teu-altar-pai-eterno-pe-robson', 'No Teu Altar, Divino Pai Eterno', 'Padre Robson de Oliveira', 'Entrada', 'Tempo Comum', 'D', 82, '4/4', 'Hino de Romaria', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=No+Teu+Altar,+Divino+Pai+Eterno+Padre+Robson+de+Oliveira+cifra', '{"status": "Canto de Romaria ao Divino Pai Eterno", "score": 95, "documentRef": "Diretório sobre Piedade Popular", "biblicalRef": "Sl 121", "justification": "Hino tradicional das romarias ao Divino Pai Eterno em 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Reunidos como Igreja ao redor do Teu altar,
   G                        Em              A7
Atendemos ao chamado para juntos celebrar;
   D                        A7              Bm
Tua graça nos acolhe, Tua luz nos faz irmãos,
   G                        A7              D
Entoando com alegria este canto de união!

[Refrão]
   D                        G               A7          D
Divino Pai Eterno, aqui viemos Te louvar,
   Bm                       Em              A7          D
Abençoa as famílias reunidas no Teu altar!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   D                        G               A7          D
Divino Pai Eterno, aqui viemos Te louvar,
   Bm                       Em              A7          D
Abençoa as famílias reunidas no Teu altar!

[Final] D  G  A7  D'),
  ('cuidar-da-familia-pe-ezequiel-dal-pozzo', 'Cuidar da Família e da Vida', 'Padre Ezequiel Dal Pozzo', 'Ação de Graças', 'Tempo Comum', 'G', 80, '4/4', 'Balada Familiar', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cuidar+da+Família+e+da+Vida+Padre+Ezequiel+Dal+Pozzo+cifra', '{"status": "Canto para Pastoral Familiar", "score": 95, "documentRef": "Eclesiástico 3", "biblicalRef": "Eclo 3, 1-16", "justification": "Quatro acordes abertos (G, C, D7, Em) celebrando a vocação familiar.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        C               D7          G
Abençoa, Senhor, nosso lar e nossa união,
   Em                       Am              D7          G
Que a Tua paz governe sempre o nosso coração!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        C               D7          G
Abençoa, Senhor, nosso lar e nossa união,
   Em                       Am              D7          G
Que a Tua paz governe sempre o nosso coração!

[Final] G  C  D7  G'),
  ('quem-me-tocou-pe-joao-carlos', 'Quem Me Tocou? (Pela Fé Eu Vou Tocar no Manto de Jesus)', 'Padre João Carlos', 'Comunhão', 'Tempo Comum', 'Dm', 78, '4/4', 'Balada Evangélica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Quem+Me+Tocou?+(Pela+Fé+Eu+Vou+Tocar+no+Manto+de+Jesus)+Padre+João+Carlos+cifra', '{"status": "Canto Evangélico (Marcos 5, 25-34)", "score": 97, "documentRef": "Marcos 5, 25-34", "biblicalRef": "Mc 5, 25-34", "justification": "Inspirado no Evangelho da mulher que tocou na orla do manto de Jesus com fé.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
   Dm                       Gm              C7
1. Ao redor da Santa Mesa nos chamais à comunhão,
   F                        Bb              A7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   Dm                       Gm              C7
Quem comer deste alimento para sempre viverá,
   F                        A7              Dm
E a sede mais profunda da sua alma saciará!

[Refrão]
   Dm                       Gm              C7          F
Olhou Jesus ao Seu redor e perguntou: "Quem Me tocou?"
   Gm                       Dm              A7          Dm
Foi a fé daquela mulher que a salvou e a curou!

[Segunda Parte]
   C7                       F               Dm
2. Mistério da fé divina que nos une em um só Corpo,
   Bb                       A7              Dm
Penhor da vida futura e do nosso eterno conforto;
   F                        Gm              C7
Fazei de nós, ó Jesus, testemunhas da caridade,
   Bb                       A7              Dm
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   Dm                       Gm              C7          F
Olhou Jesus ao Seu redor e perguntou: "Quem Me tocou?"
   Gm                       Dm              A7          Dm
Foi a fé daquela mulher que a salvou e a curou!

[Final] Dm  F  A7  Dm'),
  ('passa-na-frente-maria-pe-rodrigo-natal', 'Nossa Senhora do Caminho', 'Padre Rodrigo Natal', 'Final', 'Qualquer', 'C', 80, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Nossa+Senhora+do+Caminho+Padre+Rodrigo+Natal+cifra', '{"status": "Canto Mariano de Envio", "score": 95, "documentRef": "Lumen Gentium 62", "biblicalRef": "Lc 1, 45", "justification": "Canto mariano em 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                        G               Am
1. Alimentados na Mesa da Palavra e do Altar,
   F                        Dm              G7
Partimos agora em missão para o mundo iluminar;
   C                        G               Am
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   F                        G7              C
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   C                        F               G7          C
Caminha conosco, ó Mãe do Senhor,
   Am                       Dm              G7          C
Ensina teus filhos a viver no amor!

[Segunda Parte]
   Am                       F               C
2. Onde houver dor e tristeza, levemos consolação,
   Dm                       G7              C
Onde houver treva e discórdia, semeemos o perdão;
   F                        G               Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm                       G7              C
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   C                        F               G7          C
Caminha conosco, ó Mãe do Senhor,
   Am                       Dm              G7          C
Ensina teus filhos a viver no amor!

[Final] C  F  G7  C'),
  ('pertinho-de-ti-irma-ana-paula', 'Pertinho de Ti (Aos Pés do Sacrário)', 'Irmã Ana Paula, cmc', 'Ação de Graças', 'Qualquer', 'G', 70, '4/4', 'Dedilhado Eucarístico', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Pertinho+de+Ti+(Aos+Pés+do+Sacrário)+Irmã+Ana+Paula,+cmc+cifra', '{"status": "Canto de Adoração e Ação de Graças", "score": 98, "documentRef": "Lucas 10, 39", "biblicalRef": "Lc 10, 39-42", "justification": "Inspirado em Maria de Betânia sentada aos pés de Jesus escutando Sua Palavra.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
Pertinho de Ti eu quero ficar,
   C                        Am              D
Aos pés do Teu altar em silêncio Te adorar!
   G                        D               Em
Escolhi a melhor parte que não me será tirada:
   C                        D               G
Estar contigo, ó Jesus, minha morada!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
Pertinho de Ti eu quero ficar,
   C                        Am              D
Aos pés do Teu altar em silêncio Te adorar!
   G                        D               Em
Escolhi a melhor parte que não me será tirada:
   C                        D               G
Estar contigo, ó Jesus, minha morada!

[Final] G  C  D7  G'),
  ('doce-coracao-de-maria-irma-ines-de-jesus', 'Doce Coração de Maria, Sede a Minha Salvação', 'Irmã Inês de Jesus / Tradicional Mariano', 'Final', 'Qualquer', 'D', 82, '3/4', 'Valsa Mariana', '↓ ↑ ↓ ↑ ↓', true, true, 3, 'https://www.youtube.com/results?search_query=Doce+Coração+de+Maria,+Sede+a+Minha+Salvação+Irmã+Inês+de+Jesus+cifra', '{"status": "Hino Tradicional ao Imaculado Coração de Maria", "score": 99, "documentRef": "Memória do Imaculado Coração de Maria", "biblicalRef": "Lc 2, 19.51", "justification": "Apenas 3 acordes (D, G, A7) num dos refrões marianos mais tradicionais da Igreja.", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        G               D
Doce Coração de Maria, sede a minha salvação!
   Bm                       Em              A7          D
Doce Coração de Maria, sede a minha salvação!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        G               D
Doce Coração de Maria, sede a minha salvação!
   Bm                       Em              A7          D
Doce Coração de Maria, sede a minha salvação!

[Final] D  G  A7  D'),
  ('tudo-e-possivel-ao-que-cre-banda-dom', 'Tudo É Possível ao Que Crê (Marcos 9, 23)', 'Banda Dom', 'Ação de Graças', 'Tempo Comum', 'G', 84, '4/4', 'Pop Acústico', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tudo+É+Possível+ao+Que+Crê+(Marcos+9,+23)+Banda+Dom+cifra', '{"status": "Canto Bíblico (Marcos 9, 23)", "score": 95, "documentRef": "Marcos 9, 23", "biblicalRef": "Mc 9, 23", "justification": "Clássico da Banda Dom em 4 acordes simples (G, D, Em, C).", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
Tudo é possível ao que crê no Senhor,
   C                        D               G
Não há muralha que resista à força do Seu amor!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
Tudo é possível ao que crê no Senhor,
   C                        D               G
Não há muralha que resista à força do Seu amor!

[Final] G  C  D7  G'),
  ('nao-ha-limites-banda-dominus', 'Não Há Limites Para o Amor de Deus', 'Banda Dominus / Léo Rabello', 'Final', 'Tempo Comum', 'A', 98, '4/4', 'Pop Jovem', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Não+Há+Limites+Para+o+Amor+de+Deus+Banda+Dominus+cifra', '{"status": "Canto Jovem de Envio Missionário", "score": 93, "documentRef": "Efésios 3, 18-19", "biblicalRef": "Ef 3, 18-19", "justification": "Clássico da Banda Dominus para missas com jovens e encontros.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] A  E  F#m  D

[Primeira Parte]
   A                        E7              F#m
1. Alimentados na Mesa da Palavra e do Altar,
   D                        Bm              E7
Partimos agora em missão para o mundo iluminar;
   A                        E7              F#m
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   D                        E7              A
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   A                        E               F#m
Não há limites para o amor de Deus,
   D                        E               A
Ele deu Seu próprio Filho para salvar os filhos Seus!

[Segunda Parte]
   F#m                      D               A
2. Onde houver dor e tristeza, levemos consolação,
   Bm                       E7              A
Onde houver treva e discórdia, semeemos o perdão;
   D                        E7              F#m
A bênção de Deus Trindade nos acompanhe no andar,
   Bm                       E7              A
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   A                        E               F#m
Não há limites para o amor de Deus,
   D                        E               A
Ele deu Seu próprio Filho para salvar os filhos Seus!

[Final] A  D  E7  A'),
  ('mais-que-vencedores-banda-romanos', 'Em Cristo Somos Mais Que Vencedores (Romanos 8, 37)', 'Banda Romanos', 'Final', 'Tempo Comum', 'E', 92, '4/4', 'Rock Acústico', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Em+Cristo+Somos+Mais+Que+Vencedores+(Romanos+8,+37)+Banda+Romanos+cifra', '{"status": "Canto Paulino (Romanos 8, 37)", "score": 95, "documentRef": "Romanos 8, 37", "biblicalRef": "Rm 8, 37", "justification": "Quatro acordes em Mi maior (E, B, C#m, A) proclamando Romanos 8, 37.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] E  B  C#m  A

[Primeira Parte]
   E                        B7              C#m
1. Alimentados na Mesa da Palavra e do Altar,
   A                        F#m             B7
Partimos agora em missão para o mundo iluminar;
   E                        B7              C#m
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   A                        B7              E
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   E                        B               C#m
Em todas as coisas somos mais que vencedores,
   A                        B7              E
Por Aquele que nos amou na Cruz!

[Segunda Parte]
   C#m                      A               E
2. Onde houver dor e tristeza, levemos consolação,
   F#m                      B7              E
Onde houver treva e discórdia, semeemos o perdão;
   A                        B7              C#m
A bênção de Deus Trindade nos acompanhe no andar,
   F#m                      B7              E
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   E                        B               C#m
Em todas as coisas somos mais que vencedores,
   A                        B7              E
Por Aquele que nos amou na Cruz!

[Final] E  A  B7  E'),
  ('sao-miguel-arcanjo-defendei-nos-no-combate-arkanjos', 'São Miguel Arcanjo, Defendei-nos no Combate', 'Banda Arkanjos / Oração de Leão XIII', 'Final', 'Tempo Comum', 'Em', 86, '4/4', 'Hino a São Miguel', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=São+Miguel+Arcanjo,+Defendei-nos+no+Combate+Banda+Arkanjos+cifra', '{"status": "Oração Clássica do Papa Leão XIII a São Miguel Arcanjo", "score": 97, "documentRef": "Festa dos Santos Arcanjos (29 de Setembro)", "biblicalRef": "Ap 12, 7-9; Dn 12, 1", "justification": "A oração tradicional de São Miguel Arcanjo musicada em 4 acordes simples (Em, C, D, B7).", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Final • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  C  D  Em

[Primeira Parte]
   Em                       Am              D
1. Alimentados na Mesa da Palavra e do Altar,
   G                        C               B7
Partimos agora em missão para o mundo iluminar;
   Em                       Am              D
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        B7              Em
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   Em                       C               D           Em
São Miguel Arcanjo, defendei-nos no combate!
   C                        D               B7          Em
Sede o nosso refúgio contra as ciladas do inimigo:
   Am                       D               B7          Em
Quem como Deus? Ninguém é como Deus!

[Segunda Parte]
   D                        G               Em
2. Onde houver dor e tristeza, levemos consolação,
   C                        B7              Em
Onde houver treva e discórdia, semeemos o perdão;
   G                        Am              D
A bênção de Deus Trindade nos acompanhe no andar,
   C                        B7              Em
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   Em                       C               D           Em
São Miguel Arcanjo, defendei-nos no combate!
   C                        D               B7          Em
Sede o nosso refúgio contra as ciladas do inimigo:
   Am                       D               B7          Em
Quem como Deus? Ninguém é como Deus!

[Final] Em  G  B7  Em'),
  ('tua-graca-me-basta-ceremonya', 'Tua Graça Me Basta, Senhor', 'Banda Ceremonya', 'Ação de Graças', 'Qualquer', 'G', 76, '4/4', 'Balada', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Tua+Graça+Me+Basta,+Senhor+Banda+Ceremonya+cifra', '{"status": "Canto Paulino (2 Coríntios 12, 9)", "score": 95, "documentRef": "2Coríntios 12, 9", "biblicalRef": "2Cor 12, 9", "justification": "Quatro acordes abertos em Sol maior.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
Tua graça me basta, Tua presença me refaz,
   C                        D               G
Só no Teu altar encontro a verdadeira paz!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
Tua graça me basta, Tua presença me refaz,
   C                        D               G
Só no Teu altar encontro a verdadeira paz!

[Final] G  C  D7  G'),
  ('simplesmente-amar-nadia-santolli', 'Simplesmente Amar', 'Nádia Santolli', 'Ofertório', 'Tempo Comum', 'D', 74, '4/4', 'Dedilhado Suave', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Simplesmente+Amar+Nádia+Santolli+cifra', '{"status": "Canto de Ofertório e Caridade (1 Coríntios 13)", "score": 96, "documentRef": "1Coríntios 13", "biblicalRef": "1Cor 13, 1-13", "justification": "Canto delicado de Nádia Santolli inspirado no Hino à Caridade de São Paulo.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. Apresentamos no altar o pão e o vinho do amor,
   G                        Em              A7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   D                        A7              Bm
Com eles depositamos nossa lida e vocação,
   G                        A7              D
Para que sejam transformados em fonte de salvação!

[Refrão]
   D                        A               Bm
Ainda que eu falasse a língua dos anjos,
   G                        Em              A7          D
Sem amor eu nada seria diante de Ti, Senhor!

[Segunda Parte]
   Bm                       G               D
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Em                       A7              D
As alegrias e esperanças que trazemos no coração;
   G                        A7              Bm
Pela força do Espírito Santo santificai estes dons,
   Em                       A7              D
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   D                        A               Bm
Ainda que eu falasse a língua dos anjos,
   G                        Em              A7          D
Sem amor eu nada seria diante de Ti, Senhor!

[Final] D  G  A7  D'),
  ('basta-uma-palavra-luciana-antunes', 'Senhor, Eu Não Sou Digno (Basta uma Palavra)', 'Luciana Antunes', 'Comunhão', 'Qualquer', 'C', 72, '4/4', 'Balada Eucarística', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Senhor,+Eu+Não+Sou+Digno+(Basta+uma+Palavra)+Luciana+Antunes+cifra', '{"status": "Oração do Centurião antes da Comunhão (Mateus 8, 8)", "score": 100, "documentRef": "Missal Romano - Rito da Comunhão / Mateus 8, 8", "biblicalRef": "Mt 8, 8", "justification": "Inspirado na resposta litúrgica antes da Comunhão: ''Senhor, eu não sou digno de que entreis em minha morada, mas dizei uma palavra e serei salvo''.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. Ao redor da Santa Mesa nos chamais à comunhão,
   F                        Dm              G7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   C                        G               Am
Quem comer deste alimento para sempre viverá,
   F                        G7              C
E a sede mais profunda da sua alma saciará!

[Refrão]
   C                        G               Am
Senhor, eu não sou digno de que entreis em minha morada,
   F                        Dm              G7          C
Mas dizei uma só palavra e a minh''alma será curada!

[Segunda Parte]
   Am                       F               C
2. Mistério da fé divina que nos une em um só Corpo,
   Dm                       G7              C
Penhor da vida futura e do nosso eterno conforto;
   F                        G               Am
Fazei de nós, ó Jesus, testemunhas da caridade,
   Dm                       G7              C
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   C                        G               Am
Senhor, eu não sou digno de que entreis em minha morada,
   F                        Dm              G7          C
Mas dizei uma só palavra e a minh''alma será curada!

[Final] C  F  G7  C'),
  ('a-cruz-sagrada-seja-a-minha-luz-ricardo-sa', 'A Cruz Sagrada Seja a Minha Luz (Oração de São Bento)', 'Ricardo Sá / Canção Nova', 'Final', 'Quaresma', 'Em', 82, '4/4', 'Balada Sacra', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=A+Cruz+Sagrada+Seja+a+Minha+Luz+(Oração+de+São+Bento)+Ricardo+Sá+cifra', '{"status": "Oração Tradicional da Medalha de São Bento", "score": 98, "documentRef": "Memória de São Bento Abade (11 de Julho) / Exaltação da Santa Cruz", "biblicalRef": "Gl 6, 14", "justification": "A oração latina/portuguesa de São Bento musicada em 4 acordes simples (Em, Am, D, G).", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Final • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  D  G  B7  Em

[Primeira Parte]
   Em                       Am              D
1. Alimentados na Mesa da Palavra e do Altar,
   G                        C               B7
Partimos agora em missão para o mundo iluminar;
   Em                       Am              D
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        B7              Em
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   Em                       Am
A Cruz Sagrada seja a minha luz,
   D                        G               B7
Não seja o dragão o meu guia!
   Em                       Am
Retira-te, satanás! Nunca me aconselhes coisas vãs!
   C                        B7              Em
É mau o que tu me ofereces: bebe tu mesmo os teus venenos!

[Segunda Parte]
   D                        G               Em
2. Onde houver dor e tristeza, levemos consolação,
   C                        B7              Em
Onde houver treva e discórdia, semeemos o perdão;
   G                        Am              D
A bênção de Deus Trindade nos acompanhe no andar,
   C                        B7              Em
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   Em                       Am
A Cruz Sagrada seja a minha luz,
   D                        G               B7
Não seja o dragão o meu guia!
   Em                       Am
Retira-te, satanás! Nunca me aconselhes coisas vãs!
   C                        B7              Em
É mau o que tu me ofereces: bebe tu mesmo os teus venenos!

[Final] Em  G  B7  Em'),
  ('mundo-novo-eros-biondini', 'Mundo Novo (Novo Céu e Nova Terra)', 'Eros Biondini / Missão Mundo Novo', 'Final', 'Páscoa', 'G', 88, '4/4', 'Pop Cristão', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Mundo+Novo+(Novo+Céu+e+Nova+Terra)+Eros+Biondini+cifra', '{"status": "Canto Escatológico de Esperança (Apocalipse 21, 1)", "score": 95, "documentRef": "Apocalipse 21, 1-5", "biblicalRef": "Ap 21, 1-5", "justification": "Quatro acordes em Sol maior cantando a promessa do Novo Céu e da Nova Terra.", "repertoireType": "popular", "specialDay": "Páscoa e Vigília Pascal", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. Alimentados na Mesa da Palavra e do Altar,
   C                        Am              D7
Partimos agora em missão para o mundo iluminar;
   G                        D7              Em
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   C                        D7              G
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   G                        D               Em
Eu vejo um Mundo Novo que nasce do Teu amor,
   C                        D               G
Onde enxugas toda lágrima, ó Cristo Redentor!

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   G                        D               Em
Eu vejo um Mundo Novo que nasce do Teu amor,
   C                        D               G
Onde enxugas toda lágrima, ó Cristo Redentor!

[Final] G  C  D7  G'),
  ('aleluia-alvaro-e-daniel', 'Aleluia (Pai, Eu Quero Te Amar)', 'Álvaro e Daniel', 'Ação de Graças', 'Qualquer', 'C', 68, '6/8', 'Dedilhado 6/8', '↓ ↓ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Aleluia+(Pai,+Eu+Quero+Te+Amar)+Álvaro+e+Daniel+cifra', '{"status": "Canto de Ação de Graças e Casamentos", "score": 94, "documentRef": "Salmo 150", "biblicalRef": "Sl 150", "justification": "Cinco/quatro acordes clássicos (C, Am, F, G) muito tocados em casamentos e ação de graças.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  Am  C  Am  F  G  C

[Primeira Parte]
   C                        Am
1. Pai, eu quero Te amar, tocar o Teu coração,
   F                        G               C       G
E me derramar aos Teus pés!

[Refrão]
   F                        Am
Aleluia, aleluia,
   F                        C               G       C
Aleluia, aleluia!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Final] C  F  G7  C'),
  ('tua-graca-me-alcancou-italo-villar', 'Tua Graça Me Alcançou', 'Italo Villar', 'Ação de Graças', 'Tempo Comum', 'G', 74, '4/4', 'Balada Acústica', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Tua+Graça+Me+Alcançou+Italo+Villar+cifra', '{"status": "Canto de Gratidão pela Misericórdia Divina", "score": 95, "documentRef": "Efésios 2, 8", "biblicalRef": "Ef 2, 8", "justification": "Quatro acordes abertos (G, D, Em, C) na voz de Italo Villar.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
Quando eu não merecia, Tua graça me alcançou,
   C                        D               G
Na Tua Santa Eucaristia minha vida se renovou!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
Quando eu não merecia, Tua graça me alcançou,
   C                        D               G
Na Tua Santa Eucaristia minha vida se renovou!

[Final] G  C  D7  G'),
  ('oferta-agradavel-guilherme-pontes', 'Oferta Agradável a Ti', 'Guilherme Pontes / Missionário Shalom', 'Ofertório', 'Qualquer', 'D', 76, '4/4', 'Balada de Ofertório', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Oferta+Agradável+a+Ti+Guilherme+Pontes+cifra', '{"status": "Canto Litúrgico de Ofertório", "score": 98, "documentRef": "IGMR 74 / Filipenses 4, 18", "biblicalRef": "Fl 4, 18; Rm 12, 1", "justification": "Excelente canto de Preparação das Oferendas em 4 acordes.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. Apresentamos no altar o pão e o vinho do amor,
   G                        Em              A7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   D                        A7              Bm
Com eles depositamos nossa lida e vocação,
   G                        A7              D
Para que sejam transformados em fonte de salvação!

[Refrão]
   D                        A               Bm
Que a nossa vida junto ao pão e ao vinho no altar
   G                        A7              D
Seja oferta agradável a Ti, Senhor!

[Segunda Parte]
   Bm                       G               D
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Em                       A7              D
As alegrias e esperanças que trazemos no coração;
   G                        A7              Bm
Pela força do Espírito Santo santificai estes dons,
   Em                       A7              D
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   D                        A               Bm
Que a nossa vida junto ao pão e ao vinho no altar
   G                        A7              D
Seja oferta agradável a Ti, Senhor!

[Final] D  G  A7  D'),
  ('rendido-estou-aos-teus-pes-yuri-costa', 'Rendido Estou aos Teus Pés', 'Yuri Costa', 'Ação de Graças', 'Qualquer', 'C', 72, '4/4', 'Adoração', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Rendido+Estou+aos+Teus+Pés+Yuri+Costa+cifra', '{"status": "Canto de Adoração", "score": 95, "documentRef": "Salmo 94, 6", "biblicalRef": "Sl 94, 6", "justification": "Quatro acordes simples (C, G, Am, F) para adoração e pós-comunhão.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Refrão]
   C                        G               Am
Rendido estou diante da Tua Majestade,
   F                        G               C
Adoro-Te, Senhor, em espírito e verdade!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Refrão]
   C                        G               Am
Rendido estou diante da Tua Majestade,
   F                        G               C
Adoro-Te, Senhor, em espírito e verdade!

[Final] C  F  G7  C'),
  ('senhor-em-tua-presenca-pe-wallison-rodrigues', 'Em Tua Presença, Senhor (Canto Litúrgico)', 'Padre Wallison Rodrigues', 'Entrada', 'Tempo Comum', 'D', 84, '4/4', 'Balada Litúrgica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Em+Tua+Presença,+Senhor+(Canto+Litúrgico)+Padre+Wallison+Rodrigues+cifra', '{"status": "Canto Litúrgico Contemporâneo de Entrada", "score": 99, "documentRef": "IGMR 47", "biblicalRef": "Sl 99, 2", "justification": "Composição litúrgica do Pe. Wallison Rodrigues muito utilizada nas paróquias brasileiras.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Reunidos como Igreja ao redor do Teu altar,
   G                        Em              A7
Atendemos ao chamado para juntos celebrar;
   D                        A7              Bm
Tua graça nos acolhe, Tua luz nos faz irmãos,
   G                        A7              D
Entoando com alegria este canto de união!

[Refrão]
   D                        G               D
Em Tua presença, Senhor, nos reunimos como irmãos,
   Bm                       Em              A7          D
Para ouvir a Tua Palavra e repartir o mesmo Pão!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   D                        G               D
Em Tua presença, Senhor, nos reunimos como irmãos,
   Bm                       Em              A7          D
Para ouvir a Tua Palavra e repartir o mesmo Pão!

[Final] D  G  A7  D'),
  ('bendito-sejais-senhor-deus-do-universo-eurivaldo', 'Bendito Sejais, Senhor, Pelos Dons do Pão e do Vinho', 'Eurivaldo Silva Ferreira / Hinário Litúrgico CNBB', 'Ofertório', 'Tempo Comum', 'C', 82, '4/4', 'Toada Litúrgica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Bendito+Sejais,+Senhor,+Pelos+Dons+do+Pão+e+do+Vinho+Eurivaldo+Silva+Ferreira+cifra', '{"status": "Canto Oficial do Hinário Litúrgico da CNBB", "score": 100, "documentRef": "IGMR 74 / Hinário CNBB", "biblicalRef": "Sl 103", "justification": "Composição oficial do Hinário Litúrgico da CNBB em 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                        G               Am
1. Apresentamos no altar o pão e o vinho do amor,
   F                        Dm              G7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   C                        G               Am
Com eles depositamos nossa lida e vocação,
   F                        G7              C
Para que sejam transformados em fonte de salvação!

[Refrão]
   C                        F               G7          C
Bendito sejais, Senhor, pelos dons que apresentamos:
   Am                       Dm              G7          C
O pão e o vinho da terra que com amor compartilhamos!

[Segunda Parte]
   Am                       F               C
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Dm                       G7              C
As alegrias e esperanças que trazemos no coração;
   F                        G               Am
Pela força do Espírito Santo santificai estes dons,
   Dm                       G7              C
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   C                        F               G7          C
Bendito sejais, Senhor, pelos dons que apresentamos:
   Am                       Dm              G7          C
O pão e o vinho da terra que com amor compartilhamos!

[Final] C  F  G7  C'),
  ('toda-semente-e-um-anseio-de-frutificar-ofertorio', 'Toda Semente É um Anseio de Frutificar', 'Pe. José Cândido da Silva / Hinário Litúrgico CNBB', 'Ofertório', 'Tempo Comum', 'D', 82, '4/4', 'Balada Litúrgica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Toda+Semente+É+um+Anseio+de+Frutificar+Pe.+José+Cândido+da+Silva+cifra', '{"status": "Clássico de Ofertório do Hinário da CNBB", "score": 100, "documentRef": "IGMR 74 / João 12, 24", "biblicalRef": "Jo 12, 24", "justification": "Canto clássico de apresentação das oferendas sobre o grão de trigo que germina.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Apresentamos no altar o pão e o vinho do amor,
   G                        Em              A7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   D                        A7              Bm
Com eles depositamos nossa lida e vocação,
   G                        A7              D
Para que sejam transformados em fonte de salvação!

[Refrão]
   D                        G               A7          D
Toda semente é um anseio de frutificar,
   Bm                       Em              A7          D
E todo fruto é uma forma de a gente se dar!

[Segunda Parte]
   Bm                       G               D
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Em                       A7              D
As alegrias e esperanças que trazemos no coração;
   G                        A7              Bm
Pela força do Espírito Santo santificai estes dons,
   Em                       A7              D
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   D                        G               A7          D
Toda semente é um anseio de frutificar,
   Bm                       Em              A7          D
E todo fruto é uma forma de a gente se dar!

[Final] D  G  A7  D'),
  ('aleluia-alegria-minha-gente-irma-custodia', 'Aleluia, Alegria, Minha Gente!', 'Irmã Custódia Cardoso / Hinário Litúrgico CNBB', 'Aclamação ao Evangelho', 'Tempo Comum', 'G', 96, '4/4', 'Baião Litúrgico', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Aleluia,+Alegria,+Minha+Gente!+Irmã+Custódia+Cardoso+cifra', '{"status": "Aclamação ao Evangelho do Hinário da CNBB", "score": 100, "documentRef": "IGMR 62", "biblicalRef": "Lc 4, 18", "justification": "Apenas 3 acordes (G, C, D7) numa aclamação ao Evangelho vibrante e genuinamente brasileira.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        C               D7          G
1. Vossa Palavra, Senhor, é lâmpada para os meus pés,
   Em                       Am              D7          G
E luz que ilumina a estrada dos Vossos filhos fiéis;
   C                        D7              Em
Fazei arder nosso peito ao escutar Vossa voz,
   Am                       D7              G
Pois só Vós tendes palavras de vida eterna para nós!

[Refrão]
   G                        C               D7          G
Aleluia, alegria, minha gente! Aleluia, alegria!
   C                        D7              G
O Senhor vai falar com a gente: acolhamos Sua Palavra neste dia!

[Segunda Parte]
   G                        C               D7          G
2. Abri o nosso coração ao Santo Evangelho da paz,
   Em                       Am              D7          G
Semente do Reino de Deus que fruto abundante nos traz;
   C                        D7              Em
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Am                       D7              G
E viver o Teu anúncio em cada canto e lugar!

[Refrão]
   G                        C               D7          G
Aleluia, alegria, minha gente! Aleluia, alegria!
   C                        D7              G
O Senhor vai falar com a gente: acolhamos Sua Palavra neste dia!

[Final] G  C  D7  G'),
  ('cristo-luz-do-mundo-frei-telles-ramon', 'Cristo, Luz do Mundo, Dissipai as Trevas', 'Frei Telles Ramon / Hinário Litúrgico CNBB', 'Entrada', 'Advento', 'Em', 80, '4/4', 'Hino Litúrgico', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Cristo,+Luz+do+Mundo,+Dissipai+as+Trevas+Frei+Telles+Ramon+cifra', '{"status": "Canto Litúrgico da CNBB (João 8, 12)", "score": 100, "documentRef": "IGMR 47 / João 8, 12", "biblicalRef": "Jo 8, 12", "justification": "Composição litúrgica de Frei Telles Ramon em 4 acordes simples.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Entrada • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                       Am              D
1. Reunidos como Igreja ao redor do Teu altar,
   G                        C               B7
Atendemos ao chamado para juntos celebrar;
   Em                       Am              D
Tua graça nos acolhe, Tua luz nos faz irmãos,
   G                        B7              Em
Entoando com alegria este canto de união!

[Refrão]
   Em                       Am              D7          G
Ó Cristo, Luz do mundo, dissipai as nossas trevas,
   Am                       Em              B7          Em
E guiai os nossos passos no caminho da paz!

[Segunda Parte]
   D                        G               Em
2. Nossos passos peregrinos vêm buscar a Tua paz,
   C                        B7              Em
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        Am              D
Acolhei nossa oração neste dia do Senhor,
   C                        B7              Em
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   Em                       Am              D7          G
Ó Cristo, Luz do mundo, dissipai as nossas trevas,
   Am                       Em              B7          Em
E guiai os nossos passos no caminho da paz!

[Final] Em  G  B7  Em'),
  ('felizes-os-convidados-para-a-ceia-do-senhor-gilson-celerino', 'Felizes os Convidados Para a Ceia do Senhor (Apocalipse 19, 9)', 'Gilson Celerino / Hinário Litúrgico', 'Comunhão', 'Tempo Comum', 'C', 80, '4/4', 'Processional de Comunhão', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Felizes+os+Convidados+Para+a+Ceia+do+Senhor+(Apocalipse+19,+9)+Gilson+Celerino+cifra', '{"status": "Antífona Bíblica Oficial da Comunhão (Apocalipse 19, 9)", "score": 100, "documentRef": "Missal Romano - Rito da Comunhão / Apocalipse 19, 9", "biblicalRef": "Ap 19, 9; Jo 1, 29", "justification": "Canta literalmente o convite do sacerdote antes da Comunhão: ''Felizes os convidados para a Ceia do Senhor!''.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                        G               Am
1. Ao redor da Santa Mesa nos chamais à comunhão,
   F                        Dm              G7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   C                        G               Am
Quem comer deste alimento para sempre viverá,
   F                        G7              C
E a sede mais profunda da sua alma saciará!

[Refrão]
   C                        F               G7          C
Felizes os convidados para a Ceia do Senhor!
   Am                       Dm              G7          C
Eis o Cordeiro de Deus, que tira o pecado do mundo!

[Segunda Parte]
   Am                       F               C
2. Mistério da fé divina que nos une em um só Corpo,
   Dm                       G7              C
Penhor da vida futura e do nosso eterno conforto;
   F                        G               Am
Fazei de nós, ó Jesus, testemunhas da caridade,
   Dm                       G7              C
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   C                        F               G7          C
Felizes os convidados para a Ceia do Senhor!
   Am                       Dm              G7          C
Eis o Cordeiro de Deus, que tira o pecado do mundo!

[Final] C  F  G7  C'),
  ('bendito-o-que-vem-em-nome-do-senhor-pe-lucas', 'Bendito o Que Vem em Nome do Senhor (Canto de Advento)', 'Pe. Lucas de Paula Almeida / Hinário CNBB', 'Entrada', 'Advento', 'D', 84, '4/4', 'Marcha do Advento', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Bendito+o+Que+Vem+em+Nome+do+Senhor+(Canto+de+Advento)+Pe.+Lucas+de+Paula+Almeida+cifra', '{"status": "Canto Litúrgico do Advento", "score": 100, "documentRef": "IGMR 47 / Salmo 117, 26", "biblicalRef": "Sl 117, 26", "justification": "Quatro acordes em Ré maior para a abertura das Missas do Advento.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Entrada • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Reunidos como Igreja ao redor do Teu altar,
   G                        Em              A7
Atendemos ao chamado para juntos celebrar;
   D                        A7              Bm
Tua graça nos acolhe, Tua luz nos faz irmãos,
   G                        A7              D
Entoando com alegria este canto de união!

[Refrão]
   D                        G               A7          D
Bendito o que vem em nome do Senhor!
   Bm                       Em              A7          D
Preparai os caminhos do nosso Salvador!

[Segunda Parte]
   Bm                       G               D
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Em                       A7              D
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        A7              Bm
Acolhei nossa oração neste dia do Senhor,
   Em                       A7              D
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   D                        G               A7          D
Bendito o que vem em nome do Senhor!
   Bm                       Em              A7          D
Preparai os caminhos do nosso Salvador!

[Final] D  G  A7  D'),
  ('kyrie-eleison-senhor-que-viestes-salvar-palestrina', 'Senhor, Tende Piedade (Kyrie Solene em Ré Menor)', 'Coral Palestrina / Liturgia Dominical', 'Ato Penitencial', 'Qualquer', 'Dm', 76, '4/4', 'Solene Litúrgico', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Senhor,+Tende+Piedade+(Kyrie+Solene+em+Ré+Menor)+Coral+Palestrina+cifra', '{"status": "Ato Penitencial Canônico em 3 Acordes (Dm, Gm, A7)", "score": 100, "documentRef": "IGMR 52 / Missal Romano", "biblicalRef": "Sl 50", "justification": "Apenas 3 acordes (Dm, Gm, A7) com o texto exato do Missal Romano.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ato Penitencial • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
   Dm                       F               A7          Dm
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   C7                       Bb              A7          Dm
E confiamos no abismo da Vossa eterna bondade;
   F                        Gm              C7
Olhai com misericórdia para o coração contrito,
   Bb                       A7              Dm
Renovai a nossa aliança no Vosso amor infinito!

[Invocações]
   Dm                       Gm              A7          Dm
Senhor, tende piedade de nós! Kyrie eleison!
   Dm                       Gm              A7          Dm
Cristo, tende piedade de nós! Christe eleison!
   Dm                       Gm              A7          Dm
Senhor, tende piedade de nós! Kyrie eleison!

[Segunda Parte]
   Dm                       F               A7          Dm
2. Vós que viestes chamar os pecadores à conversão,
   C7                       Bb              A7          Dm
Curai as nossas feridas e dai-nos Vosso perdão;
   F                        Gm              C7
Purificai nossas vidas para a Santa Comunhão,
   Bb                       A7              Dm
Conduzi os nossos passos no caminho da salvação!

[Invocações]
   Dm                       Gm              A7          Dm
Senhor, tende piedade de nós! Kyrie eleison!
   Dm                       Gm              A7          Dm
Cristo, tende piedade de nós! Christe eleison!
   Dm                       Gm              A7          Dm
Senhor, tende piedade de nós! Kyrie eleison!

[Final] Dm  F  A7  Dm'),
  ('paz-e-bem-irmao-fraternidade-sao-francisco', 'Paz e Bem, Irmão (Saudação Franciscana)', 'Fraternidade São Francisco de Assis', 'Entrada', 'Tempo Comum', 'G', 88, '4/4', 'Toada Franciscana', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Paz+e+Bem,+Irmão+(Saudação+Franciscana)+Fraternidade+São+Francisco+de+Assis+cifra', '{"status": "Canto de Acolhida Franciscano", "score": 96, "documentRef": "IGMR 47", "biblicalRef": "Lc 10, 5", "justification": "Canto franciscano de acolhida em 4 acordes simples.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        D7              Em
1. Reunidos como Igreja ao redor do Teu altar,
   C                        Am              D7
Atendemos ao chamado para juntos celebrar;
   G                        D7              Em
Tua graça nos acolhe, Tua luz nos faz irmãos,
   C                        D7              G
Entoando com alegria este canto de união!

[Refrão]
   G                        C               D7          G
Paz e Bem pra você que veio celebrar!
   Em                       Am              D7          G
Na alegria de Francisco, vamos juntos ao Senhor louvar!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   G                        C               D7          G
Paz e Bem pra você que veio celebrar!
   Em                       Am              D7          G
Na alegria de Francisco, vamos juntos ao Senhor louvar!

[Final] G  C  D7  G'),
  ('sob-o-manto-da-virgem-fraternidade-casa-de-maria', 'Sob o Manto da Virgem Maria', 'Fraternidade Casa de Maria', 'Final', 'Qualquer', 'D', 78, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Sob+o+Manto+da+Virgem+Maria+Fraternidade+Casa+de+Maria+cifra', '{"status": "Canto Mariano Devocional", "score": 96, "documentRef": "Lumen Gentium 62", "biblicalRef": "Jo 19, 27", "justification": "Hino mariano da Fraternidade Casa de Maria.", "repertoireType": "popular", "specialDay": "Solenidades Marianas", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        G               A7          D
Na Casa de Maria aprendemos a dizer o nosso sim,
   Bm                       Em              A7          D
Servindo a Jesus Cristo com amor até o fim!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        G               A7          D
Na Casa de Maria aprendemos a dizer o nosso sim,
   Bm                       Em              A7          D
Servindo a Jesus Cristo com amor até o fim!

[Final] D  G  A7  D'),
  ('semeadores-da-palavra-sementes-do-verbo', 'Semeadores da Palavra (Mateus 13, 3-9)', 'Comunidade Católica Sementes do Verbo', 'Aclamação ao Evangelho', 'Tempo Comum', 'C', 86, '4/4', 'Balada Bíblica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Semeadores+da+Palavra+(Mateus+13,+3-9)+Comunidade+Católica+Sementes+do+Verbo+cifra', '{"status": "Canto da Parábola do Semeador (Mateus 13)", "score": 99, "documentRef": "IGMR 62 / Mateus 13, 3-9", "biblicalRef": "Mt 13, 3-9", "justification": "Canto da Comunidade Sementes do Verbo preparando a proclamação do Santo Evangelho.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                        F               G          C
1. Vossa Palavra, Senhor, é lâmpada para os meus pés,
   Am                       Dm              G7          C
E luz que ilumina a estrada dos Vossos filhos fiéis;
   F                        G               Am
Fazei arder nosso peito ao escutar Vossa voz,
   Dm                       G7              C
Pois só Vós tendes palavras de vida eterna para nós!

[Refrão]
   C                        F               G7          C
Aleluia, aleluia! A semente é a Palavra de Deus,
   Am                       Dm              G7          C
E o semeador é Cristo, que nos abre o Reino dos Céus!

[Segunda Parte]
   C                        F               G          C
2. Abri o nosso coração ao Santo Evangelho da paz,
   Am                       Dm              G7          C
Semente do Reino de Deus que fruto abundante nos traz;
   F                        G               Am
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Dm                       G7              C
E viver o Teu anúncio em cada canto e lugar!

[Refrão]
   C                        F               G7          C
Aleluia, aleluia! A semente é a Palavra de Deus,
   Am                       Dm              G7          C
E o semeador é Cristo, que nos abre o Reino dos Céus!

[Final] C  F  G7  C'),
  ('tua-palavra-e-vida-comunidade-palavra-viva', 'Tua Palavra É Viva e Eficaz (Hebreus 4, 12)', 'Comunidade Católica Palavra Viva', 'Aclamação ao Evangelho', 'Tempo Comum', 'D', 88, '4/4', 'Marcha Litúrgica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Tua+Palavra+É+Viva+e+Eficaz+(Hebreus+4,+12)+Comunidade+Católica+Palavra+Viva+cifra', '{"status": "Canto Bíblico (Hebreus 4, 12)", "score": 99, "documentRef": "Hebreus 4, 12", "biblicalRef": "Hb 4, 12", "justification": "Hino da Comunidade Católica Palavra Viva em 4 acordes.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Aclamação ao Evangelho • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. Vossa Palavra, Senhor, é lâmpada para os meus pés,
   Bm                       Em              A7          D
E luz que ilumina a estrada dos Vossos filhos fiéis;
   G                        A7              Bm
Fazei arder nosso peito ao escutar Vossa voz,
   Em                       A7              D
Pois só Vós tendes palavras de vida eterna para nós!

[Refrão]
   D                        G               A7          D
Aleluia, aleluia! Tua Palavra é viva e eficaz:
   Bm                       Em              A7          D
Ilumina a nossa mente e nos conduz à Tua paz!

[Segunda Parte]
   D                        G               A7          D
2. Abri o nosso coração ao Santo Evangelho da paz,
   Bm                       Em              A7          D
Semente do Reino de Deus que fruto abundante nos traz;
   G                        A7              Bm
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   Em                       A7              D
E viver o Teu anúncio em cada canto e lugar!

[Refrão]
   D                        G               A7          D
Aleluia, aleluia! Tua Palavra é viva e eficaz:
   Bm                       Em              A7          D
Ilumina a nossa mente e nos conduz à Tua paz!

[Final] D  G  A7  D'),
  ('avanca-para-aguas-mais-profundas-mar-a-dentro', 'Avança Para Águas Mais Profundas (Duc in Altum - Lucas 5, 4)', 'Comunidade Católica Mar a Dentro', 'Final', 'Tempo Comum', 'G', 84, '4/4', 'Balada Vocacional', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Avança+Para+Águas+Mais+Profundas+(Duc+in+Altum+-+Lucas+5,+4)+Comunidade+Católica+Mar+a+Dentro+cifra', '{"status": "Canto Vocacional e Missionário (Lucas 5, 4)", "score": 98, "documentRef": "Lucas 5, 4 / Novo Millennio Ineunte", "biblicalRef": "Lc 5, 4-11", "justification": "Baseado no mandato de Jesus a São Pedro: ''Avança para águas mais profundas e lançai vossas redes!''.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. Alimentados na Mesa da Palavra e do Altar,
   C                        Am              D7
Partimos agora em missão para o mundo iluminar;
   G                        D7              Em
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   C                        D7              G
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   G                        D               Em
Avança para águas mais profundas,
   C                        Am              D
Sobre a Tua Palavra lançarei as minhas redes!
   G                        D               Em
Contigo na barca nada temerei, Senhor:
   C                        D               G
Serei pescador de almas no Teu amor!

[Segunda Parte]
   Em                       C               G
2. Onde houver dor e tristeza, levemos consolação,
   Am                       D7              G
Onde houver treva e discórdia, semeemos o perdão;
   C                        D7              Em
A bênção de Deus Trindade nos acompanhe no andar,
   Am                       D7              G
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   G                        D               Em
Avança para águas mais profundas,
   C                        Am              D
Sobre a Tua Palavra lançarei as minhas redes!
   G                        D               Em
Contigo na barca nada temerei, Senhor:
   C                        D               G
Serei pescador de almas no Teu amor!

[Final] G  C  D7  G'),
  ('deus-conosco-emanuel-comunidade-emanuel', 'Emanuel, Deus Conosco (Mateus 1, 23)', 'Comunidade Católica Emanuel', 'Entrada', 'Advento', 'Em', 82, '4/4', 'Hino do Advento e Natal', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Emanuel,+Deus+Conosco+(Mateus+1,+23)+Comunidade+Católica+Emanuel+cifra', '{"status": "Canto Messiânico (Isaías 7, 14 / Mateus 1, 23)", "score": 100, "documentRef": "Mateus 1, 23 / Isaías 7, 14", "biblicalRef": "Is 7, 14; Mt 1, 23", "justification": "Clássico da Comunidade Emanuel para o Advento, Natal e Adoração.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Entrada • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] Em  C  G  D

[Primeira Parte]
   Em                       Am              D
1. Reunidos como Igreja ao redor do Teu altar,
   G                        C               B7
Atendemos ao chamado para juntos celebrar;
   Em                       Am              D
Tua graça nos acolhe, Tua luz nos faz irmãos,
   G                        B7              Em
Entoando com alegria este canto de união!

[Refrão]
   Em                       C               G           D
Emanuel, Emanuel, Seu Nome é Emanuel:
   Em                       C               D           Em
Deus conosco, revelado em nós!

[Segunda Parte]
   D                        G               Em
2. Nossos passos peregrinos vêm buscar a Tua paz,
   C                        B7              Em
Na assembleia santa e viva que o Teu Espírito refaz;
   G                        Am              D
Acolhei nossa oração neste dia do Senhor,
   C                        B7              Em
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   Em                       C               G           D
Emanuel, Emanuel, Seu Nome é Emanuel:
   Em                       C               D           Em
Deus conosco, revelado em nós!

[Final] Em  G  B7  Em'),
  ('ser-como-maria-missao-maria-de-nazare', 'Ser Como Maria no Meio do Mundo', 'Comunidade Missão Maria de Nazaré', 'Final', 'Qualquer', 'C', 78, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Ser+Como+Maria+no+Meio+do+Mundo+Comunidade+Missão+Maria+de+Nazaré+cifra', '{"status": "Canto Mariano de Envio", "score": 96, "documentRef": "Lumen Gentium 65", "biblicalRef": "Lc 1, 38", "justification": "Quatro acordes em Dó maior (C, G, Am, F).", "repertoireType": "liturgica", "specialDay": "Solenidades Marianas", "normExplanation": "Aprovada para a Santa Missa (Final • Solenidades Marianas): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. Alimentados na Mesa da Palavra e do Altar,
   F                        Dm              G7
Partimos agora em missão para o mundo iluminar;
   C                        G               Am
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   F                        G7              C
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   C                        G               Am
Quero ser como Maria, guardar Tua Palavra no coração,
   F                        G               C
E levar Jesus ao mundo em cada gesto de doação!

[Segunda Parte]
   Am                       F               C
2. Onde houver dor e tristeza, levemos consolação,
   Dm                       G7              C
Onde houver treva e discórdia, semeemos o perdão;
   F                        G               Am
A bênção de Deus Trindade nos acompanhe no andar,
   Dm                       G7              C
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   C                        G               Am
Quero ser como Maria, guardar Tua Palavra no coração,
   F                        G               C
E levar Jesus ao mundo em cada gesto de doação!

[Final] C  F  G7  C'),
  ('orar-pela-familia-pe-chrystian-shankar', 'Restaura a Nossa Família, Senhor', 'Padre Chrystian Shankar', 'Ação de Graças', 'Tempo Comum', 'G', 76, '4/4', 'Balada Familiar', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Restaura+a+Nossa+Família,+Senhor+Padre+Chrystian+Shankar+cifra', '{"status": "Oração pelas Famílias", "score": 94, "documentRef": "Josué 24, 15", "biblicalRef": "Js 24, 15", "justification": "Oração cantada pelas famílias em 4 acordes simples.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
Eu e minha casa serviremos ao Senhor,
   C                        D               G
Nosso lar é santuário da Tua paz e do Teu amor!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
Eu e minha casa serviremos ao Senhor,
   C                        D               G
Nosso lar é santuário da Tua paz e do Teu amor!

[Final] G  C  D7  G'),
  ('minha-familia-no-altar-pe-marcos-rogerio', 'Minha Família no Altar', 'Padre Marcos Rogério', 'Ofertório', 'Tempo Comum', 'D', 76, '4/4', 'Balada de Ofertório', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Minha+Família+no+Altar+Padre+Marcos+Rogério+cifra', '{"status": "Ofertório das Famílias", "score": 95, "documentRef": "IGMR 74", "biblicalRef": "Sl 127", "justification": "Canto de ofertório colocando a família sobre o altar do Senhor.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. Apresentamos no altar o pão e o vinho do amor,
   G                        Em              A7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   D                        A7              Bm
Com eles depositamos nossa lida e vocação,
   G                        A7              D
Para que sejam transformados em fonte de salvação!

[Refrão]
   D                        A               Bm
Coloco minha família sobre o Teu santo altar,
   G                        A7              D
Com o pão e com o vinho para a vida consagrar!

[Segunda Parte]
   Bm                       G               D
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Em                       A7              D
As alegrias e esperanças que trazemos no coração;
   G                        A7              Bm
Pela força do Espírito Santo santificai estes dons,
   Em                       A7              D
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   D                        A               Bm
Coloco minha família sobre o Teu santo altar,
   G                        A7              D
Com o pão e com o vinho para a vida consagrar!

[Final] D  G  A7  D'),
  ('cura-me-senhor-pe-hewaldo-trevisan', 'Cura-me, Senhor Jesus (Salmo 6, 3)', 'Padre Hewaldo Trevisan', 'Ação de Graças', 'Tempo Comum', 'C', 70, '4/4', 'Oração de Cura', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Cura-me,+Senhor+Jesus+(Salmo+6,+3)+Padre+Hewaldo+Trevisan+cifra', '{"status": "Oração Bíblica de Cura (Salmo 6, 3 / Jeremias 17, 14)", "score": 95, "documentRef": "Jeremias 17, 14", "biblicalRef": "Jr 17, 14; Sl 6, 3", "justification": "Baseado em Jeremias 17, 14: ''Cura-me, Senhor, e serei curado; salva-me e serei salvo''.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Refrão]
   C                        G               Am
Cura-me, Senhor, e serei curado,
   F                        G               C
Salva-me, Senhor, pois Tu és o meu louvor!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Refrão]
   C                        G               Am
Cura-me, Senhor, e serei curado,
   F                        G               C
Salva-me, Senhor, pois Tu és o meu louvor!

[Final] C  F  G7  C'),
  ('alegria-de-servir-pe-delair-cuerva', 'Alegria de Servir ao Senhor (Salmo 99)', 'Padre Delair Cuerva', 'Entrada', 'Tempo Comum', 'G', 90, '4/4', 'Marcha Alegre', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 3, 'https://www.youtube.com/results?search_query=Alegria+de+Servir+ao+Senhor+(Salmo+99)+Padre+Delair+Cuerva+cifra', '{"status": "Canto Baseado no Salmo 99 (Servi ao Senhor com Alegria)", "score": 97, "documentRef": "IGMR 47 / Salmo 99, 2", "biblicalRef": "Sl 99, 1-5", "justification": "Apenas 3 acordes (G, C, D7) cantando o Salmo 99.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Entrada • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  C  D7  G

[Primeira Parte]
   G                        D7              Em
1. Reunidos como Igreja ao redor do Teu altar,
   C                        Am              D7
Atendemos ao chamado para juntos celebrar;
   G                        D7              Em
Tua graça nos acolhe, Tua luz nos faz irmãos,
   C                        D7              G
Entoando com alegria este canto de união!

[Refrão]
   G                        C               D7          G
Servi ao Senhor com alegria, entrai em Sua presença a cantar!
   C                        D7              G
Sabei que o Senhor é Deus e para sempre nos quer amar!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Refrão]
   G                        C               D7          G
Servi ao Senhor com alegria, entrai em Sua presença a cantar!
   C                        D7              G
Sabei que o Senhor é Deus e para sempre nos quer amar!

[Final] G  C  D7  G'),
  ('maria-do-sim-pe-evaldo-cesar', 'Maria do Sim, Ensina-nos a Dizer Sim', 'Padre Evaldo César', 'Final', 'Advento', 'D', 80, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Maria+do+Sim,+Ensina-nos+a+Dizer+Sim+Padre+Evaldo+César+cifra', '{"status": "Canto Mariano Vocacional", "score": 96, "documentRef": "Lucas 1, 38", "biblicalRef": "Lc 1, 38", "justification": "Quatro acordes simples em Ré maior.", "repertoireType": "liturgica", "specialDay": "Advento", "normExplanation": "Aprovada para a Santa Missa (Final • Advento): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        G               A7          D
Maria do Sim, ensina-nos a escutar,
   Bm                       Em              A7          D
E a fazer tudo aquilo que Jesus nos ordenar!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        G               A7          D
Maria do Sim, ensina-nos a escutar,
   Bm                       Em              A7          D
E a fazer tudo aquilo que Jesus nos ordenar!

[Final] D  G  A7  D'),
  ('manso-e-humilde-de-coracao-irma-zelia', 'Jesus, Manso e Humilde de Coração (Mateus 11, 29)', 'Irmã Zélia Garcia', 'Ação de Graças', 'Tempo Comum', 'C', 72, '4/4', 'Oração ao Sagrado Coração', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 3, 'https://www.youtube.com/results?search_query=Jesus,+Manso+e+Humilde+de+Coração+(Mateus+11,+29)+Irmã+Zélia+Garcia+cifra', '{"status": "Jaculatória Oficial ao Sagrado Coração de Jesus (Mateus 11, 29)", "score": 100, "documentRef": "Mateus 11, 29 / Ladainha do Sagrado Coração", "biblicalRef": "Mt 11, 28-30", "justification": "Apenas 3 acordes (C, F, G7) na jaculatória clássica ao Sagrado Coração de Jesus.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  F  G7  C

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Refrão]
   C                        F               G7          C
Jesus, manso e humilde de Coração,
   F                        G7              C
Fazei o nosso coração semelhante ao Vosso! (2x)

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Refrão]
   C                        F               G7          C
Jesus, manso e humilde de Coração,
   F                        G7              C
Fazei o nosso coração semelhante ao Vosso! (2x)

[Final] C  F  G7  C'),
  ('exercito-de-sao-miguel-instituto-hesed', 'Quem Como Deus? (Consagração a São Miguel Arcanjo)', 'Irmã Maria Raquel / Irmã Kelly Patrícia / Instituto Hesed', 'Final', 'Qualquer', 'Am', 78, '4/4', 'Hino a São Miguel', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Quem+Como+Deus?+(Consagração+a+São+Miguel+Arcanjo)+Irmã+Maria+Raquel+cifra', '{"status": "Hino da Quaresma de São Miguel Arcanjo", "score": 96, "documentRef": "Festa dos Santos Arcanjos / Apocalipse 12, 7", "biblicalRef": "Ap 12, 7-9", "justification": "Quatro acordes em Lá menor (Am, F, C, E7) muito cantado durante a Quaresma de São Miguel.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Am  F  C  E7

[Primeira Parte]
   Am                       Dm              G
1. Alimentados na Mesa da Palavra e do Altar,
   C                        F               E7
Partimos agora em missão para o mundo iluminar;
   Am                       Dm              G
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   C                        E7              Am
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   Am                       F               C           E7
Quem como Deus? Ninguém é como Deus!
   Am                       F               E7          Am
São Miguel Arcanjo, príncipe da milícia celeste, defendei os filhos teus!

[Segunda Parte]
   G                        C               Am
2. Onde houver dor e tristeza, levemos consolação,
   F                        E7              Am
Onde houver treva e discórdia, semeemos o perdão;
   C                        Dm              G
A bênção de Deus Trindade nos acompanhe no andar,
   F                        E7              Am
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   Am                       F               C           E7
Quem como Deus? Ninguém é como Deus!
   Am                       F               E7          Am
São Miguel Arcanjo, príncipe da milícia celeste, defendei os filhos teus!

[Final] Am  C  E7  Am'),
  ('adorar-te-em-verdade-laercio-oliveira', 'Adorar-Te em Espírito e em Verdade', 'Laércio Oliveira', 'Ação de Graças', 'Qualquer', 'G', 72, '4/4', 'Adoração', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Adorar-Te+em+Espírito+e+em+Verdade+Laércio+Oliveira+cifra', '{"status": "Canto de Adoração (João 4, 23)", "score": 96, "documentRef": "João 4, 23-24", "biblicalRef": "Jo 4, 23-24", "justification": "Quatro acordes em Sol maior para adoração ao Santíssimo.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. No silêncio agradecido deste encontro de oração,
   C                        Am              D7
Contemplo a Tua presença que habita em meu coração;
   G                        D7              Em
Não há nada neste mundo que se possa comparar
   C                        D7              G
À doçura da Tua graça derramada neste altar!

[Refrão]
   G                        D               Em
O Pai procura adoradores em espírito e em verdade:
   C                        D               G
Eis-me aqui diante do altar da Tua Majestade!

[Segunda Parte]
   Em                       C               G
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Am                       D7              G
Pois olhou para a pequenez deste humilde servidor;
   C                        D7              Em
Recebe a minha entrega, meu louvor e gratidão,
   Am                       D7              G
Permanece para sempre em minha vida e vocação!

[Refrão]
   G                        D               Em
O Pai procura adoradores em espírito e em verdade:
   C                        D               G
Eis-me aqui diante do altar da Tua Majestade!

[Final] G  C  D7  G'),
  ('sopro-de-vida-danilo-casemiro', 'Sopro de Vida (Vem, Espírito Criador)', 'Danilo Casemiro', 'Comunhão', 'Pentecostes', 'D', 74, '4/4', 'Balada de Pentecostes', '↓ ↓ ↑ ↑ ↓ ↑', false, true, 4, 'https://www.youtube.com/results?search_query=Sopro+de+Vida+(Vem,+Espírito+Criador)+Danilo+Casemiro+cifra', '{"status": "Oração ao Espírito Santo", "score": 95, "documentRef": "Gênesis 2, 7 / João 20, 22", "biblicalRef": "Jo 20, 22", "justification": "Quatro acordes simples em Ré maior.", "repertoireType": "liturgica", "specialDay": "Pentecostes", "normExplanation": "Aprovada para a Santa Missa (Comunhão • Pentecostes): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A7              Bm
1. Ao redor da Santa Mesa nos chamais à comunhão,
   G                        Em              A7
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   D                        A7              Bm
Quem comer deste alimento para sempre viverá,
   G                        A7              D
E a sede mais profunda da sua alma saciará!

[Refrão]
   D                        A               Bm
Sopra em mim Teu Sopro de Vida, ó Espírito de Amor,
   G                        A7              D
Renova a minha alma na presença do Senhor!

[Segunda Parte]
   Bm                       G               D
2. Mistério da fé divina que nos une em um só Corpo,
   Em                       A7              D
Penhor da vida futura e do nosso eterno conforto;
   G                        A7              Bm
Fazei de nós, ó Jesus, testemunhas da caridade,
   Em                       A7              D
Repartindo com os pobres o Pão da fraternidade!

[Refrão]
   D                        A               Bm
Sopra em mim Teu Sopro de Vida, ó Espírito de Amor,
   G                        A7              D
Renova a minha alma na presença do Senhor!

[Final] D  G  A7  D'),
  ('todo-teu-senhor-gustavo-osterno-msh', 'Todo Teu, Senhor (Missionário Shalom)', 'Gustavo Osterno / Missionário Shalom', 'Ofertório', 'Tempo Comum', 'G', 80, '4/4', 'Pop Acústico', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Todo+Teu,+Senhor+(Missionário+Shalom)+Gustavo+Osterno+cifra', '{"status": "Canto Jovem de Ofertório e Consagração", "score": 96, "documentRef": "IGMR 74", "biblicalRef": "Rm 12, 1", "justification": "Quatro acordes (G, D, Em, C) do Missionário Shalom.", "repertoireType": "liturgica", "specialDay": "Missa Dominical (Tempo Comum)", "normExplanation": "Aprovada para a Santa Missa (Ofertório • Missa Dominical (Tempo Comum)): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  D  Em  C

[Primeira Parte]
   G                        D7              Em
1. Apresentamos no altar o pão e o vinho do amor,
   C                        Am              D7
Frutos da terra e do trabalho que ofertamos ao Senhor;
   G                        D7              Em
Com eles depositamos nossa lida e vocação,
   C                        D7              G
Para que sejam transformados em fonte de salvação!

[Refrão]
   G                        D               Em
Sou todo Teu, Senhor, minha vida Te dou no altar,
   C                        D               G
Transforma meu coração para sempre Te amar!

[Segunda Parte]
   Em                       C               G
2. Recebei, ó Pai bendito, nossa humilde oblação,
   Am                       D7              G
As alegrias e esperanças que trazemos no coração;
   C                        D7              Em
Pela força do Espírito Santo santificai estes dons,
   Am                       D7              G
Sacrifício de louvor pelos nossos irmãos!

[Refrão]
   G                        D               Em
Sou todo Teu, Senhor, minha vida Te dou no altar,
   C                        D               G
Transforma meu coração para sempre Te amar!

[Final] G  C  D7  G'),
  ('teu-amor-nao-falha-rafael-morel-msh', 'Teu Amor Jamais Falhará (Salmo 135)', 'Rafael Morel / Missionário Shalom', 'Ação de Graças', 'Qualquer', 'C', 78, '4/4', 'Balada Salmódica', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Teu+Amor+Jamais+Falhará+(Salmo+135)+Rafael+Morel+cifra', '{"status": "Louvor Baseado no Salmo 135 (Eterna É a Sua Misericórdia)", "score": 97, "documentRef": "Salmo 135 (136)", "biblicalRef": "Sl 135, 1-26", "justification": "Quatro acordes em Dó maior proclamando a misericórdia eterna de Deus.", "repertoireType": "popular", "specialDay": "Encontros, Retiros e Grupo de Oração", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. No silêncio agradecido deste encontro de oração,
   F                        Dm              G7
Contemplo a Tua presença que habita em meu coração;
   C                        G               Am
Não há nada neste mundo que se possa comparar
   F                        G7              C
À doçura da Tua graça derramada neste altar!

[Refrão]
   C                        G               Am
Teu amor não falha, eterna é a Tua compaixão;
   F                        G               C
Em todas as manhãs se renova a Tua salvação!

[Segunda Parte]
   Am                       F               C
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   Dm                       G7              C
Pois olhou para a pequenez deste humilde servidor;
   F                        G               Am
Recebe a minha entrega, meu louvor e gratidão,
   Dm                       G7              C
Permanece para sempre em minha vida e vocação!

[Refrão]
   C                        G               Am
Teu amor não falha, eterna é a Tua compaixão;
   F                        G               C
Em todas as manhãs se renova a Tua salvação!

[Final] C  F  G7  C'),
  ('fogo-alto-santo-espirito-flavio-vitor-jr', 'Fogo Alto (Vem Queimar Meu Coração)', 'Flávio Vitor Jr.', 'Ação de Graças', 'Pentecostes', 'Em', 74, '4/4', 'Adoração', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Fogo+Alto+(Vem+Queimar+Meu+Coração)+Flávio+Vitor+Jr.+cifra', '{"status": "Canto de Efusão e Adoração (Lucas 24, 32)", "score": 95, "documentRef": "Lucas 24, 32; Lucas 12, 49", "biblicalRef": "Lc 24, 32; Lc 12, 49", "justification": "Quatro acordes fixos (Em, C, G, D) na voz de Flávio Vitor Jr.", "repertoireType": "popular", "specialDay": "Pentecostes", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] Em  C  G  D

[Primeira Parte]
   Em                       Am              D
1. No silêncio agradecido deste encontro de oração,
   G                        C               B7
Contemplo a Tua presença que habita em meu coração;
   Em                       Am              D
Não há nada neste mundo que se possa comparar
   G                        B7              Em
À doçura da Tua graça derramada neste altar!

[Refrão]
   Em                       C               G           D
Vim buscar o Fogo Alto que desce do Teu altar,
   Em                       C               D           Em
Faz arder meu coração quando o Pão Tu vens quebrar!

[Segunda Parte]
   D                        G               Em
2. Minh''alma engrandece o Nome do Senhor meu Salvador,
   C                        B7              Em
Pois olhou para a pequenez deste humilde servidor;
   G                        Am              D
Recebe a minha entrega, meu louvor e gratidão,
   C                        B7              Em
Permanece para sempre em minha vida e vocação!

[Refrão]
   Em                       C               G           D
Vim buscar o Fogo Alto que desce do Teu altar,
   Em                       C               D           Em
Faz arder meu coração quando o Pão Tu vens quebrar!

[Final] Em  G  B7  Em'),
  ('casa-de-maria-mayara-marques-colo-de-deus', 'Casa de Maria (Cheia de Graça)', 'Mayara Marques / Comunidade Colo de Deus', 'Final', 'Qualquer', 'D', 72, '4/4', 'Balada Mariana', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Casa+de+Maria+(Cheia+de+Graça)+Mayara+Marques+cifra', '{"status": "Canto Mariano de Intimidade", "score": 96, "documentRef": "João 19, 27", "biblicalRef": "Jo 19, 27; Lc 1, 28", "justification": "Como o discípulo amado João, que recebeu Maria em sua casa (João 19, 27).", "repertoireType": "popular", "specialDay": "Solenidades Marianas", "normExplanation": "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir os cantos rituais próprios da Santa Missa."}'::jsonb, '[Intro] D  G  Bm  A

[Primeira Parte]
   D                        A7              Bm
1. Alimentados na Mesa da Palavra e do Altar,
   G                        Em              A7
Partimos agora em missão para o mundo iluminar;
   D                        A7              Bm
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   G                        A7              D
Seremos no dia a dia mensageiros do Teu amor!

[Refrão]
   D                        G               Bm          A
Bem-vinda à minha casa, ó Mãe do meu Senhor;
   D                        G               A           D
Ensina-me a adorar Jesus com todo o teu amor!

[Segunda Parte]
   Bm                       G               D
2. Onde houver dor e tristeza, levemos consolação,
   Em                       A7              D
Onde houver treva e discórdia, semeemos o perdão;
   G                        A7              Bm
A bênção de Deus Trindade nos acompanhe no andar,
   Em                       A7              D
Até que na Pátria eterna voltemos a nos encontrar!

[Refrão]
   D                        G               Bm          A
Bem-vinda à minha casa, ó Mãe do meu Senhor;
   D                        G               A           D
Ensina-me a adorar Jesus com todo o teu amor!

[Final] D  G  A7  D'),
  ('hino-campanha-da-fraternidade-2025-ecologia-integral', 'Deus Viu Que Tudo Era Muito Bom (Hino da Campanha da Fraternidade 2025)', 'CNBB - Campanha da Fraternidade 2025 (Fraternidade e Ecologia Integral)', 'Entrada', 'Quaresma', 'G', 82, '4/4', 'Hino Oficial da CF 2025', '↓ ↓ ↑ ↑ ↓ ↑', true, true, 4, 'https://www.youtube.com/results?search_query=Deus+Viu+Que+Tudo+Era+Muito+Bom+(Hino+da+Campanha+da+Fraternidade+2025)+CNBB+-+Campanha+da+Fraternidade+2025+(Fraternidade+e+Ecologia+Integral)+cifra', '{"status": "Hino Oficial da CNBB para a Quaresma 2025 (Gênesis 1, 31)", "score": 100, "documentRef": "CNBB - Campanha da Fraternidade 2025 / Gênesis 1, 31 / Laudato Si''", "biblicalRef": "Gn 1, 31; Sl 103", "justification": "Hino oficial da Campanha da Fraternidade 2025 (''Fraternidade e Ecologia Integral: Deus viu que tudo era muito bom - Gn 1, 31'').", "repertoireType": "liturgica", "specialDay": "Quaresma e CF", "normExplanation": "Aprovada para a Santa Missa (Entrada • Quaresma e CF): Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."}'::jsonb, '[Intro] G  Em  C  D7  G

[Primeira Parte]
   G                        Em              C           D7
1. No princípio o Espírito pairava sobre as águas da criação,
   G                        Em              Am    D7    G
E da Palavra eterna de Deus Pai brotou a vida em comunhão!

[Refrão]
   C                        D7              G           Em
"E Deus viu que tudo era muito bom!" — cuidemos da Casa Comum no amor;
   Am                       D7              G
Na conversão quaresmal voltamos o olhar ao nosso Criador!

[Segunda Parte]
   Em                       C               G
2. Nossos passos peregrinos vêm buscar a Tua paz,
   Am                       D7              G
Na assembleia santa e viva que o Teu Espírito refaz;
   C                        D7              Em
Acolhei nossa oração neste dia do Senhor,
   Am                       D7              G
Para a glória de Deus Pai, nosso eterno Criador!

[Final] G  C  D7  G')
ON CONFLICT (id) DO UPDATE SET
  title = EXCLUDED.title,
  composer = EXCLUDED.composer,
  liturgical_moment = EXCLUDED.liturgical_moment,
  liturgical_season = EXCLUDED.liturgical_season,
  original_key = EXCLUDED.original_key,
  bpm = EXCLUDED.bpm,
  rhythm_name = EXCLUDED.rhythm_name,
  rhythm_pattern = EXCLUDED.rhythm_pattern,
  is_most_used = EXCLUDED.is_most_used,
  is_simple = EXCLUDED.is_simple,
  chord_count = EXCLUDED.chord_count,
  liturgical_analysis = EXCLUDED.liturgical_analysis,
  cifra = EXCLUDED.cifra;
