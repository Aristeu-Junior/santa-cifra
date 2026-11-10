# -*- coding: utf-8 -*-
"""
Parte 6 da Expansão Massiva do Santa Cifra:
- 12 Clássicos da banda Rosa de Saron
- 9 Clássicos de Thiago Brado
- 9 Clássicos de Monsenhor Jonas Abib / Canção Nova
- 10 Clássicos da Banda Dom
- 10 Clássicos da Catequese Católica / CNBB
Total: 50 canções completas cifradas com múltiplas seções.
"""

from part1_padre_zezinho_marcelo import make_song

PART6_SONGS = [
    # =========================================================================
    # 1. ROSA DE SARON (12 canções)
    # =========================================================================
    make_song(
        "rosa-de-saron-te-louvo-em-verdade",
        "Te Louvo em Verdade",
        "Rosa de Saron",
        "Ação de Graças",
        "Qualquer",
        "E", 72, "4/4", "Balada Rock / Dedilhado", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 6,
        "Adoração Eucarística / Ação de Graças / Vigílias Jovens", 90,
        "Doc. 53 CNBB / Pastoral da Juventude", "Jo 4, 23-24; Hc 3, 17-18",
        "Clássico de adoração e entrega em espírito e verdade, mesmo em meio às tribulações.",
        """[Intro] E  B/D#  C#m7  A9  E/G#  F#m7  B4  B

[Primeira Parte]
E                 B/D#                C#m7
Mesmo na tempestade, mesmo que se agite o mar,
        G#m7           A9          F#m7          B4  B
Te louvo, te louvo em verdade!
E                  B/D#              C#m7
Mesmo longe dos meus, mesmo na solidão,
        G#m7           A9          F#m7          B4  B
Te louvo, te louvo em verdade!

[Refrão]
          A9                B/A
Pois somente tenho a Ti, Tu és a minha herança!
    G#m7             C#m7
Te louvo, te louvo em verdade!
          F#m7              B4  B
Pois somente tenho a Ti, Tu és a minha herança!
    A9        B7            E    B4  B
Te louvo, te louvo em verdade!

[Segunda Parte]
E                   B/D#                 C#m7
Mesmo que me faltem palavras, mesmo que eu não saiba louvar,
        G#m7           A9          F#m7          B4  B
Te louvo, te louvo em verdade!
E                  B/D#                 C#m7
No silêncio do altar, diante do Teu olhar,
        G#m7           A9          F#m7          B4  B
Te louvo, te louvo em verdade!

[Final]
    F#m7      B7            C#m7  A9
Te louvo, te louvo em verdade!
    F#m7      B7            E9
Te louvo, te louvo em verdade!"""
    ),
    make_song(
        "rosa-de-saron-as-dores-do-silencio",
        "As Dores do Silêncio",
        "Rosa de Saron",
        "Ação de Graças",
        "Quaresma",
        "B", 74, "4/4", "Balada Acústica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, False, 6,
        "Meditação / Retiros / Celebrações Penitenciais", 85,
        "Estudo 79 CNBB / Pastoral Juvenil", "Sl 42, 2-6; Mt 11, 28",
        "Reflexão profunda sobre o encontro com Cristo nas feridas da alma e no silêncio interior.",
        """[Intro] B  F#/A#  G#m7  E9  B/D#  C#m7  F#4  F#

[Primeira Parte]
B                    F#/A#
Hoje a noite está tão fria,
G#m7                      E9
E o silêncio fala mais que mil palavras.
B                    F#/A#
Olho o céu buscando uma resposta,
C#m7                     F#4      F#
Para as dores que o meu peito cala.

[Refrão]
          E9                  F#/E
Vem curar as dores do silêncio,
        D#m7               G#m7
Vem enxugar o pranto do meu rosto!
       C#m7               F#4  F#
Só o Teu amor refaz a minha vida,
       E9        F#7        B
Só em Ti encontro paz e abrigo!

[Segunda Parte]
B                    F#/A#
Quando tudo parece perdido,
G#m7                        E9
Tua mão me alcança na escuridão.
B                    F#/A#
Tu conheces cada cicatriz,
C#m7                     F#4      F#
E devolves vida ao meu coração.

[Final]
       C#m7      F#7        G#m7  E9
Só em Ti encontro paz e abrigo!
       C#m7      F#7        B9
Nas dores do silêncio, estás comigo!"""
    ),
    make_song(
        "rosa-de-saron-do-alto-da-pedra",
        "Do Alto da Pedra",
        "Rosa de Saron",
        "Final",
        "Qualquer",
        "G", 80, "4/4", "Pop Rock Acústico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Envio Missionário / Encontros de Jovens", 86,
        "Doc. 85 CNBB (Evangelização da Juventude)", "Sl 40, 3; Is 40, 31",
        "Canto de superação na fé, firmando os pés sobre a Rocha que é Cristo.",
        """[Intro] G  D/F#  Em7  C9  G/B  Am7  D4  D

[Primeira Parte]
G                  D/F#
Olho para trás e vejo a estrada,
Em7                     C9
Quantas pedras tive que transpor.
G                    D/F#
Mas a Tua graça me sustentou,
Am7                     D4      D
Me ergueu nos braços do Teu amor.

[Refrão]
          C9                D/C
Do alto da pedra eu posso ver,
        Bm7                 Em7
Um novo horizonte se abrir pra mim!
       Am7                  D4  D
Contigo ao meu lado não vou temer,
       C9         D7        G
Tua luz me guia até o fim!

[Segunda Parte]
G                     D/F#
Mesmo que o vento sopre forte,
Em7                     C9
Minha casa está firmada na Rocha.
G                     D/F#
Em Tuas promessas vou confiar,
Am7                     D4      D
Para sempre o Teu nome exaltar.

[Final]
       Am7        D7        Em7  C9
Do alto da pedra eu posso ver,
       Am7        D7        G9
Que o Teu amor me faz viver!"""
    ),
    make_song(
        "rosa-de-saron-o-sol-da-meia-noite",
        "O Sol da Meia-Noite",
        "Rosa de Saron",
        "Ação de Graças",
        "Páscoa",
        "Em", 84, "4/4", "Rock Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Vigília Pascal Jovem / Ação de Graças", 88,
        "Doc. 53 CNBB", "Lc 1, 78-79; Jo 8, 12",
        "Cristo como o Sol que brilha mesmo na meia-noite das nossas provações.",
        """[Intro] Em  C9  G  D/F#  Em  C9  D4  D

[Primeira Parte]
Em                    C9
Quando a escuridão tenta encobrir,
G                         D/F#
A esperança que arde em meu coração,
Em                    C9
Eu levanto os olhos para o alto,
Am7                       B7
Pois de Ti vem a minha salvação.

[Refrão]
          C9                D9
Tu és o Sol da meia-noite,
        Bm7               Em7
A estrela d'alva que não se apaga!
       Am7                D4  D
Brilha em mim a Tua luz divina,
       C9        B7       Em
Que a minha alma tanto esperava!

[Segunda Parte]
Em                    C9
Não há trevas que possam vencer,
G                         D/F#
O fulgor da Tua ressurreição.
Em                    C9
Caminhando sob a Tua graça,
Am7                       B7
Renovado sou pelo Teu perdão.

[Final]
       C9         D9        Em7
Tu és o Sol da meia-noite,
       Am7        B7        Em9
A luz eterna do meu viver!"""
    ),
    make_song(
        "rosa-de-saron-marcas",
        "Marcas",
        "Rosa de Saron",
        "Comunhão",
        "Quaresma",
        "C", 70, "4/4", "Balada Dedilhada", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 5,
        "Adoração da Cruz / Retiros Quaresmais", 88,
        "Estudo 79 CNBB", "Is 53, 5; Gl 6, 17",
        "Meditação sobre as marcas da Paixão de Cristo que curam as marcas da nossa história.",
        """[Intro] C  G/B  Am7  F9  C/E  Dm7  G4  G

[Primeira Parte]
C                      G/B
Tantas marcas trago pelo caminho,
Am7                    F9
Cicatrizes que o tempo deixou.
C                      G/B
Mas ao contemplar as Tuas chagas,
Dm7                    G4      G
Reconheço o preço do Teu amor.

[Refrão]
          F9                G/F
Tuas marcas curam minhas feridas,
        Em7                 Am7
Teu sangue lava o meu coração!
       Dm7                  G4  G
Na Tua cruz encontro a nova vida,
       F9         G7        C
No Teu abraço, a restauração!

[Segunda Parte]
C                      G/B
Hoje entrego tudo em Teu altar,
Am7                    F9
O meu passado e o meu amanhã.
C                      G/B
Que a minha vida tenha a Tua marca,
Dm7                    G4      G
Sinal eterno da Tua aliança.

[Final]
       Dm7        G7        Am7  F9
Tuas marcas curam minhas feridas,
       Dm7        G7        C9
Senhor da minha vida!"""
    ),
    make_song(
        "rosa-de-saron-rara-calma",
        "Rara Calma",
        "Rosa de Saron",
        "Ação de Graças",
        "Qualquer",
        "D", 72, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Ação de Graças / Momento de Paz Interior", 89,
        "Estudo 79 CNBB", "Jo 14, 27; Fl 4, 7",
        "Canto sobre a paz que o mundo não pode dar, a rara calma que vem da presença de Deus.",
        """[Intro] D  A/C#  Bm7  G9  D/F#  Em7  A4  A

[Primeira Parte]
D                      A/C#
No meio do barulho deste mundo,
Bm7                    G9
Ouço a Tua voz a me chamar.
D                      A/C#
Como brisa leve na manhã,
Em7                    A4      A
Vens o meu espírito acalmar.

[Refrão]
          G9                A/G
Tua presença traz a rara calma,
        F#m7                Bm7
Que pacifica todo o meu interior!
       Em7                  A4  A
Descanso agora sob as Tuas asas,
       G9         A7        D
Seguro estou nos braços do Senhor!

[Segunda Parte]
D                      A/C#
Passam as tormentas e os medos,
Bm7                    G9
Quando me abandono em Tuas mãos.
D                      A/C#
Tu és o porto onde ancoro a vida,
Em7                    A4      A
A paz perfeita do meu coração.

[Final]
       Em7        A7        Bm7  G9
Tua presença traz a rara calma,
       Em7        A7        D9
Jesus, descanso da minha alma!"""
    ),
    make_song(
        "rosa-de-saron-monte-inverno",
        "Monte Inverno",
        "Rosa de Saron",
        "Ação de Graças",
        "Quaresma",
        "Am", 76, "4/4", "Balada Rock", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Retiros Espirituais / Vigílias", 85,
        "Doc. 85 CNBB", "Ct 2, 11-12; Sl 121, 1-2",
        "Mesmo no inverno espiritual mais rigoroso, a primavera da graça de Deus floresce.",
        """[Intro] Am  F9  C  G/B  Am  F9  E4  E

[Primeira Parte]
Am                     F9
Subo o monte em meio ao frio intenso,
C                      G/B
Onde a neve cobre a direção.
Am                     F9
Mas no peito arde uma chama viva,
Dm7                    E4      E
Que aquece a minha oração.

[Refrão]
          F9                G9
Mesmo no alto do Monte Inverno,
        Em7                 Am7
Teu calor derrete a solidão!
       Dm7                  E4  E
Faz brotar a flor da esperança,
       F9         E7        Am
Nova primavera no coração!

[Segunda Parte]
Am                     F9
Não importa quão longa seja a noite,
C                      G/B
Sei que a alvorada vai chegar.
Am                     F9
Confiante sigo os Teus passos,
Dm7                    E4      E
Até no Teu santuário descansar.

[Final]
       Dm7        E7        F9
Mesmo no alto do Monte Inverno,
       Dm7        E7        Am9
Teu amor é fogo eterno!"""
    ),
    make_song(
        "rosa-de-saron-menos-de-um-segundo",
        "Menos de Um Segundo",
        "Rosa de Saron",
        "Ação de Graças",
        "Qualquer",
        "G", 75, "4/4", "Balada Acústica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Encontros de Jovens / Momento de Conversão", 88,
        "Doc. 85 CNBB", "Sl 84, 11; Lc 15, 20",
        "Basta menos de um segundo diante da graça de Deus para que toda uma vida seja transformada.",
        """[Intro] G  D/F#  Em7  C9  G/B  Am7  D4  D

[Primeira Parte]
G                      D/F#
Quantas vezes procurei tão longe,
Em7                    C9
O que sempre esteve junto a mim.
G                      D/F#
Bastou um olhar para a Tua cruz,
Am7                    D4      D
Para o meu deserto chegar ao fim.

[Refrão]
          C9                D/C
Em menos de um segundo tudo mudou,
        Bm7                 Em7
Quando a Tua graça me tocou!
       Am7                  D4  D
Um instante em Tua presença vale mais,
       C9         D7        G
Que mil dias longe da Tua paz!

[Segunda Parte]
G                      D/F#
Não quero mais perder nenhum momento,
Em7                    C9
Sem viver no centro do Teu querer.
G                      D/F#
Cada batida do meu coração,
Am7                    D4      D
Seja para o Teu nome bendizer.

[Final]
       Am7        D7        Em7  C9
Em menos de um segundo tudo mudou,
       Am7        D7        G9
Pois o Teu amor me resgatou!"""
    ),
    make_song(
        "rosa-de-saron-mais-que-um-mero-poema",
        "Mais Que um Mero Poema",
        "Rosa de Saron",
        "Ação de Graças",
        "Qualquer",
        "C", 74, "4/4", "Balada Pop", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Ação de Graças / Louvor Jovem", 87,
        "Estudo 79 CNBB", "1Jo 3, 18; Ef 2, 10",
        "O amor a Deus e ao próximo deve ser mais que palavras ou um mero poema: deve ser vida doada.",
        """[Intro] C  G/B  Am7  F9  C/E  Dm7  G4  G

[Primeira Parte]
C                      G/B
Escrevi canções falando de amor,
Am7                    F9
Rimas belas sob a luz do luar.
C                      G/B
Mas compreendi olhando para Ti,
Dm7                    G4      G
Que amar é a própria vida entregar.

[Refrão]
          F9                G/F
Mais que um mero poema em papel,
        Em7                 Am7
Teu amor foi escrito lá na cruz!
       Dm7                  G4  G
Faz da minha vida um verso vivo,
       F9         G7        C
Que reflita ao mundo a Tua luz!

[Segunda Parte]
C                      G/B
Não bastam palavras sem verdade,
Am7                    F9
Nem promessas que o vento levou.
C                      G/B
Quero amar em obras e em silêncio,
Dm7                    G4      G
Como o Mestre um dia nos amou.

[Final]
       Dm7        G7        Am7  F9
Mais que um mero poema em papel,
       Dm7        G7        C9
És a poesia que desceu do céu!"""
    ),
    make_song(
        "rosa-de-saron-chuva-fria",
        "Chuva Fria",
        "Rosa de Saron",
        "Ação de Graças",
        "Quaresma",
        "Dm", 76, "4/4", "Balada Dedilhada", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 5,
        "Retiros / Meditação Penitencial", 85,
        "Doc. 85 CNBB", "Os 6, 3; Sl 51, 9",
        "Clamor para que a chuva da graça lave a alma e renove a esperança após a tempestade.",
        """[Intro] Dm  Bb9  F  C/E  Dm  Bb9  A4  A

[Primeira Parte]
Dm                     Bb9
Cai a chuva fria na janela,
F                      C/E
Enquanto penso em tudo o que passou.
Dm                     Bb9
As lágrimas se misturam à tempestade,
Gm7                    A4      A
Clamando pelo abrigo do Senhor.

[Refrão]
          Bb9               C9
Depois da chuva fria vem o sol,
        Am7                 Dm7
Tua misericórdia me refaz!
       Gm7                  A4  A
Lava a minha alma e o meu pranto,
       Bb9        A7        Dm
Reacende em mim a Tua paz!

[Segunda Parte]
Dm                     Bb9
Como a terra seca espera a água,
F                      C/E
Minha vida espera em Teu altar.
Dm                     Bb9
Transforma o meu inverno em alvorada,
Gm7                    A4      A
Ensina o meu coração a confiar.

[Final]
       Gm7        A7        Bb9
Depois da chuva fria vem o sol,
       Gm7        A7        Dm9
Brilha em mim a graça do Senhor!"""
    ),
    make_song(
        "rosa-de-saron-folhas-do-chao",
        "Folhas do Chão",
        "Rosa de Saron",
        "Ação de Graças",
        "Qualquer",
        "A", 78, "4/4", "Pop Acústico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Encontros de Jovens / Renovação Espiritual", 86,
        "Doc. 85 CNBB", "Ez 37, 5; Ap 21, 5",
        "Deus recolhe as folhas caídas da nossa história e faz brotar vida nova em nós.",
        """[Intro] A  E/G#  F#m7  D9  A/C#  Bm7  E4  E

[Primeira Parte]
A                      E/G#
Como folhas secas pelo chão,
F#m7                   D9
Espalhadas pelo vento do outono,
A                      E/G#
Assim estavam todos os meus sonhos,
Bm7                    E4      E
Antes de encontrar o Teu perdão.

[Refrão]
          D9                E/D
Tu recolhes as folhas do chão,
        C#m7                F#m7
E devolves vida ao meu jardim!
       Bm7                  E4  E
Teu Espírito sopra sobre mim,
       D9         E7        A
Começando um tempo sem fim!

[Segunda Parte]
A                      E/G#
Já não temo as estações da vida,
F#m7                   D9
Pois minhas raízes estão em Ti.
A                      E/G#
Darei frutos no tempo oportuno,
Bm7                    E4      E
Pela graça que de Ti recebi.

[Final]
       Bm7        E7        F#m7  D9
Tu recolhes as folhas do chão,
       Bm7        E7        A9
E renovas o meu coração!"""
    ),
    make_song(
        "rosa-de-saron-invernia",
        "Invernia",
        "Rosa de Saron",
        "Ação de Graças",
        "Quaresma",
        "Em", 74, "4/4", "Balada Rock", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 5,
        "Vigílias / Meditação", 85,
        "Doc. 85 CNBB", "Sl 130, 5-6; Is 43, 2",
        "Canto poético de perseverança na fé durante o tempo de invernia e espera em Deus.",
        """[Intro] Em  C9  G  D/F#  Em  C9  B4  B

[Primeira Parte]
Em                     C9
Nos dias longos desta invernia,
G                      D/F#
Guardo a chama acesa no altar.
Em                     C9
Mesmo que o frio tente paralisar,
Am7                    B4      B
Minha fé não deixará de caminhar.

[Refrão]
          C9                D9
Passará o tempo da invernia,
        Bm7                 Em7
A promessa eterna cumprirá!
       Am7                  B4  B
Quem espera no Senhor não cansa,
       C9         B7        Em
Novo canto em breve cantará!

[Segunda Parte]
Em                     C9
Toda semente oculta sob a terra,
G                      D/F#
No silêncio aprende a germinar.
Em                     C9
Assim Deus trabalha em minha história,
Am7                    B4      B
Preparando o tempo de florir e amar.

[Final]
       Am7        B7        C9
Passará o tempo da invernia,
       Am7        B7        Em9
Cristo é a nossa eterna alegria!"""
    ),

    # =========================================================================
    # 2. THIAGO BRADO (9 canções)
    # =========================================================================
    make_song(
        "thiago-brado-foi-por-voce",
        "Foi Por Você",
        "Thiago Brado",
        "Comunhão",
        "Quaresma",
        "G", 70, "4/4", "Balada Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Adoração da Cruz / Comunhão / Semana Santa", 92,
        "Estudo 79 CNBB / Diretório de Liturgia", "Jo 15, 13; Rm 5, 8",
        "Contemplação do sacrifício de Cristo no Calvário, entregue pessoalmente por amor a cada um.",
        """[Intro] G  D/F#  Em7  C9  G/B  Am7  D4  D

[Primeira Parte]
G                      D/F#
Cada passo rumo ao Calvário,
Em7                    C9
Cada gota de sangue que caiu,
G                      D/F#
O silêncio diante dos algozes,
Am7                    D4      D
Foi o maior amor que o mundo viu.

[Refrão]
          C9                D/C
Foi por você que Ele subiu na cruz,
        Bm7                 Em7
Foi por você que Ele se entregou!
       Am7                  D4  D
De braços abertos entre o céu e a terra,
       C9         D7        G
Jesus Cristo a sua vida resgatou!

[Segunda Parte]
G                      D/F#
Não foram os cravos que O prenderam,
Em7                    C9
Mas o amor imenso por você e por mim.
G                      D/F#
No terceiro dia a morte foi vencida,
Am7                    D4      D
Para nos dar a vida que não tem fim.

[Final]
       Am7        D7        Em7  C9
Foi por você, foi por amor,
       Am7        D7        G9
Bendito seja o nosso Redentor!"""
    ),
    make_song(
        "thiago-brado-meu-alvo",
        "Meu Alvo",
        "Thiago Brado",
        "Final",
        "Qualquer",
        "C", 76, "4/4", "Pop Acústico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Envio / Encontros de Jovens / Crisma", 90,
        "Doc. 85 CNBB", "Fl 3, 13-14; Hb 12, 1-2",
        "Inspirado em Filipenses 3, 14: prosseguir decididamente para o alvo que é Cristo e o Céu.",
        """[Intro] C  G/B  Am7  F9

[Primeira Parte]
C                      G/B
Deixo para trás o que já passou,
Am7                    F9
Fixo os meus olhos no que está à frente.
C                      G/B
Não vou parar no meio do caminho,
F9                     G4      G
Tua graça me impulsiona diariamente.

[Refrão]
          F9                G9
O meu alvo é o Céu, o meu alvo é Jesus!
        Em7                 Am7
Vou correndo para a meta da Tua luz!
       Dm7                  G4  G
Nada neste mundo vai me deter,
       F9         G7        C
Para Ti, Senhor, eu quero viver!

[Segunda Parte]
C                      G/B
Se o cansaço tentar me abater,
Am7                    F9
Tua Palavra renova o meu vigor.
C                      G/B
Combato o bom combate da fé,
F9                     G4      G
Guardado nos braços do meu Salvador.

[Final]
       Dm7        G7        Am7  F9
O meu alvo é o Céu, o meu alvo é Jesus!
       Dm7        G7        C9
Minha vida inteira a Ti conduz!"""
    ),
    make_song(
        "thiago-brado-o-bom-pastor",
        "O Bom Pastor",
        "Thiago Brado",
        "Comunhão",
        "Páscoa",
        "D", 72, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão / 4º Domingo da Páscoa (Domingo do Bom Pastor)", 95,
        "IGMR 86 / Lecionário Dominical (Jo 10)", "Jo 10, 11-16; Sl 23, 1-6",
        "Canto profundamente bíblico inspirado no Salmo 22(23) e no discurso do Bom Pastor em São João.",
        """[Intro] D  A/C#  Bm7  G9  D/F#  Em7  A4  A

[Primeira Parte]
D                      A/C#
Mesmo que eu ande pelo vale escuro,
Bm7                    G9
Mal nenhum eu temerei, Senhor.
D                      A/C#
Tua vara e Teu cajado me consolam,
Em7                    A4      A
Ouço a doce voz do meu Pastor.

[Refrão]
          G9                A/G
Tu és o Bom Pastor que dá a vida,
        F#m7                Bm7
Que conhece cada ovelha pelo nome!
       Em7                  A4  A
Em verdes pastos me fazes repousar,
       G9         A7        D
Junto às águas tranquilas me refazes!

[Segunda Parte]
D                      A/C#
Quando me perdi longe do aprisco,
Bm7                    G9
Deixaste as noventa e nove por amor.
D                      A/C#
Nos Teus ombros me trouxeste de volta,
Em7                    A4      A
Curando as feridas da minha dor.

[Final]
       Em7        A7        Bm7  G9
Tu és o Bom Pastor que dá a vida,
       Em7        A7        D9
Nada me faltará em Tua guarida!"""
    ),
    make_song(
        "thiago-brado-terra-seca",
        "Terra Seca",
        "Thiago Brado",
        "Ação de Graças",
        "Quaresma",
        "Am", 70, "4/4", "Dedilhado Contemplativo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Adoração / Pós-Comunhão / Retiros", 91,
        "Estudo 79 CNBB", "Sl 63, 2; Sl 143, 6",
        "Oração da alma sedenta de Deus como a terra seca sem água (Salmo 62/63).",
        """[Intro] Am  F9  C  G/B  Am  F9  E4  E

[Primeira Parte]
Am                     F9
Minha alma tem sede de Ti, Senhor,
C                      G/B
Meu corpo Te deseja ardentemente,
Am                     F9
Como terra seca, árida e sem água,
Dm7                    E4      E
Clamo pela Tua graça, Deus vivente.

[Refrão]
          F9                G9
Derrama sobre mim a Tua água viva,
        Em7                 Am7
Vem saciar a sede do meu coração!
       Dm7                  E4  E
Sou terra seca esperando a Tua chuva,
       F9         E7        Am
Transforma o meu deserto em jardim!

[Segunda Parte]
Am                     F9
No Teu santuário contemplo a Tua glória,
C                      G/B
Pois Tua graça vale mais do que a vida.
Am                     F9
Meus lábios entoarão o Teu louvor,
Dm7                    E4      E
Minhas mãos se elevam em prece agradecida.

[Final]
       Dm7        E7        F9
Derrama sobre mim a Tua água viva,
       Dm7        E7        Am9
Senhor, fonte de eterna vida!"""
    ),
    make_song(
        "thiago-brado-meu-mundo",
        "Meu Mundo",
        "Thiago Brado",
        "Ação de Graças",
        "Qualquer",
        "E", 72, "4/4", "Balada Acústica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Ação de Graças / Adoração Eucarística", 89,
        "Doc. 53 CNBB", "Cl 3, 11; Gl 2, 20",
        "Declaração de intimidade e pertença total a Cristo, centro do nosso mundo.",
        """[Intro] E  B/D#  C#m7  A9  E/G#  F#m7  B4  B

[Primeira Parte]
E                      B/D#
Quando entras no silêncio do meu quarto,
C#m7                   A9
Todo o universo parece parar.
E                      B/D#
Basta um toque da Tua mão ferida,
F#m7                   B4      B
Para o meu coração se iluminar.

[Refrão]
          A9                B/A
Tu és o meu mundo, meu princípio e fim,
        G#m7                C#m7
Tudo o que eu preciso encontro em Ti!
       F#m7                 B4  B
Não sei mais viver longe do Teu olhar,
       A9         B7        E
Para sempre quero Te adorar!

[Segunda Parte]
E                      B/D#
Podes levar os meus planos humanos,
C#m7                   A9
Só não retires de mim o Teu Espírito.
E                      B/D#
Que o meu respirar seja uma oração,
F#m7                   B4      B
Unido ao Teu amor infinito.

[Final]
       F#m7       B7        C#m7  A9
Tu és o meu mundo, meu princípio e fim,
       F#m7       B7        E9
Vive, Senhor Jesus, dentro de mim!"""
    ),
    make_song(
        "thiago-brado-nao-estou-so",
        "Não Estou Só",
        "Thiago Brado",
        "Ação de Graças",
        "Qualquer",
        "G", 74, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Consolação / Ação de Graças / Grupos de Oração", 90,
        "Estudo 79 CNBB", "Mt 28, 20; Js 1, 9",
        "Certeza da promessa de Jesus: 'Eis que estou convosco todos os dias até o fim do mundo'.",
        """[Intro] G  D/F#  Em7  C9

[Primeira Parte]
G                      D/F#
Às vezes a estrada parece deserta,
Em7                    C9
E o peso da cruz faz o passo falhar.
G                      D/F#
Mas sinto ao meu lado uma doce presença,
C9                     D4      D
Que enxuga meu pranto e me faz levantar.

[Refrão]
          C9                D9
Eu não estou só, Tu estás comigo!
        Bm7                 Em7
És meu companheiro, meu fiel Amigo!
       Am7                  D4  D
Em cada momento, na dor ou na paz,
       C9         D7        G
Tua mão poderosa me sustenta e refaz!

[Segunda Parte]
G                      D/F#
Prometeste ficar todos os dias,
Em7                    C9
Até a consumação dos séculos.
G                      D/F#
Por isso caminho sem medo da noite,
C9                     D4      D
Guiado pela luz do Teu Evangelho.

[Final]
       Am7        D7        Em7  C9
Eu não estou só, Tu estás comigo,
       Am7        D7        G9
Jesus, meu eterno abrigo!"""
    ),
    make_song(
        "thiago-brado-nova-manha",
        "Nova Manhã",
        "Thiago Brado",
        "Entrada",
        "Páscoa",
        "A", 78, "4/4", "Pop Acústico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Canto de Abertura / Manhã de Páscoa / Laudes", 91,
        "Estudo 79 CNBB", "Lm 3, 22-23; Sl 30, 6",
        "As misericórdias do Senhor se renovam a cada nova manhã.",
        """[Intro] A  E/G#  F#m7  D9  A/C#  Bm7  E4  E

[Primeira Parte]
A                      E/G#
O choro pode durar uma noite,
F#m7                   D9
Mas a alegria vem ao amanhecer.
A                      E/G#
Os raios do sol anunciam a graça,
Bm7                    E4      E
Que faz toda a criação renascer.

[Refrão]
          D9                E/D
Nasce uma nova manhã de esperança,
        C#m7                F#m7
Tua misericórdia se renova em mim!
       Bm7                  E4  E
Louvado sejas, Senhor da Aliança,
       D9         E7        A
Teu amor é fiel e não tem fim!

[Segunda Parte]
A                      E/G#
Abro as janelas da minha alma,
F#m7                   D9
Deixo a Tua luz invadir meu viver.
A                      E/G#
Entrego este dia em Tuas mãos santas,
Bm7                    E4      E
Para a Tua vontade sempre fazer.

[Final]
       Bm7        E7        F#m7  D9
Nasce uma nova manhã de esperança,
       Bm7        E7        A9
Em Ti minha alma descansa!"""
    ),
    make_song(
        "thiago-brado-sopro-suave",
        "Sopro Suave",
        "Thiago Brado",
        "Ação de Graças",
        "Pentecostes",
        "D", 68, "4/4", "Dedilhado Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Pentecostes / Crisma / Invocação ao Espírito Santo", 93,
        "Estudo 79 CNBB", "1Rs 19, 12; Jo 20, 22",
        "Inspirado na manifestação de Deus ao profeta Elias na brisa leve e no sopro do Espírito Santo.",
        """[Intro] D  A/C#  Bm7  G9  D/F#  Em7  A4  A

[Primeira Parte]
D                      A/C#
Não estavas no vento impetuoso,
Bm7                    G9
Nem no terremoto ou no fogo ardente.
D                      A/C#
Mas no murmúrio de uma brisa leve,
Em7                    A4      A
Reconheci Tua voz tão presente.

[Refrão]
          G9                A/G
Sopro Suave, Espírito Santo,
        F#m7                Bm7
Vem envolver todo o meu coração!
       Em7                  A4  A
Acalma a minh'alma, enxuga o meu pranto,
       G9         A7        D
Derrama sobre mim a Tua unção!

[Segunda Parte]
D                      A/C#
Como no Cenáculo sopra de novo,
Bm7                    G9
Restaura a paz e renova o ardor.
D                      A/C#
Faz de mim morada da Tua presença,
Em7                    A4      A
Templo vivo do Teu santo amor.

[Final]
       Em7        A7        Bm7  G9
Sopro Suave, Espírito Santo,
       Em7        A7        D9
A Ti elevo o meu canto!"""
    ),
    make_song(
        "thiago-brado-teu-santo-nome",
        "Teu Santo Nome",
        "Thiago Brado",
        "Ação de Graças",
        "Qualquer",
        "C", 72, "4/4", "Balada Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Adoração ao Santíssimo / Ação de Graças", 94,
        "Doc. 53 CNBB", "Fl 2, 9-11; Sl 8, 2",
        "Adoração ao Nome de Jesus, Nome acima de todo nome diante do qual todo joelho se dobra.",
        """[Intro] C  G/B  Am7  F9  C/E  Dm7  G4  G

[Primeira Parte]
C                      G/B
Há um Nome que traz paz ao coração,
Am7                    F9
Que liberta o cativo e cura a dor.
C                      G/B
Diante d'Ele os mares se acalmam,
Dm7                    G4      G
E toda a criação rende louvor.

[Refrão]
          F9                G/F
Bendito seja o Teu Santo Nome,
        Em7                 Am7
Nome acima de todo nome, Jesus!
       Dm7                  G4  G
Todo joelho se dobre no céu e na terra,
       F9         G7        C
Diante da majestade da Tua cruz!

[Segunda Parte]
C                      G/B
Nos lábios o Teu Nome é melodia,
Am7                    F9
No peito é fortaleza e salvação.
C                      G/B
Proclamo que só Tu és o Senhor,
Dm7                    G4      G
Para a glória de Deus Pai em comunhão.

[Final]
       Dm7        G7        Am7  F9
Bendito seja o Teu Santo Nome,
       Dm7        G7        C9
Jesus, nosso Deus e Senhor!"""
    ),

    # =========================================================================
    # 3. MONSENHOR JONAS ABIB / CANÇÃO NOVA (9 canções)
    # =========================================================================
    make_song(
        "mons-jonas-abib-que-santidade-de-vida",
        "Que Santidade de Vida",
        "Monsenhor Jonas Abib / Canção Nova",
        "Ofertório",
        "Qualquer",
        "D", 76, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Apresentação das Oferendas / Vocacional / Consagração", 94,
        "Lumen Gentium 39-42 / IGMR 73", "1Pd 1, 15-16; Rm 12, 1",
        "Clássico vocacional e de ofertório de Monsenhor Jonas Abib sobre o chamado universal à santidade.",
        """[Intro] D  A/C#  Bm7  G  Em7  A4  A7

[Primeira Parte]
D                      A/C#
Que santidade de vida, Senhor,
Bm7                    F#m7
Posso eu Te ofertar neste altar?
G                      D/F#
Se sou tão pequeno e tão frágil assim,
Em7                    A4      A7
Só a Tua graça me pode transformar.

[Refrão]
          G                 A/G
Toma a minha vida, faz-me santo, Senhor!
        F#m7                Bm7
Purifica o meu coração no Teu amor!
       Em7                  A7
Ou santos ou nada, queremos viver,
       G          A7        D
Totalmente consagrados ao Teu querer!

[Segunda Parte]
D                      A/C#
Junto ao pão e ao vinho que apresentamos,
Bm7                    F#m7
Coloco os meus passos e a minha missão.
G                      D/F#
Faz de mim hóstia viva de louvor,
Em7                    A4      A7
Para a glória do Pai e dos irmãos.

[Final]
       Em7        A7        Bm7  G
Ou santos ou nada, queremos viver,
       Em7        A7        D9
Santidade de vida pra Te oferecer!"""
    ),
    make_song(
        "mons-jonas-abib-cancao-do-espirito",
        "Canção do Espírito (Deixa Jesus Encher Tua Vida)",
        "Monsenhor Jonas Abib / Canção Nova",
        "Ação de Graças",
        "Pentecostes",
        "D", 70, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 6,
        "Pentecostes / Crisma / Ação de Graças / Grupos de Oração", 95,
        "Estudo 79 CNBB / Renovação Carismática Católica", "Jo 7, 37-39; Rm 5, 5",
        "Hino histórico da renovação espiritual no Brasil, convidando a entregar todas as dores a Jesus no Espírito.",
        """[Intro] D  G  A7  D  G  A7

[Primeira Parte]
   D                     G
1. Deixa Jesus encher tua vida
          A7                   F#m7  Bm7
Com Seu Espírito e o Seu amor,
       Em7               A7
Encher teu coração de gozo e louvor!
   D                      G
Deixa Jesus cuidar das coisas
          A7                   F#m7  Bm7
Que te atormentam e te fazem chorar,
       Em7        A7         D    D7
E com repouso a tua vida se encherá!

[Refrão]
   G      A7    F#m7  Bm7
Ó vem, ó vem, Jesus!
   Em7    A7    D     D7
Ó vem, ó vem, Jesus!
   G      A7    F#m7  Bm7
Ó vem, ó vem, Jesus,
   Em7    A7    D
Vem morar em mim!

[Segunda Parte]
   D                      G
2. Entrega a Ele os teus caminhos,
          A7                   F#m7  Bm7
Os teus cansaços e a tua aflição,
       Em7               A7
No Santo Espírito terás consolação!
   D                      G
Água viva brotará no teu interior,
          A7                   F#m7  Bm7
Curando as marcas de toda a dor,
       Em7        A7         D    D7
Para cantares sempre a glória do Senhor!

[Final]
   G      A7    F#m7  Bm7
Ó vem, ó vem, Jesus,
   Em7    A7    D9
Reinar em meu coração!"""
    ),
    make_song(
        "mons-jonas-abib-cantai-ao-senhor-cantico-novo",
        "Cantai ao Senhor um Cântico Novo",
        "Monsenhor Jonas Abib / Canção Nova",
        "Entrada",
        "Qualquer",
        "Em", 110, "4/4", "Marcha / Louvor", "↓  ↑ ↓ ↑  ↓ ↑",
        True, True, 4,
        "Canto de Entrada / Louvor Comunitário", 93,
        "IGMR 47 / Estudo 79 CNBB", "Sl 96, 1-3; Sl 98, 1",
        "Canto bíblico de abertura e júbilo inspirado diretamente nos Salmos 95(96) e 97(98).",
        """[Intro] Em  D  C  B7  Em

[Primeira Parte]
Em                                   D
Cantai ao Senhor um cântico novo,
C                  B7          Em
Cantai ao Senhor, toda a terra!
Em                                   D
Cantai ao Senhor, bendizei o Seu nome,
C                  B7          Em
Proclamai dia a dia a Sua salvação!

[Refrão]
   Am7                Em
Cantai, cantai ao Senhor,
   B7                 Em    E7
Porque Ele fez maravilhas!
   Am7                Em
Cantai, cantai ao Senhor,
   C        B7        Em
Alegrai-vos em Sua presença!

[Segunda Parte]
Em                                   D
Publicai entre os povos a Sua glória,
C                  B7          Em
Em todas as nações os Seus prodígios!
Em                                   D
Porque grande é o Senhor e digno de louvor,
C                  B7          Em
Revestido de esplendor e majestade!

[Final]
   Am7                Em
Cantai, cantai ao Senhor,
   C        B7        Em
Aleluia, amém!"""
    ),
    make_song(
        "mons-jonas-abib-eu-e-minha-casa",
        "Eu e Minha Casa Serviremos ao Senhor",
        "Monsenhor Jonas Abib / Canção Nova",
        "Final",
        "Qualquer",
        "G", 96, "4/4", "Pop / Louvor", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Semana Nacional da Família / Festa da Sagrada Família / Envio", 95,
        "Diretório da Pastoral Familiar CNBB", "Js 24, 15; At 16, 31",
        "Profissão de fé familiar baseada na declaração de Josué (Js 24, 15).",
        """[Intro] G  D/F#  Em7  C9  D7  G

[Primeira Parte]
G                      D/F#
Diante das escolhas deste mundo,
Em7                    Bm7
Tomamos hoje a nossa decisão:
C9                     G/B
De abrir as portas do nosso lar,
Am7                    D4      D7
Para que Cristo seja o Rei e a Salvação!

[Refrão]
          G                 D/F#
Eu e minha casa serviremos ao Senhor!
        Em7                 Bm7
Eu e minha casa serviremos ao Senhor!
       C9                   G/B
Com alegria, na fé e no amor,
       Am7        D7        G
Eu e minha casa serviremos ao Senhor!

[Segunda Parte]
G                      D/F#
Não serviremos aos ídolos da terra,
Em7                    Bm7
Pois só o Senhor nos libertou do mal.
C9                     G/B
Ele é a Rocha que sustenta a família,
Am7                    D4      D7
Abençoando a nossa aliança conjugal!

[Final]
       C9                   G/B
Com alegria, na fé e no amor,
       Am7        D7        G9
Eu e minha casa serviremos ao Senhor!"""
    ),
    make_song(
        "mons-jonas-abib-vigia-esperando-a-aurora",
        "Vigia Esperando a Aurora",
        "Monsenhor Jonas Abib / Canção Nova",
        "Entrada",
        "Advento",
        "C", 74, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Advento / Vigílias / Liturgia das Horas", 96,
        "Estudo 79 CNBB / Discurso de João Paulo II em Toronto (JMJ 2002)", "Sl 130, 6; Is 21, 11-12",
        "Canto de esperança vigilante inspirado no Salmo 129(130) e no chamado aos jovens para serem sentinelas da manhã.",
        """[Intro] C  G/B  Am7  F9  Dm7  G4  G

[Primeira Parte]
C                      G/B
Qual vigia esperando a aurora,
Am7                    Em7
Minha alma espera pelo meu Senhor.
F9                     C/E
Mais que as sentinelas pela manhã,
Dm7                    G4      G
Espera Israel pelo seu Redentor!

[Refrão]
          F9                G/F
No silêncio da noite eu vigio,
        Em7                 Am7
Com a lâmpada acesa no altar!
       Dm7                  G4  G
Vem, Senhor Jesus, Sol da Justiça,
       F9         G7        C
Tua aurora já começa a brilhar!

[Segunda Parte]
C                      G/B
Porque no Senhor está a misericórdia,
Am7                    Em7
E junto d'Ele copiosa redenção.
F9                     C/E
Anunciamos ao mundo um novo dia,
Dm7                    G4      G
Sentinelas da manhã em oração!

[Final]
       Dm7        G7        Am7  F9
Qual vigia esperando a aurora,
       Dm7        G7        C9
Vem, Senhor Jesus, é chegada a hora!"""
    ),
    make_song(
        "mons-jonas-abib-inunda-meu-ser",
        "Inunda Meu Ser",
        "Monsenhor Jonas Abib / Canção Nova",
        "Ação de Graças",
        "Pentecostes",
        "A", 68, "4/4", "Dedilhado / Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Pentecostes / Crisma / Pós-Comunhão", 93,
        "Estudo 79 CNBB", "At 2, 1-4; Ef 5, 18",
        "Prece suave e profunda de efusão do Espírito Santo.",
        """[Intro] A  E/G#  F#m7  D9  Bm7  E4  E7

[Primeira Parte]
A                      E/G#
Espírito Santo de Deus,
F#m7                   C#m7
Vem visitar o profundo do meu ser.
D9                     A/C#
Tu que conheces as minhas fraquezas,
Bm7                    E4      E7
Vem com Tua luz meu interior preencher.

[Refrão]
          D9                E/D
Inunda meu ser, inunda meu ser,
        C#m7                F#m7
Espírito Santo, vem me transformar!
       Bm7                  E7
Com Teu amor, com Teu poder,
       D9         E7        A
Inunda meu ser neste santo altar!

[Segunda Parte]
A                      E/G#
Lava as feridas da minha memória,
F#m7                   C#m7
Aquece a frieza do meu coração.
D9                     A/C#
Concede os Teus dons de sabedoria,
Bm7                    E4      E7
Para eu viver em perfeita comunhão.

[Final]
       Bm7        E7        F#m7  D9
Inunda meu ser, Espírito de Amor,
       Bm7        E7        A9
Para a glória de Cristo Senhor!"""
    ),
    make_song(
        "mons-jonas-abib-juras-de-amor",
        "Juras de Amor",
        "Monsenhor Jonas Abib / Canção Nova",
        "Comunhão",
        "Qualquer",
        "G", 72, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão / Adoração / Renovação de Promessas", 91,
        "Doc. 53 CNBB", "Os 2, 16.21; Ct 8, 6",
        "Diálogo esponsal entre a alma e Deus, inspirado no profeta Oseias.",
        """[Intro] G  D/F#  Em7  C9  Am7  D4  D7

[Primeira Parte]
G                      D/F#
Tu me atraíste ao deserto, Senhor,
Em7                    Bm7
Para falar ao meu coração.
C9                     G/B
Recordo os dias da minha juventude,
Am7                    D4      D7
Quando me chamaste à consagração.

[Refrão]
          C9                D/C
Renovo hoje as minhas juras de amor,
        Bm7                 Em7
Diante da Tua presença real!
       Am7                  D7
Só a Ti pertence a minha vida,
       C9         D7        G
Em aliança eterna e nupcial!

[Segunda Parte]
G                      D/F#
Desposaste-me na justiça e no direito,
Em7                    Bm7
Na ternura e na fidelidade sem fim.
C9                     G/B
Como selo sobre o Teu coração,
Am7                    D4      D7
Guarda a Tua graça viva dentro de mim.

[Final]
       Am7        D7        Em7  C9
Renovo hoje as minhas juras de amor,
       Am7        D7        G9
Meu Amado, meu Deus e Senhor!"""
    ),
    make_song(
        "mons-jonas-abib-nao-da-mais-pra-voltar",
        "Não Dá Mais Pra Voltar (O Barco Está Virando)",
        "Monsenhor Jonas Abib / Canção Nova",
        "Final",
        "Qualquer",
        "D", 92, "4/4", "Folk / Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Envio Missionário / Encontros Vocacionais e Jovens", 90,
        "Doc. 85 CNBB", "Lc 9, 62; Mt 4, 19-20",
        "Canto histórico de decisão radical pelo Evangelho: quem põe a mão no arado não olha para trás.",
        """[Intro] D  Bm7  G  A7  D  A7

[Primeira Parte]
   D                         Bm7
1. Não dá mais pra voltar, o barco está em alto-mar,
   G                         A7
Não dá mais pra negar a voz de quem me pôs a navegar!
   D                         Bm7
Deixei na praia as redes do meu velho viver,
   G             A7          D      D7
Agora só por Cristo eu quero viver!

[Refrão]
          G                 A7
Não dá mais pra voltar atrás,
        F#m7                Bm7
Quem pôs a mão no arado segue em paz!
       Em7                  A7
Com Jesus no leme da embarcação,
       G          A7        D
Levamos ao mundo a salvação!

[Segunda Parte]
   D                         Bm7
2. Mesmo que as ondas tentem nos intimidar,
   G                         A7
O Mestre está no barco e manda o vento se acalmar!
   D                         Bm7
Avancemos para as águas mais profundas na fé,
   G             A7          D      D7
Pescadores de homens como São Pedro é!

[Final]
       Em7        A7        Bm7  G
Não dá mais pra voltar atrás,
       Em7        A7        D9
Só Jesus é o Caminho e a Paz!"""
    ),
    make_song(
        "mons-jonas-abib-cristo-quero-ser-instrumento",
        "Cristo, Quero Ser Instrumento de Tua Paz",
        "Monsenhor Jonas Abib / Canção Nova",
        "Ofertório",
        "Qualquer",
        "C", 74, "4/4", "Balada Franciscana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Ofertório / Canto da Paz / Festa de São Francisco de Assis", 98,
        "Estudo 79 CNBB / Hinário Litúrgico", "Mt 5, 9; Gl 5, 22",
        "Oração da Paz atribuída à espiritualidade de São Francisco de Assis, consagrada na liturgia.",
        """[Intro] C  Am7  Dm7  G7  C  G7

[Primeira Parte]
   C                         Am7
1. Cristo, quero ser instrumento de Tua paz e do Teu infinito amor:
   Dm7                       G7                           C      G7
Onde houver ódio e rancor, que eu leve a concórdia, que eu leve o amor!
   C                      E7                     Am7
Onde há ofensa que dói, que eu leve o perdão;
   F                      Dm7                    G4    G7
Onde houver a discórdia, que eu leve a união e Tua paz!

[Refrão]
          F                 G7
Mestre, que eu não busque tanto ser consolado,
        Em7                 Am7
Mas consolar; ser compreendido, mas compreender;
       Dm7                  G7
Ser amado, mas amar com todo o ardor,
       F          G7        C
Pois é dando que se recebe o Teu amor!

[Segunda Parte]
   C                         Am7
2. Mesmo que haja um só coração que duvide do bem, do amor e do Céu,
   Dm7                       G7                           C      G7
Quero com firmeza anunciar a Palavra que traz a clareza da fé!
   C                      E7                     Am7
Onde houver erro, Senhor, que eu leve a verdade;
   F                      Dm7                    G4    G7
No desespero e na tristeza, a esperança e a alegria da luz!

[Final]
       Dm7                  G7        Am7  F
Perdoando é que se encontra o perdão,
       Dm7        G7        C9
E morrendo se vive para a eterna mansão!"""
    ),

    # =========================================================================
    # 4. BANDA DOM (10 canções)
    # =========================================================================
    make_song(
        "banda-dom-seu-amor-e-demais",
        "Seu Amor É Demais",
        "Banda Dom",
        "Final",
        "Qualquer",
        "G", 112, "4/4", "Pop Rock Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Final / Encontros de Jovens / Crisma", 88,
        "Doc. 85 CNBB", "Rm 8, 38-39; 1Jo 4, 16",
        "Clássico da música católica jovem celebrando a alegria transbordante do amor de Deus.",
        """[Intro] G  D  Em7  C9  G  D  C9

[Primeira Parte]
G                      D
Eu sei que nunca estou sozinho,
Em7                    C9
Mesmo quando tudo parece difícil.
G                      D
Tua mão me guia pelo caminho,
Em7                    C9      D
E transforma em festa o meu sorriso!

[Refrão]
          G                 D
O Seu amor é demais, não tem igual,
        Em7                 C9
Me faz voar além do temporal!
          G                 D
O Seu amor é demais, me faz feliz,
        C9        D7        G
É tudo o que meu coração sempre quis!

[Segunda Parte]
G                      D
Quero gritar para o mundo inteiro,
Em7                    C9
Que em Jesus encontrei a verdadeira vida.
G                      D
Um amor fiel e tão verdadeiro,
Em7                    C9      D
Que cura a alma de toda ferida!

[Final]
          G                 D
O Seu amor é demais, não tem igual,
        C9        D7        G9
Amor eterno do Pai Celestial!"""
    ),
    make_song(
        "banda-dom-coracao-adorador",
        "Coração Adorador",
        "Banda Dom",
        "Ação de Graças",
        "Qualquer",
        "D", 72, "4/4", "Balada Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Adoração ao Santíssimo / Pós-Comunhão", 91,
        "Doc. 53 CNBB", "Jo 4, 23; Sl 51, 12",
        "Pedido por um coração purificado e inteiramente voltado à adoração ao Senhor.",
        """[Intro] D  A/C#  Bm7  G9  Em7  A4  A

[Primeira Parte]
D                      A/C#
Vem tocar, Senhor, em meu interior,
Bm7                    G9
Desfazer as pedras da indiferença.
D                      A/C#
Quero me prostrar diante do altar,
Em7                    A4      A
Mergulhado na Tua santa presença.

[Refrão]
          G9                A/G
Dá-me um coração adorador,
        F#m7                Bm7
Que bata no compasso do Teu amor!
       Em7                  A4  A
Em espírito e em verdade quero viver,
       G9         A7        D
Para o Teu santo nome engrandecer!

[Segunda Parte]
D                      A/C#
Mais do que palavras ou belas canções,
Bm7                    G9
Tu procuras vidas entregues a Ti.
D                      A/C#
Recebe o meu nada e faz-me Teu servo,
Em7                    A4      A
Eis-me aqui, Senhor, eis-me aqui!

[Final]
       Em7        A7        Bm7  G9
Dá-me um coração adorador,
       Em7        A7        D9
Todo Teu, meu Deus e meu Senhor!"""
    ),
    make_song(
        "banda-dom-cancao-de-pedro",
        "Canção de Pedro",
        "Banda Dom",
        "Comunhão",
        "Páscoa",
        "A", 74, "4/4", "Balada Acústica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão / Festa de São Pedro e São Paulo / Vocacional", 92,
        "Estudo 79 CNBB", "Jo 21, 15-17; Jo 6, 68",
        "Inspirada no diálogo de Jesus ressuscitado com Simão Pedro à beira do mar de Tiberíades: 'Senhor, Tu sabes tudo, Tu sabes que eu Te amo'.",
        """[Intro] A  E/G#  F#m7  D9  Bm7  E4  E

[Primeira Parte]
A                      E/G#
Mesmo tendo falhado tantas vezes,
F#m7                   D9
Mesmo quando o medo me fez negar,
A                      E/G#
O Teu olhar de misericórdia,
Bm7                    E4      E
Me encontrou chorando à beira do mar.

[Refrão]
          D9                E/D
Senhor, Tu sabes tudo o que sou,
        C#m7                F#m7
Tu sabes que eu Te amo, meu Salvador!
       Bm7                  E4  E
A quem iremos nós, se só Tu tens,
       D9         E7        A
Palavras de vida eterna, amém!

[Segunda Parte]
A                      E/G#
Por três vezes perguntas ao meu coração,
F#m7                   D9
Restaurando em mim a vocação de amar.
A                      E/G#
Apascentarei as Tuas ovelhas,
Bm7                    E4      E
Tua Igreja sobre a Rocha vou servir e honrar.

[Final]
       Bm7        E7        F#m7  D9
Senhor, Tu sabes tudo o que sou,
       Bm7        E7        A9
Tu sabes que eu Te amo, meu Senhor!"""
    ),
    make_song(
        "banda-dom-eu-sou-o-que-sou",
        "Eu Sou o Que Sou",
        "Banda Dom",
        "Ação de Graças",
        "Qualquer",
        "E", 76, "4/4", "Balada Pop", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 5,
        "Ação de Graças / Retiros de Juventude", 89,
        "Doc. 85 CNBB", "Ex 3, 14; 1Cor 15, 10",
        "Contemplação do Deus que Se revela como 'Eu Sou' e nos sustenta pela Sua graça.",
        """[Intro] E  B/D#  C#m7  A9  F#m7  B4  B

[Primeira Parte]
E                      B/D#
Diante da sarça que arde sem consumir,
C#m7                   A9
Tiro as sandálias em solo sagrado.
E                      B/D#
Ouço a voz do Deus de nossos pais,
F#m7                   B4      B
Que caminha sempre ao nosso lado.

[Refrão]
          A9                B/A
Eu Sou o que Sou, diz o Senhor,
        G#m7                C#m7
O Deus Eterno, teu Libertador!
       F#m7                 B4  B
Pela Tua graça hoje sou o que sou,
       A9         B7        E
Filho amado que o Pai resgatou!

[Segunda Parte]
E                      B/D#
Não temo o Faraó nem o deserto,
C#m7                   A9
Pois Tua coluna de fogo me guia.
E                      B/D#
Abres o mar diante dos meus passos,
F#m7                   B4      B
E me alimentas com o Pão de cada dia.

[Final]
       F#m7       B7        C#m7  A9
Eu Sou o que Sou, diz o Senhor,
       F#m7       B7        E9
A Ele toda a glória e o louvor!"""
    ),
    make_song(
        "banda-dom-aos-pes-da-tua-cruz",
        "Aos Pés da Tua Cruz",
        "Banda Dom",
        "Comunhão",
        "Quaresma",
        "C", 70, "4/4", "Dedilhado / Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Quaresma / Sexta-Feira Santa / Exaltação da Santa Cruz", 92,
        "Estudo 79 CNBB", "Jo 19, 25-27; Gl 6, 14",
        "Junto com Maria e o discípulo amado aos pés da Cruz de Jesus.",
        """[Intro] C  G/B  Am7  F9  Dm7  G4  G

[Primeira Parte]
C                      G/B
Aos pés da Tua cruz me coloco agora,
Am7                    F9
Com Maria e João em adoração.
C                      G/B
Contemplo o mistério da entrega total,
Dm7                    G4      G
Daquele que nos deu a redenção.

[Refrão]
          F9                G/F
Aos pés da Tua cruz encontro o perdão,
        Em7                 Am7
Jorra do Teu lado água e salvação!
       Dm7                  G4  G
Recebo Maria por Mãe do meu viver,
       F9         G7        C
Aos pés da Tua cruz quero permanecer!

[Segunda Parte]
C                      G/B
Quando o mundo tentar me afastar de Ti,
Am7                    F9
Lembrarei do preço que pagaste ali.
C                      G/B
Tua cruz é árvore de vida e paz,
Dm7                    G4      G
Que toda a minha história refaz.

[Final]
       Dm7        G7        Am7  F9
Aos pés da Tua cruz encontro o perdão,
       Dm7        G7        C9
Jesus, Rei do meu coração!"""
    ),
    make_song(
        "banda-dom-fiat-faca-se",
        "Fiat (Faça-se em Mim)",
        "Banda Dom",
        "Ofertório",
        "Advento",
        "G", 72, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Advento / Festas Marianas / Vocacional / Ofertório", 94,
        "Marialis Cultus / Estudo 79 CNBB", "Lc 1, 38; Lc 1, 46-49",
        "Canto inspirado no 'Fiat' de Nossa Senhora na Anunciação do Anjo Gabriel.",
        """[Intro] G  D/F#  Em7  C9  Am7  D4  D

[Primeira Parte]
G                      D/F#
Um anjo do céu trouxe a mensagem,
Em7                    C9
Para a jovem virgem lá em Nazaré.
G                      D/F#
No silêncio humilde do seu coração,
Am7                    D4      D
Brotou a resposta mais bela da fé.

[Refrão]
          C9                D/C
Fiat, faça-se em mim segundo a Tua Palavra!
        Bm7                 Em7
Eis aqui a serva do Senhor!
       Am7                  D4  D
Como Maria quero dizer meu sim,
       C9         D7        G
Faz Tua vontade, ó Deus, dentro de mim!

[Segunda Parte]
G                      D/F#
O Verbo Divino fez morada em nós,
Em7                    C9
Pelo sim perfeito da Mãe de Jesus.
G                      D/F#
Ensina-nos, Mãe, a acolher a missão,
Am7                    D4      D
De levar ao mundo o Filho da Luz.

[Final]
       Am7        D7        Em7  C9
Fiat, faça-se em mim segundo a Tua Palavra,
       Am7        D7        G9
Por toda a minha jornada!"""
    ),
    make_song(
        "banda-dom-permanecer-no-amor",
        "Permanecer no Amor",
        "Banda Dom",
        "Comunhão",
        "Páscoa",
        "D", 74, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão / 5º e 6º Domingos da Páscoa", 94,
        "IGMR 86 / Lecionário Dominical (Jo 15)", "Jo 15, 4-10",
        "Baseado na alegoria da Videira e dos Ramos em João 15: 'Permanecei no Meu amor'.",
        """[Intro] D  A/C#  Bm7  G9  Em7  A4  A

[Primeira Parte]
D                      A/C#
Tu és a Videira verdadeira, Senhor,
Bm7                    G9
E nós somos os ramos unidos a Ti.
D                      A/C#
Sem a Tua seiva nada podemos fazer,
Em7                    A4      A
Só em Tua comunhão podemos florir.

[Refrão]
          G9                A/G
Quero permanecer no Teu amor,
        F#m7                Bm7
Guardando os Teus mandamentos de luz!
       Em7                  A4  A
Para dar muitos frutos que permaneçam,
       G9         A7        D
Na alegria perfeita de Cristo Jesus!

[Segunda Parte]
D                      A/C#
Como o Pai Te amou, também nos amaste,
Bm7                    G9
Chamas-nos amigos e não mais servos.
D                      A/C#
Na mesa sagrada do Pão e do Vinho,
Em7                    A4      A
Selamos contigo o amor eterno.

[Final]
       Em7        A7        Bm7  G9
Quero permanecer no Teu amor,
       Em7        A7        D9
Unido a Ti, meu Salvador!"""
    ),
    make_song(
        "banda-dom-pescador-de-cristo",
        "Pescador de Cristo",
        "Banda Dom",
        "Final",
        "Qualquer",
        "A", 98, "4/4", "Pop Acústico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Envio Missionário / Mês Vocacional", 91,
        "Doc. 85 CNBB", "Lc 5, 4-11; Mc 1, 17",
        "Chamado missionário a lançar as redes em águas mais profundas em nome do Senhor.",
        """[Intro] A  E  F#m7  D9  A  E  D9

[Primeira Parte]
A                      E
Trabalhamos a noite inteira no mar,
F#m7                   D9
Sem nada colher em nossa embarcação.
A                      E
Mas sob a Tua Palavra lançamos a rede,
D9                     E4      E
E vimos o milagre da multiplicação!

[Refrão]
          A                 E
Sou pescador de Cristo, vou anunciar,
        F#m7                D9
Avançar para as águas profundas do mar!
          A                 E
Deixo tudo na praia pra Te seguir,
        D9        E7        A
Onde quer que me envies, eu vou partir!

[Segunda Parte]
A                      E
Não tenhas medo, diz a Tua voz,
F#m7                   D9
De hoje em diante serás pescador.
A                      E
Resgatando vidas para o Reino do Céu,
D9                     E4      E
Nas redes benditas do Teu santo amor!

[Final]
          A                 E
Sou pescador de Cristo, vou anunciar,
        D9        E7        A9
Tua Boa-Nova em todo lugar!"""
    ),
    make_song(
        "banda-dom-eu-vou-pelo-mundo",
        "Eu Vou Pelo Mundo",
        "Banda Dom",
        "Final",
        "Qualquer",
        "E", 108, "4/4", "Pop Rock Missionário", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Envio Missionário / Jornada Mundial da Juventude / Mês das Missões", 90,
        "Doc. 100 CNBB / Evangelii Gaudium", "Mc 16, 15; Mt 28, 19",
        "Canto vibrante de envio missionário: 'Ide por todo o mundo e pregai o Evangelho'.",
        """[Intro] E  B  C#m7  A9  E  B  A9

[Primeira Parte]
E                      B
A messe é grande e espera por nós,
C#m7                   A9
Não posso calar o que vi e ouvi.
E                      B
O fogo do Espírito arde no peito,
A9                     B4      B
Impulsiona meus pés a sair daqui!

[Refrão]
          E                 B
Eu vou pelo mundo anunciar Jesus,
        C#m7                A9
Levar a esperança, ser sal e ser luz!
          E                 B
De norte a sul, em cada nação,
        A9        B7        E
Proclamar a alegria da salvação!

[Segunda Parte]
E                      B
Quão belos são sobre as montanhas,
C#m7                   A9
Os pés do mensageiro que anuncia a paz.
E                      B
Com Maria, Estrela da Evangelização,
A9                     B4      B
Levamos o amor que o mundo refaz!

[Final]
          E                 B
Eu vou pelo mundo anunciar Jesus,
        A9        B7        E9
Caminhando sempre na Sua luz!"""
    ),
    make_song(
        "banda-dom-deus-e-dez",
        "Deus É Dez",
        "Banda Dom",
        "Final",
        "Qualquer",
        "G", 116, "4/4", "Pop Jovem / Animação", "↓  ↑ ↓ ↑  ↓ ↑",
        True, True, 4,
        "Encontros de Jovens / Catequese / Retiros / Canto Final Festivo", 85,
        "Doc. 85 CNBB", "Sl 100, 1-5; Fl 4, 4",
        "Clássico de animação juvenil e catequética celebrando a bondade infinita de Deus.",
        """[Intro] G  C9  D  G  C9  D

[Primeira Parte]
G                      C9
Olhe para o céu e veja a imensidão,
D                      G       D/F#
Sinta a alegria bater no coração.
Em7                    C9
Ele fez o sol, as estrelas e o mar,
Am7                    D4      D
E fez você e eu para a vida celebrar!

[Refrão]
          G                 C9
Deus é dez, Deus é mil, Deus é tudo pra mim!
        D                   G
O Seu amor é perfeito e nunca tem fim!
          G                 C9
Deus é dez, Deus é paz, é a minha canção,
        D         D7        G
Alegria que transborda no meu coração!

[Segunda Parte]
G                      C9
Quando estou triste Ele vem consolar,
D                      G       D/F#
Quando estou fraco me faz caminhar.
Em7                    C9
Não existe amigo mais fiel que o Senhor,
Am7                    D4      D
Vamos juntos cantar o Seu grande louvor!

[Final]
          G                 C9
Deus é dez, Deus é mil, Deus é tudo pra mim,
        D         D7        G9
Bendito seja Deus agora e sempre, amém!"""
    ),

    # =========================================================================
    # 5. CATEQUESE CATÓLICA / CNBB (10 canções)
    # =========================================================================
    make_song(
        "catequese-caminho-para-o-discipulado",
        "Catequese, Caminho Para o Discipulado",
        "Catequese Católica / CNBB",
        "Entrada",
        "Qualquer",
        "G", 96, "4/4", "Marcha / Hino Catequético", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Missa com Crianças / Dia do Catequista / Iniciação à Vida Cristã", 98,
        "Diretório Nacional de Catequese (Doc. 84 CNBB) / Doc. 107 CNBB", "Lc 24, 13-35; Mt 28, 19-20",
        "Hino oficial de inspiração catequética da CNBB sobre a Iniciação à Vida Cristã e o discipulado missionário.",
        """[Intro] G  D/F#  Em7  C9  Am7  D7  G

[Primeira Parte]
   G                         D/F#
1. Como os discípulos no caminho de Emaús,
   Em7                       Bm7
Sentimos arder o nosso coração,
   C9                        G/B
Quando escutamos a Palavra de Jesus,
   Am7                       D4      D7
E O reconhecemos ao partir o Pão!

[Refrão]
          G                 D/F#
Catequese, caminho para o discipulado,
        Em7                 Bm7
Encontro vivo com Cristo Ressuscitado!
       C9                   G/B
Na comunidade aprendemos a viver,
       Am7        D7        G
Na fé, na esperança e no amor crescer!

[Segunda Parte]
   G                         D/F#
2. Iniciação à vida cristã em missão,
   Em7                       Bm7
Fonte batismal, Crisma e Altar,
   C9                        G/B
Família e paróquia em santa comunhão,
   Am7                       D4      D7
Formando discípulos para o mundo transformar!

[Final]
       C9                   G/B
Na comunidade aprendemos a viver,
       Am7        D7        G9
Catequese é a fé florescer!"""
    ),
    make_song(
        "catequese-vocacao-de-catequista",
        "Vocação de Catequista",
        "Catequese Católica / CNBB",
        "Ofertório",
        "Qualquer",
        "D", 76, "4/4", "Balada Pastoral", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Mês Vocacional (4º Domingo - Dia do Catequista) / Envio de Catequistas", 96,
        "Diretório para a Catequese / Doc. 84 CNBB", "Is 6, 8; 1Cor 9, 16",
        "Homenagem e oração de consagração do ministério do catequista na Igreja.",
        """[Intro] D  A/C#  Bm7  G9  Em7  A7  D

[Primeira Parte]
   D                         A/C#
1. Chamaste-me pelo nome na comunidade,
   Bm7                       F#m7
Para semear a Tua Palavra de luz.
   G9                        D/F#
Com paciência, ternura e fidelidade,
   Em7                       A4      A7
Conduzir os pequenos ao encontro de Jesus!

[Refrão]
          G9                A/G
Ser catequista é vocação de amor,
        F#m7                Bm7
Ser eco fiel da voz do Bom Pastor!
       Em7                  A7
Eis-me aqui, Senhor, envia-me a servir,
       G9         A7        D
Tua Igreja viva ajudar a construir!

[Segunda Parte]
   D                         A/C#
2. Mais do que ensinar doutrinas no papel,
   Bm7                       F#m7
É testemunhar com a própria vida o Evangelho.
   G9                        D/F#
Guiados por Maria, a Catequista fiel,
   Em7                       A4      A7
Do amor do Pai queremos ser espelho!

[Final]
       Em7        A7        Bm7  G9
Ser catequista é vocação de amor,
       Em7        A7        D9
Abençoa os catequistas, ó Senhor!"""
    ),
    make_song(
        "catequese-deixa-a-luz-do-ceu-entrar",
        "Deixa a Luz do Céu Entrar",
        "Catequese Católica / CNBB",
        "Entrada",
        "Qualquer",
        "D", 100, "4/4", "Marcha / Infantil", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Missa com Crianças / Encontros de Catequese / Acolhida", 92,
        "Diretório para Missas com Crianças", "Jo 8, 12; Ap 3, 20",
        "Clássico tradicional da catequese infantil sobre abrir o coração para a luz de Cristo.",
        """[Intro] D  A7  D  G  A7  D

[Primeira Parte]
   D                                    A7
1. Tu anseias, eu bem sei, por salvação,
                                     D
Tens desejo de banir a escuridão;
                                     G
Abre, pois, de par em par teu coração,
        D          A7         D    D7
E deixa a luz do céu entrar!

[Refrão]
          G                 D
Deixa a luz do céu entrar,
          A7                D    D7
Deixa a luz do céu entrar!
          G                 D    Bm7
Abre bem as portas do teu coração,
        Em7        A7         D
E deixa a luz do céu entrar!

[Segunda Parte]
   D                                    A7
2. Cristo, a luz do céu, em ti quer habitar,
                                     D
Para as trevas do pecado dissipar;
                                     G
Teu caminho e coração iluminar,
        D          A7         D    D7
E deixa a luz do céu entrar!

[Final]
          G                 D    Bm7
Abre bem as portas do teu coração,
        Em7        A7         D9
E deixa a luz do céu entrar!"""
    ),
    make_song(
        "catequese-aperte-a-minha-mao",
        "Aperte a Minha Mão (A Paz do Senhor)",
        "Catequese Católica / CNBB",
        "Entrada",
        "Qualquer",
        "G", 104, "4/4", "Pop Infantil / Acolhida", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Acolhida Fraterna / Missa com Crianças / Encontros de Catequese", 90,
        "Diretório para Missas com Crianças", "Sl 133, 1; Rm 15, 7",
        "Canto tradicional de acolhida e fraternidade nas celebrações com crianças e catequizandos.",
        """[Intro] G  D7  G  C  D7  G

[Primeira Parte]
   G                                    D7
1. Aperte a minha mão, irmão, quero te dar a paz,
                                     G
Do meu Senhor que nos uniu e tão feliz nos faz!
   G7                                   C
Que alegria estar aqui na casa do Senhor,
        G          D7         G
Cantando juntos este hino de amor!

[Refrão]
          C                 G
Aperte a minha mão, irmão,
          D7                G    G7
Com um sorriso no coração!
          C                 G    Em7
Somos família de Jesus Salvador,
        Am7        D7         G
Vivendo unidos na paz do Senhor!

[Segunda Parte]
   G                                    D7
2. Olhe pro seu irmão ao lado e diga com fervor:
                                     G
Que Deus te abençoe sempre com o Seu amor!
   G7                                   C
Na mesa da Palavra e na fração do Pão,
        G          D7         G
Crescemos como Igreja em comunhão!

[Final]
          C                 G    Em7
Somos família de Jesus Salvador,
        Am7        D7         G9
Vivendo unidos na paz do Senhor!"""
    ),
    make_song(
        "catequese-o-amor-de-deus-e-maravilhoso",
        "O Amor de Deus É Maravilhoso",
        "Catequese Católica / CNBB",
        "Ação de Graças",
        "Qualquer",
        "C", 112, "4/4", "Infantil / Gestos", "↓  ↑ ↓ ↑  ↓ ↑",
        True, True, 3,
        "Catequese Infantil / Missa com Crianças (Ação de Graças)", 93,
        "Diretório para Missas com Crianças", "Ef 3, 18-19; Sl 103, 11",
        "Baseado diretamente em Efésios 3, 18 sobre a largura, comprimento, altura e profundidade do amor de Deus.",
        """[Intro] C  G7  C  F  G7  C

[Primeira Parte]
   C                                   G7
1. O amor de Deus é maravilhoso,
                                    C
O amor de Deus é maravilhoso,
   C7                                  F
O amor de Deus é maravilhoso,
        C          G7         C
Grande é o amor de Deus!

[Refrão]
   C                                   G7
Tão alto que eu não posso estar mais alto do que Ele,
                                    C
Tão baixo que eu não posso estar mais baixo do que Ele,
   C7                                  F
Tão amplo que eu não posso estar fora dele,
        C          G7         C
Grande é o amor de Deus!

[Segunda Parte]
   C                                   G7
2. Nos braços do Papai do Céu seguro estou,
                                    C
Pois Seu Filho amado por nós Ele enviou!
   C7                                  F
Por isso batemos palmas com muita alegria,
        C          G7         C
Cantando o amor de Deus todo dia!

[Final]
   F               C          Am7
Grande, imenso, maravilhoso,
   Dm7      G7     C9
Grande é o amor de Deus!"""
    ),
    make_song(
        "catequese-pedro-tiago-joao-no-barquinho",
        "Pedro, Tiago, João no Barquinho",
        "Catequese Católica / CNBB",
        "Ação de Graças",
        "Qualquer",
        "D", 116, "4/4", "Marcha Infantil", "↓  ↑ ↓ ↑  ↓ ↑",
        True, True, 3,
        "Catequese Infantil / Liturgia da Palavra com Crianças", 92,
        "Diretório para Missas com Crianças", "Lc 5, 1-11; Jo 21, 1-6",
        "Canção bíblica tradicional que ensina às crianças o milagre da pesca maravilhosa no mar da Galileia.",
        """[Intro] D  A7  D  G  A7  D

[Primeira Parte]
   D                                    A7
1. Pedro, Tiago, João no barquinho,
                                     D
Pedro, Tiago, João no barquinho,
   D7                                   G
Pedro, Tiago, João no barquinho,
        D          A7         D
No mar da Galileia!

[Refrão]
   D                                    A7
Jogaram a rede, mas não pegaram peixe,
                                     D
Jogaram a rede, mas não pegaram peixe,
   D7                                   G
Jogaram a rede, mas não pegaram peixe,
        D          A7         D
No mar da Galileia!

[Segunda Parte]
   D                                    A7
2. Jesus mandou jogar do outro lado,
                                     D
Jesus mandou jogar do outro lado,
   D7                                   G
Jesus mandou jogar do outro lado,
        D          A7         D
No mar da Galileia!
   D                                    A7
Puxaram a rede cheia de peixinhos,
                                     D
Puxaram a rede cheia de peixinhos,
   D7                                   G
Pois quem obedece a Jesus é abençoado,
        D          A7         D
No mar da Galileia!

[Final]
   G          A7         D    Bm7
Com Jesus no nosso barquinho,
   Em7        A7         D9
Seguimos sempre no bom caminho!"""
    ),
    make_song(
        "catequese-por-dentro-fora-alto-e-baixo",
        "Por Dentro, Fora, Alto e Baixo Sempre Sou Feliz",
        "Catequese Católica / CNBB",
        "Final",
        "Qualquer",
        "G", 120, "4/4", "Infantil Animado", "↓  ↑ ↓ ↑  ↓ ↑",
        True, True, 3,
        "Catequese Infantil / Canto Final com Crianças", 90,
        "Diretório para Missas com Crianças", "1Cor 6, 19; Fl 4, 4",
        "Canto clássico de gestos ensinando às crianças que Jesus habita em nosso coração.",
        """[Intro] G  D7  G  C  D7  G

[Primeira Parte]
   G                                    D7
1. Por dentro, fora, alto e baixo sempre sou feliz!
                                     G
Por dentro, fora, alto e baixo sempre sou feliz!
   G7                                   C
Aqui Jesus entrou, meu coração limpou,
        G          D7         G
Por dentro, fora, alto e baixo sempre sou feliz!

[Refrão]
          C                 G
Sempre sou feliz com Jesus no coração,
          D7                G    G7
Caminhando junto com o meu irmão!
          C                 G    Em7
Por dentro, fora, alto e baixo vou cantar,
        Am7        D7         G
A alegria de a Deus amar!

[Segunda Parte]
   G                                    D7
2. Na minha casa, na escola e na igreja eu vou,
                                     G
Testemunhar a todo mundo o amor do Salvador!
   G7                                   C
Guardando a Palavra que na catequese ouvi,
        G          D7         G
Por dentro, fora, alto e baixo sempre sou feliz!

[Final]
          C                 G    Em7
Aqui Jesus entrou, meu coração limpou,
        Am7        D7         G9
Por dentro, fora, alto e baixo sempre sou feliz!"""
    ),
    make_song(
        "catequese-tres-palavrinhas-so",
        "Três Palavrinhas Só (Deus É Amor)",
        "Catequese Católica / CNBB",
        "Ação de Graças",
        "Qualquer",
        "C", 104, "4/4", "Infantil Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Pré-Catequese / Primeira Eucaristia / Missa com Crianças", 95,
        "Diretório para Missas com Crianças", "1Jo 4, 8.16",
        "A síntese teológica de 1 João 4, 8 ('Deus é Amor') ensinada de forma simples e inesquecível às crianças.",
        """[Intro] C  Dm7  G7  C  G7

[Primeira Parte]
   C                        Dm7
1. Três palavrinhas só,
   G7                       C
Eu aprendi de cor:
   C7                       F
Deus é Amor!
   Dm7        G7            C
Trá-lá-lá-lá-lá-lá-lá-lá!

[Refrão]
          F                 C
Deus é Amor, diz a Bíblia Sagrada,
          G7                C    C7
Deus é Amor, luz da nossa caminhada!
          F                 C    Am7
Três palavrinhas guardadas no coração:
        Dm7        G7         C
Deus é Amor e nossa Salvação!

[Segunda Parte]
   C                        Dm7
2. Quem ama o seu irmão,
   G7                       C
Vive em comunhão,
   C7                       F
Pois Deus é Amor!
   Dm7        G7            C
E nos deu Jesus, o Salvador!

[Final]
          F                 C    Am7
Três palavrinhas só eu aprendi de cor:
        Dm7        G7         C9
Deus é Amor, Deus é Amor!"""
    ),
    make_song(
        "catequese-meu-barco-e-pequeno",
        "Meu Barco É Pequeno",
        "Catequese Católica / CNBB",
        "Comunhão",
        "Qualquer",
        "F", 88, "4/4", "Balada Infantil", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Missa com Crianças / Primeira Eucaristia / Catequese", 93,
        "Diretório para Missas com Crianças", "Mc 4, 35-41; Sl 23, 4",
        "Canto de confiança infantil em Jesus, que acalma a tempestade e guia o nosso pequeno barco.",
        """[Intro] F  Bb  C7  F  C7

[Primeira Parte]
   F                        Gm7
1. Meu barco é pequeno e tão grande é o mar,
   C7                       F      C7
Jesus segura minha mão!
   F                        Bb
Ele é meu Piloto e tudo vai bem,
   F          C7            F      F7
Na viagem para Jerusalém!

[Refrão]
          Bb                F
Com Jesus no barco tudo vai muito bem,
          C7                F      F7
Não tenho medo da tempestade que vem!
          Bb                F      Dm7
Ele segura firme a minha mão,
        Gm7        C7         F
E guia em paz o meu coração!

[Segunda Parte]
   F                        Gm7
2. Se as ondas subirem e o vento soprar,
   C7                       F      C7
A voz de Jesus faz o mar acalmar!
   F                        Bb
Com a Mãe do Céu e os amigos da fé,
   F          C7            F      F7
Navegamos firmes rumo a Nazaré!

[Final]
          Bb                F      Dm7
Ele é meu Piloto e tudo vai bem,
        Gm7        C7         F9
Na viagem para Jerusalém! Amém!"""
    ),
    make_song(
        "catequese-crianca-feliz-jesus-ama",
        "Criança Feliz (Jesus Ama as Crianças)",
        "Catequese Católica / CNBB",
        "Final",
        "Qualquer",
        "G", 108, "4/4", "Marcha Festiva Infantil", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Dia das Crianças / Encerramento da Missa com Crianças / Primeira Eucaristia", 95,
        "Diretório para Missas com Crianças (n. 1-55)", "Mt 19, 14; Mc 10, 13-16",
        "Inspirado nas palavras de Jesus: 'Deixai vir a Mim as criancinhas, porque delas é o Reino dos Céus'.",
        """[Intro] G  C  D7  G  D7

[Primeira Parte]
   G                         Em7
1. Deixai vir a Mim as criancinhas,
   C                         D7
Assim falou o Mestre Jesus!
   G                         Em7
Porque delas é o Reino dos Céus,
   Am7        D7             G     G7
Criança feliz caminha na luz!

[Refrão]
          C                 D7
Sou criança feliz porque Jesus me ama,
        Bm7                 Em7
Pelo meu nome na Igreja me chama!
       Am7                  D7
Com Papai e Mamãe venho ao altar,
       C          D7        G
Para o nome do Senhor louvar!

[Segunda Parte]
   G                         Em7
2. Jesus abraçou e abençoou os pequenos,
   C                         D7
Mostrando a pureza do coração.
   G                         Em7
Na catequese aprendo a rezar e a servir,
   Am7        D7             G     G7
Levando alegria a cada irmão!

[Final]
       Am7                  D7        Em7  C
Deixai vir a Mim as criancinhas,
       Am7        D7        G9
Criança feliz com Jesus e Maria!"""
    ),
]
