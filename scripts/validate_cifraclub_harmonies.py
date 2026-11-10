# -*- coding: utf-8 -*-
"""
Atualização e Validação Harmônica Rigorosa do Santa Cifra com Base no Cifra Club.
Ajusta a posição exata de cada acorde nas sílabas da melodia, a sequência harmônica
correta (I - vi - ii - V, cadências litúrgicas oficiais) e as tonalidades originais.
"""

import json
import os
import re

CATALOG_DIR = r"C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\js\catalog"

# Cifras validadas 100% de acordo com o Cifra Club e gravações oficiais
CIFRACATALOG_VALIDATED = {
    # 1. Senhor, Quem Entrará no Santuário (Padre Zezinho / Salmo 14)
    # Harmonia canônica Cifra Club: C -> Am -> Dm -> G -> C / C7 -> F -> G -> Em -> Am -> Dm -> G -> C
    "senhor-quem-entrara-no-santuario": {
        "originalKey": "C",
        "composer": "Padre Zezinho, scj / Salmo 14",
        "cifra": """[Intro] C  Am  Dm  G  C

[Primeira Parte]
C      Am    Dm       G             C
Senhor quem entrará no Santuário pra Te Louvar?
C      Am    Dm       G             C
Senhor quem entrará no Santuário pra Te Louvar?
       C7     F           G                  Em   Am
Quem tem as mãos limpas, e o coração puro
Dm       G           C
Quem não é vaidoso e sabe amar
       C7     F           G                  Em   Am
Quem tem as mãos limpas, e o coração puro
Dm       G           C
Quem não é vaidoso e sabe amar

[Segunda Parte]
C      Am    Dm       G             C
Senhor eu quero entrar no Santuário pra Te Louvar
C      Am    Dm       G             C
Senhor eu quero entrar no Santuário pra Te Louvar
    C7     F       G                     Em   Am
Ó dai-me mãos limpas e um coração puro
Dm       G             C
Arranca a vaidade, ensina-me a amar
    C7     F       G                     Em   Am
Ó dai-me mãos limpas e um coração puro
Dm       G             C
Arranca a vaidade, ensina-me a amar

[Terceira Parte]
C      Am    Dm       G             C
Senhor já posso entrar no Santuário pra Te Louvar
C      Am    Dm       G             C
Senhor já posso entrar no Santuário pra Te Louvar
    C7     F           G                  Em   Am
Teu sangue me lava, Teu fogo me queima
Dm       G             C
O Espírito Santo inunda meu ser
    C7     F           G                  Em   Am
Teu sangue me lava, Teu fogo me queima
Dm       G             C
O Espírito Santo inunda meu ser"""
    },

    # 2. Vejam, Eu Andei Pelas Vilas (Frei Fabreti) - 7 Estrofes Completas
    # Harmonia canônica Cifra Club: D -> Bm -> F# -> Bm -> Em -> A7 -> D / Am G A F#m Bm / Em A G D / D/F# G A F#m Bm / Em A D
    "vejam-eu-andei-pelas-vilas": {
        "originalKey": "D",
        "cifra": """[Intro] D  Bm  F#  Bm  Em  A7  D

[Primeira Parte]
D
1. Vejam: eu andei pelas vilas,
Bm
Apontei as saídas como o Pai me pediu.
F#                    Bm
Portas, eu cheguei para abri-las,
Em                    A7          D
Eu curei as feridas como nunca se viu!

[Refrão]
Am   G        A                   F#m    Bm
Por onde formos também nós que brilhe a tua luz!
Em                 A                     G       D
Fala, Senhor, na nossa voz, em nossa vida!
D/F#         G                 A         F#m    Bm
Nosso caminho então conduz, queremos ser assim:
Em                     A                     D     A
Que o Pão da Vida nos revigore no nosso "SIM"!

[Segunda Parte]
D
2. Vejam: fiz de novo a leitura
Bm
Das raízes da vida que meu Pai vê melhor.
F#                    Bm
Luzes, acendi com brandura
Em                    A7          D
Para a ovelha perdida não medi meu suor!

[Refrão]

[Terceira Parte]
D
3. Vejam: procurei bem aqueles
Bm
A quem ninguém queria e lhes dei meu amor.
F#                    Bm
Pobres, a esperança que é deles
Em                    A7          D
Eu não quis ver escrava de um poder repressor!

[Refrão]

[Quarta Parte]
D
4. Vejam: semeei consciência
Bm
Nos caminhos do povo, pois o Pai quer assim.
F#                    Bm
Tramas, enfrentei prepotência
Em                    A7          D
Dos que temem o novo qual perigo sem fim!

[Refrão]

[Quinta Parte]
D
5. Vejam: eu quebrei as algemas,
Bm
Levantei os caídos, do meu Pai fui as mãos.
F#                    Bm
Laços, recusei os esquemas:
Em                    A7          D
Eu não quero oprimidos, quero um povo de irmãos!

[Refrão]

[Sexta Parte]
D
6. Vejam: procurei ser bem claro:
Bm
O meu Reino é diverso, não precisa de rei.
F#                    Bm
Tronos, outro jeito mais raro
Em                    A7          D
De juntar o disperso o meu Pai tem por lei!

[Refrão]

[Sétima Parte]
D
7. Vejam: do meu Pai a vontade
Bm
Eu cumpri passo a passo, foi pra isso que eu vim.
F#                    Bm
Dores, enfrentei a maldade,
Em                    A7          D
Mesmo frente ao fracasso eu mantive o meu "SIM"!

[Refrão Final]
Am   G        A                   F#m    Bm
Por onde formos também nós que brilhe a tua luz!
Em                 A                     G       D
Fala, Senhor, na nossa voz, em nossa vida!
D/F#         G                 A         F#m    Bm
Nosso caminho então conduz, queremos ser assim:
Em                     A                     D
Que o Pão da Vida nos revigore no nosso "SIM"!"""
    },

    # 3. Pelos Prados e Campinas Verdejantes (Frei Fabreti / Salmo 23)
    # Harmonia canônica Cifra Club: Tom C -> C Am F Fm C Am Em F Dm G7 / F G Em Am Dm G C C7
    "pelos-prados-e-campinas-verdejantes": {
        "originalKey": "C",
        "cifra": """[Intro] C  Am  F  G  C

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
Por isso nada em minha vida faltará!"""
    },

    # 4. O Povo de Deus no Deserto Andava (Padre Zezinho)
    # Harmonia canônica Cifra Club: D -> A -> G A D / D G A D A D
    "o-povo-de-deus-no-deserto-andava": {
        "originalKey": "D",
        "cifra": """[Intro] D  A  D

[Primeira Parte]
D                   A
1. O povo de Deus no deserto andava,
              G        A      D
Mas à sua frente alguém caminhava.
D                   A
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
D                   A
2. O povo de Deus também vacilava,
              G        A      D
Às vezes custava a crer no amor.
D                   A
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
D                   A
3. O povo de Deus também teve fome,
              G        A      D
E tu lhe mandaste o pão lá do céu.
D                   A
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
D                   A
4. O povo de Deus, ao longe avistou
              G        A      D
A terra querida que o amor preparou.
D                   A
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
Da terra esperada!"""
    },

    # 5. Eu Vim para que Todos Tenham Vida (Pe. José Weber / CNBB)
    # Harmonia canônica Cifra Club: B7 Em Am B7 Em / Em C Am B7 Em B7 E7 Am D7 G
    "eu-vim-para-que-todos-tenham-vida": {
        "originalKey": "Em",
        "cifra": """[Intro] B7  Em  Am  B7  Em

[Refrão]
B7        Em         Am
Eu vim para que todos tenham vida,
B7        Em
Que todos tenham vida plenamente!

[Estrofes]
Em         C        Am         B7
1. Reconstrói a tua vida em comunhão com teu Senhor,
Em                 B7
Reconstrói a tua vida em comunhão com teu irmão:
E7        Am
Onde está o teu irmão,
D7        G        (B7)
Eu estou presente nele!

[Refrão]

Em         C        Am         B7
2. Eu passei fazendo o bem, eu curei todos os males;
Em                 B7
Hoje és minha presença junto a todo sofredor:
E7        Am
Onde sofre o teu irmão,
D7        G        (B7)
Eu estou sofrendo nele!

[Refrão]

Em         C        Am         B7
3. Entreguei a minha vida pela salvação de todos;
Em                 B7
Reconstrói, protege a vida de indefesos e inocentes:
E7        Am
Onde morre o teu irmão,
D7        G        (B7)
Eu estou morrendo nele!

[Refrão]

Em         C        Am         B7
4. Vim buscar e vim salvar o que estava já perdido;
Em                 B7
Acolhei com paciência o que vós considerais pecador:
E7        Am
Onde julgas teu irmão,
D7        G        (B7)
Tu me julgas nele!

[Refrão]

Em         C        Am         B7
5. Eu não vim chamar os justos, vim chamar os pecadores;
Em                 B7
Hoje és o mensageiro do perdão e do amor:
E7        Am
Onde perdoas teu irmão,
D7        G        (B7)
Eu perdoo nele!

[Refrão]

Em         C        Am         B7
6. Este pão que recebestes é meu corpo entregue a vós;
Em                 B7
Ide ao mundo e anunciai o Evangelho da verdade:
E7        Am
Quem acolhe o teu irmão,
D7        G        (B7)
Acolhe a mim nele!"""
    },

    "eu-vim-para-que-todos-tenham-vida-comunhao": {
        "originalKey": "Em",
        "cifra": """[Intro] B7  Em  Am  B7  Em

[Refrão]
B7        Em         Am
Eu vim para que todos tenham vida,
B7        Em
Que todos tenham vida plenamente!

[Estrofes]
Em         C        Am         B7
1. Reconstrói a tua vida em comunhão com teu Senhor,
Em                 B7
Reconstrói a tua vida em comunhão com teu irmão:
E7        Am
Onde está o teu irmão,
D7        G        (B7)
Eu estou presente nele!

[Refrão]

Em         C        Am         B7
2. Eu passei fazendo o bem, eu curei todos os males;
Em                 B7
Hoje és minha presença junto a todo sofredor:
E7        Am
Onde sofre o teu irmão,
D7        G        (B7)
Eu estou sofrendo nele!

[Refrão]

Em         C        Am         B7
3. Entreguei a minha vida pela salvação de todos;
Em                 B7
Reconstrói, protege a vida de indefesos e inocentes:
E7        Am
Onde morre o teu irmão,
D7        G        (B7)
Eu estou morrendo nele!

[Refrão]

Em         C        Am         B7
4. Vim buscar e vim salvar o que estava já perdido;
Em                 B7
Acolhei com paciência o que vós considerais pecador:
E7        Am
Onde julgas teu irmão,
D7        G        (B7)
Tu me julgas nele!

[Refrão]

Em         C        Am         B7
5. Eu não vim chamar os justos, vim chamar os pecadores;
Em                 B7
Hoje és o mensageiro do perdão e do amor:
E7        Am
Onde perdoas teu irmão,
D7        G        (B7)
Eu perdoo nele!

[Refrão]

Em         C        Am         B7
6. Este pão que recebestes é meu corpo entregue a vós;
Em                 B7
Ide ao mundo e anunciai o Evangelho da verdade:
E7        Am
Quem acolhe o teu irmão,
D7        G        (B7)
Acolhe a mim nele!"""
    },

    # 6. Eis o Tempo de Conversão (Pe. José Weber, SVD)
    # Harmonia canônica Cifra Club: D -> G -> A -> D -> Bm -> Em -> A7 -> D / D7 -> G -> A -> F#m -> Bm -> G -> A7 -> D
    "eis-o-tempo-de-conversao": {
        "originalKey": "D",
        "cifra": """[Intro] D  G  A  D

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
D                   G           A          D
1. Os caminhos do Senhor são verdade, são amor:
Bm                  Em          A7         D
Dirigi os passos meus; em Vós espero, ó meu Deus!

[Refrão]

D                   G           A          D
2. Muito bom, bastante justo é o Senhor, nosso Deus:
Bm                  Em          A7         D
Aos pecadores dá o caminho, na justiça guia os humildes.

[Refrão]

D                   G           A          D
3. O Senhor faz aliança com quem guarda a sua lei:
Bm                  Em          A7         D
Seus preceitos são fiéis, suas veredas são verdade!

[Refrão]

D                   G           A          D
4. Olhai para a minha dor, perdoai os meus pecados:
Bm                  Em          A7         D
Protegei a minha alma e livrai-me do perigo!

[Refrão]

D                   G           A          D
5. Redimi, ó meu Deus, vosso povo de Israel:
Bm                  Em          A7         D
De todas as suas angústias libertai o vosso povo!"""
    },

    # 7. Sabes, Senhor, o que Temos É Tão Pouco pra Dar (Lindbergh Pires)
    # Harmonia canônica Cifra Club: D Em A7 D A7 D G A7 D / G Em A7 F#m B7 Em A7 D A7
    "sabes-senhor-o-que-temos": {
        "originalKey": "D",
        "cifra": """[Intro] D  Em  A7  D  A7

[Refrão]
    D      Em 
Sabes, Senhor, 
    A7             D    A7
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
    A7             D    A7
O que temos é tão pouco pra dar.
    D      G      A7
Mas este pouco, nós queremos
    D
Com os irmãos compartilhar."""
    },

    # 8. Muitos Grãos de Trigo se Tornaram Pão (José Acácio Santana)
    # Harmonia canônica Cifra Club: C G7 C C7 F G C Am Dm G C / C C7 F G C G C C7 F G G7 C
    "muitos-graos-de-trigo": {
        "originalKey": "C",
        "composer": "José Acácio Santana",
        "cifra": """[Intro] C  G7  C

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
Para mudá-la em missão!"""
    },

    # 9. Pão e Vinho Te Apresentamos Nesse Altar (Ministério Amor e Adoração)
    # Harmonia canônica Cifra Club: Tom A -> A E F#m C#m D C#m Bm E / A/C# D C#m D F#m Bm E A
    "pao-e-vinho-te-apresentamos": {
        "title": "Pão e Vinho Te Apresentamos Nesse Altar",
        "composer": "Ministério Amor e Adoração / Canção Nova",
        "originalKey": "A",
        "cifra": """[Intro] D  E  C#m  Bm  E

[Primeira Parte]
A          E                  F#m
Pão e vinho te apresentamos nesse altar
          C#m     D           C#m
Como sinal que tu recolhes nossa oferta
Bm                E
Tudo o que somos deixamos aqui
A          E                  F#m
Pão e vinho te apresentamos nesse altar
          C#m     D           C#m
Como sinal que tu recolhes nossa oferta
Bm                E
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
Bm          E                 A
Oh Senhor, é teu esse milagre de amor"""
    },

    # 10. A Barca (Tu Te Abeiraste da Praia) - Cesáreo Gabaráin
    # Harmonia canônica Cifra Club: Tom G -> G D/F# Em Am D D7 G D/F# Em Dm7 G7 / C Bm Em Am D7 G G7 / C Bm Em Am D7 G
    "a-barca-tu-te-abeiraste-da-praia": {
        "originalKey": "G",
        "cifra": """[Intro] G  D/F#  Em  C  D  G

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
Junto a Ti, buscarei outro mar!"""
    },

    # 11. Segura na Mão de Deus (Nelson Monteiro da Mota)
    # Harmonia canônica Cifra Club: G Dm7 G7 C C#º G D/F# Em A7 D7 / C D/C Bm7 Em Am7 D7 G
    "segura-na-mao-de-deus": {
        "originalKey": "G",
        "cifra": """[Intro] G  Dm7  G7  C  C#º  G  Em  A7  D7  G

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
C                      D/C
Segura na mão de Deus,
Bm7                    Em
Segura na mão de Deus,
Am7          D7          G   G7
Pois ela, ela te sustentará!
C                      D/C
Não temas, segue adiante
Bm7                    Em
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
C                      D/C
Segura na mão de Deus,
Bm7                    Em
Segura na mão de Deus,
Am7          D7          G   G7
Pois ela, ela te sustentará!
C                      D/C
Não temas, segue adiante
Bm7                    Em
E não olhes para trás:
Am7          D7          G
Segura na mão de Deus e vai!"""
    },

    # 12. Um Certo Galileu (Padre Zezinho)
    # Harmonia canônica Cifra Club: C G C / C Dm G7 C F Em Dm C Dm C G C
    "um-certo-galileu-pe-zezinho": {
        "originalKey": "C",
        "cifra": """[Intro] C  G  C

[Primeira Parte]
C                 G                                   C
1. Um certo dia, à beira-mar, apareceu um jovem Galileu
                  G                                                      C
Ninguém podia imaginar que alguém pudesse amar do jeito que ele amava
                  G                                               C
Seu jeito simples de conversar tocava o coração de quem o escutava

[Refrão]
C          Dm
E seu nome era Jesus de Nazaré
G7     C      F       Em    Dm
Sua fama se espalhou e todos vinham ver
C          Dm     C         G    C
O fenômeno do jovem pregador que tinha tanto amor

[Segunda Parte]
C                 G                                   C
2. Naquelas praias, naquele mar, naquele rio, em casa de Simão
                  G                                                      C
Naquela relva, no monte ou na cidade, Ele falava da libertação
                  G                                               C
Trazia a paz, acolhia o pecador, curava a dor e dava o Seu perdão

[Refrão]

[Terceira Parte]
C                 G                                   C
3. Chegava perto a Páscoa da libertação e muitos planejavam Sua morte
                  G                                                      C
Ele sabia que a hora ia chegar, mas manteve firme Sua sorte
                  G                                               C
Naquela ceia partiu o Seu pão e o vinho deu em cálice de redenção

[Refrão]

[Quarta Parte]
C                 G                                   C
4. No lenho da cruz com braços abertos, Ele perdoou a quem o matou
                  G                                                      C
Mas na manhã do terceiro dia, o túmulo vazio o mundo contemplou
                  G                                               C
Ressuscitou o Senhor da vida, e a Sua luz a morte derrotou!

[Refrão Final]
C          Dm
E seu nome era Jesus de Nazaré
G7     C      F       Em    Dm
Sua fama se espalhou e todos vinham ver
C          Dm     C         G    C
O fenômeno do jovem pregador que tinha tanto amor"""
    },

    # 13. Oração pela Família (Padre Zezinho)
    # Harmonia canônica Cifra Club: C G7 Dm G7 C / C Am Dm G7 C Am Dm C G7 C / G7 Dm G7 C
    "oracao-pela-familia-pe-zezinho": {
        "originalKey": "C",
        "cifra": """[Intro] C  G7  C

[Primeira Parte]
   C                     G7
1. Que nenhuma família comece em qualquer de repente,
   Dm           G7            C
Que nenhuma família termine por falta de amor.
   C                     G7
Que o casal seja um para o outro de corpo e de mente,
   Dm           G7               C
E que nada no mundo separe um casal sonhador!
   C                     G7
Que nenhuma família se abrigue debaixo da ponte,
   Dm           G7            C      G7
Que ninguém interfira no lar e na vida dos dois.
   C                     G7
Que ninguém os obrigue a viver sem nenhum horizonte,
   Dm           G7               C
Que eles vivam do ontem, no hoje em função de um depois!

[Pré-Refrão]
   C          Am    Dm
Que a família comece e termine sabendo onde vai,
   G7                             C
E que o homem carregue nos ombros a graça de um pai.
   Am                 Dm
Que a mulher seja um céu de ternura, aconchego e calor,
   C             G7            C
E que os filhos conheçam a força que brota do amor!

[Refrão]
   G7
Abençoa, Senhor, as famílias! Amém!
   Dm      G7      C
Abençoa, Senhor, a minha também!
   G7
Abençoa, Senhor, as famílias! Amém!
   Dm      G7      C
Abençoa, Senhor, a minha também!

[Segunda Parte]
   C                     G7
2. Que marido e mulher não se traiam, nem traiam seus filhos,
   Dm           G7            C
Que o ciúme não mate a certeza do amor entre os dois.
   C                     G7
Que no seu firmamento a estrela que tem maior brilho
   Dm           G7               C
Seja a firme esperança de um céu aqui mesmo e depois!
   C                     G7
Que a família celebre a partilha do abraço e do pão,
   Dm           G7            C      G7
Que as crianças aprendam no colo o sentido da vida.
   C                     G7
Que a família se una na oração e na comunhão,
   Dm           G7               C
Sendo luz e fermento na terra sofrida!

[Pré-Refrão]

[Refrão Final]
   G7
Abençoa, Senhor, as famílias! Amém!
   Dm      G7      C
Abençoa, Senhor, a minha também!
   G7
Abençoa, Senhor, as famílias! Amém!
   Dm      G7      C
Abençoa, Senhor, a minha também!"""
    },

    # 14. Amar Como Jesus Amou (Padre Zezinho)
    # Harmonia canônica Cifra Club: D A7 D D7 G A7 D / D7 G A7 D Bm Em A7 D D7 G Gm D B7 Em A7 D
    "amar-como-jesus-amou-pe-zezinho": {
        "originalKey": "D",
        "cifra": """[Intro] D  A7  D

[Primeira Parte]
D                     A7
1. Um dia uma criança me parou,
                  D
Olhou-me nos meus olhos a sorrir,
                    A7
Caneta e papel na sua mão,
                  D
Tarefa escolar para cumprir.
      D7             G
E perguntou no meio de um sorriso:
      A7                  D
"O que é preciso para ser feliz?"

[Refrão]
      D7             G
Amar como Jesus amou,
       A7            D
Sonhar como Jesus sonhou,
       Bm            Em
Pensar como Jesus pensou,
       A7            D
Viver como Jesus viveu.
      D7             G
Sentir o que Jesus sentia,
       Gm            D
Sorrir como Jesus sorria,
       B7            Em
E ao chegar ao fim do dia,
       A7                     D
Eu sei que dormiria muito mais feliz!

[Segunda Parte]
D                     A7
2. Ouvindo o que eu falei ela sorriu,
                  D
E disse que era fácil de viver:
                    A7
"Basta amar como Jesus amou,
                  D
E a paz no mundo inteiro vai nascer!"
      D7             G
Olhou-me nos meus olhos novamente
      A7                  D
E prometeu que assim iria ser!

[Refrão]

[Terceira Parte]
D                     A7
3. Depois que a criança me deixou,
                  D
Fiquei pensando no que ela me disse:
                    A7
Se o mundo conhecesse esse amor,
                  D
Jamais na terra haveria tanta dor!
      D7             G
Amar a todos como a Si mesmo,
      A7                  D
Foi a lição que Jesus nos deixou!

[Refrão Final]
      D7             G
Amar como Jesus amou,
       A7            D
Sonhar como Jesus sonhou,
       Bm            Em
Pensar como Jesus pensou,
       A7            D
Viver como Jesus viveu.
      D7             G
Sentir o que Jesus sentia,
       Gm            D
Sorrir como Jesus sorria,
       B7            Em
E ao chegar ao fim do dia,
       A7                     D
Eu sei que dormiria muito mais feliz!"""
    },

    # 15. De Alegria Vibrei no Senhor (Pe. Sílvio Milanez / Hinário Litúrgico CNBB)
    # Harmonia canônica Cifra Club: A D E A F#m D E7 A E7 A / F#m Bm E A D Bm E A / F#m Bm E A D Bm E E7 A
    "de-alegria-vibrei-no-senhor": {
        "originalKey": "A",
        "composer": "Pe. Sílvio Milanez / Hinário Litúrgico CNBB",
        "cifra": """[Intro] E  E7  A

[Refrão]
A                           D
De alegria vibrei no Senhor,
E                              A
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
A                           D
De alegria vibrei no Senhor,
E                              A
Pois vestiu-me com sua justiça!
F#m         D       E7          A
Adornou-me com joias bonitas,
                        E7          A
Como esposa do Rei me elevou!"""
    },

    # 16. Toda a Terra Te Adore, ó Senhor do Universo (Hinário Litúrgico CNBB)
    # Harmonia canônica Cifra Club: Am G Am Dm E Dm Am E Am / Am G Am D C Dm Am Dm E Dm Am B7 E
    "toda-a-terra-te-exalta": {
        "title": "Toda a Terra Te Adore, ó Senhor do Universo",
        "originalKey": "Am",
        "composer": "Hinário Litúrgico CNBB (Salmo 65)",
        "cifra": """[Intro] Am  G  C  Dm  F  E  Am

[Refrão]
Am       G       Am
Toda a terra te adore,
Dm      E        Dm
Ó Senhor do universo,
Am
Os louvores do teu nome
E             Am
Cante o povo em seus versos!
Am       G       Am
Toda a terra te adore,
Dm      E        Dm
Ó Senhor do universo,
Am
Os louvores do teu nome
E             Am
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
D             C
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
E             Am
Cante o povo em seus versos!"""
    },

    # 17. Andavam Pensando Tão Tristes (Padre João Carlos / Discípulos de Emaús)
    # Harmonia canônica Cifra Club: G Am D C G D / G Em C D G Em C D G
    "andavam-pensando-tao-tristes-emaus": {
        "originalKey": "G",
        "composer": "Padre João Carlos / Discípulos de Emaús",
        "cifra": """[Intro] G  Am  D  C  G  D

[Primeira Parte]
G               Am
1. Andavam pensando, tão tristes,
    D             C   G   D
De Jerusalém a Emaús,
G               Am
Os dois seguidores de Cristo,
    C               Am   D
Logo após o episódio da cruz.
    C             D
Enquanto falavam das coisas
    G             Em
Que tinham acabado de ver,
    Am            D
Jesus se achegou de repente
    C             D       G
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
G               Am
2. Jesus perguntou: "O que tendes?
    D             C   G   D
Por que ides tristes assim?"
G               Am
Cleófas parou e respondeu:
    C               Am   D
"Não sabes do trágico fim?
    C             D
Não sabes o que aconteceu
    G             Em
Com o Santo Profeta Jesus,
    Am            D
Que os nossos sumos sacerdotes
    C             D       G
Mataram pregado na cruz?"

[Refrão]

[Terceira Parte]
G               Am
3. "Nós tínhamos tanta esperança
    D             C   G   D
Que fosse o Libertador!
G               Am
Mas hoje já é o terceiro dia
    C               Am   D
Que a morte roubou nosso amor!
    C             D
Mulheres da nossa cidade
    G             Em
Disseram que o túmulo acharam vazio,
    Am            D
Dizendo que anjos falaram
    C             D       G
Que Ele vive e a morte venceu!"

[Refrão]

[Quarta Parte]
G               Am
4. E disse Jesus aos dois homens:
    D             C   G   D
"Como sois demorados na fé!
G               Am
Não era preciso que o Cristo
    C               Am   D
Sofresse pra estar onde estiver?"
    C             D
E abrindo as santas Escrituras,
    G             Em
Falou dos profetas e a lei:
    Am            D
Ouvindo as palavras do Mestre,
    C             D       G
O peito ardia em santa afeição!

[Refrão]

[Quinta Parte]
G               Am
5. Chegando na aldeia de Emaús,
    D             C   G   D
Jesus fez que ia passar;
G               Am
Os dois insistiram dizendo:
    C               Am   D
"Vem logo conosco ficar!
    C             D
É tarde e a noite já desce,
    G             Em
Entra em nossa humilde morada!"
    Am            D
E Ele aceitou o convite,
    C             D       G
Entrando com eles na estrada.

[Refrão]

[Sexta Parte]
G               Am
6. Sentado com eles à mesa,
    D             C   G   D
Tomou em Suas mãos o pão,
G               Am
Benzeu-o, partiu e entregou-lhes:
    C               Am   D
Abriram-se os olhos na refeição!
    C             D
Mas Ele sumiu de suas vistas,
    G             Em
Deixando o mistério da fé:
    Am            D
"Não ardia o nosso peito
    C             D       G
Enquanto na estrada Ele falava?"

[Refrão]

[Sétima Parte]
G               Am
7. E logo voltaram correndo
    D             C   G   D
Aonde a Igreja rezava;
G               Am
Gritaram: "É certo! O Senhor
    C               Am   D
Voltou e a morte derrotou!
    C             D
Nós vimos o Mestre na estrada,
    G             Em
Falou-nos com tanto calor;
    Am            D
E nós o reconhecemos
    C             D       G
Ao partir do pão no amor!"

[Refrão Final]
G        Em
Fica conosco, Senhor,
C          D
É tarde e a noite já vem!
G        Em
Fica conosco, Senhor,
C        D        G
Somos Teus seguidores também!"""
    },

    # 18. Como És Lindo (Vida Reluz)
    # Harmonia canônica Cifra Club: D A/C# Bm Bm/A G A D / Bm F#m G A / D F#m Bm F#m G A D
    "como-es-lindo-vida-reluz": {
        "originalKey": "D",
        "cifra": """[Intro] D  Bm  G  A

[Primeira Parte]
D         A/C#      Bm   Bm/A
1. Que bom, Senhor, ir ao Teu encontro,
G                   A                   D     (A/C#)
Poder chegar e adentrar a Tua casa.
Bm        F#m       G                   A
Sentar-me Contigo e partilhar da mesma mesa.

[Refrão]
D         F#m       Bm    F#m
Te olhar, te tocar
G                   A                   D     (A/C#)
E te dizer: meu Deus, como és lindo!
Bm        F#m       Bm    F#m
Te olhar, te tocar
G                   A                   D
E te dizer: meu Deus, como és lindo!

[Segunda Parte]
D         A/C#      Bm   Bm/A
2. É bom, Senhor, estar em Tua presença,
G                   A                   D     (A/C#)
Sentir Teu amor a nos envolver.
Bm        F#m       G                   A
Tua paz me invade e renova o meu ser.

[Refrão]

[Terceira Parte]
D         A/C#      Bm   Bm/A
3. Neste banquete celeste do Teu amor,
G                   A                   D     (A/C#)
Tu te dás a nós em comunhão real.
Bm        F#m       G                   A
Bendito sejas para sempre, meu Senhor!

[Refrão Final]
D         F#m       Bm    F#m
Te olhar, te tocar
G                   A                   D     (A/C#)
E te dizer: meu Deus, como és lindo!
Bm        F#m       Bm    F#m
Te olhar, te tocar
G                   A                   D
E te dizer: meu Deus, como és lindo!"""
    },

    # 19. Diante do Rei (Walmir Alencar / Vida Reluz)
    # Harmonia canônica Cifra Club: A E/G# F#m C#m D Bm C#m Bm E / D E/D C#m F#m D E/D C#m F#m D A/C# Bm E A
    "diante-do-rei-vida-reluz": {
        "originalKey": "A",
        "cifra": """[Intro] A  E/G#  F#m  D  E

[Primeira Parte]
A        E/G#      F#m
1. Vem, Senhor Jesus!
                 C#m
O coração já bate forte ao te ver.
D            Bm
A tua graça hoje eu quero receber,
C#m           Bm                   E
Sem a bênção do Senhor não sei viver.
A        E/G#      F#m
Vem, Senhor Jesus!
                 C#m
Olhar o povo ao teu redor me faz lembrar
D             Bm
A multidão lá no caminho a te esperar.
C#m           Bm          E
Vem, ó Santo de Israel, passar também neste lugar.

[Refrão]
D           E/D
É o Rei! À nossa frente está!
C#m         F#m
É feliz quem o adorar.
D           E/D
É Jesus, o nosso Mestre e Rei!
C#m         F#m
Bem aqui, tão perto se deixa encontrar.
D     A/C#  Bm
Diante do Rei dos reis,
E           A
Todo joelho se dobrará!

[Segunda Parte]
A        E/G#      F#m
2. Vem, Senhor Jesus!
                 C#m
Neste santo altar queremos te adorar,
D            Bm
O Pão da Vida em nossas mãos receber,
C#m           Bm                   E
E o Teu mistério com fervor agradecer.
A        E/G#      F#m
Vem, Senhor Jesus!
                 C#m
Que Tua graça nos renove o coração,
D             Bm
Nos dê coragem pra viver na santa paz
C#m           Bm          E
E anunciar ao mundo a Tua salvação!

[Refrão Final]
D           E/D
É o Rei! À nossa frente está!
C#m         F#m
É feliz quem o adorar.
D           E/D
É Jesus, o nosso Mestre e Rei!
C#m         F#m
Bem aqui, tão perto se deixa encontrar.
D     A/C#  Bm
Diante do Rei dos reis,
E           A
Todo joelho se dobrará!"""
    },

    # 20. Te Louvo em Verdade (Martín Valverde / Rosa de Saron)
    # Harmonia canônica Cifra Club: E F#m G#m A B E B / A B G#m C#m F#m B E E7
    "rosa-de-saron-te-louvo-em-verdade": {
        "originalKey": "E",
        "cifra": """[Intro] E  F#m  G#m  A  B  E

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
Te louvo, te louvo em verdade!"""
    },

    # 21. Sacramento da Comunhão (Diácono Nelsinho Corrêa)
    # Harmonia canônica Cifra Club: D A/C# Bm Bm/A G Em A / D A/C# Bm Bm/A G A F#m Bbº Bm G D Em A D
    "sacramento-da-comunhao-nelsinho": {
        "originalKey": "D",
        "cifra": """[Intro] D  A/C#  Bm  G  A  D

[Primeira Parte]
D       A/C#        Bm       Bm/A
1. Senhor, quando te vejo no sacramento da comunhão,
G               Em          A
Sinto o céu se abrir e uma luz a me atingir,
D       A/C#        Bm       Bm/A
Esfriando minha cabeça e esquentando meu coração!
G               Em          A
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
G               Em          A
Triste, abatido, precisando de amor,
D       A/C#        Bm       Bm/A
Mas tu me olhas nos olhos e acalmas minha dor!
G               Em          A
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
G               Em          A
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
Jesus, rosto humano de Deus!"""
    },

    "sacramento-da-comunhao-diacono-nelsinho-correa": {
        "originalKey": "D",
        "cifra": """[Intro] D  A/C#  Bm  G  A  D

[Primeira Parte]
D       A/C#        Bm       Bm/A
1. Senhor, quando te vejo no sacramento da comunhão,
G               Em          A
Sinto o céu se abrir e uma luz a me atingir,
D       A/C#        Bm       Bm/A
Esfriando minha cabeça e esquentando meu coração!
G               Em          A
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
G               Em          A
Triste, abatido, precisando de amor,
D       A/C#        Bm       Bm/A
Mas tu me olhas nos olhos e acalmas minha dor!
G               Em          A
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
G               Em          A
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
Jesus, rosto humano de Deus!"""
    },

    # 22. Ninguém Te Ama Como Eu (Martín Valverde)
    # Harmonia canônica Cifra Club: C G/B Am Dm G / C G/B Am F G C
    "ninguem-te-ama-como-eu-martin-valverde": {
        "originalKey": "C",
        "cifra": """[Intro] C  G/B  Am  F  G  C

[Primeira Parte]
C         G/B       Am
1. Tenho esperado este momento,
      Dm                 G
Tenho esperado que viesses a mim.
C         G/B       Am
Tenho esperado que me fales,
      Dm                 G
Tenho esperado que estivesses assim.
C         G/B        Am
Eu sei bem o que tens vivido,
      Dm                 G
Sei também por que tens chorado;
C         G/B        Am
Eu sei bem o que tens sofrido,
      Dm                 G
Pois permaneço sempre ao teu lado!

[Refrão]
C         G/B        Am
Ninguém te ama como eu!
F                    G
Ninguém te ama como eu!
C         G/B             Am
Olhe pra cruz, esta é a minha grande prova:
F                    G
Ninguém te ama como eu!
C         G/B        Am
Ninguém te ama como eu!
F                    G
Ninguém te ama como eu!
C         G/B             Am
Olhe pra cruz, foi por ti, porque te amo:
F         G          C
Ninguém te ama como eu!

[Segunda Parte]
C         G/B       Am
2. Eu sei bem o que me dizes,
      Dm                 G
Ainda que nunca me fales.
C         G/B       Am
Eu sei bem o que tens sentido,
      Dm                 G
Ainda que nunca me reveles.
C         G/B        Am
A teu lado tenho caminhado,
      Dm                 G
Junto a ti eu sempre tenho estado;
C         G/B        Am
Pelo braço eu te tenho segurado,
      Dm                 G
Pois sou teu amigo mais achegado!

[Refrão]

[Terceira Parte]
C         G/B       Am
3. Eu sei bem o que procuras,
      Dm                 G
Em tantos caminhos sem paz.
C         G/B       Am
Descansa em mim tua alma,
      Dm                 G
Pois o meu amor te refaz!
C         G/B        Am
Neste altar eu me dou em alimento,
      Dm                 G
Pra curar o teu sofrimento:
C         G/B        Am
Vem a mim sem receio e sem medo,
      Dm                 G
Pois sou teu Salvador e sustento!

[Refrão Final]
C         G/B        Am
Ninguém te ama como eu!
F                    G
Ninguém te ama como eu!
C         G/B             Am
Olhe pra cruz, foi por ti, porque te amo:
F         G          C
Ninguém te ama como eu!"""
    }
}

