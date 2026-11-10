# -*- coding: utf-8 -*-
"""
Parte 8 da Expansão Massiva do Santa Cifra (58 Cânticos Completos):
- Padre Reginaldo Manzotti (5 músicas)
- Padre Antônio Maria (5 músicas)
- Padre Joãozinho, scj (5 músicas)
- Irmã Miria T. Kolling (6 músicas)
- Zé Vicente (6 músicas)
- Ziza Fernandes (6 músicas)
- Banda Dominus (6 músicas)
- Eugênio Jorge (4 músicas)
- Diácono Nelsinho Corrêa / Canção Nova (4 músicas)
- Fraternidade Toca de Assis, Fraternidade São João Paulo II, Aliança de Misericórdia, Comunidade Recado e Irmã Ana Paula (11 músicas)
"""

from part1_padre_zezinho_marcelo import make_song

PART8_SONGS = [
    # =========================================================================
    # 1. PADRE REGINALDO MANZOTTI (5 músicas)
    # =========================================================================
    make_song(
        "pe-reginaldo-manzotti-pelo-nome",
        "Pelo Nome (As Muralhas Vão Cair)",
        "Padre Reginaldo Manzotti",
        "Louvor",
        "Qualquer",
        "G", 118, "4/4", "Pop Rock / Marcha de Louvor", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Cântico de Louvor, Clamor e Envio em Encontros e Missas de Cura", 88,
        "Estudo 79 CNBB (Cânticos de Encontros e Celebrações Temáticas)", "Js 6, 1-20; Is 43, 1",
        "Hino de fé inspirado na queda das muralhas de Jericó e no chamado pessoal de Deus pelo nome (Is 43,1).",
        """[Intro] G  D  Em  C  G  D

[Primeira Parte]
G                             D
Deus te conhece e te chama pelo nome
Em                          C
Sabe as lutas que tu levas no coração
G                             D
Mesmo quando a caminhada te consome
Em             C            D
Ele estende sobre ti a Sua mão

[Refrão]
             G                         D
As muralhas vão cair, as muralhas vão cair
         Em                       C
Pelo poder do Nome Santo de Jesus!
             G                         D
As muralhas vão cair, o Senhor vai agir
         Em          C        D       G
E a vitória brilhará na tua vida em Sua luz!

[Segunda Parte]
G                                 D
Dê uma volta ao redor dessa muralha
Em                              C
Ergue a voz em oração e em louvor
G                                  D
Pois o Senhor é quem vence esta batalha
Em               C            D
Não há cadeias que resistam ao Seu amor

[Refrão]
             G                         D
As muralhas vão cair, as muralhas vão cair
         Em                       C
Pelo poder do Nome Santo de Jesus!
             G                         D
As muralhas vão cair, o Senhor vai agir
         Em          C        D       G
E a vitória brilhará na tua vida em Sua luz!

[Final]
     C               D            G   Em
Pelo nome o Senhor hoje te chamou!
     C               D            G
Toda muralha pelo sangue tombou!"""
    ),

    make_song(
        "pe-reginaldo-manzotti-a-tempestade-vai-passar",
        "A Tempestade Vai Passar",
        "Padre Reginaldo Manzotti",
        "Ação de Graças",
        "Qualquer",
        "D", 74, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Ação de Graças, Consolação e Esperança Cristã", 90,
        "IGMR nº 88 (Ação de Graças)", "Mc 4, 35-41; Sl 46",
        "Canção baseada na tempestade acalmada no Evangelho de São Marcos, ideal para pós-comunhão e momentos de oração.",
        """[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D                     A/C#
Por que tens medo se Eu estou no barco?
Bm                    G
Por que duvidas do poder da Minha mão?
D                     A/C#
Se o vento sopra forte e o mar é bravo
Em                    G           A7
Confia em Mim e aquieta o teu coração

[Refrão]
D                    A/C#
A tempestade vai passar, tudo vai se acalmar
Bm                   G
O sol de novo vai brilhar sobre o teu viver
D                    A/C#
Segura firme em Minha mão, escuta a Minha voz
Em         A7               D
Eu sou teu Deus e cuido de você!

[Segunda Parte]
D                      A/C#
Nenhuma noite dura para sempre
Bm                     G
A madrugada traz a aurora do Senhor
D                      A/C#
Entrega o leme da tua vida inteiramente
Em                     G            A7
Descansa em paz no colo do teu Salvador

[Refrão]
D                    A/C#
A tempestade vai passar, tudo vai se acalmar
Bm                   G
O sol de novo vai brilhar sobre o teu viver
D                    A/C#
Segura firme em Minha mão, escuta a Minha voz
Em         A7               D
Eu sou teu Deus e cuido de você!

[Final]
G          A7               Bm   G
Eu sou teu Deus e cuido de você!
Em         A7               D
A tempestade já começa a passar!"""
    ),

    make_song(
        "pe-reginaldo-manzotti-o-amigo-mais-certo",
        "O Amigo Mais Certo",
        "Padre Reginaldo Manzotti",
        "Ação de Graças",
        "Qualquer",
        "C", 72, "4/4", "Balada / Dedilhado", "P  I  M  A  M  I",
        True, True, 5,
        "Meditação Pós-Comunhão e Amizade com Cristo", 90,
        "Estudo 79 CNBB", "Jo 15, 13-15; Eclo 6, 14",
        "Cântico que exalta a amizade fiel de Cristo nos momentos de provação e comunhão.",
        """[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C                      G/B
Nas horas incertas da minha caminhada
Am                     Em
Quando a solidão tenta ferir meu coração
F                      C/E
Olho para o alto e vejo a Tua face amada
Dm                     G7
Estendendo para mim a Tua santa mão

[Refrão]
   C                        G/B
Tu és o amigo mais certo nas horas incertas
Am                          Em
A luz que ilumina as minhas trevas mais desertas
F              G7         C        Am
Jesus, meu Senhor, meu abrigo fiel
Dm             G7         C
Contigo na terra já vivo o céu!

[Segunda Parte]
C                       G/B
Não me chamaste servo, mas sim Teu amigo
Am                      Em
Deste a Tua vida sobre a cruz pra me salvar
F                       C/E
Por isso nada temo se caminhas cá comigo
Dm                      G7
Contigo para sempre eu quero caminhar

[Refrão]
   C                        G/B
Tu és o amigo mais certo nas horas incertas
Am                          Em
A luz que ilumina as minhas trevas mais desertas
F              G7         C        Am
Jesus, meu Senhor, meu abrigo fiel
Dm             G7         C
Contigo na terra já vivo o céu!

[Final]
F              G7         C   Am
Jesus, meu Senhor, meu amigo fiel
Dm             G7         C
Contigo na terra já vivo o céu!"""
    ),

    make_song(
        "pe-reginaldo-manzotti-o-grito-de-misericordia",
        "O Grito de Misericórdia",
        "Padre Reginaldo Manzotti",
        "Ato Penitencial",
        "Quaresma",
        "Am", 70, "4/4", "Balada Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Súplica de Misericórdia, Adoração e Celebrações Penitenciais", 92,
        "IGMR nº 51; Festa da Divina Misericórdia", "Sl 50 (51); Lc 18, 13",
        "Clamor profundo à Divina Misericórdia que brota do lado aberto de Cristo na Cruz.",
        """[Intro] Am  Dm  G  C  E7  Am

[Primeira Parte]
Am                           Dm
Do fundo do abismo da minha fraqueza
G                            C       E7
Elevo a Ti, Senhor, o meu clamor sincero
Am                           Dm
Lava minha alma, tira toda a tristeza
F                            E7
Pois só no Teu perdão eu vivo e espero

[Refrão]
       Am                     Dm
Misericórdia, Senhor, misericórdia!
        G                      C    E7
Ouve o grito que brota do meu coração!
       Am                     Dm
Pelo Sangue e pela Água do Teu lado aberto
    E7                   Am
Derrama sobre nós a salvação!

[Segunda Parte]
Am                           Dm
Como o filho pródigo retorno à Tua casa
G                            C       E7
Cansado do pecado e sedento de amor
Am                           Dm
O Teu abraço santo me aquece e me abrasa
F                            E7
Restaura a minha vida, ó meu Redentor

[Refrão]
       Am                     Dm
Misericórdia, Senhor, misericórdia!
        G                      C    E7
Ouve o grito que brota do meu coração!
       Am                     Dm
Pelo Sangue e pela Água do Teu lado aberto
    E7                   Am
Derrama sobre nós a salvação!

[Final]
       Dm       E7        Am   F
Jesus, eu confio em Vós!
       Dm       E7        Am
Jesus, eu confio em Vós!"""
    ),

    make_song(
        "pe-reginaldo-manzotti-oracao-pela-paz",
        "Oração pela Paz",
        "Padre Reginaldo Manzotti",
        "Comunhão",
        "Tempo Comum",
        "E", 78, "4/4", "Balada / Canção da Paz", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão, Envio ou Oração pela Paz", 92,
        "Estudo 79 CNBB", "Jo 14, 27; Mt 5, 9",
        "Prece inspirada na espiritualidade franciscana e no dom da paz de Cristo ressuscitado.",
        """[Intro] E  B7  C#m  A  B7  E

[Primeira Parte]
E                        B/D#
Senhor, faz de mim instrumento de Tua paz
C#m                      G#m
Onde houver discórdia, que eu leve a união
A                        E/G#
Onde houver ofensa, o perdão que refaz
F#m                      B7
Onde houver a treva, a Tua clara visão

[Refrão]
E                     B7
Dai-nos a paz, Senhor, a Tua santa paz!
C#m                   A
Paz que o mundo inteiro não pode nos dar
E                     B7            C#m
Vem curar as famílias, vem unir as nações
A            B7           E
E reinar para sempre nos corações!

[Segunda Parte]
E                         B/D#
Que eu não busque tanto ser consolado
C#m                       G#m
Mas saiba consolar a quem sofre na dor
A                         E/G#
Pois é dando a vida e perdoando o pecado
F#m                       B7
Que nascemos de novo para o Teu amor

[Refrão]
E                     B7
Dai-nos a paz, Senhor, a Tua santa paz!
C#m                   A
Paz que o mundo inteiro não pode nos dar
E                     B7            C#m
Vem curar as famílias, vem unir as nações
A            B7           E
E reinar para sempre nos corações!

[Final]
A            B7           C#m  A
E reinar para sempre nos corações!
F#m          B7           E
Senhor, dai-nos a Tua paz!"""
    ),

    # =========================================================================
    # 2. PADRE ANTÔNIO MARIA (5 músicas)
    # =========================================================================
    make_song(
        "pe-antonio-maria-hino-do-terco-dos-homens",
        "Hino do Terço dos Homens",
        "Padre Antônio Maria",
        "Canto Mariano",
        "Festas Marianas",
        "G", 104, "4/4", "Marcha / Guarânia", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Mariano, Encontros do Terço dos Homens e Final da Missa", 94,
        "Diretório sobre Piedade Popular e Liturgia nº 197", "Lc 1, 28.42; At 1, 14",
        "Hino oficial do movimento do Terço dos Homens no Brasil, celebrando a oração em família com a Mãe Aparecida.",
        """[Intro] G  D7  C  G  D7  G

[Primeira Parte]
G                             D7
Homens de fé, de joelhos no chão
C                             G
De terço nos dedos e amor no coração
G                             D7
Viemos rezar com a Mãe do Senhor
C                  D7         G
Pedindo às famílias a paz e o amor

[Refrão]
   G                     D7
Terço dos Homens, escola de fé!
   C                     G
Com Nossa Senhora ficamos de pé!
   C                     G          Em
Rezando em família, servindo ao Senhor
   Am        D7          G
Levando ao mundo a paz e o amor!

[Segunda Parte]
G                             D7
Em cada mistério da vida de Cristo
C                             G
Maria nos mostra o caminho bendito
G                             D7
Homens que rezam constroem a paz
C                  D7         G
E levam a bênção que o Evangelho traz

[Refrão]
   G                     D7
Terço dos Homens, escola de fé!
   C                     G
Com Nossa Senhora ficamos de pé!
   C                     G          Em
Rezando em família, servindo ao Senhor
   Am        D7          G
Levando ao mundo a paz e o amor!

[Final]
   C         D7          G   Em
Ave Maria, Rainha da Paz!
   Am        D7          G
Abençoa os homens e nossos casais!"""
    ),

    make_song(
        "pe-antonio-maria-e-bom-ter-familia",
        "É Bom Ter Família",
        "Padre Antônio Maria",
        "Ação de Graças",
        "Qualquer",
        "D", 82, "4/4", "Balada / Canção Familiar", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Ação de Graças, Semana da Família e Bênção Matrimonial", 93,
        "Estudo 79 CNBB / Pastoral Familiar", "Sl 127 (128); Cl 3, 12-17",
        "Clássico da Pastoral Familiar imortalizado pelo Padre Antônio Maria sobre a graça da família cristã.",
        """[Intro] D  Bm  Em  A7  D  A7

[Primeira Parte]
D                       Bm
É no campo da vida que se esconde um tesouro
Em                      A7
Vale mais que a prata, vale mais que o ouro
D                       Bm
É presente de Deus, é o céu já aqui
Em          A7          D      D7
O amor mora ali e se chama família!

[Refrão]
G                       D
Como é bom ter a minha família, como é bom!
Em                      A7                 D   D7
Vale a pena vender tudo mais para poder comprar
G                       D                  Bm
Esse campo que esconde um tesouro, que é puro dom
Em          A7          D
É meu ouro, meu céu, meu lugar!

[Segunda Parte]
D                       Bm
Até mesmo o céu desejou ser família
Em                      A7
Para que a família desejasse ser céu
D                       Bm
Nela se faz a paz no ouvir, no falar
Em          A7          D      D7
E na arte de amar o amargo vira mel!

[Refrão]
G                       D
Como é bom ter a minha família, como é bom!
Em                      A7                 D   D7
Vale a pena vender tudo mais para poder comprar
G                       D                  Bm
Esse campo que esconde um tesouro, que é puro dom
Em          A7          D
É meu ouro, meu céu, meu lugar!

[Final]
Em          A7          Bm     G
Na família a gente aprende a amar
Em          A7          D
Abençoa, Senhor, nosso lar!"""
    ),

    make_song(
        "pe-antonio-maria-mae-peregrina",
        "Mãe Peregrina",
        "Padre Antônio Maria",
        "Canto Mariano",
        "Festas Marianas",
        "C", 76, "3/4", "Valsa Mariana", "↓  ↑ ↓  ↑ ↓",
        True, True, 5,
        "Canto Mariano, Visita da Mãe Peregrina e Encerramento", 94,
        "Diretório sobre Piedade Popular e Liturgia nº 186", "Lc 1, 39-45",
        "Cântico dedicado à Mãe e Rainha Três Vezes Admirável de Schoenstatt, que visita os lares como Maria visitou Isabel.",
        """[Intro] C  G7  C  F  G7  C

[Primeira Parte]
C                          G7
Mãe Admirável, ó Mãe Peregrina
Dm            G7           C
A Tua visita aquece e ilumina
C7                         F
Pois trazes contigo Teu Filho Jesus
    C         Am     Dm   G7   C
Que é vida, caminho, verdade e luz!

[Refrão]
   G7                        C
Por brisa suave entraste em meu lar
   G7                        C     C7
Vem tudo, Senhora, aqui transformar
   F                         C      Am
Abençoa a família, ensina a rezar
   Dm        G7              C
Mãe Peregrina, vem conosco ficar!

[Segunda Parte]
C                          G7
Saindo apressada pelas montanhas vais
Dm            G7           C
Levando às famílias a graça e a paz
C7                         F
Transforma as casas em santuários de amor
    C         Am     Dm   G7   C
Fiéis servidores de Cristo Senhor!

[Refrão]
   G7                        C
Por brisa suave entraste em meu lar
   G7                        C     C7
Vem tudo, Senhora, aqui transformar
   F                         C      Am
Abençoa a família, ensina a rezar
   Dm        G7              C
Mãe Peregrina, vem conosco ficar!

[Final]
   F         G7              C   Am
Mãe Três Vezes Admirável de amor
   Dm        G7              C
Leva nossa família a Jesus, o Senhor!"""
    ),

    make_song(
        "pe-antonio-maria-pegadas-na-areia",
        "Pegadas na Areia",
        "Padre Antônio Maria",
        "Ação de Graças",
        "Qualquer",
        "A", 72, "4/4", "Balada / Dedilhado", "P  I  M  A  M  I",
        True, True, 5,
        "Meditação Pós-Comunhão e Confiança na Providência Divina", 89,
        "Estudo 79 CNBB", "Is 46, 4; Dt 1, 31",
        "Cântico devocional clássico sobre a presença de Cristo que nos carrega nos braços nas horas de maior dor.",
        """[Intro] A  E/G#  F#m  D  E7  A

[Primeira Parte]
A                         E/G#
Sonhei que caminhava pela praia com o Senhor
F#m                       C#m
E no céu passavam cenas da minha vida inteira
D                         A/C#
Percebi que na areia do caminho em que passei
Bm                        E7
Havia dois pares de pegadas na beira

[Refrão]
   A                            E/G#
Meu filho, Eu te amo e jamais te deixei só
   F#m                          C#m
Nas horas de angústia, de tristeza e de dor
   D                            A/C#       F#m
Quando viste na areia um só par de pegadas
   Bm             E7            A
Era Eu te carregando nos braços de amor!

[Segunda Parte]
A                         E/G#
Perguntei então a Cristo: "Meu Senhor, por que razão
F#m                       C#m
Nos momentos mais difíceis só vi um rastro no chão?"
D                         A/C#
E Jesus olhou pra mim com ternura sem igual
Bm                        E7
Respondendo com doçura e amor celestial:

[Refrão]
   A                            E/G#
Meu filho, Eu te amo e jamais te deixei só
   F#m                          C#m
Nas horas de angústia, de tristeza e de dor
   D                            A/C#       F#m
Quando viste na areia um só par de pegadas
   Bm             E7            A
Era Eu te carregando nos braços de amor!

[Final]
   D              E7            F#m  D
Quando viste na areia um só par de pegadas
   Bm             E7            A
Era Eu te carregando nos braços de amor!"""
    ),

    make_song(
        "pe-antonio-maria-cura-senhor-onde-doi",
        "Cura, Senhor, Onde Dói",
        "Padre Antônio Maria",
        "Ação de Graças",
        "Qualquer",
        "E", 68, "4/4", "Balada de Oração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Oração Pós-Comunhão, Adoração ao Santíssimo e Missas pelos Enfermos", 92,
        "Ritual da Unção dos Enfermos / Adoração Eucarística", "Is 53, 4-5; Lc 4, 40",
        "Cântico profundamente orante para momentos de súplica, cura interior e ação de graças após a Comunhão.",
        """[Intro] E  B/D#  C#m  A  B7  E

[Primeira Parte]
E                        B/D#
Vamos, Jesus, passear na minha vida
C#m                      G#m
Quero voltar aos lugares em que fiquei só
A                        E/G#
Quero voltar lá contigo, vendo que estavas comigo
F#m                      B7
Quero sentir Teu amor a meembalar

[Refrão]
E                     B/D#
Cura, Senhor, onde dói!
C#m                   G#m
Cura, Senhor, bem aqui!
A                     E/G#         C#m
Cura, Senhor, onde eu não posso ir
      F#m        B7            E
Quando a lembrança me faz refletir!

[Segunda Parte]
E                        B/D#
Quando o silêncio da noite aperta o peito
C#m                      G#m
E as feridas antigas começam a sangrar
A                        E/G#
Toca com Tuas chagas santas meu coração imperfeito
F#m                      B7
Só Tua graça divina me pode curar

[Refrão]
E                     B/D#
Cura, Senhor, onde dói!
C#m                   G#m
Cura, Senhor, bem aqui!
A                     E/G#         C#m
Cura, Senhor, onde eu não posso ir
      F#m        B7            E
Quando a lembrança me faz refletir!

[Final]
A         B7          C#m  A
Cura, Senhor, onde dói!
F#m       B7          E
Jesus, eu confio em Ti!"""
    ),

    # =========================================================================
    # 3. PADRE JOÃOZINHO, scj (5 músicas)
    # =========================================================================
    make_song(
        "pe-joaozinho-conheco-um-coracao",
        "Conheço um Coração",
        "Padre Joãozinho, scj",
        "Comunhão",
        "Tempo Comum",
        "C", 76, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão e Solenidade do Sagrado Coração de Jesus", 98,
        "Missal Romano (Solenidade do Sagrado Coração de Jesus); Hinário CNBB", "Mt 11, 28-30; Jo 19, 34",
        "Um dos cânticos de Comunhão mais cantados e amados da Igreja no Brasil, de profunda teologia bíblica e eucarística.",
        """[Intro] C  Em  F  G7  C  G7

[Primeira Parte]
   C                  Em
1. Conheço um coração tão manso, humilde e sereno
   F                  G7
Que louva o Pai por revelar Seu nome aos pequenos
   F                  G7         C          Am
Que tem o dom de amar, que sabe perdoar
   Dm                 F          G7
E deu a vida para nos salvar!

[Refrão]
   F      G7          C          Am
Jesus, manda Teu Espírito
   Dm         G7               C     C7
Para transformar meu coração!
   F      G7          C          Am
Jesus, manda Teu Espírito
   Dm         G7               C
Para transformar meu coração!

[Segunda Parte]
   C                  Em
2. Às vezes no meu peito bate um coração de pedra
   F                  G7
Magoado, frio, sem vida, aqui dentro ele me aperta
   F                  G7         C            Am
Não quer saber de amar, nem sabe perdoar
   Dm                 F          G7
Quer tudo e não sabe partilhar!

   C                  Em
3. Lava, purifica e restaura-me de novo
   F                  G7
Serás o nosso Deus e nós seremos o Teu povo
   F                  G7         C           Am
Derrama sobre nós a água do amor
   Dm                 F          G7
O Espírito de Deus, nosso Senhor!

[Refrão]
   F      G7          C          Am
Jesus, manda Teu Espírito
   Dm         G7               C     C7
Para transformar meu coração!
   F      G7          C          Am
Jesus, manda Teu Espírito
   Dm         G7               C
Para transformar meu coração!

[Final]
   Dm         G7               C   Am
Para transformar meu coração!
   Dm         G7               C
Manda Teu Espírito, Senhor!"""
    ),

    make_song(
        "pe-joaozinho-mestre-bom-e-estarmos-aqui",
        "Mestre (Bom É Estarmos Aqui)",
        "Padre Joãozinho, scj",
        "Comunhão",
        "Quaresma",
        "D", 74, "4/4", "Balada / Dedilhado", "P  I  M  A  M  I",
        True, True, 5,
        "Comunhão (2º Domingo da Quaresma e Festa da Transfiguração do Senhor)", 97,
        "Lecionário Dominical (2º Dom. da Quaresma / 6 de Agosto)", "Mt 17, 1-9; Mc 9, 2-10; Lc 9, 28-36",
        "Cântico bíblico-litúrgico exemplar sobre a Transfiguração no Monte Tabor e a missão de descer do monte para servir.",
        """[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D                       A/C#
Mestre, bom é estarmos aqui
Bm                      F#m
Reunidos bem perto de Ti
G                       D/F#
No silêncio e na paz deste monte
Em                      A7
Contemplando a Tua glória sem fim!

[Refrão]
   D              A/C#           Bm      F#m
Mas precisamos descer da montanha
   G              D/F#           Em      A7
Voltar para a vida, servir aos irmãos
   D              A/C#           Bm      G
Levando no rosto a luz do Tabor
   D              A7             D
E no coração a Tua missão!

[Segunda Parte]
D                       A/C#
Mestre, ouvimos a voz de Deus Pai:
Bm                      F#m
"Este é o Meu Filho amado, escutai!"
G                       D/F#
Tua Palavra transforma o viver
Em                      A7
Dá-nos coragem pra nunca temer!

[Refrão]
   D              A/C#           Bm      F#m
Mas precisamos descer da montanha
   G              D/F#           Em      A7
Voltar para a vida, servir aos irmãos
   D              A/C#           Bm      G
Levando no rosto a luz do Tabor
   D              A7             D
E no coração a Tua missão!

[Final]
   G              A7             Bm   G
Levando no rosto a luz do Tabor
   D              A7             D
E no coração a Tua missão!"""
    ),

    make_song(
        "pe-joaozinho-gloria-a-deus-nos-altos-ceus",
        "Glória a Deus nos Altos Céus",
        "Padre Joãozinho, scj",
        "Glória",
        "Tempo Comum",
        "G", 112, "4/4", "Marcha Festiva", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino de Louvor (Glória) Fiel ao Texto Litúrgico", 98,
        "IGMR nº 53; Missal Romano", "Lc 2, 14; Ap 15, 3-4",
        "Versão musical do Hino de Louvor (Glória) fiel à estrutura trinitária do Missal Romano.",
        """[Intro] G  C  D7  G

[Refrão]
G                       C
Glória a Deus nos altos céus!
D7                      G
Paz na terra aos Seus amados!
Em                      Am
A Vós louvam, Rei celeste,
D7                      G
Os que foram libertados!

[Primeira Parte]
G                             C
1. Deus e Pai, nós Vos louvamos,
D7                            G
Adoramos, bendizemos,
Em                            Am
Damos glória ao Vosso nome,
D7                            G
Vossos dons agradecemos!

[Refrão]
G                       C
Glória a Deus nos altos céus!
D7                      G
Paz na terra aos Seus amados!
Em                      Am
A Vós louvam, Rei celeste,
D7                      G
Os que foram libertados!

[Segunda Parte]
G                             C
2. Senhor nosso, Jesus Cristo,
D7                            G
Unigênito do Pai,
Em                            Am
Vós, de Deus Cordeiro Santo,
D7                            G
Nossas culpas perdoai!

G                             C
3. Vós, que estais junto do Pai,
D7                            G
Como nosso intercessor,
Em                            Am
Acolhei nossos pedidos,
D7                            G
Atendei nosso clamor!

G                             C
4. Vós somente sois o Santo,
D7                            G
O Altíssimo, o Senhor,
Em                            Am
Com o Espírito Divino,
D7                            G
De Deus Pai no esplendor!

[Final]
C         D7            G   Em
Com o Espírito Divino,
Am        D7            G
De Deus Pai no esplendor! Amém!"""
    ),

    make_song(
        "pe-joaozinho-salve-rainha",
        "Salve Rainha, Mãe de Deus",
        "Padre Joãozinho, scj",
        "Canto Mariano",
        "Festas Marianas",
        "F", 84, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Antífona Mariana Final da Missa e Celebrações Marianas", 97,
        "Liturgia das Horas (Completas); Missal Romano", "Lc 1, 28-48",
        "Versão melódica acessível e profundamente litúrgica da tradicional antífona Salve Rainha.",
        """[Intro] F  Bb  C7  F

[Refrão]
F             Bb        C7        F
Salve Rainha, Mãe de Deus,
Dm            Gm        C7        F
És Senhora, nossa Mãe,
Bb            C7        Am        Dm
Nossa doçura, nossa luz,
Gm            C7        F
Doce Virgem Maria!

[Primeira Parte]
F                           Bb
1. Nós a Ti clamamos, filhos exilados,
C7                          F
Nós a Ti voltamos nosso olhar confiante,
Dm                          Gm
Volta para nós, ó Mãe, Teu semblante de amor,
C7                          F
Depois deste exílio mostra-nos Jesus!

[Refrão]
F             Bb        C7        F
Salve Rainha, Mãe de Deus,
Dm            Gm        C7        F
És Senhora, nossa Mãe,
Bb            C7        Am        Dm
Nossa doçura, nossa luz,
Gm            C7        F
Doce Virgem Maria!

[Segunda Parte]
F                           Bb
2. Ó clemente, ó piedosa,
C7                          F
Ó sempre doce Virgem Maria,
Dm                          Gm
Roga pelo povo santo de Deus,
C7                          F
Para que sejamos dignos das promessas do Senhor!

[Final]
Bb            C7        Am        Dm
Nossa doçura, nossa luz,
Gm            C7        F
Doce Virgem Maria!"""
    ),

    make_song(
        "pe-joaozinho-vento-do-espirito",
        "Vento do Espírito",
        "Padre Joãozinho, scj",
        "Envio",
        "Páscoa",
        "Am", 110, "4/4", "Pop Litúrgico / Baião Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Solenidade de Pentecostes, Crisma e Envio Missionário", 95,
        "Missal Romano (Domingo de Pentecostes)", "At 2, 1-11; Jo 20, 22",
        "Cântico vibrante de invocação ao Espírito Santo para Pentecostes e celebrações do Sacramento da Confirmação.",
        """[Intro] Am  Dm  G  C  E7  Am

[Refrão]
Am                        Dm
Sopra, Vento do Espírito!
G                         C       E7
Vem renovar a face da terra!
Am                        Dm
Acende em nós o fogo do amor
E7                        Am
Que toda tristeza e medo destrói e encerra!

[Primeira Parte]
Am                        Dm
1. Como no dia de Pentecostes
G                         C       E7
Reunidos com Maria em oração
Am                        Dm
Desce sobre a Tua Igreja santa
E7                        Am
E faz de nós um só coração!

[Refrão]
Am                        Dm
Sopra, Vento do Espírito!
G                         C       E7
Vem renovar a face da terra!
Am                        Dm
Acende em nós o fogo do amor
E7                        Am
Que toda tristeza e medo destrói e encerra!

[Segunda Parte]
Am                        Dm
2. Dá-nos sabedoria e fortaleza
G                         C       E7
Ciência, conselho e temor de Deus
Am                        Dm
Piedade e entendimento verdadeiro
E7                        Am
Para anunciar a paz aos filhos Teus!

[Final]
Dm         E7             Am   F
Vem, Espírito Santo de Deus!
Dm         E7             Am
Vem renovar o coração dos filhos Teus!"""
    ),

    # =========================================================================
    # 4. IRMÃ MIRIA T. KOLLING (6 músicas)
    # =========================================================================
    make_song(
        "ir-miria-kolling-os-olhos-jamais-contemplaram",
        "Os Olhos Jamais Contemplaram",
        "Irmã Miria T. Kolling",
        "Comunhão",
        "Páscoa",
        "D", 78, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão (Tempo Comum, Páscoa e Exéquias/Finados)", 98,
        "Hinário Litúrgico da CNBB; IGMR nº 86", "1Cor 2, 9; Is 64, 3",
        "Obra-prima litúrgica da Irmã Miria Kolling baseada em 1Cor 2,9, exaltando as maravilhas que Deus preparou para os que O amam.",
        """[Intro] D  G  A7  D  Bm  Em  A7  D

[Refrão]
   D                     G
Os olhos jamais contemplaram,
   A7                    D        Bm
Ninguém sabe explicar o que Deus preparou
   Em                    A7
Aquele que em vida O amar!
   D                     G
Os olhos jamais contemplaram,
   A7                    D        Bm
Ninguém sabe explicar o que Deus preparou
   Em        A7          D
Aquele que em vida O amar!

[Primeira Parte]
   Bm                    F#m
1. Subiu além das nuvens a nossa oração
   G                     D
Chegou até o trono do Pai a louvação
   Em                    A7              D     Bm
Na mesa da Eucaristia provamos o penhor
   E7                                    A7
Da glória prometida no Reino do Senhor!

[Refrão]
   D                     G
Os olhos jamais contemplaram,
   A7                    D        Bm
Ninguém sabe explicar o que Deus preparou
   Em        A7          D
Aquele que em vida O amar!

[Segunda Parte]
   Bm                    F#m
2. Quem come deste Pão viverá eternamente
   G                     D
Pois traz dentro do peito a divina semente
   Em                    A7              D     Bm
Caminha na esperança até o dia chegar
   E7                                    A7
Em que face a face a Deus há de contemplar!

[Final]
   G         A7          D    Bm
O que Deus preparou por amor
   Em        A7          D
Aquele que em vida O amar!"""
    ),

    make_song(
        "ir-miria-kolling-quero-ouvir-teu-apelo",
        "Quero Ouvir Teu Apelo",
        "Irmã Miria T. Kolling",
        "Envio",
        "Tempo Comum",
        "G", 84, "4/4", "Canção Vocacional", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão ou Envio Vocacional (Mês Vocacional / Ordenações)", 97,
        "Hinário Litúrgico CNBB (Vocacional)", "Is 6, 8; Mc 1, 16-20",
        "Clássico vocacional das comunidades brasileiras para resposta generosa ao chamado do Senhor.",
        """[Intro] G  C  D7  G  Em  Am  D7  G

[Primeira Parte]
G                         Bm
1. Quero ouvir Teu apelo, Senhor,
C                         G
Ao Teu chamado de amor responder!
C                         G        Em
Na alegria Te quero servir
Am            D7          G      G7
E anunciar o Teu Reino de amor!

[Refrão]
   C                  D7             G         Em
E pelo mundo eu vou, cantando o Teu amor,
   Am                 D7             G         G7
Pois disponível estou para servir-Te, Senhor!
   C                  D7             G         Em
E pelo mundo eu vou, cantando o Teu amor,
   Am                 D7             G
Pois disponível estou para servir-Te, Senhor!

[Segunda Parte]
G                         Bm
2. Dia a dia Tua graça me dás,
C                         G
Nela se apoia o meu caminhar!
C                         G        Em
Se estás a meu lado, Senhor,
Am            D7          G      G7
O que, então, poderei eu temer?

[Refrão]
   C                  D7             G         Em
E pelo mundo eu vou, cantando o Teu amor,
   Am                 D7             G         G7
Pois disponível estou para servir-Te, Senhor!
   C                  D7             G         Em
E pelo mundo eu vou, cantando o Teu amor,
   Am                 D7             G
Pois disponível estou para servir-Te, Senhor!

[Final]
   Am                 D7             G   C   G
Pois disponível estou para servir-Te, Senhor!"""
    ),

    make_song(
        "ir-miria-kolling-a-forca-da-eucaristia",
        "A Força da Eucaristia",
        "Irmã Miria T. Kolling",
        "Comunhão",
        "Tempo Comum",
        "C", 80, "4/4", "Balada Eucarística", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Canto de Comunhão e Solenidade de Corpus Christi", 98,
        "IGMR nº 86; Hinário Litúrgico da CNBB", "Jo 6, 51-58; 1Cor 10, 16-17",
        "Cântico eucarístico de alta densidade teológica que une o Pão da Vida ao compromisso fraterno da comunidade.",
        """[Intro] C  F  G7  C  Am  Dm  G7  C

[Primeira Parte]
C                        Em
1. Quando te aproximas do altar do Senhor
F                        G7
Para receber o Pão da Vida e do Amor
Am                       Em
Não vens sozinho, trazes contigo o irmão
Dm             G7        C         C7
Formando em Cristo um só corpo e coração!

[Refrão]
   F              G7         C           Am
É a força da Eucaristia que nos faz caminhar
   Dm             G7         C           C7
Partilhando a esperança, aprendendo a amar!
   F              G7         C           Am
É a força da Eucaristia que transforma o viver
   Dm             G7         C
Em oferta viva pra o Reino crescer!

[Segunda Parte]
C                        Em
2. Este Pão do Céu é alimento dos fortes
F                        G7
Vence o egoísmo e destrói toda morte
Am                       Em
Une os pequenos ao redor do Senhor
Dm             G7        C         C7
Numa aliança eterna de paz e louvor!

[Refrão]
   F              G7         C           Am
É a força da Eucaristia que nos faz caminhar
   Dm             G7         C           C7
Partilhando a esperança, aprendendo a amar!
   F              G7         C           Am
É a força da Eucaristia que transforma o viver
   Dm             G7         C
Em oferta viva pra o Reino crescer!

[Final]
   Dm             G7         C   F   C
Em oferta viva pra o Reino crescer!"""
    ),

    make_song(
        "ir-miria-kolling-glorifica-minha-alma-magnificat",
        "Glorifica Minha Alma ao Senhor (Magnificat)",
        "Irmã Miria T. Kolling",
        "Canto Mariano",
        "Advento",
        "F", 96, "4/4", "Marcha Festiva / Cântico Bíblico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Cântico Evangélico de Maria (Festas Marianas, Advento e Vésperas)", 99,
        "Liturgia das Horas (Vésperas); Lecionário (4º Dom. do Advento / Assunção)", "Lc 1, 46-55",
        "Versão litúrgica consagrada do Cântico de Maria (Magnificat), exaltando a ação de Deus em favor dos humildes.",
        """[Intro] F  Bb  C7  F  Dm  Gm  C7  F

[Refrão]
F                         Bb
Glorifica minha alma ao Senhor,
C7                        F
Exulta meu espírito em Deus, meu Salvador!
Dm                        Gm
Porque olhou a humildade de Sua serva,
C7                        F
Doravante as gerações me chamarão bem-aventurada!

[Primeira Parte]
F                              Bb
1. O Todo-Poderoso fez em mim maravilhas,
C7                             F
Santo, eternamente Santo é o Seu Nome!
Dm                             Gm
Seu amor se estende de geração em geração
C7                             F
Sobre todos aqueles que O temem de coração!

[Refrão]
F                         Bb
Glorifica minha alma ao Senhor,
C7                        F
Exulta meu espírito em Deus, meu Salvador!
Dm                        Gm
Porque olhou a humildade de Sua serva,
C7                        F
Doravante as gerações me chamarão bem-aventurada!

[Segunda Parte]
F                              Bb
2. Manifestou o poder do Seu braço forte,
C7                             F
Derrubou os poderosos de seus tronos e exaltou os humildes!
Dm                             Gm
Saciou de bens os famintos e despediu os ricos sem nada,
C7                             F
Socorreu Israel, Seu servo, lembrado de Sua misericórdia!

[Final]
Bb        C7              Am   Dm
Glória ao Pai e ao Filho e ao Espírito Santo,
Gm        C7              F
Pelos séculos dos séculos. Amém!"""
    ),

    make_song(
        "ir-miria-kolling-reunidos-aqui",
        "Reunidos Aqui Só Pra Louvar o Senhor",
        "Irmã Miria T. Kolling",
        "Entrada",
        "Tempo Comum",
        "G", 108, "4/4", "Marcha Alegre", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Entrada e Acolhida Fraterna da Assembleia", 95,
        "IGMR nº 47; Hinário Litúrgico da CNBB", "Sl 132 (133), 1; Mt 18, 20",
        "Cântico clássico e extremamente acessível de abertura da celebração, reunindo a assembleia no amor do Senhor.",
        """[Intro] G  C  D7  G  D7

[Primeira Parte]
G                             D7
Reunidos aqui só pra louvar o Senhor,
                              G       G7
Novamente aqui, em união!
C                             G          Em
Algo bom vai acontecer, algo bom Deus tem pra nós:
Am            D7              G
Reunidos aqui só pra louvar o Senhor!

[Refrão]
   C                          G
O Pai nos chamou para formarmos um povo,
   D7                         G          G7
Em Cristo Jesus somos um homem novo!
   C                          G          Em
No Espírito Santo cantamos em coro:
   Am         D7              G
Reunidos aqui só pra louvar o Senhor!

[Segunda Parte]
G                             D7
Trazemos no peito a alegria da fé,
                              G       G7
Igreja que marcha unida e de pé!
C                             G          Em
Ouvindo a Palavra, partindo o Pão,
Am            D7              G
Vivendo na graça da comunhão!

[Refrão]
   C                          G
O Pai nos chamou para formarmos um povo,
   D7                         G          G7
Em Cristo Jesus somos um homem novo!
   C                          G          Em
No Espírito Santo cantamos em coro:
   Am         D7              G
Reunidos aqui só pra louvar o Senhor!

[Final]
   C          D7              G   Em
Algo bom Deus tem pra nós:
   Am         D7              G
Reunidos aqui só pra louvar o Senhor!"""
    ),

    make_song(
        "ir-miria-kolling-a-biblia-e-a-palavra-de-deus",
        "A Bíblia É a Palavra de Deus",
        "Irmã Miria T. Kolling",
        "Aclamação",
        "Tempo Comum",
        "D", 104, "4/4", "Marcha Bíblica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Entronização da Palavra e Mês da Bíblia (Setembro)", 97,
        "IGMR nº 55; Dei Verbum nº 21", "Sl 118 (119), 105; Hb 4, 12",
        "Hino tradicional do Mês da Bíblia nas paróquias brasileiras para procissão e acolhida do Lecionário.",
        """[Intro] D  G  A7  D  A7

[Refrão]
D                              A7
A Bíblia é a Palavra de Deus semeada no meio do povo,
Em             A7              D                     D7
Que cresceu, cresceu e nos transformou,
G              A7              F#m         Bm
Ensinando a viver um mundo novo,
Em             A7              D
Ensinando a viver um mundo novo!

[Primeira Parte]
D                              A7
1. Deus é bom, nos ensina a viver,
                               D
Nos revela o caminho a seguir:
D7                             G
Só no amor partilhando Seus dons,
       D           A7          D
Sua presença iremos sentir!

[Refrão]
D                              A7
A Bíblia é a Palavra de Deus semeada no meio do povo,
Em             A7              D                     D7
Que cresceu, cresceu e nos transformou,
G              A7              F#m         Bm
Ensinando a viver um mundo novo,
Em             A7              D
Ensinando a viver um mundo novo!

[Segunda Parte]
D                              A7
2. Somos povo, o povo de Deus,
                               D
E formamos o Reino de irmãos;
D7                             G
E a Palavra que é viva nos guia
       D           A7          D
E alimenta a nossa união!

[Final]
G              A7              F#m         Bm
Ensinando a viver um mundo novo,
Em             A7              D
A Palavra de Deus nos transformou!"""
    ),

    # =========================================================================
    # 5. ZÉ VICENTE (6 músicas)
    # =========================================================================
    make_song(
        "ze-vicente-pai-nosso-dos-martires",
        "Pai Nosso dos Mártires",
        "Zé Vicente",
        "Comunhão",
        "Quaresma",
        "Am", 80, "4/4", "Toada / Canção das CEBs", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Memória dos Mártires, Celebrações da Esperança e Quaresma (Não substitui o Pai-Nosso ritual)", 93,
        "Estudo 79 CNBB (Nota: usar na Comunhão ou Meditação, nunca em substituição à Oração Dominical ritual da Missa)", "Mt 6, 9-13; Ap 6, 9-11",
        "Clássico da caminhada pastoral latino-americana em memória dos mártires da justiça e do Evangelho.",
        """[Intro] Am  Dm  G  C  E7  Am

[Refrão]
Am                         Dm
Pai nosso dos pobres marginalizados,
G                          C         E7
Pai nosso dos mártires, dos torturados!
Am                         Dm
Teu Nome é santificado naqueles que morrem defendendo a vida,
G                          C         E7
Teu Nome é glorificado quando a justiça é nossa medida!
Dm         G               C         Am
Teu Reino é de liberdade, de fraternidade, paz e comunhão,
Dm         E7              Am
Maldita toda violência que devora a vida pela repressão!

[Primeira Parte]
Am                         G
1. Queremos fazer Tua vontade, és o verdadeiro Deus libertador!
F                          E7
Não vamos seguir as doutrinas corrompidas pelo poder opressor!
Am                         G
Pedimos-Te o pão da vida, o pão da segurança, o pão das multidões,
F                          E7
O pão que traz humanidade, que constrói o homem em vez de canhões!

[Refrão]
Am                         Dm
Pai nosso dos pobres marginalizados,
G                          C         E7
Pai nosso dos mártires, dos torturados!
Dm         G               C         Am
Teu Reino é de liberdade, de fraternidade, paz e comunhão,
Dm         E7              Am
Maldita toda violência que devora a vida pela repressão!

[Segunda Parte]
Am                         G
2. Perdoa-nos quando por medo ficamos calados diante da morte,
F                          E7
Perdoa e destrói os reinos em que a corrupção é a lei mais forte!
Am                         G
Protege-nos da crueldade, do esquadrão da morte, dos prevalecidos,
F                          E7
Pai nosso revolucionário, parceiro dos pobres, Deus dos oprimidos!

[Final]
Dm         E7              Am   F
Pai nosso dos mártires, Deus dos oprimidos!
Dm         E7              Am
Vem fazer justiça aos Teus escolhidos!"""
    ),

    make_song(
        "ze-vicente-e-missao-de-todos-nos",
        "É Missão de Todos Nós",
        "Zé Vicente",
        "Envio",
        "Tempo Comum",
        "G", 98, "4/4", "Baião / Marcha Missionária", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Envio Missionário e Campanha da Fraternidade", 96,
        "Hinário Litúrgico da CNBB; Diretrizes Gerais da Ação Evangelizadora", "Gn 1, 28; Mc 16, 15",
        "Um dos cânticos de envio mais conhecidos do Brasil, convocando toda a Igreja a transformar o mundo.",
        """[Intro] G  C  D7  G  D7

[Primeira Parte]
G                             Bm
1. O Deus que me criou, me quis, me consagrou
C             D7              G       G7
Para anunciar o Seu amor!
C                             G          Em
Eu sou como a chuva em terra seca,
Am            D7              G          G7
Pra saciar, fazer brotar eu vivo pra amar e pra servir!
C                             G          Em
Eu sou como a chuva em terra seca,
Am            D7              G
Pra saciar, fazer brotar eu vivo pra amar e pra servir!

[Refrão]
   D7                         G
É missão de todos nós, Deus chama, eu quero ouvir a Sua voz!
   D7                         G                                G7
É missão de todos nós, Deus chama, eu quero ouvir a Sua voz!
   C                          G          Em
Proclamar a libertação, construir a nova criação,
   Am         D7              G
É missão de todos nós!

[Segunda Parte]
G                             Bm
2. Em casa e no trabalho, na rua e na igreja
C             D7              G       G7
Eu vou testemunhar o meu Senhor!
C                             G          Em
Semeando a paz e a esperança,
Am            D7              G          G7
Onde houver dor e solidão eu levo a alegria do irmão!

[Refrão]
   D7                         G
É missão de todos nós, Deus chama, eu quero ouvir a Sua voz!
   D7                         G                                G7
É missão de todos nós, Deus chama, eu quero ouvir a Sua voz!
   C                          G          Em
Proclamar a libertação, construir a nova criação,
   Am         D7              G
É missão de todos nós!

[Final]
   C          D7              G   Em
Construir a nova criação:
   Am         D7              G
É missão de todos nós!"""
    ),

    make_song(
        "ze-vicente-as-mesmas-maos",
        "As Mesmas Mãos que Plantaram a Semente",
        "Zé Vicente",
        "Ofertório",
        "Tempo Comum",
        "D", 92, "4/4", "Toada Nordestina", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Apresentação das Oferendas (Ofertório)", 97,
        "IGMR nº 73; Hinário Litúrgico da CNBB", "Sl 103 (104), 14-15; At 2, 42-47",
        "Belíssimo canto de Ofertório que une o trabalho das mãos que plantam a semente ao pão e vinho trazidos ao altar.",
        """[Intro] D  G  A7  D  A7

[Refrão]
   D                              A7
As mesmas mãos que plantaram a semente aqui estão!
   Em             A7              D                     D7
O mesmo pão que a mulher preparou aqui está!
   G              A7              F#m         Bm
O vinho novo que a uva sangrou jorrará
   Em             A7              D
No nosso altar!

[Primeira Parte]
   D                              A7
1. A liberdade haverá, a igualdade haverá,
   G              A7              D
E nesta festa onde a gente é irmão,
   D7                             G
O Deus da vida se faz comunhão!
   D              A7              D
O Deus da vida se faz comunhão!

[Refrão]
   D                              A7
As mesmas mãos que plantaram a semente aqui estão!
   Em             A7              D                     D7
O mesmo pão que a mulher preparou aqui está!
   G              A7              F#m         Bm
O vinho novo que a uva sangrou jorrará
   Em             A7              D
No nosso altar!

[Segunda Parte]
   D                              A7
2. Na flor do altar o sonho da paz mundial,
   G              A7              D
A luz acesa é a fé que palpita hoje em nós!
   D7                             G
Do livro aberto o amor se derrama total,
   D              A7              D
No Santo sacrifício de Cristo Jesus!

[Final]
   G              A7              F#m         Bm
O vinho novo que a uva sangrou jorrará
   Em             A7              D
No nosso altar!"""
    ),

    make_song(
        "ze-vicente-de-todos-os-cantos-viemos",
        "De Todos os Cantos Viemos",
        "Zé Vicente",
        "Entrada",
        "Tempo Comum",
        "C", 104, "4/4", "Baião / Marcha de Romaria", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Entrada para Missas Comunitárias e Romarias", 96,
        "IGMR nº 47; Hinário das Comunidades", "Is 2, 2-5; Sl 121 (122)",
        "Canto de abertura festivo que celebra a reunião do povo de Deus vindo de todos os cantos para celebrar a fé.",
        """[Intro] C  F  G7  C  G7

[Refrão]
   C                          F
De todos os cantos viemos, para louvar o Senhor,
   G7                         C                  C7
Pai de eterna bondade, Deus de infinito amor!
   F                          C          Am
Todo o povo reunido num só canto de louvor,
   Dm         G7              C
Louvado seja o Senhor!

[Primeira Parte]
   C                          G7
1. Trazemos a nossa lida, o suor de cada irmão,
   F          G7              C
A esperança florida que brota no coração!
   C7                         F
Na mesa da Eucaristia o Reino já começou,
   Dm         G7              C
Louvado seja o Senhor!

[Refrão]
   C                          F
De todos os cantos viemos, para louvar o Senhor,
   G7                         C                  C7
Pai de eterna bondade, Deus de infinito amor!
   F                          C          Am
Todo o povo reunido num só canto de louvor,
   Dm         G7              C
Louvado seja o Senhor!

[Segunda Parte]
   C                          G7
2. Mulheres, homens, crianças, jovens e anciãos na fé,
   F          G7              C
Cantando a nova aliança, Igreja viva e de pé!
   C7                         F
O Espírito nos anima na força do Seu amor,
   Dm         G7              C
Louvado seja o Senhor!

[Final]
   F                          C          Am
Todo o povo reunido num só canto de louvor,
   Dm         G7              C
Louvado seja o Senhor!"""
    ),

    make_song(
        "ze-vicente-agua-sagrada",
        "Água Sagrada",
        "Zé Vicente",
        "Entrada",
        "Páscoa",
        "E", 88, "4/4", "Toada Batismal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Rito de Aspersão da Água Benta e Renovação Batismal", 97,
        "Missal Romano (Rito de Bênção e Aspersão da Água)", "Ez 36, 25-26; Jo 4, 14",
        "Cântico poético e bíblico para o momento da aspersão da água batismal nos domingos e no Tempo Pascal.",
        """[Intro] E  A  B7  E  B7

[Refrão]
   E                          A
Água sagrada, fonte da vida,
   B7                         E          E7
Lava este povo que quer renascer!
   A                          E          C#m
Água bendita que traz alegria,
   F#m        B7              E
Faz a semente do Reino crescer!

[Primeira Parte]
   E                          B7
1. Desde o princípio pairava o Espírito
   A          B7              E
Sobre as águas da criação!
   E7                         A
No Rio Jordão foi Jesus batizado,
   F#m        B7              E
Abrindo os céus à nossa salvação!

[Refrão]
   E                          A
Água sagrada, fonte da vida,
   B7                         E          E7
Lava este povo que quer renascer!
   A                          E          C#m
Água bendita que traz alegria,
   F#m        B7              E
Faz a semente do Reino crescer!

[Segunda Parte]
   E                          B7
2. Quem desta água beber com fé viva
   A          B7              E
Nunca mais sede no peito terá!
   E7                         A
Pois do seu íntimo jorram nascentes
   F#m        B7              E
Para a vida eterna que Deus nos dá!

[Final]
   A                          E          C#m
Água bendita que traz alegria,
   F#m        B7              E
Faz a semente do Reino crescer!"""
    ),

    make_song(
        "ze-vicente-baiao-das-comunidades",
        "Baião das Comunidades",
        "Zé Vicente",
        "Entrada",
        "Tempo Comum",
        "A", 112, "4/4", "Baião Nordestino", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Entrada ou Envio das Comunidades Eclesiais", 95,
        "Estudo 79 CNBB (Inculturação da Música Litúrgica)", "At 2, 42-47; Sl 132 (133)",
        "Cântico inculturado em ritmo de baião que celebra a comunhão fraterna das comunidades paroquiais.",
        """[Intro] A  D  E7  A  E7

[Refrão]
   A                                   E7
Somos gente nova vivendo a união,
   D                  E7               A         A7
Somos povo semente de uma nova nação, ê, ê!
   D                                   A         F#m
Somos gente nova vivendo o amor,
   Bm                 E7               A
Somos comunidade, povo do Senhor, ê, ê!

[Primeira Parte]
   A                                   E7
1. Vou convidar os meus irmãos trabalhadores,
   D                  E7               A
Operários, lavradores, biscateiros e outros mais!
   A7                                  D
E juntos vamos celebrar a confiança,
   Bm                 E7               A
Nossa luta na esperança de ter terra, pão e paz, ê, ê!

[Refrão]
   A                                   E7
Somos gente nova vivendo a união,
   D                  E7               A         A7
Somos povo semente de uma nova nação, ê, ê!
   D                                   A         F#m
Somos gente nova vivendo o amor,
   Bm                 E7               A
Somos comunidade, povo do Senhor, ê, ê!

[Segunda Parte]
   A                                   E7
2. Vamos chamar os jovens, mulheres e crianças,
   D                  E7               A
Construindo a aliança que o Evangelho nos propôs!
   A7                                  D
Partindo o pão e escutando a Palavra,
   Bm                 E7               A
Nossa fé jamais se acaba, pois Jesus está entre nós, ê, ê!

[Final]
   D                                   A         F#m
Somos gente nova vivendo o amor,
   Bm                 E7               A
Somos comunidade, povo do Senhor, ê, ê!"""
    ),

    # =========================================================================
    # 6. ZIZA FERNANDES (6 músicas)
    # =========================================================================
    make_song(
        "ziza-fernandes-o-que-agrada-a-deus",
        "O Que Agrada a Deus",
        "Ziza Fernandes",
        "Ação de Graças",
        "Qualquer",
        "D", 72, "4/4", "Balada / MPB Católica", "P  I  M  A  M  I",
        True, True, 6,
        "Ação de Graças, Meditação Pós-Comunhão e Festas de Santa Teresinha", 94,
        "Escritos de Santa Teresinha do Menino Jesus (Manuscrito B)", "Sl 130 (131); Mt 18, 3-4",
        "Obra-prima musical inspirada nos escritos de Santa Teresinha do Menino Jesus sobre a pequena via da confiança.",
        """[Intro] D  A/C#  Bm  G  Em  A7  D

[Primeira Parte]
D                        A/C#
O que agrada a Deus em minha pequena alma
Bm                       F#m
É ver que eu amo a minha pequenez
G                        D/F#
E a minha pobreza, a minha pequenez
Em                       A7
É a esperança cega que tenho em Sua misericórdia!

[Refrão]
   D                     A/C#
Na Tua misericórdia eu confio, Senhor,
   Bm                    F#m
Mesmo sendo tão frágil, sou alvo do Teu amor!
   G                     D/F#          Bm
Toma minha pequenez, faz-me toda Tua enfim,
   Em         A7         D
Pois o Teu olhar pousou sobre mim!

[Segunda Parte]
D                        A/C#
Não tenho grandes obras para Te oferecer
Bm                       F#m
Senão as flores simples do meu cotidiano
G                        D/F#
Colhidas no silêncio do meu pequeno ser
Em                       A7
E entregues no altar do Teu plano soberano!

[Refrão]
   D                     A/C#
Na Tua misericórdia eu confio, Senhor,
   Bm                    F#m
Mesmo sendo tão frágil, sou alvo do Teu amor!
   G                     D/F#          Bm
Toma minha pequenez, faz-me toda Tua enfim,
   Em         A7         D
Pois o Teu olhar pousou sobre mim!

[Final]
   G                     A7            Bm    G
É a esperança cega que tenho em Teu amor,
   Em         A7         D
Em Tua misericórdia, Senhor!"""
    ),

    make_song(
        "ziza-fernandes-fogo-suave",
        "Fogo Suave",
        "Ziza Fernandes",
        "Ação de Graças",
        "Páscoa",
        "G", 76, "4/4", "Balada Acústica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Invocação ao Espírito Santo, Crisma, Pentecostes e Adoração", 95,
        "Sequência de Pentecostes (Veni Sancte Spiritus)", "1Rs 19, 12; At 2, 3",
        "Cântico contemplativo e poético ao Espírito Santo, descrevendo Sua ação simultaneamente abrasadora e suave.",
        """[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
G                          D/F#
Teus dedos tocam meu pensar,
Em                         Bm
Carinho em minh'alma, sossega e acalma
C                          G/B
Minha vida agitada com Tua presença
Am                         D7
Me acolhe, não vou mais temer!

[Refrão]
   G                D/F#
Fogo suave, queima-me!
   Em               Bm
Vento impetuoso, leva-me!
   C                G/B          Em
Hóspede da alma, entra e fica em mim,
   Am       D7      G
Espírito de Amor sem fim!

[Segunda Parte]
G                          D/F#
Brisa leve que sopra onde quer,
Em                         Bm
Luz bendita que aquece o inverno da vida
C                          G/B
Derrama Teu óleo sobre as feridas
Am                         D7
E refaz todo o meu interior!

[Refrão]
   G                D/F#
Fogo suave, queima-me!
   Em               Bm
Vento impetuoso, leva-me!
   C                G/B          Em
Hóspede da alma, entra e fica em mim,
   Am       D7      G
Espírito de Amor sem fim!

[Final]
   C        D7      Em    C
Fogo suave, queima-me!
   Am       D7      G
Espírito Santo, habita em mim!"""
    ),

    make_song(
        "ziza-fernandes-alma-missionaria",
        "Alma Missionária (Senhor, Toma Minha Vida Nova)",
        "Ziza Fernandes",
        "Envio",
        "Tempo Comum",
        "C", 82, "4/4", "Balada Missionária", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão Vocacional, Envio Missionário e Crisma", 96,
        "Estudo 79 CNBB; Documento de Aparecida", "Is 6, 8; Rm 10, 14-15",
        "Consagrada versão de 'Alma Missionária', oração de entrega total da juventude e dos missionários à evangelização.",
        """[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C                          G/B
Senhor, toma minha vida nova
Am                         Em
Antes que a espera desgaste anos em mim
F                          C/E
Estou disposto ao que queiras,
Dm                         G7
Não importa o que seja, Tu chamas-me a servir!

[Refrão]
   C                       G/B
Leva-me aonde os homens necessitem Tua Palavra,
   Am                      Em
Necessitem de força de viver!
   F                       C/E         Am
Onde falte a esperança, onde tudo seja triste
   Dm                      G7          C
Simplesmente por não saber de Ti!

[Segunda Parte]
C                          G/B
Te dou meu coração sincero
Am                         Em
Para gritar sem medo: formoso é Teu amor!
F                          C/E
Senhor, tenho alma missionária,
Dm                         G7
Conduze-me à terra que tenha sede de Ti!

[Refrão]
   C                       G/B
Leva-me aonde os homens necessitem Tua Palavra,
   Am                      Em
Necessitem de força de viver!
   F                       C/E         Am
Onde falte a esperança, onde tudo seja triste
   Dm                      G7          C
Simplesmente por não saber de Ti!

[Final]
   F                       G7          Am    F
Assim, em marcha irei cantando,
   Dm                      G7          C
Por povos pregando Tua grandeza, Senhor!"""
    ),

    make_song(
        "ziza-fernandes-celebra-a-vida",
        "Celebra a Vida",
        "Ziza Fernandes",
        "Entrada",
        "Páscoa",
        "A", 112, "4/4", "Pop Acústico Festivo", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 5,
        "Acolhida, Louvor e Celebrações da Vida", 88,
        "Estudo 79 CNBB", "Sl 117 (118), 24; Jo 10, 10",
        "Cântico luminoso de gratidão pelo dom da vida e pela presença de Cristo que faz novas todas as coisas.",
        """[Intro] A  E/G#  F#m  D  E7  A

[Primeira Parte]
A                         E/G#
Acorda, olha o dia que o Senhor já fez brilhar
F#m                       C#m
A graça se renova em cada passo do andar
D                         A/C#
Deixa a tristeza fora, abre a janela à luz
Bm                        E7
Pois a vida inteira é dom das mãos de Jesus!

[Refrão]
   A                      E/G#
Celebra a vida, canta um canto de louvor!
   F#m                    D
Bendize ao Pai que nos criou por Seu amor!
   A                      E/G#         F#m
Em cada instante Ele nos chama a renascer,
   Bm         E7          A
Celebra a vida que Deus deu a você!

[Segunda Parte]
A                         E/G#
Mesmo se houver espinhos pelo chão a caminhar
F#m                       C#m
O perfume da esperança não deixará de exalar
D                         A/C#
Com os irmãos unidos ao redor do mesmo altar
Bm                        E7
A festa da alegria vamos juntos celebrar!

[Refrão]
   A                      E/G#
Celebra a vida, canta um canto de louvor!
   F#m                    D
Bendize ao Pai que nos criou por Seu amor!
   A                      E/G#         F#m
Em cada instante Ele nos chama a renascer,
   Bm         E7          A
Celebra a vida que Deus deu a você!

[Final]
   D          E7          F#m   D
Em cada instante Ele nos chama a renascer,
   Bm         E7          A
Celebra a vida no Senhor!"""
    ),

    make_song(
        "ziza-fernandes-me-faz-capaz",
        "Me Faz Capaz",
        "Ziza Fernandes",
        "Ofertório",
        "Tempo Comum",
        "E", 76, "4/4", "Balada de Entrega", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 5,
        "Ofertório Vocacional e Oração de Consagração", 90,
        "Estudo 79 CNBB", "2Cor 3, 5; Fl 4, 13",
        "Canção inspirada em São Paulo (2Cor 3,5): nossa capacidade vem de Deus, que acolhe nossa oferta humilde.",
        """[Intro] E  B/D#  C#m  A  B7  E

[Primeira Parte]
E                         B/D#
Olho para as minhas mãos tão pequenas, Senhor
C#m                       G#m
Diante da grandeza da missão do Teu amor
A                         E/G#
Mas sei que não escolhes os que já prontos estão
F#m                       B7
Capacitas os chamados com a força de Tua mão!

[Refrão]
   E                      B/D#
A Tua graça me faz capaz de ir além,
   C#m                    A
De ofertar a minha vida para o bem!
   E                      B/D#         C#m
Toma o meu nada e transforma em comunhão,
   F#m        B7          E
Eis-me aqui em Tuas mãos!

[Segunda Parte]
E                         B/D#
Dependo no Teu altar meu suor e meu cansaço
C#m                       G#m
No pão e no vinho encontro a paz do Teu abraço
A                         E/G#
Tudo posso Naquele que me fortalece assim
F#m                       B7
Vivo não mais eu, mas Cristo vive em mim!

[Refrão]
   E                      B/D#
A Tua graça me faz capaz de ir além,
   C#m                    A
De ofertar a minha vida para o bem!
   E                      B/D#         C#m
Toma o meu nada e transforma em comunhão,
   F#m        B7          E
Eis-me aqui em Tuas mãos!

[Final]
   A          B7          C#m   A
Toma o meu nada e transforma em comunhão,
   F#m        B7          E
Tua graça me faz capaz, Senhor!"""
    ),

    make_song(
        "ziza-fernandes-abre-tua-porta",
        "Abre Tua Porta",
        "Ziza Fernandes",
        "Ato Penitencial",
        "Advento",
        "Dm", 74, "4/4", "Balada Contemplativa", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 5,
        "Advento, Reconciliação e Meditação Interior", 91,
        "Estudo 79 CNBB", "Ap 3, 20; Ct 5, 2",
        "Cântico baseado em Apocalipse 3,20 ('Eis que estou à porta e bato'), propício para o Advento e momentos penitenciais.",
        """[Intro] Dm  Gm  A7  Dm  Bb  A7  Dm

[Primeira Parte]
Dm                        Gm
Eis que estou à porta e bato suavemente
C                         F            A7
Esperando que escutes Minha voz no coração
Dm                        Gm
Não forço a fechadura, sou amigo paciente
Bb                        A7
Que deseja cear contigo em santa comunhão!

[Refrão]
   Dm                     Gm
Abre tua porta, deixa a luz entrar!
   C                      F            A7
Deixa o Amor Divino tua casa visitar!
   Dm                     Gm
Não tenhas receio da tua imperfeição,
   Bb         A7          Dm
Eu venho fazer morada em teu coração!

[Segunda Parte]
Dm                        Gm
Arruma a tua mesa com sinceridade e fé
C                         F            A7
Entrega tuas sombras ao calor do Meu olhar
Dm                        Gm
Perdoo as tuas faltas e te ponho em pé
Bb                        A7
Para que uma vida nova possas começar!

[Refrão]
   Dm                     Gm
Abre tua porta, deixa a luz entrar!
   C                      F            A7
Deixa o Amor Divino tua casa visitar!
   Dm                     Gm
Não tenhas receio da tua imperfeição,
   Bb         A7          Dm
Eu venho fazer morada em teu coração!

[Final]
   Gm         A7          Dm    Bb
Eis que estou à porta e bato por amor:
   Gm         A7          Dm
Abre o coração ao teu Senhor!"""
    ),

    # =========================================================================
    # 7. BANDA DOMINUS (6 músicas)
    # =========================================================================
    make_song(
        "banda-dominus-imenso-amor",
        "Imenso Amor",
        "Banda Dominus",
        "Ação de Graças",
        "Qualquer",
        "G", 78, "4/4", "Pop Rock Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Ação de Graças, Adoração e Encontros de Jovens", 90,
        "Estudo 79 CNBB", "Rm 8, 35-39; Ef 3, 18-19",
        "Clássico da Banda Dominus exaltando a dimensão insondável do amor de Deus revelada em Jesus.",
        """[Intro] G  D  Em  C  G  D

[Primeira Parte]
G                          D
Como explicar um amor tão grande assim
Em                         C
Que entregou Sua vida na cruz por mim?
G                          D
Mesmo quando eu me afasto do Teu olhar
Em             C           D
Tuas mãos abertas continuam a me esperar!

[Refrão]
   G                       D
Imenso amor que invade o meu coração,
   Em                      C
Trazendo vida nova, paz e salvação!
   G                       D            Em
Nada poderá me separar de Ti, Senhor,
   C          D            G
Eu vivo mergulhado nesse imenso amor!

[Segunda Parte]
G                          D
Nem a altura, nem a profundidade ou dor
Em                         C
Podem apagar a chama desse amor
G                          D
Em Tua presença encontro o meu lugar
Em             C           D
Para sempre o Teu Nome eu quero exaltar!

[Refrão]
   G                       D
Imenso amor que invade o meu coração,
   Em                      C
Trazendo vida nova, paz e salvação!
   G                       D            Em
Nada poderá me separar de Ti, Senhor,
   C          D            G
Eu vivo mergulhado nesse imenso amor!

[Final]
   C          D            Em   C
Nada poderá me separar de Ti, Senhor,
   Am         D            G
Eu vivo mergulhado nesse imenso amor!"""
    ),

    make_song(
        "banda-dominus-o-amor",
        "O Amor (Ainda que Eu Falasse a Língua dos Anjos)",
        "Banda Dominus",
        "Comunhão",
        "Tempo Comum",
        "D", 82, "4/4", "Pop Acústico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão, Matrimônios e Celebrações da Caridade", 93,
        "Lecionário Matrimonial; IGMR nº 86", "1Cor 13, 1-13",
        "Versão vibrante do Hino à Caridade do Apóstolo São Paulo (1Cor 13).",
        """[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D                          A/C#
Ainda que eu falasse a língua dos homens e dos anjos
Bm                         G
E tivesse a fé capaz de transportar os montes
D                          A/C#
Se eu não tivesse o amor que vem de Deus
Em                         A7
Nada disso adiantaria aos olhos Seus!

[Refrão]
   D                       A/C#
O amor é paciente, o amor é prestativo,
   Bm                      G
Não se alegra com a injustiça, mas no bem é sempre vivo!
   D                       A/C#         Bm
Tudo sofre, tudo crê, tudo espera e suporta,
   Em         A7           D
O amor jamais acaba, o amor é o que importa!

[Segunda Parte]
D                          A/C#
Passarão as profecias, cessarão todas as línguas
Bm                         G
Mas a caridade eterna permanece e nos abriga
D                          A/C#
Fé, esperança e amor permanecem entre nós
Em                         A7
Mas o maior deles é o amor que nos faz um só!

[Refrão]
   D                       A/C#
O amor é paciente, o amor é prestativo,
   Bm                      G
Não se alegra com a injustiça, mas no bem é sempre vivo!
   D                       A/C#         Bm
Tudo sofre, tudo crê, tudo espera e suporta,
   Em         A7           D
O amor jamais acaba, o amor é o que importa!

[Final]
   G          A7           Bm   G
Tudo sofre, tudo crê, tudo espera e suporta,
   Em         A7           D
O amor jamais acaba!"""
    ),

    make_song(
        "banda-dominus-com-jesus-e-festa",
        "Com Jesus É Festa",
        "Banda Dominus",
        "Louvor",
        "Qualquer",
        "A", 126, "4/4", "Pop / Axé Cristão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Louvor em Encontros de Jovens, Retiros e Acampamentos", 86,
        "Estudo 79 CNBB (Encontros Pastorais e Juventude)", "Jo 2, 1-11; Sl 150",
        "Hino de alegria cristã da juventude católica inspirado nas Bodas de Caná, onde a presença de Jesus garante o vinho novo.",
        """[Intro] A  D  E7  A  D  E7

[Primeira Parte]
A                          D
Onde está Jesus a tristeza não tem vez
E7                         A
Como em Caná da Galileia a água em vinho Ele fez!
A                          D
Convida Maria e chama os irmãos
E7                         A
Pois o Senhor transforma o nosso coração!

[Refrão]
   A                       D
Com Jesus é festa, é alegria de viver!
   E7                      A
O vinho novo da graça não vai faltar pra você!
   A                       D            F#m
Levante as mãos pro céu e comece a louvar,
   Bm         E7           A
Pois Jesus está presente neste lugar!

[Segunda Parte]
A                          D
Não existe vida morna pra quem segue o Salvador
E7                         A
Cada dia é uma festa de serviço e de amor!
A                          D
Na força do Espírito vamos anunciar
E7                         A
Que só em Jesus Cristo há razão pra celebrar!

[Refrão]
   A                       D
Com Jesus é festa, é alegria de viver!
   E7                      A
O vinho novo da graça não vai faltar pra você!
   A                       D            F#m
Levante as mãos pro céu e comece a louvar,
   Bm         E7           A
Pois Jesus está presente neste lugar!

[Final]
   D          E7           F#m  D
O vinho novo da graça não vai faltar!
   Bm         E7           A
Com Jesus é festa!"""
    ),

    make_song(
        "banda-dominus-discipulo",
        "Discípulo",
        "Banda Dominus",
        "Envio",
        "Tempo Comum",
        "E", 108, "4/4", "Pop Rock Missionário", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Envio Missionário, Crisma e Pastoral da Juventude", 91,
        "Documento de Aparecida (Discípulos e Missionários)", "Jo 13, 35; Mt 28, 19",
        "Canção vocacional e missionária sobre a identidade do discípulo de Cristo no mundo.",
        """[Intro] E  A  B7  E  B7

[Primeira Parte]
E                          A
Tu me chamaste pela graça do Teu olhar
B7                         E
Deixei as redes na praia para Te acompanhar
C#m                        A
Aprendi nos Teus passos a servir e perdoar
F#m                        B7
E hoje a minha vida é o Teu Reino anunciar!

[Refrão]
   E                       A
Quero ser Teu discípulo, Senhor Jesus,
   B7                      E
Caminhar na Tua verdade, viver na Tua luz!
   C#m                     A
Nisto todos saberão que somos Teus irmãos:
   F#m        B7           E
Se tivermos amor no coração!

[Segunda Parte]
E                          A
Não importa a distância nem o vento a soprar
B7                         E
Tua Palavra é a bússola a me orientar
C#m                        A
Com a força do Espírito vou testemunhar
F#m                        B7
Que só Tu tens palavras de vida pra nos dar!

[Refrão]
   E                       A
Quero ser Teu discípulo, Senhor Jesus,
   B7                      E
Caminhar na Tua verdade, viver na Tua luz!
   C#m                     A
Nisto todos saberão que somos Teus irmãos:
   F#m        B7           E
Se tivermos amor no coração!

[Final]
   A          B7           C#m  A
Caminhar na Tua verdade, viver na Tua luz!
   F#m        B7           E
Sou Teu discípulo, Senhor Jesus!"""
    ),

    make_song(
        "banda-dominus-autor-da-vida",
        "Autor da Vida",
        "Banda Dominus",
        "Ação de Graças",
        "Páscoa",
        "C", 80, "4/4", "Balada de Louvor", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Ação de Graças e Louvor Pascal", 90,
        "Estudo 79 CNBB", "At 3, 15; Hb 12, 2",
        "Cântico cristocêntrico que aclama Jesus Ressuscitado como o Autor e Consumador da vida e da fé.",
        """[Intro] C  G  Am  F  G7  C

[Primeira Parte]
C                          G
Fixo os meus olhos em Ti, Senhor Jesus
Am                         F
Que por amor venceste a morte lá na cruz
C                          G
Tua ressurreição abriu as portas da manhã
Am            F            G7
E renovou a esperança da família cristã!

[Refrão]
   C                       G
Tu és o Autor da Vida, o Princípio e o Fim,
   Am                      F
O Cordeiro exaltado que se entregou por mim!
   C                       G            Am
Toda a criação proclama o Teu louvor:
   F          G7           C
Jesus Cristo é o Senhor!

[Segunda Parte]
C                          G
Em Tuas mãos entrego a história do meu ser
Am                         F
Escreve em minha alma o Teu santo querer
C                          G
Pois onde Tu estás floresce a salvação
Am            F            G7
E a vida eterna pulsa em nosso coração!

[Refrão]
   C                       G
Tu és o Autor da Vida, o Princípio e o Fim,
   Am                      F
O Cordeiro exaltado que se entregou por mim!
   C                       G            Am
Toda a criação proclama o Teu louvor:
   F          G7           C
Jesus Cristo é o Senhor!

[Final]
   F          G7           Am   F
Toda a criação proclama o Teu louvor:
   Dm         G7           C
Tu és o Autor da Vida, Senhor!"""
    ),

    make_song(
        "banda-dominus-joga-pra-la",
        "Joga pra Lá",
        "Banda Dominus",
        "Louvor",
        "Qualquer",
        "G", 122, "4/4", "Samba-Reggae / Pop Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Animação em Encontros de Jovens e Retiros", 85,
        "Estudo 79 CNBB (Animação Pastoral)", "1Pd 5, 7; Fl 4, 4",
        "Canção de animação juvenil que convida a lançar fora a tristeza e entregar todas as preocupações a Deus.",
        """[Intro] G  C  D7  G  C  D7

[Primeira Parte]
G                          C
Por que ficar parado olhando para o chão
D7                         G
Se Deus já preparou a tua libertação?
G                          C
Entrega a ansiedade nas mãos do Salvador
D7                         G
Pois Ele tem cuidado de ti com Seu amor!

[Refrão]
   G                       C
Joga pra lá toda tristeza e solidão!
   D7                      G
Deixa a alegria de Jesus encher teu coração!
   Em                      C
Quem tem a fé em Cristo não anda mais sozinho,
   Am         D7           G
Tem a luz do Evangelho clareando o seu caminho!

[Segunda Parte]
G                          C
A graça do Senhor renova o teu viver
D7                         G
Com Ele a vitória já pertence a você!
G                          C
Sorria para a vida e cante ao Criador
D7                         G
Levando a todo o mundo a chama desse amor!

[Refrão]
   G                       C
Joga pra lá toda tristeza e solidão!
   D7                      G
Deixa a alegria de Jesus encher teu coração!
   Em                      C
Quem tem a fé em Cristo não anda mais sozinho,
   Am         D7           G
Tem a luz do Evangelho clareando o seu caminho!

[Final]
   C          D7           G   Em
Deixa a alegria de Jesus encher teu coração!
   Am         D7           G
Alegra-te no Senhor!"""
    ),

    # =========================================================================
    # 8. EUGÊNIO JORGE (4 músicas)
    # =========================================================================
    make_song(
        "eugenio-jorge-eis-que-faco-novas",
        "Eis Que Faço Novas Todas as Coisas",
        "Eugênio Jorge",
        "Entrada",
        "Páscoa",
        "D", 104, "4/4", "Marcha Pascal / Louvor", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Entrada e Envio no Tempo Pascal e Ano Novo", 96,
        "Lecionário Dominical (5º Domingo da Páscoa - Ano C)", "Ap 21, 5; 2Cor 5, 17",
        "Cântico pascal diretamente inspirado em Apocalipse 21,5, proclamando que Cristo renova todas as coisas.",
        """[Intro] D  G  A7  D  G  A7

[Refrão]
   D                                  G
Eis que faço novas todas as coisas,
                    D
Que faço novas todas as coisas,
                    A7                D     A7
Que faço novas todas as coisas!

[Primeira Parte]
   D                                  G
1. É vida que brota da vida, é fruto que cresce do amor,
   D                                  A7
É vida que vence a morte, é vida que vem do Senhor!
   D                                  G
 É vida que brota da vida, é fruto que cresce do amor,
   D                  A7              D
É vida que vence a morte, é vida que vem do Senhor!

[Refrão]
   D                                  G
Eis que faço novas todas as coisas,
                    D
Que faço novas todas as coisas,
                    A7                D     A7
Que faço novas todas as coisas!

[Segunda Parte]
   D                                  G
2. Deixei o sepulcro vazio, a morte não me segurou,
   D                                  A7
A pedra que então me prendia no terceiro dia rolou!
   D                                  G
Deixei o sepulcro vazio, a morte não me segurou,
   D                  A7              D
A pedra que então me prendia no terceiro dia rolou!

   D                                  G
3. Eu hoje lhe dou vida nova, renovo em ti o amor,
   D                                  A7
Lhe dou uma nova esperança, tudo o que era velho passou!

[Final]
   G                  A7              D   Bm
Tudo o que era velho já passou:
   Em                 A7              D
Eis que faço novas todas as coisas!"""
    ),

    make_song(
        "eugenio-jorge-louvor-e-gloria",
        "Louvor e Glória a Ti, Senhor",
        "Eugênio Jorge",
        "Aclamação",
        "Quaresma",
        "G", 88, "4/4", "Balada Solene de Aclamação", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Aclamação ao Evangelho na Quaresma (Substitui o Aleluia)", 98,
        "IGMR nº 62b; Lecionário da Quaresma", "Jo 6, 68; Mt 4, 4",
        "Uma das aclamações quaresmais mais tradicionais e cantadas nas paróquias brasileiras durante a Quaresma.",
        """[Intro] G  C  D7  G  D7

[Refrão]
   G              C        D7             G
Louvor e glória a Ti, Senhor,
   Em             Am       D7             G    G7
Cristo Palavra, Cristo Palavra de Deus!
   C              D7       G              Em
Louvor e glória a Ti, Senhor,
   Am             D7       G
Cristo Palavra de Deus!

[Primeira Parte]
   G                       C
1. O homem não vive somente de pão,
   D7                      G
Mas de toda palavra da boca de Deus!
   Em                      Am
Fala, Senhor, que Teu povo escuta,
   D7                      G
Tens palavras de vida eterna!

[Refrão]
   G              C        D7             G
Louvor e glória a Ti, Senhor,
   Em             Am       D7             G    G7
Cristo Palavra, Cristo Palavra de Deus!
   C              D7       G              Em
Louvor e glória a Ti, Senhor,
   Am             D7       G
Cristo Palavra de Deus!

[Segunda Parte]
   G                       C
2. Convertei-vos a Mim de todo o coração,
   D7                      G
Porque o Reino dos Céus está próximo a vós!
   Em                      Am
Preparai os caminhos do vosso Senhor,
   D7                      G
Acolhei a Palavra que salva!

[Final]
   C              D7       G              Em
Louvor e glória a Ti, Senhor,
   Am             D7       G
Cristo Palavra de Deus!"""
    ),

    make_song(
        "eugenio-jorge-ao-teu-encontro",
        "Ao Teu Encontro",
        "Eugênio Jorge",
        "Ação de Graças",
        "Qualquer",
        "C", 70, "4/4", "Dedilhado / Adoração", "P  I  M  A  M  I",
        True, True, 5,
        "Adoração ao Santíssimo Sacramento e Pós-Comunhão", 94,
        "Ritual da Sagrada Comunhão e o Culto do Mistério Eucarístico Fora da Missa", "Sl 41 (42), 2-3; Ct 3, 1-4",
        "Cântico intimista de adoração eucarística e busca ardente pela face do Senhor.",
        """[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C                          G/B
O meu coração tem sede de amar
Am                         Em
Venho ao Teu encontro para Te adorar
F                          C/E
Como a corça suspira pelas águas vivas
Dm                         G7
Minha alma procura a Tua presença divina!

[Refrão]
   C                       G/B
Eis-me aqui, Senhor, diante do Teu altar,
   Am                      Em
Nada mais importa senão Te contemplar!
   F                       C/E         Am
Tua paz me envolve, Teu amor me refaz,
   Dm         G7           C
Só em Ti minha alma descansa em paz!

[Segunda Parte]
C                          G/B
No silêncio sagrado desta comunhão
Am                         Em
Escuto o bater do Teu manso coração
F                          C/E
Transforma a minha vida em hóstia de louvor
Dm                         G7
Totalmente entregue ao Teu eterno amor!

[Refrão]
   C                       G/B
Eis-me aqui, Senhor, diante do Teu altar,
   Am                      Em
Nada mais importa senão Te contemplar!
   F                       C/E         Am
Tua paz me envolve, Teu amor me refaz,
   Dm         G7           C
Só em Ti minha alma descansa em paz!

[Final]
   F          G7           C   Am
Tua paz me envolve, Teu amor me refaz,
   Dm         G7           C
Venho ao Teu encontro, Senhor!"""
    ),

    make_song(
        "eugenio-jorge-sonda-me-senhor",
        "Sonda-me, Senhor (Tu Me Conheces)",
        "Eugênio Jorge",
        "Comunhão",
        "Tempo Comum",
        "Am", 72, "4/4", "Balada Salmódica", "P  I  M  A  M  I",
        True, True, 5,
        "Meditação do Salmo 138 (139), Pós-Comunhão e Reconciliação", 96,
        "Liturgia das Horas; Lecionário Dominical (Salmo 138/139)", "Sl 138 (139), 1-24",
        "Cântico profundamente bíblico baseado no Salmo 138 (139), rezando a onisciência amorosa de Deus.",
        """[Intro] Am  Dm  G  C  E7  Am

[Primeira Parte]
Am                         Dm
Senhor, Tu me sondas e me conheces
G                          C        E7
Sabes quando me sento e quando me levanto
Am                         Dm
De longe penetras os meus pensamentos
F                          E7
Percebes meus passos e o meu descanso!

[Refrão]
   Am                      Dm
Sonda-me, Senhor, e conhece o meu coração!
   G                       C        E7
Prova-me os sentimentos na Tua clara visão!
   Am                      Dm
Vê se estou no caminho da iniquidade
   E7                      Am
E conduz-me pelo caminho da eternidade!

[Segunda Parte]
Am                         Dm
Para onde irei longe do Teu Espírito?
G                          C        E7
Para onde fugirei da Tua santa face?
Am                         Dm
Se subo até os céus, lá estás comigo,
F                          E7
Tua mão direita sempre me conduz e abraça!

[Refrão]
   Am                      Dm
Sonda-me, Senhor, e conhece o meu coração!
   G                       C        E7
Prova-me os sentimentos na Tua clara visão!
   Am                      Dm
Vê se estou no caminho da iniquidade
   E7                      Am
E conduz-me pelo caminho da eternidade!

[Final]
   Dm         E7           Am   F
Pões sobre mim a Tua santa mão:
   Dm         E7           Am
Sonda-me, Senhor, e guarda o meu coração!"""
    ),

    # =========================================================================
    # 9. DIÁCONO NELSINHO CORRÊA / CANÇÃO NOVA (4 músicas)
    # =========================================================================
    make_song(
        "nelsinho-correa-quem-perde-sua-vida",
        "Quem Perde Sua Vida a Encontrará",
        "Diácono Nelsinho Corrêa / Canção Nova",
        "Comunhão",
        "Quaresma",
        "D", 76, "4/4", "Balada Eucarística / Vocacional", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Comunhão (5º Domingo da Quaresma, Tempo Comum e Vocacional)", 97,
        "Lecionário Dominical (5º Dom. da Quaresma - Ano B)", "Jo 12, 24-25; Mc 8, 35",
        "Clássico litúrgico e vocacional baseado na parábola do grão de trigo que morre para produzir muito fruto (Jo 12,24).",
        """[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D                          A/C#
Quem perde sua vida por Mim a encontrará,
Bm                         F#m
Quem deixa seu pai por Mim, sua mãe por Mim, me encontrará!
G                          D/F#
Não tenhas medo, não tenhas medo,
Em            A7           D      D7
Eu estou aqui, Eu estou aqui!

[Refrão]
   G                       A7
Quem deixa sua terra por Mim, seus bens por Mim,
   F#m                     Bm
Seus filhos por Mim, me encontrará!
   Em                      A7
Não tenhas medo, Eu conheço aqueles que escolhi,
   D                       D7
Aqueles que escolhi!
   G                       A7
Quem perde sua vida por Mim a encontrará,
   F#m                     Bm
Quem perde sua vida por Mim a encontrará,
   Em         A7           D
Quem perde sua vida por Mim a encontrará!

[Segunda Parte]
D                          A/C#
Se o grão de trigo não morre na terra, fica só,
Bm                         F#m
Mas se entrega a vida no chão, produz muito fruto!
G                          D/F#
Onde Eu estiver, estará também o Meu servidor,
Em            A7           D      D7
E o Pai O honrará no Seu imenso amor!

[Refrão]
   G                       A7
Quem deixa sua terra por Mim, seus bens por Mim,
   F#m                     Bm
Seus filhos por Mim, me encontrará!
   Em                      A7
Não tenhas medo, Eu conheço aqueles que escolhi,
   D                       D7
Aqueles que escolhi!

[Final]
   Em         A7           Bm   G
Não tenhas medo, Eu estou aqui:
   Em         A7           D
Quem perde sua vida por Mim a encontrará!"""
    ),

    make_song(
        "nelsinho-correa-caminhando-com-maria",
        "Caminhando com Maria",
        "Diácono Nelsinho Corrêa / Canção Nova",
        "Canto Mariano",
        "Festas Marianas",
        "G", 94, "4/4", "Marcha Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Mariano Final, Procissões e Romarias", 94,
        "Diretório sobre Piedade Popular e Liturgia", "Lc 1, 38-45; Jo 19, 26-27",
        "Cântico mariano de caminhada pastoral, celebrando a presença materna de Maria junto ao povo peregrino.",
        """[Intro] G  C  D7  G  D7

[Primeira Parte]
G                          Bm
Santa Mãe Maria, nessa travessia
C             D7           G       G7
Cubra-nos Teu manto cor de anil!
C                          G          Em
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
G                          Bm
Mulher peregrina, força feminina
C             D7           G       G7
A mais importante que existiu!
C                          G          Em
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
Caminhando com Maria vamos a Jesus!"""
    ),

    make_song(
        "nelsinho-correa-foi-assim",
        "Foi Assim",
        "Diácono Nelsinho Corrêa / Canção Nova",
        "Ação de Graças",
        "Qualquer",
        "C", 74, "4/4", "Balada Testemunhal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Ação de Graças e Testemunho Vocacional", 90,
        "Estudo 79 CNBB", "Jr 20, 7; Fl 3, 8-12",
        "Canção de gratidão pelo encontro pessoal com Cristo que transforma toda a história de vida.",
        """[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C                          G/B
Conheci um mundo mau e com ele seus ardis
Am                         Em
Me afastei do Teu caminho procurando ser feliz
F                          C/E
Mas Tu vieste ao meu encontro com Teu olhar de compaixão
Dm                         G7
E resgataste a minha vida segurando a minha mão!

[Refrão]
   C                       G/B
Foi assim que me salvaste, meu Senhor,
   Am                      Em
Com a força invencível do Teu amor!
   F                       C/E         Am
Hoje tudo o que eu sou pertence a Ti,
   Dm         G7           C
Pois a verdadeira vida em Ti descobri!

[Segunda Parte]
C                          G/B
Já não olho para trás, deixei tudo por Jesus
Am                         Em
Para seguir os Teus passos carregando a minha cruz
F                          C/E
Tua graça me sustenta em cada novo alvorecer
Dm                         G7
Para sempre em Tua casa eu desejo permanecer!

[Refrão]
   C                       G/B
Foi assim que me salvaste, meu Senhor,
   Am                      Em
Com a força invencível do Teu amor!
   F                       C/E         Am
Hoje tudo o que eu sou pertence a Ti,
   Dm         G7           C
Pois a verdadeira vida em Ti descobri!

[Final]
   F          G7           C   Am
Hoje tudo o que eu sou pertence a Ti:
   Dm         G7           C
Obrigado, meu Senhor, por me amar assim!"""
    ),

    make_song(
        "nelsinho-correa-primeiro-amor",
        "Quero Voltar ao Meu Primeiro Amor",
        "Diácono Nelsinho Corrêa / Canção Nova",
        "Ato Penitencial",
        "Quaresma",
        "A", 72, "4/4", "Balada de Conversão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Celebrações Penitenciais, Retiros e Pós-Comunhão", 91,
        "Estudo 79 CNBB", "Ap 2, 4-5; Os 2, 16",
        "Prece de retorno ao fervor original da aliança com Deus, inspirada na carta à Igreja de Éfeso (Ap 2,4).",
        """[Intro] A  E/G#  F#m  D  E7  A

[Primeira Parte]
A                          E/G#
Senhor, o tempo foi passando e meu coração esfriou
F#m                        C#m
Na correria desta vida a minha chama vacilou
D                          A/C#
Mas hoje escuto o Teu chamado a me atrair ao deserto
Bm                         E7
Para falar ao meu ouvido e ter-me sempre por perto!

[Refrão]
   A                       E/G#
Quero voltar ao meu primeiro amor,
   F#m                     C#m
Sentir de novo o Teu abraço, meu Senhor!
   D                       A/C#        F#m
Reacende em minha alma o fogo da paixão,
   Bm         E7           A
Toma inteiramente o meu coração!

[Segunda Parte]
A                          E/G#
Como no dia do batismo e da primeira comunhão
F#m                        C#m
Devolve a pureza santa à minha humilde oração
D                          A/C#
Sem Ti eu nada posso ser, Tu és a fonte do viver
Bm                         E7
Somente aos pés da Tua cruz eu quero permanecer!

[Refrão]
   A                       E/G#
Quero voltar ao meu primeiro amor,
   F#m                     C#m
Sentir de novo o Teu abraço, meu Senhor!
   D                       A/C#        F#m
Reacende em minha alma o fogo da paixão,
   Bm         E7           A
Toma inteiramente o meu coração!

[Final]
   D          E7           F#m   D
Reacende em minha alma o fogo da paixão:
   Bm         E7           A
Volto a Ti, meu primeiro amor!"""
    ),

    # =========================================================================
    # 10. TOCA DE ASSIS, FRAT. SÃO JOÃO PAULO II, ALIANÇA DE MISERICÓRDIA,
    #     COMUNIDADE RECADO E IRMÃ ANA PAULA (11 músicas)
    # =========================================================================
    make_song(
        "toca-de-assis-pra-sempre-teu",
        "Pra Sempre Teu",
        "Fraternidade Toca de Assis",
        "Ação de Graças",
        "Qualquer",
        "G", 70, "4/4", "Dedilhado Eucarístico", "P  I  M  A  M  I",
        True, True, 5,
        "Adoração ao Santíssimo Sacramento, Pós-Comunhão e Consagração", 95,
        "Ritual do Culto Eucarístico; Espiritualidade Eucarística", "Ct 6, 3; Jo 6, 68",
        "Cântico de adoração profunda ao Santíssimo Sacramento e consagração total da vida a Jesus Hóstia Santa.",
        """[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
G                          D/F#
Diante da Hóstia Santa me coloco em adoração
Em                         Bm
Contemplo o Mistério excelso da Tua imolação
C                          G/B
Tão pequeno no ostensório e tão grande no amor
Am                         D7
Tu és o Rei do Universo, meu Deus e meu Senhor!

[Refrão]
   G                       D/F#
Quero ser pra sempre Teu, somente Teu, Jesus,
   Em                      Bm
Adorar-Te no altar e abraçar a Tua cruz!
   C                       G/B         Em
Nos pobres sofredores ver o Teu olhar brilhar,
   Am         D7           G
Pra sempre Teu eu quero ser e Te amar!

[Segunda Parte]
G                          D/F#
Como São Francisco em Assis quero viver na pobreza
Em                         Bm
Encontrando em Teu Corpo a verdadeira riqueza
C                          G/B
Sacia a fome da minh'alma com o Pão Celestial
Am                         D7
E recebe a minha entrega num amor esponsal!

[Refrão]
   G                       D/F#
Quero ser pra sempre Teu, somente Teu, Jesus,
   Em                      Bm
Adorar-Te no altar e abraçar a Tua cruz!
   C                       G/B         Em
Nos pobres sofredores ver o Teu olhar brilhar,
   Am         D7           G
Pra sempre Teu eu quero ser e Te amar!

[Final]
   C          D7           Em   C
Adorado seja sempre o Santíssimo Sacramento:
   Am         D7           G
Sou pra sempre Teu, Senhor!"""
    ),

    make_song(
        "toca-de-assis-todo-teu-o-mae",
        "Todo Teu, ó Mãe",
        "Fraternidade Toca de Assis",
        "Canto Mariano",
        "Festas Marianas",
        "D", 72, "4/4", "Balada Mariana Suave", "P  I  M  A  M  I",
        True, True, 5,
        "Consagração a Nossa Senhora e Canto Mariano Final", 94,
        "Lumen Gentium nº 60-62; Tratado da Verdadeira Devoção", "Jo 19, 26-27; Lc 1, 38",
        "Oração cantada do 'Totus Tuus', consagrando a vida a Jesus pelas mãos imaculadas da Virgem Maria.",
        """[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D                          A/C#
Aos pés da cruz o Teu Filho nos confiou a Ti
Bm                         F#m
"Eis aí a tua Mãe!", com amor eu acolhi
G                          D/F#
Recebe em tua casa o meu frágil coração
Em                         A7
Modela a minha vida na escola da oração!

[Refrão]
   D                       A/C#
Sou todo Teu, ó Mãe, tudo o que sou pertence a Ti!
   Bm                      F#m
Conduze os meus passos no caminho que escolhi!
   G                       D/F#        Bm
Ensina-me a adorar Teu Filho no altar,
   Em         A7           D
Todo Teu, ó Mãe, para mais a Cristo amar!

[Segunda Parte]
D                          A/C#
Virgem do silêncio, Esposa do Espírito de Amor
Bm                         F#m
Guarda minha vocação sob o teu manto protetor
G                          D/F#
Quando a noite for escura sê estrela a reluzir
Em                         A7
E ajuda-me fiel até o fim perseverar e servir!

[Refrão]
   D                       A/C#
Sou todo Teu, ó Mãe, tudo o que sou pertence a Ti!
   Bm                      F#m
Conduze os meus passos no caminho que escolhi!
   G                       D/F#        Bm
Ensina-me a adorar Teu Filho no altar,
   Em         A7           D
Todo Teu, ó Mãe, para mais a Cristo amar!

[Final]
   G          A7           Bm   G
Totus Tuus, Maria, Mãe do Salvador:
   Em         A7           D
Sou todo Teu por amor!"""
    ),

    make_song(
        "toca-de-assis-cantico-das-criaturas",
        "Cântico das Criaturas (Altíssimo, Onipotente, Bom Senhor)",
        "Fraternidade Toca de Assis",
        "Louvor",
        "Tempo Comum",
        "C", 96, "4/4", "Balada Franciscana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Ação de Graças, Festa de São Francisco de Assis (4 de Outubro) e Ecologia Integral", 97,
        "Fontes Franciscanas (Cântico do Irmão Sol); Laudato Si'", "Dn 3, 57-88; Sl 148",
        "Adaptação musical do Cântico das Criaturas de São Francisco de Assis ('Laudato Si, mi Signore').",
        """[Intro] C  F  G7  C  Am  Dm  G7  C

[Primeira Parte]
C                          Em
Altíssimo, Onipotente, Bom Senhor,
F                          G7
Teus são o louvor, a glória e a honra e toda a bênção!
Am                         Em
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
C                          Em
Louvado sejas pelo Irmão Vento e pelo ar,
F                          G7
Pela Irmã Água, tão humilde, útil e casta!
Am                         Em
Pelo Irmão Fogo que ilumina a noite e é robusto e forte,
Dm            G7           C        C7
E pela nossa Irmã, a Mãe Terra, que nos sustenta e governa!

   C                          Em
Louvado sejas pelos que perdoam pelo Teu amor,
F                          G7
E suportam enfermidades e tribulações em paz!
Am                         Em
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
Servi-O com grande humildade!"""
    ),

    make_song(
        "fsjpii-exercito-de-deus",
        "Exército de Deus",
        "Fraternidade São João Paulo II",
        "Envio",
        "Tempo Comum",
        "Em", 116, "4/4", "Pop Rock / Marcha Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Envio em Missas da Juventude, Encontros Vocacionais e Retiros", 89,
        "Estudo 79 CNBB (Pastoral Juvenil)", "Ef 6, 10-17; Jl 2, 11",
        "Cântico de ardor missionário da Fraternidade São João Paulo II sobre o combate espiritual pela fé e pelo amor.",
        """[Intro] Em  C  G  D  Em  C  G  D

[Primeira Parte]
Em                         C
Ouço o som da trombeta que chama a despertar
G                          D
É tempo de levantar e o Evangelho proclamar!
Em                         C
Revestidos da armadura da justiça e da fé
G                          D
Com a Virgem Maria permanecemos de pé!

[Refrão]
   Em                      C
Somos o exército de Deus marchando na luz!
   G                       D
Nossa vitória é o Sangue de Jesus!
   Em                      C
Com o terço na mão e o Evangelho no coração,
   G          D            Em
Levamos ao mundo a salvação!

[Segunda Parte]
Em                         C
Não tememos as sombras, pois Cristo já venceu
G                          D
O Seu Espírito Santo sobre nós já desceu!
Em                         C
Jovens consagrados à verdade e ao amor
G                          D
Inteiramente entregues a serviço do Senhor!

[Refrão]
   Em                      C
Somos o exército de Deus marchando na luz!
   G                       D
Nossa vitória é o Sangue de Jesus!
   Em                      C
Com o terço na mão e o Evangelho no coração,
   G          D            Em
Levamos ao mundo a salvação!

[Final]
   C          D            G    Em
Nossa vitória é o Sangue de Jesus:
   C          D            Em
Marchando sempre na Tua luz!"""
    ),

    make_song(
        "fsjpii-maria-porta-do-ceu",
        "Maria, Porta do Céu",
        "Fraternidade São João Paulo II",
        "Canto Mariano",
        "Festas Marianas",
        "G", 74, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Canto Mariano Final e Festas da Virgem Maria", 94,
        "Ladainha Lauretana (Ianua Coeli); Missal Romano", "Gn 28, 17; Lc 1, 28",
        "Hino mariano contemplativo que invoca Nossa Senhora sob o título litúrgico de Porta do Céu.",
        """[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
G                          D/F#
Mais bela que a aurora que anuncia o novo dia
Em                         Bm
És o lírio imaculado onde o próprio Deus habita
C                          G/B
Arca da Nova Aliança, escolhida pelo Pai
Am                         D7
Ao encontro do Teu Filho nossa alma atraí!

[Refrão]
   G                       D/F#
Maria, Porta do Céu, Estrela da Manhã,
   Em                      Bm
Refúgio seguro da família cristã!
   C                       G/B         Em
Acolhe em Teu colo este povo em oração
   Am         D7           G
E leva-nos sempre a Jesus, a salvação!

[Segunda Parte]
G                          D/F#
Com São João Paulo Segundo aprendemos a dizer:
Em                         Bm
"Totus Tuus, ó Maria!", em Teu manto me esconder
C                          G/B
Guarda os sacerdotes, os jovens e os casais
Am                         D7
Derrama sobre a Igreja o perfume da Tua paz!

[Refrão]
   G                       D/F#
Maria, Porta do Céu, Estrela da Manhã,
   Em                      Bm
Refúgio seguro da família cristã!
   C                       G/B         Em
Acolhe em Teu colo este povo em oração
   Am         D7           G
E leva-nos sempre a Jesus, a salvação!

[Final]
   C          D7           Em   C
Maria, Porta do Céu, rogai por nós:
   Am         D7           G
Leva-nos sempre a Jesus!"""
    ),

    make_song(
        "alianca-misericordia-o-espirito-do-senhor",
        "O Espírito do Senhor Está Sobre Mim",
        "Comunidade Aliança de Misericórdia",
        "Entrada",
        "Tempo Comum",
        "Am", 92, "4/4", "Toada Profética / Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Entrada, Envio Missionário, Crisma e Missa do Crisma", 97,
        "Lecionário (3º Dom. do Tempo Comum - Ano C; Missa do Crisma)", "Is 61, 1-2; Lc 4, 18-19",
        "Canto carismático e profundamente bíblico baseado na leitura de Jesus na sinagoga de Nazaré (Lc 4,18-19).",
        """[Intro] Am  Dm  E7  Am  E7

[Refrão]
   Am                                    Dm
O Espírito do Senhor está sobre mim!
   G                                     C          E7
O Espírito do Senhor me ungiu e me enviou:
   Am                                    Dm
Para evangelizar os pobres, curar os corações feridos,
   E7                                    Am
E proclamar o ano da graça do Senhor!

[Primeira Parte]
   Am                                    Dm
1. Enviou-me a levar a Boa Nova aos pequeninos,
   G                                     C          E7
Anunciar aos cativos a libertação!
   Am                                    Dm
Dar a vista aos cegos e a luz aos oprimidos,
   E7                                    Am
Derramando nos irmãos a Sua compaixão!

[Refrão]
   Am                                    Dm
O Espírito do Senhor está sobre mim!
   G                                     C          E7
O Espírito do Senhor me ungiu e me enviou:
   Am                                    Dm
Para evangelizar os pobres, curar os corações feridos,
   E7                                    Am
E proclamar o ano da graça do Senhor!

[Segunda Parte]
   Am                                    Dm
2. Trocar a cinza da tristeza em coroa de alegria,
   G                                     C          E7
O pranto da noite em óleo de consolação!
   Am                                    Dm
Veste de louvor para o povo que sofria,
   E7                                    Am
Igreja viva da Misericórdia em missão!

[Final]
   Dm                    E7              Am   F
Para evangelizar os pobres me enviou:
   Dm                    E7              Am
Hoje se cumpre esta Palavra entre nós!"""
    ),

    make_song(
        "alianca-misericordia-pai-das-misericordias",
        "Pai das Misericórdias",
        "Comunidade Aliança de Misericórdia",
        "Ação de Graças",
        "Quaresma",
        "D", 72, "4/4", "Balada de Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 5,
        "Pós-Comunhão, Domingo da Divina Misericórdia e Quaresma", 95,
        "Missal Romano (2º Domingo da Páscoa / 4º Dom. da Quaresma - Ano C)", "2Cor 1, 3; Lc 15, 11-32",
        "Hino ao Pai das Misericórdias e Deus de toda consolação (2Cor 1,3), inspirado na parábola do Pai Misericordioso.",
        """[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D                          A/C#
Mesmo de longe Tu me viste retornar
Bm                         F#m
E correste ao meu encontro só pra me abraçar
G                          D/F#
Pões o anel em meu dedo, sandálias em meus pés
Em                         A7
Tu és o Pai bondoso e para sempre fiel!

[Refrão]
   D                       A/C#
Pai das Misericórdias, Deus de toda consolação,
   Bm                      G
No Teu colo santo encontra paz meu coração!
   D                       A/C#        Bm
Teu amor é maior que toda a minha dor,
   Em         A7           D
Bendito sejas para sempre, meu Senhor!

[Segunda Parte]
D                          A/C#
Não olhaste para a poeira da minha ingratidão
Bm                         F#m
Fizeste festa em Tua casa pelo meu perdão
G                          D/F#
Este teu filho estava morto e voltou a viver
Em                         A7
Em Tua misericórdia quero sempre permanecer!

[Refrão]
   D                       A/C#
Pai das Misericórdias, Deus de toda consolação,
   Bm                      G
No Teu colo santo encontra paz meu coração!
   D                       A/C#        Bm
Teu amor é maior que toda a minha dor,
   Em         A7           D
Bendito sejas para sempre, meu Senhor!

[Final]
   G          A7           Bm   G
No Teu colo santo encontra paz meu coração:
   Em         A7           D
Pai das Misericórdias!"""
    ),

    make_song(
        "comunidade-recado-seja-luz",
        "Seja Luz",
        "Comunidade Recado",
        "Envio",
        "Tempo Comum",
        "G", 98, "4/4", "Pop Litúrgico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Comunhão ou Envio no 5º Domingo do Tempo Comum (Ano A)", 96,
        "Lecionário Dominical (5º Dom. do Tempo Comum - Ano A)", "Mt 5, 13-16; Ef 5, 8",
        "Cântico diretamente inspirado no Sermão da Montanha ('Vós sois o sal da terra e a luz do mundo', Mt 5,13-16).",
        """[Intro] G  D/F#  Em  C  D7  G

[Primeira Parte]
G                          D/F#
Não se acende uma lâmpada para a esconder
Em                         Bm
Mas no alto se coloca para a todos esclarecer
C                          G/B
Vós sois o sal da terra, vós sois a luz do mundo
Am                         D7
Levai a toda parte este amor tão profundo!

[Refrão]
   G                       D/F#
Seja luz onde houver escuridão,
   Em                      C
Seja sal que dá sabor ao coração!
   G                       D/F#        Em
Brilhe a vossa luz diante dos irmãos,
   Am         D7           G
Para que glorifiquem o Pai da criação!

[Segunda Parte]
G                          D/F#
Com gestos de bondade, justiça e compaixão
Em                         Bm
Mostrai que o Evangelho transforma a nação
C                          G/B
Unidos a Jesus, a verdadeira Luz
Am                         D7
Caminhemos confiantes na graça que conduz!

[Refrão]
   G                       D/F#
Seja luz onde houver escuridão,
   Em                      C
Seja sal que dá sabor ao coração!
   G                       D/F#        Em
Brilhe a vossa luz diante dos irmãos,
   Am         D7           G
Para que glorifiquem o Pai da criação!

[Final]
   C          D7           Em   C
Brilhe a vossa luz diante dos irmãos:
   Am         D7           G
Seja luz no Senhor!"""
    ),

    make_song(
        "comunidade-recado-renascer",
        "Renascer no Espírito",
        "Comunidade Recado",
        "Ação de Graças",
        "Páscoa",
        "C", 76, "4/4", "Balada de Renovação", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 5,
        "Pós-Comunhão no Tempo Pascal, Pentecostes e Batismo", 93,
        "Lecionário Pascal (Diálogo com Nicodemos)", "Jo 3, 3-8; Tt 3, 5",
        "Cântico inspirado no diálogo de Jesus com Nicodemos (Jo 3,5) sobre o renascimento da água e do Espírito.",
        """[Intro] C  G/B  Am  F  G7  C

[Primeira Parte]
C                          G/B
O vento sopra onde quer e ouves a sua voz
Am                         Em
Assim é o Espírito de Deus agindo hoje em nós
F                          C/E
Quem não nascer da água e do Espírito de Amor
Dm                         G7
Não pode contemplar a beleza do Senhor!

[Refrão]
   C                       G/B
Faz-me renascer no Teu Espírito, Senhor,
   Am                      Em
Dá-me um coração novo, cheio do Teu fervor!
   F                       C/E         Am
Lava o meu passado na fonte do perdão,
   Dm         G7           C
Faz de mim criatura nova em Tua mão!

[Segunda Parte]
C                          G/B
Do alto vem a graça que restaura o meu viver
Am                         Em
Em Cristo ressurgido aprendo a vencer
F                          C/E
Guiado pela luz que emana lá da cruz
Dm                         G7
Camino na alegria do Espírito de Jesus!

[Refrão]
   C                       G/B
Faz-me renascer no Teu Espírito, Senhor,
   Am                      Em
Dá-me um coração novo, cheio do Teu fervor!
   F                       C/E         Am
Lava o meu passado na fonte do perdão,
   Dm         G7           C
Faz de mim criatura nova em Tua mão!

[Final]
   F          G7           C   Am
Lava o meu passado na fonte do perdão:
   Dm         G7           C
Renascer no Teu Espírito, Senhor!"""
    ),

    make_song(
        "ir-ana-paula-fogo-abrasador",
        "Fogo Abrasador (Vem, Espírito)",
        "Irmã Ana Paula",
        "Ação de Graças",
        "Páscoa",
        "Em", 70, "4/4", "Balada Contemplativa / Carmelita", "P  I  M  A  M  I",
        True, True, 4,
        "Vigília de Pentecostes, Adoração ao Santíssimo e Oração Interior", 94,
        "Liturgia de Pentecostes; Mística Carmelita (São João da Cruz)", "At 2, 1-4; Ct 8, 6",
        "Cântico profundamente contemplativo da Irmã Ana Paula, invocando o Fogo Abrasador do Espírito Santo.",
        """[Intro] Em  C  G  D  Em  C  G  D

[Primeira Parte]
Em                         C
No silêncio do cenáculo esperamos por Ti
G                          D
Com Maria em oração, vem, Senhor, descer aqui
Em                         C
Toca o mais profundo da nossa solidão
G                          D
E inflama de amor todo o nosso coração!

[Refrão]
   Em                      C
Vem, Espírito, Fogo Abrasador!
   G                       D
Chama viva de eterno amor!
   Em                      C
Queima em nós tudo o que não vem de Ti,
   G          D            Em
Vem, Espírito Santo, habitar aqui!

[Segunda Parte]
Em                         C
Ó Doce Hóspede da alma, orvalho divinal
G                          D
Consolo no deserto e luz celestial
Em                         C
Transforma a nossa vida num altar de adoração
G                          D
Totalmente consumida pela Tua unção!

[Refrão]
   Em                      C
Vem, Espírito, Fogo Abrasador!
   G                       D
Chama viva de eterno amor!
   Em                      C
Queima em nós tudo o que não vem de Ti,
   G          D            Em
Vem, Espírito Santo, habitar aqui!

[Final]
   C          D            G    Em
Chama viva de eterno amor:
   C          D            Em
Vem, Espírito, Fogo Abrasador!"""
    ),

    make_song(
        "ir-ana-paula-meu-hospede",
        "Meu Hóspede",
        "Irmã Ana Paula",
        "Ação de Graças",
        "Qualquer",
        "D", 68, "4/4", "Dedilhado / Oração Carmelita", "P  I  M  A  M  I",
        True, True, 5,
        "Ação de Graças Pós-Comunhão e Oração de Recolhimento", 96,
        "IGMR nº 88 (Silêncio e Cântico de Ação de Graças); Santa Teresa d'Ávila (Caminho de Perfeição)", "Jo 14, 23; Ap 3, 20",
        "Joia da música contemplativa católica para o momento de recolhimento interior após receber a Sagrada Comunhão.",
        """[Intro] D  A/C#  Bm  G  A7  D

[Primeira Parte]
D                          A/C#
Fecho os olhos para o mundo e abro a porta interior
Bm                         F#m
Pois em meu peito agora habita o meu Deus e meu Senhor
G                          D/F#
Não preciso ir tão longe para Te procurar
Em                         A7
Se dentro de minh'alma escolheste repousar!

[Refrão]
   D                       A/C#
Meu Hóspede Divino, meu Amado e meu Rei,
   Bm                      F#m
Em Tua doce presença para sempre ficarei!
   G                       D/F#        Bm
Fala no meu silêncio, reclina em mim a Tua fronte,
   Em         A7           D
Pois Tu és o meu céu e a minha fonte!

[Segunda Parte]
D                          A/C#
Como em Betânia na casa de Marta e de Maria
Bm                         F#m
Escolho a melhor parte aos Teus pés em alegria
G                          D/F#
Nada me perturbe, nada me espante o coração
Em                         A7
Quem a Deus tem nada lhe falta nesta santa comunhão!

[Refrão]
   D                       A/C#
Meu Hóspede Divino, meu Amado e meu Rei,
   Bm                      F#m
Em Tua doce presença para sempre ficarei!
   G                       D/F#        Bm
Fala no meu silêncio, reclina em mim a Tua fronte,
   Em         A7           D
Pois Tu és o meu céu e a minha fonte!

[Final]
   G          A7           Bm   G
Só Deus basta ao meu coração:
   Em         A7           D
Fica comigo, meu Hóspede e Senhor!"""
    ),
]

