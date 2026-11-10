# -*- coding: utf-8 -*-
"""
Parte 3 da Expansão Massiva do Santa Cifra (+58 músicas para ultrapassar 225 músicas completas no total):
- Mais sucessos do Padre Zezinho, Padre Marcelo Rossi, Padre Reginaldo Manzotti, Padre Antônio Maria
- Adriana Arydes, Ziza Fernandes, Irmã Kelly Patrícia, Pe. Joãozinho, Banda Dom, Comunidade Recado
- Zé Vicente, Waldeci Farias, Frei Fabreti, Ir. Miria T. Kolling, Pe. José Weber, Hinário Litúrgico CNBB
"""

from part1_padre_zezinho_marcelo import make_song

MORE_CATHOLIC_HITS = [
    # --- MAIS PADRE ZEZINHO & PADRE MARCELO ROSSI & PADRE REGINALDO MANZOTTI ---
    make_song(
        "teu-sol-vai-brilhar-pe-zezinho",
        "Teu Sol Vai Brilhar",
        "Padre Zezinho, scj",
        "Ação de Graças", "Tempo Comum", "C", 82, "4/4", "Balada de Esperança", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Esperança Cristã", 93, "Estudo 79 CNBB", "Ml 3, 20; Sl 26",
        "Cântico de esperança cristã do Padre Zezinho em 4 acordes simples.",
        """[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                        Am              Dm
1. Quando a noite parecer não terminar,
   G7                                       C
E a tristeza vier bater no coração:

[Refrão]
   F                        G7              C           Am
Teu sol vai brilhar, a luz vai chegar,
   Dm                       G7              C
Porque Deus jamais esquece quem sabe esperar!"""
    ),
    make_song(
        "se-eu-fosse-um-cristal-pe-zezinho",
        "Se Eu Fosse um Cristal",
        "Padre Zezinho, scj",
        "Ação de Graças", "Tempo Comum", "D", 76, "4/4", "Dedilhado", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4, "Canto de Transparência à Luz de Deus", 92, "Estudo 79 CNBB", "Mt 5, 16",
        "Meditação sobre refletir a luz de Cristo como um cristal.",
        """[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. Se eu fosse um cristal, deixaria Tua luz passar por mim;
   Bm                       Em              A7          D
Sem nada reter, refletindo o Teu amor até o fim!"""
    ),
    make_song(
        "oracao-da-noite-perdoai-nos-senhor-pe-zezinho",
        "Oração da Noite (Perdoai-nos, Senhor)",
        "Padre Zezinho, scj",
        "Ato Penitencial", "Qualquer", "Dm", 74, "4/4", "Balada Penitencial", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Exame de Consciência Comunitário", 94, "IGMR 51", "Sl 50; Lc 18, 13",
        "Canto penitencial de revisão de vida com 4 acordes.",
        """[Intro] Dm  Gm  A7  Dm

[Primeira Parte]
   Dm                                       Gm
1. Pelo bem que não fizemos, pelo amor que retivemos:
   A7                                       Dm
Perdoai-nos, Senhor! Perdoai-nos, Senhor!"""
    ),
    make_song(
        "um-certo-dia-a-beira-mar-versao-completa-pe-zezinho",
        "Cântico da Paz (Cristo Quero Ser Instrumento)",
        "Padre Zezinho, scj",
        "Final", "Tempo Comum", "G", 88, "4/4", "Marcha", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Missionário da Paz", 94, "IGMR 90", "Mt 5, 9",
        "Canto de envio para semear a paz de Cristo nas famílias.",
        """[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Vai, leva a paz ao mundo inteiro, sê de Cristo o mensageiro,
   Em                       Am              D7          G
Onde houver escuridão, acende a luz!"""
    ),
    make_song(
        "deus-e-dez-pe-marcelo-rossi",
        "Deus É Dez",
        "Padre Marcelo Rossi",
        "Final", "Tempo Comum", "G", 112, "4/4", "Pop Animado", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto para Encontros de Jovens e Catequese", 90, "Diretório de Missas com Crianças", "Sl 150",
        "Quatro acordes abertos (G, Em, C, D) muito conhecidos para grupos de jovens e catequese.",
        """[Intro] G  Em  C  D

[Primeira Parte]
   G                        Em              C           D
1. Venha viver uma grande emoção e sentir no peito uma explosão:
   G                        Em              C           D
O amor verdadeiro Ele quer te dar, vale a pena abrir o coração!

[Refrão]
   G                        Em              C           D
Deus é dez! Para mim, Deus é dez!
   G                        Em              C           D       G
Para nós, Deus é dez!"""
    ),
    make_song(
        "o-vira-de-jesus-pe-marcelo-rossi",
        "O Vira de Jesus",
        "Padre Marcelo Rossi",
        "Final", "Tempo Comum", "A", 120, "4/4", "Marcha / Folclórico", "↓ ↑ ↓ ↑  ↓ ↑ ↓ ↑",
        True, True, 3, "Canto Recreativo para Encontros e Retiros", 88, "Encontros e Retiros Paroquiais", "Sl 149, 3",
        "Apenas 3 acordes (A, E7, D) para animação em retiros e encontros paroquiais.",
        """[Intro] A  E7  A

[Refrão]
   A                                        E7
E o cristão dá um pulinho, e o cristão dá um pulinho,
   D                        E7              A
E vai girando no amor do Senhor!"""
    ),
    make_song(
        "santo-espirito-es-bem-vindo-aqui-pe-marcelo",
        "Santo Espírito, És Bem-Vindo Aqui",
        "Padre Marcelo Rossi / Adoração",
        "Entrada", "Pentecostes", "D", 72, "4/4", "Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3, "Canto de Invocação ao Espírito Santo", 93, "Pentecostes / Vigílias", "Rm 8, 26",
        "Apenas 3 acordes (D, G, Em/A) em ciclo contínuo, facílimo de tocar!",
        """[Intro] D  G  D  G

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
Sermos inundados por Tua glória, Senhor!"""
    ),
    make_song(
        "a-tempestade-vai-passar-pe-reginaldo-manzotti",
        "A Tempestade Vai Passar",
        "Padre Reginaldo Manzotti",
        "Ação de Graças", "Tempo Comum", "G", 76, "4/4", "Balada de Esperança", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Consolação e Fé", 93, "Mc 4, 39 / Sl 45", "Mc 4, 39; Sl 45",
        "Quatro acordes simples (G, D, Em, C) levando esperança e fé em momentos de provação.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
A tempestade vai passar, tudo vai melhorar,
   C                        D               G
O sol de um novo dia logo vai brilhar!
   G                        D               Em
Confia no Senhor, entrega a tua dor,
   C                        D               G
Pois Deus é o teu refúgio e teu libertador!"""
    ),
    make_song(
        "milagres-pe-reginaldo-manzotti",
        "Milagres (Podes Realizar Milagres)",
        "Padre Reginaldo Manzotti",
        "Ação de Graças", "Tempo Comum", "C", 74, "4/4", "Balada de Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Súplica e Adoração", 93, "Mc 9, 23", "Mc 9, 23; Lc 1, 37",
        "Quatro acordes em Dó maior (C, G, Am, F) cantando que nada é impossível para Deus.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Eu creio em Ti, Senhor, que fazes milagres,
   F                        G               C
Sustenta a minha fé quando a força faltar!"""
    ),
    make_song(
        "sonda-me-usa-me-aline-pe-antonio-maria",
        "Nossa Senhora (O Que É Que Eu Sou Sem Jesus)",
        "Padre Antônio Maria",
        "Final", "Qualquer", "D", 78, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Mariano Devocional", 95, "Lumen Gentium 62", "Jo 2, 5",
        "Canto mariano apontando sempre para Jesus ('Fazei tudo o que Ele vos disser').",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Ó Maria, minha Mãe, ensina-me a amar Jesus!
   Bm                       Em              A7          D
Toma-me pela mão e guia os passos meus na luz!"""
    ),

    # --- ADRIANA ARYDES, ZIZA FERNANDES, IRMÃ KELLY PATRÍCIA, PE. JOÃOZINHO ---
    make_song(
        "humano-amor-de-deus-adriana-arydes",
        "Humano Amor de Deus",
        "Adriana Arydes / Pe. Fábio de Melo",
        "Comunhão", "Natal", "G", 76, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Natal e Encarnação", 96, "Jo 1, 14", "Jo 1, 14; Lc 2, 7",
        "Celebra o mistério da Encarnação do Verbo em Maria.",
        """[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Tem um jeito humano de bater o coração de Deus,
   C                        Am              D
Quis nascer pequeno e habitar no meio dos filhos Seus!

[Refrão]
   G                        D               Em
Bendito seja o humano amor de Deus,
   C                        D               G
Que se fez Pão da Vida para os filhos Seus!"""
    ),
    make_song(
        "abraço-eterno-chave-do-coracao-adriana-arydes",
        "Chave do Coração",
        "Adriana Arydes",
        "Ação de Graças", "Qualquer", "D", 74, "4/4", "Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Entrega a Cristo", 94, "Ap 3, 20", "Ap 3, 20",
        "Inspirado em Apocalipse 3, 20 ('Eis que estou à porta e bato').",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Qual é a chave? Qual é o segredo
   G                        Em              A7          D
Que abre as portas do teu coração? (2x)"""
    ),
    make_song(
        "fogo-suave-ziza-fernandes",
        "Fogo Suave",
        "Ziza Fernandes",
        "Comunhão", "Pentecostes", "C", 70, "4/4", "Dedilhado / MPB Sacra", "↓  ↓ ↑  ↑ ↓ ↑",
        True, False, 5, "Hino Poético ao Espírito Santo", 96, "Sequência de Pentecostes", "1Rs 19, 12; At 2",
        "Uma das composições mais poéticas sobre o Espírito Santo na música católica brasileira.",
        """[Intro] C  G/B  Am  F  G7

[Primeira Parte]
   C                        G/B             Am
1. Teus dedos tocam meu pensar, carinho em minh'alma,
   F                        Dm              G7
Sossega e acalma minha vida agitada!

[Refrão]
   C                        G/B             Am
Há um fogo suave que queima sem destruir,
   F                        G7              C
Espírito Santo de Deus, habita em mim!"""
    ),
    make_song(
        "regina-caeli-via-sacra-irma-kelly-patricia",
        "Sob o Olhar de Maria (Via Sacra / Prisioneiro do Amor)",
        "Irmã Kelly Patrícia / Instituto Hesed",
        "Comunhão", "Quaresma", "Em", 72, "4/4", "Dedilhado Contemplativo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Eucarístico e Mariano de Contemplação", 97, "Jo 19, 25 / Eucaristia", "Jo 19, 25-27; Lc 22, 19",
        "Quatro acordes em Mi menor (Em, C, G, D) de profunda piedade eucarística e mariana.",
        """[Intro] Em  C  G  D

[Primeira Parte]
   Em                       C               G           D
1. No silêncio do sacrário, Prisioneiro do amor,
   Em                       C               G           D
Tu esperas pelas almas, ó Jesus, meu Salvador!

[Refrão]
   Em                       C               G           D
Eu Te adoro, Hóstia Santa, Pão vivo descido do Céu,
   Em                       C               D           Em
Pelos olhos de Maria, quero ser sempre fiel!"""
    ),
    make_song(
        "buscai-primeiro-o-reino-de-deus-taize-liturgico",
        "Buscai Primeiro o Reino de Deus (Mateus 6, 33)",
        "Karen Lafferty / Taizé / Hinário Litúrgico",
        "Aclamação", "Tempo Comum", "C", 80, "4/4", "Cânone Bíblico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Aclamação Bíblica Universal (Mateus 6, 33)", 100, "IGMR 62 / Mateus 6, 33", "Mt 6, 33; Mt 4, 4",
        "Texto 100% bíblico de Mateus 6, 33 em cânone com 4 acordes simples (C, G, Am, F).",
        """[Intro] C  G  Am  Em  F  C  G7  C

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
Aleluia, aleluia!"""
    ),
    make_song(
        "conheco-um-coracao-pe-joaozinho",
        "Conheço um Coração Tão Manso, Humilde e Sereno",
        "Padre Joãozinho, scj",
        "Comunhão", "Tempo Comum", "C", 80, "4/4", "Balada do Sagrado Coração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico da Solenidade do Sagrado Coração de Jesus e Comunhão", 100,
        "Solenidade do Sagrado Coração de Jesus / IGMR 86", "Mt 11, 29; Jo 19, 34",
        "Um dos cantos mais amados da Igreja no Brasil para a Primeira Sexta-feira do mês e Comunhão.",
        """[Intro] C  Em  Dm  G7  C

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
Quer tudo e não sabe partilhar!"""
    ),
    make_song(
        "tenda-do-senhor-pe-joaozinho",
        "A Tenda do Senhor (Quem Habitará na Tua Casa)",
        "Padre Joãozinho, scj",
        "Entrada", "Tempo Comum", "G", 88, "4/4", "Balada Salmódica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Baseado no Salmo 14", 98, "Salmo 14 (15) / IGMR 47", "Sl 14, 1-5",
        "Inspirado no Salmo 14 ('Senhor, quem morará em vossa tenda?').",
        """[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Senhor, quem entrará no santuário pra Te louvar? (2x)

[Estrofe]
   C                        D7              G           Em
1. Quem tem as mãos limpas e o coração puro,
   Am                       D7              G
Quem não é vaidoso e sabe amar! (2x)"""
    ),

    # --- HINÁRIO LITÚRGICO CNBB / ZÉ VICENTE / WALDECI FARIAS / PE. JOSÉ WEBER / IR. MIRIA ---
    make_song(
        "jave-o-deus-dos-pobres-ze-vicente",
        "Javé, o Deus dos Pobres",
        "Zé Vicente / Hinário Litúrgico",
        "Entrada", "Tempo Comum", "D", 92, "4/4", "Baião / Toada Nordestina", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Entrada Bíblico-Profético", 96, "IGMR 47 / Êxodo 3, 7", "Ex 3, 7-8; Lc 4, 18",
        "Canto litúrgico inculturado em ritmo de toada sobre o Deus que ouve o clamor do seu povo.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Javé, o Deus dos pobres, do povo sofredor,
   Bm                       Em              A7          D
Aqui nos reuniu pra cantar o Seu amor!

[Estrofe]
   G                        A7              D           Bm
1. Nos dá força e esperança e faz a gente caminhar,
   Em                       A7              D
Construindo um mundo novo onde a paz vai reinar!"""
    ),
    make_song(
        "pai-nosso-dos-martires-caminhada",
        "Bendito Seja Deus Que Nos Reuniu no Amor de Cristo",
        "Hinário Litúrgico CNBB",
        "Entrada", "Qualquer", "D", 90, "4/4", "Marcha Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona Clássica de Abertura", 100, "IGMR 47 / Hinário CNBB", "1Jo 4, 16; Ef 1, 3",
        "Quatro acordes básicos (D, G, A7, Bm) para o canto de entrada dominical.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Bendito seja Deus, que nos reuniu no amor de Cristo! (2x)

[Estrofe]
   Bm                       Em              A7          D
1. Temamos e amemos o Deus vivo, e amemo-nos uns aos outros de coração sincero!"""
    ),
    make_song(
        "cantar-a-beleza-da-vida-hinario-cnbb",
        "Cantar a Beleza da Vida",
        "José Thomaz Filho / Frei Fabreti, ofm",
        "Entrada", "Tempo Comum", "C", 88, "4/4", "Marcha Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico do Hinário Litúrgico da CNBB", 100, "IGMR 47 / Hinário CNBB", "Gn 1; Jo 10, 10",
        "Um dos cantos de Entrada mais tradicionais da parceria José Thomaz Filho e Frei Fabreti.",
        """[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                        Am              Dm
1. Cantar a beleza da vida, presente do amor sem igual:
   G7                                       C
Missão do Teu povo escolhido! Senhor, vem livrar-nos do mal!

[Refrão]
   C                        A7              Dm
Vem dar-nos Teu Filho, Senhor, sustento no pão e no vinho,
   G7                                       C
E a força do Espírito Santo unindo o Teu povo a caminho!"""
    ),
    make_song(
        "bendito-e-louvado-seja-o-pai-nosso-criador",
        "Bendito e Louvado Seja o Pai Nosso Criador (Ofertório)",
        "Hinário Litúrgico CNBB",
        "Ofertório", "Tempo Comum", "D", 84, "4/4", "Toada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Oficial de Apresentação dos Dons", 100, "IGMR 74 / Missal Romano", "Sl 103",
        "Quatro acordes (D, G, A7, Bm) espelhando a oração do sacerdote sobre o pão e o vinho.",
        """[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               D
1. Bendito e louvado seja o Pai nosso Criador:
   Bm                       Em              A7          D
O pão que nós recebemos é prova do Seu amor!

[Refrão]
   G                        A7              D           Bm
Bendito seja Deus! Bendito seja Deus!
   Em                       A7              D
Bendito seja Deus para sempre, amém!"""
    ),
    make_song(
        "de-maos-estendidas-ofertamos-waldeci-farias",
        "De Mãos Estendidas Ofertamos",
        "Waldeci Farias / Hinário de Ofertório",
        "Ofertório", "Tempo Comum", "Dm", 82, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico de Ofertório das Paróquias Brasileiras", 99, "IGMR 74 / 1Cr 29, 14", "1Cr 29, 14",
        "Um dos cantos de ofertório mais tradicionais do Brasil, com apenas 4 acordes (Dm, Gm, A7, D7).",
        """[Intro] Dm  Gm  A7  Dm

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
Ofertamos ao Senhor o louvor da criação!"""
    ),
    make_song(
        "os-graos-que-formam-a-espiga-ofertorio",
        "Os Grãos Que Formam a Espiga",
        "Frei Luiz Turra / Hinário Litúrgico",
        "Ofertório", "Qualquer", "C", 82, "4/4", "Balada Eucarística", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Clássico Patrístico de Ofertório (Didaqué)", 100, "IGMR 74 / Didaqué 9, 4", "1Cor 10, 17",
        "Inspirado na Didaqué (século I): assim como os grãos espalhados pelos montes se unem num só pão, assim a Igreja seja reunida.",
        """[Intro] C  Am  Dm  G7  C

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
É dando que se recebe, morrendo se vai viver!"""
    ),
    make_song(
        "a-mesa-santa-que-preparamos-ofertorio",
        "A Mesa Santa Que Preparamos",
        "Pe. José Weber / Hinário CNBB",
        "Ofertório", "Tempo Comum", "D", 84, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Litúrgico de Preparação das Oferendas", 100, "IGMR 74", "Sl 22, 5; Lc 22, 19",
        "Quatro acordes simples (D, G, Em, A7) preparando o altar do sacrifício eucarístico.",
        """[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. A Mesa Santa que preparamos, mãos que se elevam a Ti, ó Senhor;
   Bm                       Em              A7          D
O pão e o vinho, frutos da terra, duro trabalho, carinho e amor!

[Refrão]
   G                        A7              D           Bm
Ô, ô, ô, recebe, Senhor!
   Em                       A7              D
Ô, ô, ô, recebe, Senhor!"""
    ),
    make_song(
        "eu-confesso-a-deus-e-a-vos-irmaos",
        "Eu Confesso a Deus e a Vós, Irmãos (Confiteor Cantado)",
        "Missal Romano / Melodia Litúrgica",
        "Ato Penitencial", "Qualquer", "Am", 76, "4/4", "Dedilhado Penitencial", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "I Fórmula Oficial do Ato Penitencial do Missal Romano", 100, "IGMR 51 / Missal Romano", "Tg 5, 16; Lc 18, 13",
        "A I Fórmula oficial do Ato Penitencial musicada em 4 acordes simples.",
        """[Intro] Am  Dm  E7  Am

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
E a vós, irmãos e irmãs, que rogueis por mim a Deus, nosso Senhor!"""
    ),
    make_song(
        "tende-piedade-de-nos-senhor-quaresma",
        "Senhor, Tende Piedade de Nós (Pelo Irmão Que Não Amei)",
        "Hinário Litúrgico da Quaresma",
        "Ato Penitencial", "Quaresma", "Em", 74, "4/4", "Balada Penitencial", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Penitencial Quaresmal", 99, "IGMR 51", "1Jo 4, 20; Sl 50",
        "Quatro acordes em Mi menor (Em, Am, B7, C) para o Ato Penitencial.",
        """[Intro] Em  Am  B7  Em

[Primeira Parte]
   Em                       Am              B7          Em
1. Senhor, tende piedade de nós! Senhor, tende piedade de nós!
   Am                       Em              B7          Em
Pelo irmão que não amei, pelo mal que lhe causei, piedade!

[Segunda Parte]
   Em                       Am              B7          Em
2. Ó Cristo, tende piedade de nós! Ó Cristo, tende piedade de nós!
   Am                       Em              B7          Em
Pelo bem que eu não fiz, pela paz que eu não quis, piedade!"""
    ),
    make_song(
        "senhor-servo-de-deus-ato-penitencial",
        "Senhor, Servo de Deus, Que Libertastes a Nossa Vida",
        "Missal Romano / CNBB",
        "Ato Penitencial", "Quaresma", "Dm", 76, "4/4", "Solene Penitencial", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "III Fórmula Oficial do Missal Romano para a Quaresma", 100, "Missal Romano - Quaresma", "Is 53; Fl 2, 7-8",
        "Texto literal da III Fórmula do Ato Penitencial do Missal Romano para o Tempo da Quaresma.",
        """[Intro] Dm  Gm  A7  Dm

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
Senhor, tende piedade de nós!"""
    ),
    make_song(
        "gloria-a-deus-nos-altos-ceus-cnbb",
        "Glória a Deus nos Altos Céus (Hinário CNBB)",
        "Ir. Miria T. Kolling / Hinário Litúrgico CNBB",
        "Glória", "Qualquer", "D", 100, "4/4", "Marcha Festiva", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Versão Poético-Litúrgica Tradicional da CNBB", 99, "IGMR 53 / Hinário Litúrgico CNBB", "Lc 2, 14",
        "Uma das melodias de Glória mais cantadas nas paróquias do Brasil há mais de 40 anos.",
        """[Intro] D  G  A7  D

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
Com o Espírito Divino, de Deus Pai no esplendor!"""
    ),
    make_song(
        "santo-e-o-senhor-meu-deus-digno-de-louvor",
        "Santo, Santo, Santo É o Senhor, Deus do Universo (Popular)",
        "Hinário Paroquial / Tradicional",
        "Santo", "Qualquer", "D", 88, "4/4", "Marcha Eucarística", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Texto Oficial Integral do Sanctus em Ré Maior", 100, "IGMR 79b / Missal Romano", "Is 6, 3; Mt 21, 9",
        "Santo em 4 acordes abertos (D, Bm, G, A7) com o texto oficial integral do Missal Romano.",
        """[Intro] D  Bm  G  A7  D

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
Bendito o que vem em nome do Senhor: Hosana nas alturas!"""
    ),
    make_song(
        "santo-dos-anjos-ze-vicente",
        "Santo, Santo, Santo, Dizem Todos os Anjos (Santo Popular)",
        "Hinário Popular / Adaptação Litúrgica",
        "Santo", "Tempo Comum", "G", 96, "4/4", "Marcha", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3, "Três Acordes Extremamente Simples (G, D7, C)", 95, "IGMR 79b", "Is 6, 3; Mt 21, 9",
        "Usa apenas 3 acordes (G, D7, C), sendo uma das cifras mais fáceis para quem está aprendendo as primeiras batidas no violão.",
        """[Intro] G  D7  G

[Primeira Parte]
   G                                        D7
Santo, Santo, Santo, Senhor Deus do universo!
   C                        D7              G
O céu e a terra proclamam a Vossa glória!

[Refrão]
   G                                        D7
Hosana nas alturas! Hosana nas alturas!
   C                        D7              G
Bendito o que vem em nome do Senhor: Hosana nas alturas!"""
    ),
    make_song(
        "cordeiro-de-deus-em-re-maior-simples",
        "Cordeiro de Deus (Versão Simples em 3 Acordes)",
        "Melodia Paroquial Tradicional",
        "Cordeiro", "Qualquer", "D", 76, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3, "Texto Oficial Integral em 3 Acordes (D, G, A7)", 100, "IGMR 83 / Missal Romano", "Jo 1, 29",
        "Apenas 3 acordes básicos (D, G, A7) com o texto litúrgico exato da Fração do Pão.",
        """[Intro] D  G  A7  D

[Primeira e Segunda Vezes]
   D                                        G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7                                       D
Tende piedade de nós! (2x)

[Terceira Vez]
   D                                        G
Cordeiro de Deus, que tirais o pecado do mundo,
   A7                                       D
Dai-nos a paz! Dai-nos a paz!"""
    ),
    make_song(
        "cordeiro-de-deus-em-mi-menor-quaresma",
        "Cordeiro de Deus (Solene para Quaresma e Advento)",
        "Pe. José Weber / Hinário Litúrgico CNBB",
        "Cordeiro", "Quaresma", "Em", 72, "4/4", "Dedilhado Sóbrio", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 3, "Agnus Dei Sóbrio em 3 Acordes para Quaresma e Advento", 100, "IGMR 83", "Jo 1, 29",
        "Em Mi menor com apenas 3 acordes (Em, Am, B7), próprio para o caráter austero da Quaresma e do Advento.",
        """[Intro] Em  Am  B7  Em

[Primeira e Segunda Vezes]
   Em                                       Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7                                       Em
Tende piedade de nós! (2x)

[Terceira Vez]
   Em                                       Am
Cordeiro de Deus, que tirais o pecado do mundo,
   B7                                       Em
Dai-nos a paz!"""
    ),

    # --- MAIS SALMOS RESPONSORIAIS DO LECIONÁRIO DOMINICAL ---
    make_song(
        "salmo-22-o-senhor-e-o-pastor-que-me-conduz-pe-jose-weber",
        "O Senhor É o Pastor Que Me Conduz (Salmo 22 Oficial)",
        "Pe. José Weber, svd / Lecionário Dominical",
        "Salmo", "Qualquer", "F", 78, "4/4", "Salmo Responsorial", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Texto Oficial do Lecionário Dominical (Salmo 22)", 100, "IGMR 61 / Lecionário", "Sl 22, 1-6",
        "O Salmo mais cantado do Lecionário em 4 acordes simples.",
        """[Intro] F  Bb  C7  F

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
E com óleo vós ungis minha cabeça, o meu cálice transborda!"""
    ),
    make_song(
        "salmo-121-que-alegria-quando-ouvimos-que-nos-disseram",
        "Que Alegria Quando Me Disseram: Vamos à Casa do Senhor (Salmo 121)",
        "Ir. Miria T. Kolling / Lecionário Dominical",
        "Salmo", "Advento", "G", 84, "4/4", "Salmo de Romaria", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo do 1º Domingo do Advento e Romarias (Salmo 121)", 100, "IGMR 61 / Salmo 121", "Sl 121, 1-9",
        "Salmo clássico de subida a Jerusalém, usado no 1º Domingo do Advento e festas de padroeiro.",
        """[Intro] G  C  D7  G

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
Para louvar, segundo a lei de Israel, o nome do Senhor!"""
    ),
    make_song(
        "salmo-50-piedade-o-senhor-tende-piedade-quaresma",
        "Piedade, Ó Senhor, Tende Piedade, Pois Pecamos Contra Vós (Salmo 50)",
        "Pe. José Weber / Lecionário da Quaresma",
        "Salmo", "Quaresma", "Dm", 72, "4/4", "Salmo Penitencial", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo da Quarta-Feira de Cinzas e 1º Domingo da Quaresma", 100, "IGMR 61 / Salmo 50 (Miserere)", "Sl 50, 3-6.12-14.17",
        "Texto oficial do Salmo 50 (Miserere) do Lecionário para a Quarta-Feira de Cinzas e Quaresma.",
        """[Intro] Dm  Gm  A7  Dm

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
Ó Senhor, não me afasteis de vossa face, nem retireis de mim o vosso Santo Espírito!"""
    ),
    make_song(
        "salmo-97-hoje-nasceu-para-nos-o-salvador-natal",
        "Hoje Nasceu Para Nós o Salvador, Que É Cristo, o Senhor (Salmo 95/97)",
        "Lecionário Dominical - Noite de Natal",
        "Salmo", "Natal", "D", 86, "4/4", "Salmo de Natal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Oficial da Missa da Noite de Natal", 100, "Missal Romano - Missa da Noite de Natal", "Sl 95, 1-3.11-13; Lc 2, 11",
        "O Salmo oficial da Missa do Galo (Noite de Natal) em 4 acordes simples (D, G, A7, Bm).",
        """[Intro] D  G  A7  D

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
E entre os povos do universo seus prodígios!"""
    ),
    make_song(
        "salmo-103-enviai-o-vosso-espirito-senhor-pentecostes",
        "Enviai o Vosso Espírito, Senhor, e da Terra Toda a Face Renovai (Salmo 103)",
        "Lecionário Dominical - Solenidade de Pentecostes",
        "Salmo", "Pentecostes", "C", 84, "4/4", "Salmo de Pentecostes", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Oficial de Pentecostes", 100, "Lecionário Dominical - Pentecostes / Salmo 103", "Sl 103, 1.24.29-31.34",
        "O Salmo mais cantado em Pentecostes e celebrações do Sacramento da Crisma.",
        """[Intro] C  F  G7  C

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
Enviais o vosso espírito e renascem, e da terra toda a face renovais!"""
    ),
    make_song(
        "salmo-33-provai-e-vede-quao-suave-e-o-senhor",
        "Provai e Vede Quão Suave É o Senhor (Salmo 33)",
        "Lecionário Dominical / Comunhão",
        "Salmo", "Tempo Comum", "D", 82, "4/4", "Salmo Eucarístico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Eucarístico Clássico (Salmo 33, 9)", 100, "IGMR 61 e 86 / Salmo 33", "Sl 33, 2-9",
        "O Salmo eucarístico por excelência da tradição da Igreja ('Provai e vede quão suave é o Senhor').",
        """[Intro] D  G  A7  D

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
Todas as vezes que o busquei, Ele me ouviu, e de todos os temores me livrou!"""
    ),
    make_song(
        "salmo-62-a-minha-alma-tem-sede-de-vos-meu-deus",
        "A Minha Alma Tem Sede de Vós, Como a Terra Sedenta (Salmo 62)",
        "Lecionário Dominical / Pe. José Weber",
        "Salmo", "Tempo Comum", "Em", 78, "4/4", "Salmo Contemplativo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo 62 Oficial do Lecionário", 100, "IGMR 61 / Salmo 62", "Sl 62, 2-9",
        "Quatro acordes em Mi menor (Em, Am, D7, G) cantando a sede da alma por Deus.",
        """[Intro] Em  Am  B7  Em

[Refrão]
   Em                       Am              D7          G
A minh'alma tem sede de Vós, como a terra sedenta,
   Am                       B7              Em
Ó meu Deus!

[Estrofes]
   Em                       Am              D7          G
1. Sois vós, ó Senhor, o meu Deus! Desde a aurora ansioso vos busco!
   Am                       B7              Em
A minh'alma tem sede de vós, minha carne também vos deseja!

   Em                       Am              D7          G
2. Pois melhor é a vossa graça do que a vida, por isso meus lábios vos exaltam;
   Am                       B7              Em
Quero bendizer-vos toda a vida, e elevar para o vosso nome as minhas mãos!"""
    ),
    make_song(
        "salmo-115-o-calice-por-nos-abençoado-quinta-feira-santa",
        "O Cálice Por Nós Abençoado É a Nossa Comunhão Com o Sangue do Senhor (Salmo 115)",
        "Lecionário Dominical - Quinta-Feira Santa da Ceia do Senhor",
        "Salmo", "Quaresma", "Dm", 76, "4/4", "Salmo da Ceia do Senhor", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Oficial da Missa da Ceia do Senhor (Quinta-Feira Santa)", 100,
        "Missal Romano - Quinta-Feira Santa / Salmo 115 / 1Cor 10, 16", "Sl 115, 12-13.15-18; 1Cor 10, 16",
        "Salmo obrigatório da Missa da Ceia do Senhor na Quinta-Feira Santa.",
        """[Intro] Dm  Gm  A7  Dm

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
Eis que sou o vosso servo, ó Senhor, vós quebrastes os meus grilhões!"""
    ),
    make_song(
        "salmo-21-meu-deus-meu-deus-por-que-me-abandonastes",
        "Meu Deus, Meu Deus, Por Que Me Abandonastes? (Salmo 21 - Domingo de Ramos)",
        "Lecionário Dominical - Domingo de Ramos e Sexta-Feira Santa",
        "Salmo", "Quaresma", "Am", 72, "4/4", "Salmo da Paixão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Oficial do Domingo de Ramos da Paixão do Senhor", 100,
        "Missal Romano - Domingo de Ramos / Salmo 21 (22)", "Sl 21, 8-9.17-20.23-24; Mt 27, 46",
        "Salmo messiânico rezado pelo próprio Cristo na Cruz, prescrito para o Domingo de Ramos.",
        """[Intro] Am  Dm  E7  Am

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
Eles repartem entre si as minhas vestes e sorteiam entre si a minha túnica!"""
    ),
    make_song(
        "salmo-30-pai-em-tuas-maos-entrego-o-meu-espirito",
        "Pai, em Tuas Mãos Entrego o Meu Espírito (Salmo 30 - Sexta-Feira da Paixão)",
        "Lecionário Dominical - Sexta-Feira da Paixão do Senhor",
        "Salmo", "Quaresma", "Dm", 70, "4/4", "Salmo da Paixão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Oficial da Ação Litúrgica da Sexta-Feira da Paixão", 100,
        "Missal Romano - Sexta-Feira Santa / Salmo 30 / Lucas 23, 46", "Sl 30, 2.6.12-13.15-17.25; Lc 23, 46",
        "O Salmo oficial da Sexta-Feira Santa, com a última prece de Jesus na Cruz.",
        """[Intro] Dm  Gm  A7  Dm

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
Em vossas mãos está o meu destino; fazei brilhar vosso semblante ao vosso servo!"""
    ),

    # --- MAIS CANTOS DE ENTRADA, NATAL, PÁSCOA, COMUNHÃO E ENVIO ---
    make_song(
        "noite-feliz-stille-nacht-natal",
        "Noite Feliz (Canto Tradicional da Noite de Natal)",
        "Pe. Joseph Mohr / Franz Gruber",
        "Comunhão", "Natal", "A", 68, "3/4", "Valsa Sacra de Natal", "↓  ↑ ↓  ↑ ↓",
        True, True, 3, "Hino Universal do Natal do Senhor (Composto por um Sacerdote Católico em 1818)", 100,
        "Missa da Noite de Natal / Tradição Universal", "Lc 2, 7-14",
        "Composto pelo sacerdote austríaco Pe. Joseph Mohr em 1818, usa apenas 3 acordes (A, E7, D)!",
        """[Intro] A  E7  A

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
E a nós todos salvar!"""
    ),
    make_song(
        "cristaos-vinde-todos-adeste-fideles-natal",
        "Cristãos, Vinde Todos (Adeste Fideles - Entrada de Natal)",
        "Hino Tradicional Latino de Natal",
        "Entrada", "Natal", "G", 88, "4/4", "Hino Processional de Natal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Litúrgico Tradicional do Natal do Senhor (Adeste Fideles)", 100,
        "Liturgia das Horas / Missa do Natal do Senhor", "Lc 2, 15; Mt 2, 2",
        "O hino de Entrada mais solene e tradicional da Missa de Natal.",
        """[Intro] G  D7  G  C  G  D7  G

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
Oh! Vinde, adoremos o Salvador!"""
    ),
    make_song(
        "vinde-cristaos-vinde-a-porfia-natal",
        "Vinde, Cristãos, Vinde à Porfia (Glória In Excelsis Deo)",
        "Hinário Tradicional de Natal",
        "Glória", "Natal", "F", 96, "4/4", "Hino Natalino", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico Natalino dos Anjos em Belém (Les Anges dans nos Campagnes)", 99,
        "Tempo do Natal / Lucas 2, 14", "Lc 2, 13-14",
        "Canto tradicional de Natal celebrando o coro dos anjos em Belém ('Gloria in excelsis Deo').",
        """[Intro] F  Bb  C7  F

[Primeira Parte]
   F                        C7              F
1. Vinde, cristãos, vinde à porfia, hinos cantemos de louvor,
   F                        C7              F
Hinos de paz e de alegria, que os anjos cantam ao Senhor:

[Refrão]
   F    Dm   Gm   C7   F    Bb   C7
Gló-o-o-o-o-ria in excelsis Deo!
   F    Dm   Gm   C7   F    Bb   C7   F
Gló-o-o-o-o-ria in excelsis Deo!"""
    ),
    make_song(
        "entao-e-natal-nasceu-jesus-em-belem",
        "Nasceu-nos Hoje um Menino (Antífona do Dia de Natal - Isaías 9, 5)",
        "Hinário Litúrgico CNBB - Natal do Senhor",
        "Entrada", "Natal", "D", 92, "4/4", "Marcha Festiva de Natal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona Oficial da Missa do Dia de Natal (Isaías 9, 5)", 100,
        "Missal Romano - Missa do Dia de Natal (Puer Natus Est)", "Is 9, 5; Sl 97",
        "Tradução cantada da Antífona de Entrada oficial da Missa do Dia de Natal ('Um menino nasceu para nós').",
        """[Intro] D  G  A7  D

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
Por maravilhas tão grandes que Ele fez por amor!"""
    ),
    make_song(
        "cristo-ressuscitou-aleluia-venceu-a-morte",
        "Cristo Ressuscitou, Aleluia! Venceu a Morte Com Amor",
        "Hinário Litúrgico da Páscoa",
        "Entrada", "Páscoa", "D", 96, "4/4", "Marcha Pascal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Clássico de Entrada para o Tempo Pascal", 100,
        "IGMR 47 / Tempo Pascal", "1Cor 15, 20; Lc 24, 6",
        "Quatro acordes simples (D, G, A7, Bm) proclamando a Ressurreição do Senhor.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Cristo ressuscitou, aleluia! Venceu a morte com amor!
   Bm                       Em              A7          D
Cristo ressuscitou, aleluia! Cantemos glória ao Salvador!

[Estrofe]
   G                        A7              D           Bm
1. O sepulcro está vazio, o Senhor ressuscitou;
   Em                       A7              D
Da escuridão da morte para a Vida nos levou!"""
    ),
    make_song(
        "por-sua-morte-a-morte-viu-o-fim-pascoa",
        "Por Sua Morte, a Morte Viu o Fim",
        "Dom Carlos Alberto Navarro / Waldeci Farias",
        "Entrada", "Páscoa", "D", 92, "4/4", "Marcha Pascal Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico Litúrgico da Páscoa no Brasil", 100,
        "Hinário Litúrgico CNBB - Páscoa", "Rm 6, 9; 1Cor 15, 55",
        "Um dos cantos pascais mais conhecidos do repertório litúrgico brasileiro.",
        """[Intro] D  G  A7  D

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
A vida triunfou: Jesus ressuscitou!"""
    ),
    make_song(
        "o-senhor-ressurgiu-aleluia-aleluia",
        "O Senhor Ressurgiu, Aleluia, Aleluia! (Canto de Entrada Pascal)",
        "Pe. Ney Brasil / Hinário Litúrgico CNBB",
        "Entrada", "Páscoa", "C", 96, "4/4", "Marcha Festiva Pascal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico do Domingo de Páscoa", 100,
        "IGMR 47 / Domingo da Ressurreição", "Lc 24, 34; Ap 1, 18",
        "Quatro acordes em Dó maior (C, F, Dm, G7) muito cantado em todos os domingos do Tempo Pascal.",
        """[Intro] C  F  G7  C

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
Vencida a morte para sempre, triunfa a vida eternamente!"""
    ),
    make_song(
        "antes-da-morte-e-ressurreicao- de-jesus-comunhao",
        "Antes da Morte e Ressurreição de Jesus (Isto É o Meu Corpo)",
        "Dom Carlos Alberto Navarro / Waldeci Farias",
        "Comunhão", "Quaresma", "Dm", 78, "4/4", "Balada Eucarística Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico Absoluto de Quinta-Feira Santa, Corpus Christi e Comunhão", 100,
        "IGMR 86 / Lucas 22, 19-20 / 1Coríntios 11, 23-26", "Lc 22, 19-20; 1Cor 11, 23-26",
        "Canta literalmente o relato da Instituição da Eucaristia; indispensável na Quinta-Feira Santa e Corpus Christi.",
        """[Intro] Dm  Gm  A7  Dm

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
Ele é a força na caminhada pra Deus!"""
    ),
    make_song(
        "eu-vim-para-que-todos-tenham-vida-comunhao",
        "Eu Vim Para Que Todos Tenham Vida (João 10, 10)",
        "Pe. José Weber, svd / Hinário Litúrgico CNBB",
        "Comunhão", "Tempo Comum", "Em", 80, "4/4", "Canto Processional de Comunhão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona Bíblica de Comunhão (João 10, 10)", 100,
        "IGMR 86 / João 10, 10", "Jo 10, 10; Jo 6, 51",
        "Refrão bíblico curtíssimo e solene em 4 acordes (Em, Am, B7, C) que toda a assembleia sabe de cor.",
        """[Intro] Em  Am  B7  Em

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
Onde sofre o teu irmão, Eu estou sofrendo nele!"""
    ),
    make_song(
        "da-cepa-brotou-a-rama-advento-natal",
        "Da Cepa Brotou a Rama (Isaías 11, 1-2)",
        "Reginaldo Veloso / Hinário Litúrgico do Advento",
        "Entrada", "Advento", "Em", 84, "4/4", "Toada Profética do Advento", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Bíblico-Profético do Advento (Isaías 11, 1-2)", 100,
        "Hinário Litúrgico CNBB - Advento / Isaías 11", "Is 11, 1-10",
        "Canta a profecia messiânica do tronco de Jessé e os 7 dons do Espírito Santo.",
        """[Intro] Em  Am  B7  Em

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
Achará sua alegria no temor do seu Senhor!"""
    ),
    make_song(
        "senhor-vem-salvar-teu-povo-advento",
        "Senhor, Vem Salvar Teu Povo (Das Trevas da Escravidão)",
        "Pe. José Weber, svd / Hinário do Advento",
        "Entrada", "Advento", "Em", 82, "4/4", "Canto de Súplica do Advento", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico Absoluto do Tempo do Advento", 100,
        "Hinário Litúrgico CNBB - Advento", "Is 63, 19; Sl 79",
        "Quatro acordes simples (Em, Am, D7, G, B7) no canto mais tradicional dos 4 Domingos do Advento.",
        """[Intro] Em  Am  B7  Em

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
Da rocha brota água viva, da treva nasce esplendor!"""
    ),
    make_song(
        "ouvi-o-senhor-o-clamor-do-vosso-povo-quaresma",
        "Volta, Meu Povo, ao Teu Senhor (Canto de Entrada da Quaresma)",
        "Hinário Litúrgico CNBB - Quaresma",
        "Entrada", "Quaresma", "Dm", 78, "4/4", "Canto Processional Quaresmal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Bíblico de Conversão Quaresmal (Joel 2, 12-13)", 100,
        "Missal Romano - Quarta-Feira de Cinzas e Quaresma / Joel 2", "Jl 2, 12-13; Os 14, 2",
        "Baseado na profecia de Joel proclamada na Quarta-Feira de Cinzas.",
        """[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              A7          Dm
Volta, meu povo, ao teu Senhor, e exultará teu coração;
   Gm                       Dm              A7          Dm
Ele será teu condutor, tua esperança de salvação!

[Estrofe]
   D7                       Gm              C7          F
1. Rasgai os vossos corações e não as vossas vestes;
   Gm                       Dm              A7          Dm
Voltai ao Senhor vosso Deus, porque Ele é compassivo e clemente!"""
    ),
    make_song(
        "pecador-agora-e-tempo-de-pesar-e-de-temor-quaresma",
        "Pecador, Agora É Tempo (Perdão, Senhor, Tão Grande É Meu Pecado)",
        "Hino Tradicional da Quaresma e Semana Santa",
        "Ato Penitencial", "Quaresma", "Am", 72, "4/4", "Hino Penitencial Tradicional", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Tradicional Secularde Via-Sacra e Quaresma", 98,
        "Diretório sobre Piedade Popular e Liturgia - Quaresma", "Sl 50; Lc 15, 18",
        "Cântico secular da tradição católica luso-brasileira para a Quaresma e Via-Sacra, em 4 acordes (Am, Dm, E7, C).",
        """[Intro] Am  Dm  E7  Am

[Primeira Parte]
   Am                                       E7
1. Pecador, agora é tempo de pesar e de temor:
   Dm                       Am              E7          Am
Serve a Deus, despreza o mundo, já não sejas pecador!

[Refrão]
   A7                       Dm              G7          C
Misericórdia, meu Deus, misericórdia!
   Dm                       Am              E7          Am
Perdão, Senhor, pelos meus tantos pecados!"""
    ),
    make_song(
        "hosana-ao-filho-de-davi-domingo-de-ramos",
        "Hosana Hey, Hosana Há (Domingo de Ramos)",
        "Roberto Malvezzi / Hinário do Domingo de Ramos",
        "Entrada", "Quaresma", "G", 98, "4/4", "Marcha Processional de Ramos", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3, "Clássico da Procissão de Ramos (Mateus 21, 9)", 99,
        "Missal Romano - Domingo de Ramos da Paixão do Senhor", "Mt 21, 9; Sl 23",
        "Apenas 3 acordes (G, C, D7) — o canto mais famoso da Procissão de Ramos em todo o Brasil!",
        """[Intro] G  C  D7  G

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
Com os ramos de oliveira, com alegria e muita paz!"""
    ),
    make_song(
        "os-filhos-dos-hebreus-domingo-de-ramos",
        "Os Filhos dos Hebreus, Com Ramos de Oliveira (Antífona Oficial de Ramos)",
        "Missal Romano - Domingo de Ramos",
        "Entrada", "Quaresma", "D", 92, "4/4", "Procissão Solene de Ramos", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona Oficial do Missal Romano para a Procissão de Ramos", 100,
        "Missal Romano - Domingo de Ramos (Pueri Hebraeorum)", "Jo 12, 13; Mt 21, 9",
        "Texto literal da Antífona do Missal Romano prescrita para a distribuição e procissão dos ramos.",
        """[Intro] D  G  A7  D

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
Foram ao encontro do Senhor, clamando: Hosana nas alturas!"""
    ),
    make_song(
        "nos-gloriamos-na-cruz-de-nosso-senhor-quinta-feira-santa",
        "Nós Nos Gloriamos na Cruz de Nosso Senhor (Antífona da Quinta-Feira Santa)",
        "Missal Romano - Quinta-Feira Santa (Gálatas 6, 14)",
        "Entrada", "Quaresma", "Dm", 82, "4/4", "Hino Processional Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona de Entrada Oficial da Missa da Ceia do Senhor (Gálatas 6, 14)", 100,
        "Missal Romano - Quinta-Feira Santa / Gálatas 6, 14", "Gl 6, 14; Sl 66",
        "A Antífona de Entrada oficial que abre o Sagrado Tríduo Pascal na noite da Quinta-Feira Santa.",
        """[Intro] Dm  Gm  A7  Dm

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
E faça resplandecer sobre nós a Sua face!"""
    ),
    make_song(
        "onde-ha-caridade-e-amor-ubi-caritas-lava-pes",
        "Onde Há Caridade e Amor, Aí Está Deus (Ubi Caritas - Lava-Pés)",
        "Missal Romano - Quinta-Feira Santa",
        "Ofertório", "Quaresma", "D", 78, "4/4", "Hino do Lava-Pés e Ofertório", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Oficial do Missal Romano para a Quinta-Feira Santa (Ubi Caritas)", 100,
        "Missal Romano - Quinta-Feira Santa / 1João 4, 16", "1Jo 4, 16; Jo 13, 34",
        "Hino milenar da Igreja ('Ubi caritas et amor, Deus ibi est') prescrito pelo Missal Romano na Quinta-Feira Santa.",
        """[Intro] D  G  A7  D

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
E amemo-nos uns aos outros com coração sincero!"""
    ),
    make_song(
        "eu-vos-dou-um-novo-mandamento-lava-pes",
        "Eu Vos Dou um Novo Mandamento: Que Vos Ameis Uns aos Outros (Lava-Pés)",
        "Missal Romano - Rito do Lava-Pés (João 13, 34)",
        "Comunhão", "Quaresma", "G", 80, "4/4", "Antífona do Lava-Pés", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona Oficial do Rito do Lava-Pés no Missal Romano", 100,
        "Missal Romano - Quinta-Feira Santa / João 13, 1-17.34-35", "Jo 13, 1-17.34-35",
        "Antífona bíblica oficial prescrita pelo Missal Romano durante o Rito do Lava-Pés.",
        """[Intro] G  C  D7  G

[Refrão - João 13, 34]
   G                        C               D7          G
Eu vos dou um novo Mandamento:
   Em                       Am              D7          G
Que vos ameis uns aos outros, assim como Eu vos amei!

[Estrofes - João 13]
   G                        Em              Am          D7
1. Depois de levantar-se da Ceia, o Senhor pôs água na bacia
   Am                       D7              G
E começou a lavar os pés dos discípulos: este exemplo vos dei!

   G                        Em              Am          D7
2. Nisto todos conhecerão que sois meus discípulos:
   Am                       D7              G
Se tiverdes amor uns pelos outros!"""
    ),
    make_song(
        "povo-meu-que-te-fiz-eu-improperios-sexta-feira-santa",
        "Povo Meu, Que Te Fiz Eu? (Impropérios da Adoração da Santa Cruz)",
        "Missal Romano - Sexta-Feira da Paixão do Senhor",
        "Comunhão", "Quaresma", "Em", 70, "4/4", "Impropérios da Santa Cruz", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Oficial da Adoração da Santa Cruz no Missal Romano (Miqueias 6, 3)", 100,
        "Missal Romano - Sexta-Feira da Paixão do Senhor / Miqueias 6, 3-4", "Mq 6, 3-4; Is 5, 1-4",
        "Os Impropérios oficiais do Missal Romano para o momento solene da Adoração da Santa Cruz.",
        """[Intro] Em  Am  B7  Em

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
E tu preparaste uma cruz para o teu Salvador!"""
    ),
    make_song(
        "fiel-madeiro-da-santa-cruz-sexta-feira-santa",
        "Fiel Madeiro da Santa Cruz (Crux Fidelis)",
        "Venâncio Fortunato (Séc. VI) / Missal Romano",
        "Comunhão", "Quaresma", "Dm", 72, "4/4", "Hino da Adoração da Cruz", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Litúrgico Oficial da Adoração da Cruz (Crux Fidelis)", 100,
        "Missal Romano - Sexta-Feira da Paixão do Senhor", "Gl 6, 14; 1Pd 2, 24",
        "Hino patrístico do século VI prescrito no Missal Romano para a Adoração da Santa Cruz.",
        """[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              C7          F
Fiel Madeiro da Santa Cruz, ó árvore sem rival!
   Gm                       Dm              A7          Dm
Que selva outro lenho produz, que traga em si fruto igual?
   Gm                       Dm              A7          Dm
Quão doce peso conduz o lenho celestial!"""
    ),
    make_song(
        "victimae-paschali-laudes-sequencia-da-pascoa",
        "Cantai, Cristãos, Afinal: Salve, Ó Vítima Pascal! (Sequência da Páscoa)",
        "Wipo de Borgonha (Séc. XI) / Missal Romano",
        "Aclamação", "Páscoa", "Dm", 86, "4/4", "Sequência Oficial da Páscoa", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Sequência Obrigatória do Domingo de Páscoa no Missal Romano", 100,
        "Missal Romano e Lecionário - Domingo da Ressurreição (GIRM 64)", "Lc 24, 1-12; 1Cor 5, 7",
        "A Sequência oficial obrigatória do Domingo de Páscoa antes do Aleluia do Evangelho.",
        """[Intro] Dm  C  Bb  A7  Dm

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
Ressuscitou de verdade: Ó Rei Cristo, piedade! Amém! Aleluia!"""
    ),
    make_song(
        "veni-sancte-spiritus-sequencia-de-pentecostes",
        "Espírito de Deus, Enviai dos Céus um Raio de Luz (Sequência de Pentecostes)",
        "Papa Inocêncio III (Séc. XIII) / Missal Romano",
        "Aclamação", "Pentecostes", "G", 80, "4/4", "Sequência Oficial de Pentecostes", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Sequência Obrigatória da Solenidade de Pentecostes no Missal Romano", 100,
        "Missal Romano e Lecionário - Solenidade de Pentecostes (GIRM 64)", "At 2, 1-11; Jo 14, 26",
        "A Sequência Áurea ('Veni Sancte Spiritus') obrigatória no Domingo de Pentecostes antes do Aleluia.",
        """[Intro] G  Em  C  D7  G

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
Dai em prêmio ao forte uma santa morte, alegria eterna! Amém! Aleluia!"""
    ),
    make_song(
        "vinde-espirito-criador-veni-creator-spiritus",
        "Vinde, Espírito Criador (Veni Creator Spiritus)",
        "Rábano Mauro (Séc. IX) / Liturgia das Horas",
        "Entrada", "Pentecostes", "D", 82, "4/4", "Hino Litúrgico de Pentecostes", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da Igreja para Pentecostes, Crismas e Ordenações", 100,
        "Liturgia das Horas / Pontifical Romano", "At 2; Rm 5, 5",
        "O grande hino da Igreja universal ao Espírito Santo, cantado em Crismas, Ordenações e Conclaves.",
        """[Intro] D  G  A7  D

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
E ao Espírito Divino, pelos séculos sem fim. Amém!"""
    ),
    make_song(
        "regina-caeli-rainha-do-ceu-alegrai-vos-pascoa",
        "Rainha do Céu, Alegrai-vos, Aleluia! (Regina Caeli)",
        "Antífona Mariana Oficial do Tempo Pascal",
        "Final", "Páscoa", "D", 92, "4/4", "Antífona Mariana Pascal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3, "Antífona Mariana Oficial do Tempo Pascal", 100,
        "Liturgia das Horas - Tempo Pascal", "Lc 24, 34",
        "Apenas 3 acordes (D, G, A7) na Antífona Mariana oficial que substitui o Angelus no Tempo Pascal.",
        """[Intro] D  G  A7  D

[Primeira Parte]
   D                                        A7
Rainha do Céu, alegrai-vos, aleluia!
   G                        A7              D
Porque Aquele que merecestes trazer em vosso seio, aleluia!

[Segunda Parte]
   D                                        A7
Ressuscitou como disse, aleluia!
   G                        A7              D
Rogai a Deus por nós, aleluia!"""
    ),
    make_song(
        "sub-tuum-praesidium-a-vossa-protecao-recorremos",
        "À Vossa Proteção Recorremos, Santa Mãe de Deus (Sub Tuum Praesidium)",
        "Oração Mariana Mais Antiga da Igreja (Séc. III)",
        "Final", "Qualquer", "Em", 76, "4/4", "Oração Mariana Antiga", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "A Mais Antiga Oração Mariana da Cristandade (c. 250 d.C.)", 100,
        "Liturgia das Horas / Catecismo da Igreja Católica 971", "Lc 1, 43",
        "A mais antiga oração dirigida a Nossa Senhora (século III) musicada em 4 acordes simples.",
        """[Intro] Em  Am  B7  Em

[Oração Integral]
   Em                                       Am
À vossa proteção recorremos, Santa Mãe de Deus:
   D7                                       G           B7
Não desprezeis as nossas súplicas em nossas necessidades,
   Em                       Am              B7          Em
Mas livrai-nos sempre de todos os perigos,
   Am                       B7              Em
Ó Virgem gloriosa e bendita! Amém!"""
    ),
    make_song(
        "te-deum-a-vos-o-deus-louvamos",
        "A Vós, Ó Deus, Louvamos (Hino Te Deum de Ação de Graças)",
        "Santo Ambrósio e Santo Agostinho (Séc. IV) / Missal Romano",
        "Ação de Graças", "Qualquer", "D", 88, "4/4", "Hino Solene de Ação de Graças", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "O Hino Oficial de Ação de Graças da Igreja Universal (Te Deum)", 100,
        "Liturgia das Horas / Missal Romano - Fim de Ano e Solenidades", "Is 6, 3; Sl 144",
        "O grande hino Te Deum cantado nas solenidades, ordenações e na Missa de Ação de Graças de fim de ano.",
        """[Intro] D  G  A7  D

[Primeira Parte]
   D                        G               A7          D
1. A Vós, ó Deus, louvamos, a Vós, Senhor, cantamos;
   Bm                       Em              A7          D
A Vós, Eterno Pai, adora toda a terra!

[Refrão]
   G                        A7              D           Bm
Santo, Santo, Santo, Senhor Deus do universo!
   Em                       A7              D
Em Vós, Senhor, esperamos: não sejamos confundidos para sempre!"""
    ),
]