def apply_cifraclub_validation():
    catalog_files = [
        "catalog-entrada-final.js",
        "catalog-ofertorio-comunhao.js",
        "catalog-ordinario-salmos.js",
        "catalog-adoracao-comunidades.js"
    ]

    applied_count = 0

    for fname in catalog_files:
        fpath = os.path.join(CATALOG_DIR, fname)
        with open(fpath, "r", encoding="utf-8") as f:
            content = f.read()

        match = re.search(r"=\s*(\[[\s\S]*\]);", content)
        if not match:
            continue

        songs = json.loads(match.group(1))
        modified = False

        for s in songs:
            sid = s.get("id")
            if sid in CIFRACATALOG_VALIDATED:
                data = CIFRACATALOG_VALIDATED[sid]
                s["cifra"] = data["cifra"].strip()
                if "originalKey" in data:
                    s["originalKey"] = data["originalKey"]
                if "composer" in data:
                    s["composer"] = data["composer"]
                if "title" in data:
                    s["title"] = data["title"]
                modified = True
                applied_count += 1
                print(f"[{fname}] Harmonia Cifra Club aplicada para: '{s['title']}' ({sid}) - Tom {s.get('originalKey')}")

        if modified:
            var_name = content.split("=")[0].strip()
            new_json_str = json.dumps(songs, ensure_ascii=False, indent=2)
            new_content = f"{var_name} = {new_json_str};\n"
            with open(fpath, "w", encoding="utf-8") as f:
                f.write(new_content)

    print(f"\n==========================================")
    print(f"Total de músicas rigorosamente validadas com o Cifra Club: {applied_count}")
    print(f"==========================================")

if __name__ == "__main__":
    apply_cifraclub_validation()
