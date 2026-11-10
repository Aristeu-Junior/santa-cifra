# -*- coding: utf-8 -*-
"""
Parte 2 da Expansão Massiva do Santa Cifra (+105 músicas):
- Anjos de Resgate, Dalvimar Gallo, Vida Reluz, Rosa de Saron, Ministério Adoração e Vida, Celina Borges, Pe. Fábio de Melo
- Comunidade Shalom, Suely Façanha, Colo de Deus, Frei Gilson, Thiago Brado, Adriana Arydes
- Hinário Litúrgico CNBB, Pe. José Weber, Ir. Miria T. Kolling, Zé Vicente, Waldeci Farias, + Padre Zezinho e Padre Marcelo Rossi
"""

from part1_padre_zezinho_marcelo import make_song

ANJOS_VIDA_RELUZ_ROSA_SONGS = [
    make_song(
        "amigos-pela-fe-anjos-de-resgate",
        "Amigos Pela Fé",
        "Anjos de Resgate / Dalvimar Gallo",
        "Ação de Graças",
        "Qualquer",
        "D", 74, "4/4", "Balada Acústica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico de Fraternidade Cristã e Encontros", 93,
        "Eclo 6, 14 / Jo 15, 15", "Eclo 6, 14; Jo 15, 15",
        "Uma das cifras católicas mais tocadas no Brasil para encontros de jovens, casais e ação de graças fraterna.",
        """[Intro] D  A  Bm  G  Em  A7

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
Amigos, pra sempre, para sempre amigos sim, se Deus quiser!"""
    ),
    make_song(
        "manda-teus-anjos-anjos-de-resgate",
        "Manda Teus Anjos Sobre Nós",
        "Anjos de Resgate / Dalvimar Gallo",
        "Ação de Graças",
        "Qualquer",
        "G", 76, "4/4", "Balada de Oração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração de Intercessão e Consolação", 92,
        "Sl 90, 11 / Hb 1, 14", "Sl 90, 11; Hb 1, 14",
        "Quatro acordes abertos (G, D, Em, C) muito simples para momentos de oração.",
        """[Intro] G  D  Em  C

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
A Te louvar e glorificar!"""
    ),
    make_song(
        "mais-que-amigos-anjos-de-resgate",
        "Mais Que Amigos",
        "Anjos de Resgate",
        "Ação de Graças",
        "Qualquer",
        "G", 78, "4/4", "Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Comunhão Fraterna", 91,
        "Jo 15, 13-15", "Jo 15, 13-15",
        "Clássico de amizade cristã com acordes fáceis em Sol maior.",
        """[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Não é preciso mais adormecer pra sonhar com um anjo descendo do céu,
   C                        Am              D
Basta fechar os olhos e saber que somos mais que amigos!

[Refrão]
   G                        D               Em
Mais que amigos, irmãos na fé,
   C                        D               G
Unidos pelo amor de Jesus de Nazaré!"""
    ),
    make_song(
        "tua-familia-anjos-de-resgate",
        "Tua Família (Percebe e Entende)",
        "Anjos de Resgate",
        "Ação de Graças",
        "Qualquer",
        "G", 74, "4/4", "Balada Familiar", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto para Bênção das Famílias e Casamentos", 95,
        "Pastoral Familiar / Eclo 3, 1-16", "Eclo 3, 1-16; Cl 3, 13",
        "Muito tocada em Missas das famílias, bodas e encontros familiares.",
        """[Intro] G  D  Em  C  D  G

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
Tua família, teu abrigo e teu lar!"""
    ),
    make_song(
        "estou-aqui-anjos-de-resgate",
        "Estou Aqui (Pra Ser Amado e Te Amar)",
        "Anjos de Resgate / Dalvimar Gallo",
        "Ação de Graças",
        "Qualquer",
        "A", 72, "4/4", "Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Adoração Eucarística e Entrega", 95,
        "Adoração ao Santíssimo", "1Jo 4, 19; Sl 26",
        "Excelente para adoração ao Santíssimo Sacramento e ação de graças após a Comunhão.",
        """[Intro] A  E  F#m  D

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
Pelas almas que ainda não buscam Teu coração!"""
    ),
    make_song(
        "seja-luz-anjos-de-resgate",
        "Seja Luz",
        "Anjos de Resgate / Marcelinho",
        "Final",
        "Tempo Comum",
        "C", 88, "4/4", "Pop Acústico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Envio Baseado no Sermão da Montanha (Mt 5, 14)", 96,
        "IGMR 90 / Mateus 5, 14-16", "Mt 5, 14-16",
        "Quatro acordes simples (C, G, Am, F) inspirados em 'Vós sois a luz do mundo'.",
        """[Intro] C  G  Am  F

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
Brilhe a vossa luz diante dos irmãos, para a glória de Deus Pai!"""
    ),
    make_song(
        "perfeito-e-quem-te-criou-vida-reluz",
        "Perfeito É Quem Te Criou",
        "Walmir Alencar / Vida Reluz",
        "Final",
        "Qualquer",
        "E", 74, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, False, 5,
        "Hino Mariano de Contemplação da Anunciação", 97,
        "Lucas 1, 28-38 / Marialis Cultus", "Lc 1, 28-38",
        "Uma das canções marianas mais consagradas da música católica contemporânea.",
        """[Intro] E  B  C#m  A  B7  E

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
Se o Criador te coroou, te coroamos, ó Mãe, nossa Rainha!"""
    ),
    make_song(
        "como-es-lindo-vida-reluz",
        "Como És Lindo (Que Bom, Senhor, Ir ao Teu Encontro)",
        "Walmir Alencar / Vida Reluz",
        "Comunhão",
        "Qualquer",
        "D", 74, "4/4", "Balada Eucarística", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Comunhão e Adoração ao Santíssimo", 98,
        "IGMR 86 / Salmo 26, 4", "Sl 26, 4; Sl 83",
        "Clássico de Comunhão e Adoração sobre contemplar a beleza do Senhor na Sua casa.",
        """[Intro] D  A  Bm  G  Em  A7

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
Sou em Ti, és em mim! Minh'alma diz: Meu Deus, como és lindo!
   G                        Em              A7          D
Sou em Ti, és em mim! Minh'alma diz: Meu Deus, como és lindo!

[Final] D  G  A7  D"""
    ),
    make_song(
        "o-ceu-se-abre-ministerio-adoracao-e-vida",
        "O Céu Se Abre",
        "Walmir Alencar / Ministério Adoração e Vida",
        "Ação de Graças",
        "Qualquer",
        "A", 74, "4/4", "Adoração Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Adoração Eucarística e Louvor Celestial", 97,
        "Apocalipse 4, 8 / Isaías 6, 3", "Ap 4, 8; Is 6, 3",
        "Quatro acordes em Lá maior (A, E, F#m, D) proclamando a santidade de Deus.",
        """[Intro] A  E  F#m  D

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
Pelo Teu poder, renascer!"""
    ),
    make_song(
        "abraco-de-pai-walmir-alencar",
        "Abraço de Pai (Quanto Eu Esperei)",
        "Walmir Alencar / Ministério Adoração e Vida",
        "Ato Penitencial",
        "Quaresma",
        "D", 72, "4/4", "Balada Contemplativa", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto do Pai Misericordioso (Lucas 15)", 96,
        "Lucas 15, 20 / Reconciliação", "Lc 15, 11-32",
        "Retrata o diálogo amoroso do Pai Misericordioso acolhendo o filho que volta para casa.",
        """[Intro] D  A  Bm  G  A7  D

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
Não importa onde andaste: voltaste para Mim!"""
    ),
    make_song(
        "em-teu-altar-adoracao-e-vida",
        "Em Teu Altar",
        "Walmir Alencar / Ministério Adoração e Vida",
        "Ofertório",
        "Qualquer",
        "G", 76, "4/4", "Balada de Ofertório", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Entrega e Apresentação de Dons no Altar", 96,
        "IGMR 74 / Rm 12, 1", "Rm 12, 1",
        "Quatro acordes simples (G, D, Em, C) para o momento de preparação das oferendas.",
        """[Intro] G  D  Em  C

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
Pois só em Ti, Senhor, encontro a salvação!"""
    ),
    make_song(
        "hoje-livre-sou-adoracao-e-vida",
        "Hoje Livre Sou",
        "Walmir Alencar / Ministério Adoração e Vida",
        "Ação de Graças",
        "Páscoa",
        "G", 78, "4/4", "Pop Rock Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Vitória Pascal e Confiança em Deus", 94,
        "Gl 5, 1 / Jo 8, 36", "Gl 5, 1; Jo 8, 36",
        "Quatro acordes (G, D, Em, C) cantando a liberdade dos filhos de Deus em Cristo Ressuscitado.",
        """[Intro] G  D  Em  C

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
Hoje livre sou pelo Teu amor!"""
    ),
    make_song(
        "tudo-posso-celina-borges",
        "Tudo Posso Naquele Que Me Fortalece",
        "Celina Borges",
        "Ação de Graças",
        "Tempo Comum",
        "G", 78, "4/4", "Balada Bíblica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Bíblico Paulino (Filipenses 4, 13)", 96,
        "Filipenses 4, 13", "Fl 4, 13; 2Cor 12, 9-10",
        "Inspirado em Filipenses 4, 13 ('Tudo posso Naquele que me fortalece') com acordes acessíveis em Sol maior.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Posso, tudo posso Naquele que me fortalece:
   C                        Am              D
Nada e ninguém no mundo vai me fazer desistir!
   G                        D               Em
Quero, tudo quero, sem medo entregar meus projetos:
   C                        D               G
Deixar-me guiar nos caminhos que Deus desejou pra mim e ali estar!"""
    ),
    make_song(
        "nas-asas-do-senhor-celina-borges",
        "Nas Asas do Senhor (Sei Que os Que Confiam no Senhor)",
        "Celina Borges",
        "Ação de Graças",
        "Tempo Comum",
        "G", 82, "4/4", "Balada Bíblica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Bíblico de Esperança (Isaías 40, 31)", 97,
        "Isaías 40, 31", "Is 40, 29-31",
        "Paráfrase musical direta de Isaías 40, 31 em 4 acordes simples (G, Em, C, D).",
        """[Intro] G  Em  C  D

[Primeira Parte]
   G                                        Em
1. Sei que os que confiam no Senhor
   C                                        D
Revigoram suas forças, suas forças se renovam!
   G                                        Em
Posso até cair ou vacilar, mas consigo levantar,
   C                        D               G       G7
Pois recebo d'Ele asas, e como águia me preparo pra voar!

[Refrão]
   C                        D               G       Em
Eu posso ir muito além de onde estou,
   C                        D               G       Em
Vou nas asas do Senhor!
   C                        D               G       Em
O Teu amor é o que me conduz:
   C                        D               G
Posso voar e subir sem me cansar!"""
    ),
    make_song(
        "sem-voce-rosa-de-saron",
        "Sem Você (Minha Alma Tem Sede de Ti)",
        "Rosa de Saron / Guilherme de Sá",
        "Ação de Graças",
        "Qualquer",
        "Em", 78, "4/4", "Rock Acústico Sacro", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Cântico de Sede de Deus (Salmo 62 / Salmo 41)", 94,
        "Salmo 62, 2 / Salmo 41, 2", "Sl 62, 2; Sl 41, 2-3",
        "Uma das músicas mais tocadas do Rosa de Saron no Cifra Club, usando apenas 4 acordes (Em, C, G, D)!",
        """[Intro] Em  C  G  D  (2x)

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
Tu és meu Tudo, meu Senhor e meu Deus!"""
    ),
    make_song(
        "deus-cuida-de-mim-pe-fabio-de-melo",
        "Deus Cuida de Mim",
        "Padre Fábio de Melo / Kleber Lucas",
        "Ação de Graças",
        "Tempo Comum",
        "G", 74, "4/4", "Balada de Confiança", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Confiança na Divina Providência", 93,
        "1Pd 5, 7 / Mt 6, 25-34", "1Pd 5, 7; Sl 120",
        "Quatro acordes simples em Sol maior sobre o cuidado providente de Deus.",
        """[Intro] G  D  Em  C

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
Deus cuida de mim!"""
    ),
    make_song(
        "humano-demais-pe-fabio-de-melo",
        "Tudo É do Pai / Humano Amor de Deus",
        "Padre Fábio de Melo",
        "Comunhão",
        "Tempo Comum",
        "C", 76, "4/4", "Balada Poética", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Contemplação da Encarnação do Verbo", 95,
        "Jo 1, 14 / Fl 2, 6-8", "Jo 1, 14",
        "Meditação poética sobre o Verbo que se fez carne e armou sua tenda entre nós.",
        """[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. O Deus que fez o céu e a terra quis morar em nosso chão,
   F                        Dm              G7
Partilhou a nossa mesa, repartiu o mesmo Pão!

[Refrão]
   C                        G               Am
Bendito seja o Verbo que entre nós veio habitar,
   F                        G7              C
E na Santa Eucaristia decidiu permanecer e nos amar!"""
    ),
    make_song(
        "alma-de-cristo-oracao-santo-inacio",
        "Alma de Cristo (Anima Christi)",
        "Santo Inácio de Loyola / Melodia Tradicional e Shalom",
        "Ação de Graças",
        "Qualquer",
        "D", 68, "4/4", "Oração Pós-Comunhão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração Tradicional do Missal Romano para Ação de Graças", 100,
        "Missal Romano - Orações de Ação de Graças após a Missa", "Jo 6, 54-56; Jo 19, 34",
        "Oração clássica indulgenciada presente no Missal Romano para rezar e cantar logo após a Sagrada Comunhão.",
        """[Intro] D  Bm  G  A7  D

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
Por todos os séculos dos séculos. Amém!"""
    ),
    make_song(
        "nada-te-perturbe-santa-teresa-davila",
        "Nada Te Perturbe (Só Deus Basta)",
        "Santa Teresa d'Ávila / Taizé & Liturgia",
        "Ação de Graças",
        "Qualquer",
        "Am", 70, "4/4", "Ostinato Contemplativo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração Clássica de Santa Teresa de Jesus (Doutora da Igreja)", 100,
        "Liturgia das Horas / Meditação Pós-Comunhão", "Sl 45, 2; Fl 4, 6-7",
        "Quatro acordes fixos (Am, Dm, G, C, E7) sobre o poema místico de Santa Teresa d'Ávila.",
        """[Intro] Am  Dm  G  C  E7  Am

[Refrão Contemplativo]
   Am                       Dm
Nada te perturbe, nada te espante,
   G                        C               E7
Quem a Deus tem, nada lhe falta!
   Am                       Dm
Nada te perturbe, nada te espante:
   E7                       Am
Só Deus basta! (2x)"""
    ),
]

SHALOM_COLO_FREI_GILSON_SONGS = [
    make_song(
        "oferta-de-amor-venho-senhor-minha-vida-oferecer",
        "Oferta de Amor (Venho, Senhor, Minha Vida Oferecer)",
        "Ministério Koinonya / Comunidade Shalom",
        "Ofertório",
        "Qualquer",
        "G", 74, "4/4", "Balada de Ofertório", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico de Ofertório nas Paróquias (Romanos 12, 1)", 96,
        "IGMR 74 / Romanos 12, 1", "Rm 12, 1",
        "Uma das músicas de Ofertório mais fáceis e mais cantadas nas Missas dominicais em todo o Brasil.",
        """[Intro] G  D  Em  C  D7  G

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
Estar ao Teu lado, Senhor!"""
    ),
    make_song(
        "belissimo-esposo-comunidade-shalom",
        "Belíssimo Esposo",
        "Comunidade Católica Shalom / Suely Façanha",
        "Ação de Graças",
        "Qualquer",
        "G", 70, "4/4", "Adoração Eucarística", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino Contemplativo de Adoração Eucarística", 98,
        "Salmo 44, 3 / Cântico dos Cânticos", "Sl 44, 3; Ct 5, 10",
        "Clássico da Comunidade Shalom para adoração ao Santíssimo Sacramento e ação de graças.",
        """[Intro] G  D  Em  C

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
Ó Jesus, meu Amado, Esposo da minh'alma,
   C                        D               G
Ao Teus pés quero ficar e Te adorar!"""
    ),
    make_song(
        "estrangeiro-aqui-comunidade-shalom",
        "Estrangeiro Aqui (O Céu É o Meu Lugar)",
        "Comunidade Católica Shalom / Missionário Shalom",
        "Comunhão",
        "Tempo Comum",
        "G", 78, "4/4", "Balada Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Escatológico sobre a Pátria Celeste (Filipenses 3, 20)", 96,
        "Filipenses 3, 20 / 1Pedro 2, 11", "Fl 3, 20; Hb 13, 14",
        "Quatro acordes simples (G, D, Em, C) lembrando que nossa pátria definitiva é o Céu.",
        """[Intro] G  D  Em  C

[Primeira Parte]
   G                        D               Em
1. Eu sou estrangeiro aqui, o Céu é o meu lugar,
   C                        Am              D
É de onde vim, é pra onde vou, é lá onde eu vou morar!

[Refrão]
   G                        D               Em
O Senhor é minha luz e salvação, de quem terei medo?
   C                        D               G
O Senhor é a segurança da minha vida!"""
    ),
    make_song(
        "yeshua-colo-de-deus-comunidade",
        "Yeshua (Te Chamam de Deus e de Senhor)",
        "Comunidade Colo de Deus / Comunidade Shalom",
        "Ação de Graças",
        "Qualquer",
        "Em", 68, "4/4", "Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Adoração ao Santíssimo Nome de Jesus", 94,
        "Catecismo 430 (Yeshua = Deus Salva)", "Mt 1, 21; Fl 2, 9-11",
        "Usa apenas 4 acordes repetidos (Em, C, G, D) do início ao fim! Muito fácil de tocar.",
        """[Intro] Em  C  G  D

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
Bendito é o Teu Nome, Jesus!"""
    ),
    make_song(
        "acaso-nao-sabeis-colo-de-deus",
        "Acaso Não Sabeis (Eu Me Consagro a Ti)",
        "Flávio Vitor Jr. / Comunidade Colo de Deus",
        "Final",
        "Qualquer",
        "D", 72, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Consagração a Nossa Senhora", 96,
        "Lumen Gentium 62 / Nossa Senhora de Guadalupe", "Jo 19, 26-27",
        "Inspirada nas palavras de Nossa Senhora de Guadalupe a São Juan Diego ('Acaso não sabeis que eu sou da Imaculada?').",
        """[Intro] D  G  Bm  A

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
Só quem já foi órfão sabe o valor do colo de Mãe!"""
    ),
    make_song(
        "acalma-minha-tempestade-frei-gilson",
        "Acalma Minha Tempestade",
        "Frei Gilson / Som do Monte",
        "Ação de Graças",
        "Tempo Comum",
        "G", 72, "4/4", "Balada de Oração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração Evangélica sobre a Tempestade Acalmada (Marcos 4, 39)", 96,
        "Marcos 4, 35-41", "Mc 4, 35-41; Sl 106, 29",
        "Quatro acordes simples (G, D, Em, C) meditando o Evangelho de Jesus acalmando o mar e o coração.",
        """[Intro] G  D  Em  C

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
Eu sei que estás na barca, ó Filho de Deus!"""
    ),
    make_song(
        "eu-te-levantarei-frei-gilson",
        "Eu Te Levantarei",
        "Frei Gilson / Som do Monte",
        "Ação de Graças",
        "Quaresma",
        "C", 70, "4/4", "Balada de Consolação", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Consolação e Esperança Cristã", 94,
        "Isaías 41, 10 / Mateus 11, 28", "Is 41, 10; Mt 11, 28",
        "Quatro acordes fixos (C, G, Am, F) muito fáceis de tocar no violão e teclado.",
        """[Intro] C  G  Am  F

[Refrão]
   C                                        G
Filho, Eu te levantarei!
   Am                                       F
Filho, não te abandonarei!
   C                                        G
Mesmo quando tudo parecer perdido,
   Am                       F               C
Eu sou o teu Deus e estou contigo!"""
    ),
    make_song(
        "deixa-deus-sonhar-em-ti-frei-gilson",
        "Deixa Deus Sonhar em Ti",
        "Frei Gilson / Som do Monte",
        "Comunhão",
        "Tempo Comum",
        "G", 74, "4/4", "Balada Vocacional", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Vocacional e de Entrega à Vontade Divina", 94,
        "Jeremias 29, 11 / Vocação", "Jr 29, 11; Ef 3, 20",
        "Quatro acordes abertos (G, D, Em, C) para momentos vocacionais e de entrega.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D
Deixa Deus sonhar em ti,
   Em                       C
Deixa Deus agir em ti!
   G                        D
Os planos do Senhor são maiores que os teus:
   Em                       C               G
Confia no amor de Deus!"""
    ),
    make_song(
        "minha-essencia-thiago-brado",
        "Minha Essência (Vim Até Aqui Derramar o Meu Passado em Ti)",
        "Thiago Brado",
        "Ato Penitencial",
        "Quaresma",
        "G", 72, "4/4", "Balada Acústica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Conversão e Intimidade com Deus", 94,
        "Celebracões Penitenciais e Adoração", "Sl 50; Lc 7, 37-50",
        "Uma das cifras católicas mais acessadas da última década, toda estruturada em 4 acordes (G, D, Em, C)!",
        """[Intro] G  D  Em  C

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
Refaz a morada, habita em mim!"""
    ),
    make_song(
        "verdades-do-tempo-thiago-brado",
        "Verdades do Tempo",
        "Thiago Brado",
        "Ação de Graças",
        "Tempo Comum",
        "C", 74, "4/4", "Dedilhado / Acústico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Reflexivo sobre o Amor e o Tempo de Deus", 93,
        "Eclesiastes 3, 1 / Mateus 6, 21", "Ecl 3, 1; Mt 6, 21",
        "Quatro acordes básicos (C, G, Am, F) de execução simples.",
        """[Intro] C  G  Am  F

[Primeira Parte]
   C                        G               Am
1. Essa é uma canção de amor, veja onde está o seu coração;
   F                        G               C
Coloque-o na palma da mão de Deus!

[Refrão]
   C                        G               Am
O tempo passa e só o amor de Deus permanece,
   F                        G               C
Quem ama a Cristo nunca envelhece na fé!"""
    ),
    make_song(
        "kyrie-eleison-como-a-ovelha-perdida-shalom",
        "Kyrie Eleison (Como a Ovelha Perdida)",
        "Comunidade Católica Shalom",
        "Ato Penitencial",
        "Qualquer",
        "Bm", 74, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Ato Penitencial Tropado Canônico (III Fórmula do Missal)", 100,
        "IGMR 51-52 / Lucas 15, 4-6", "Lc 15, 4-6",
        "Um dos Atos Penitenciais mais cantados nas Missas no Brasil, unindo os tropos do Bom Pastor às invocações Kyrie/Christe Eleison.",
        """[Intro] Bm  G  D  A

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
Kyrie Eleison! Kyrie Eleison! Kyrie Eleison!"""
    ),
    make_song(
        "gloria-a-deus-nas-alturas-shalom-capella",
        "Glória a Deus nas Alturas (Shalom)",
        "Comunidade Católica Shalom",
        "Glória",
        "Qualquer",
        "E", 104, "4/4", "Pop Litúrgico Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Texto Oficial Integral do Missal Romano", 100,
        "IGMR 53 / Missal Romano", "Lc 2, 14",
        "Fiel palavra por palavra ao Hino de Louvor do Missal Romano, muito cantado em paróquias e grupos jovens.",
        """[Intro] E  B  C#m  A

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
Com o Espírito Santo, na glória de Deus Pai. Amém!"""
    ),
    make_song(
        "santo-suely-facanha-shalom",
        "Santo, Santo, Santo (Shalom / Suely Façanha)",
        "Suely Façanha / Comunidade Shalom",
        "Santo",
        "Qualquer",
        "Em", 82, "4/4", "Solene Eucarístico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Texto Litúrgico Integral do Sanctus", 100,
        "IGMR 79b / Missal Romano", "Is 6, 3; Mt 21, 9",
        "Santo litúrgico em 4 acordes (Em, C, D, B7) com texto integral da Oração Eucarística.",
        """[Intro] Em  C  D  Em

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
Hosana nas alturas! Hosana!"""
    ),
    make_song(
        "cordeiro-de-deus-shalom",
        "Cordeiro de Deus (Comunidade Shalom)",
        "Comunidade Católica Shalom",
        "Cordeiro",
        "Qualquer",
        "G", 72, "4/4", "Balada Suave da Fração do Pão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Texto Oficial Integral do Agnus Dei", 100,
        "IGMR 83 / Missal Romano", "Jo 1, 29",
        "Agnus Dei com texto canônico integral e apenas 4 acordes (G, Bm/Em, C, D).",
        """[Intro] G  Em  C  D

[Primeira e Segunda Vezes]
   G                        Em              C               D
Cordeiro de Deus, que tirais o pecado do mundo,
   Am                       C               D               G
Tende piedade de nós! (2x)

[Terceira Vez]
   G                        Em              C               D
Cordeiro de Deus, que tirais o pecado do mundo,
   C                        D               G
Dai-nos a paz, dai-nos a paz, Senhor, a Vossa paz!"""
    ),
    make_song(
        "regaco-acolhedor-suely-facanha",
        "Regaço Acolhedor (Salmo 130)",
        "Suely Façanha / Comunidade Shalom",
        "Ação de Graças",
        "Qualquer",
        "D", 70, "4/4", "Dedilhado / Meditação", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Paráfrase do Salmo 130 (Como Criança no Colo da Mãe)", 98,
        "Salmo 130 (131) / Pós-Comunhão", "Sl 130, 1-3",
        "Canto de profunda paz interior inspirado no Salmo 130.",
        """[Intro] D  G  Em  A7  D

[Primeira Parte]
   D                        G               D
1. Oh, minh'alma, retorna à tua paz,
   G                        Em              A7
Como criança bem tranquila no regaço acolhedor de sua mãe!

[Refrão]
   D                        G               Bm          A7
Minha mãe é a Virgem Maria,
   G                        Em              A7          D
É ela que agora vai me acolher, me abraçar, me perdoar, me compreender,
   G                        A7              D
Me acalmar, me ensinar, me educar, me formar, me amar!"""
    ),
]

HINARIO_CNBB_E_CLASSICOS_SONGS = [
    make_song(
        "eis-me-aqui-senhor-aqui-estou",
        "Eis-me Aqui, Senhor (Aqui Estou Pra Fazer Tua Vontade)",
        "Hinário Litúrgico CNBB / Pe. José Weber",
        "Entrada",
        "Tempo Comum",
        "G", 86, "4/4", "Marcha Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Antífona Bíblica de Entrada e Vocação (Salmo 39 / Hebreus 10, 7)", 100,
        "IGMR 47 / Salmo 39, 8-9 / Hebreus 10, 7", "Sl 39, 8-9; Hb 10, 7",
        "Texto 100% bíblico e litúrgico, ideal para Missa Dominical e Mês Vocacional.",
        """[Intro] G  C  D7  G

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
Sou chamado a ser fermento, sal e luz, e por isso respondi: aqui estou!"""
    ),
    make_song(
        "cristo-quero-ser-instrumento-oracao-sao-francisco",
        "Oração de São Francisco (Senhor, Fazei-me Instrumento de Vossa Paz)",
        "Pe. Irala, sj / Tradicional Franciscano",
        "Comunhão",
        "Qualquer",
        "Em", 78, "4/4", "Dedilhado / Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico Universal da Espiritualidade Cristã", 98,
        "Estudo 79 CNBB / Festa de São Francisco", "Mt 5, 9; Gl 6, 14",
        "Uma das cifras católicas mais famosas de todos os tempos no Brasil.",
        """[Intro] Em  Am  B7  Em

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
E é morrendo que se vive para a vida eterna!"""
    ),
    make_song(
        "sim-eu-quero-que-a-luz-de-deus",
        "Sim, Eu Quero Que a Luz de Deus",
        "Pe. José Weber / Hinário Litúrgico",
        "Comunhão",
        "Páscoa",
        "D", 88, "4/4", "Balada Pascal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Clássico de Comunhão e Crisma", 97,
        "IGMR 86 / Hinário Litúrgico CNBB", "Jo 8, 12; Rm 8, 19",
        "Quatro acordes simples (D, G, A7, Bm) muito cantados no Tempo Pascal e na Comunhão.",
        """[Intro] D  G  A7  D

[Refrão]
   D                                        G
Sim, eu quero que a luz de Deus que um dia em mim brilhou,
   A7                                       D
Jamais se esconda e não se apague em mim o seu fulgor!
   D                        D7              G
Sim, eu quero que o meu amor ajude o meu irmão
   D                        A7              D
A caminhar guiado por Tua mão, em Tua lei, em Tua luz, Senhor!

[Estrofes]
   Bm                       F#m             G           D
1. Esta terra, os astros, o sertão em paz, esta flor e o pássaro feliz que vês,
   Em                       A7              D
Não sentirão, não poderão jamais viver esta vida singular que Deus nos dá!"""
    ),
    make_song(
        "vos-sois-o-caminho-a-verdade-e-a-vida",
        "Vós Sois o Caminho, a Verdade e a Vida",
        "Lindberg Pires / Hinário Litúrgico CNBB",
        "Comunhão",
        "Tempo Comum",
        "D", 82, "4/4", "Canto Processional de Comunhão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Antífona Bíblica de Comunhão (João 14, 6)", 100,
        "IGMR 86 / João 14, 6 / João 6, 51", "Jo 14, 6; Jo 6, 51",
        "Clássico processional de Comunhão com refrão curto e fácil para toda a assembleia repetir sem folheto.",
        """[Intro] D  G  A7  D

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
Tem vida só quem segue os passos de Jesus!"""
    ),
    make_song(
        "pelos-prados-e-campinas-salmo-22",
        "Pelos Prados e Campinas Verdejantes Eu Vou (O Senhor É o Pastor)",
        "Frei Fabreti, ofm / Salmo 22 (23)",
        "Comunhão",
        "Qualquer",
        "D", 80, "4/4", "Balada Pastoral", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico Litúrgico Baseado no Salmo 22 (O Bom Pastor)", 100,
        "IGMR 61 e 86 / Salmo 22 (23)", "Sl 22, 1-6; Jo 10, 11",
        "Um dos cânticos litúrgicos mais amados e cantados da Igreja no Brasil para o Domingo do Bom Pastor e Comunhão.",
        """[Intro] D  G  A7  D

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
Tua bondade e Teu amor me acompanham por todos os dias da minha vida!"""
    ),
    make_song(
        "andavam-pensando-tao-tristes-emaus",
        "Andavam Pensando Tão Tristes (Discípulos de Emaús)",
        "Pe. Jocy Rodrigues / Hinário Litúrgico",
        "Comunhão",
        "Páscoa",
        "D", 82, "4/4", "Balada Eucarística", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Evangélico Pascal de Comunhão (Lucas 24, 13-35)", 100,
        "IGMR 86 / Lucas 24, 29-31", "Lc 24, 13-35",
        "Narra o Evangelho dos discípulos de Emaús que reconhecem o Senhor ao partir o Pão.",
        """[Intro] D  Em  A7  D

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
Dos dois, o coração ardia, e aos olhos a fé se lhes abriu!"""
    ),
    make_song(
        "um-coracao-para-amar-ofertorio",
        "Um Coração Para Amar",
        "Pe. Zezinho, scj / Hinário de Ofertório",
        "Ofertório",
        "Tempo Comum",
        "G", 84, "4/4", "Balada de Ofertório", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico de Apresentação dos Dons e Vocação", 96,
        "IGMR 74 / Ezequiel 36, 26", "Ez 36, 26; Mt 20, 28",
        "Canto de ofertório em 4 acordes simples (G, Em, C, D7) muito presente nos folhetos de Missa.",
        """[Intro] G  Em  C  D7  G

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
Toma, Senhor, que ele é Teu, meu coração não é meu! (2x)"""
    ),
    make_song(
        "com-minha-mae-estarei-tradicional",
        "Com Minha Mãe Estarei",
        "Hinário Mariano Tradicional",
        "Final",
        "Qualquer",
        "D", 84, "3/4", "Valsa Mariana", "↓  ↑ ↓  ↑ ↓",
        True, True, 3,
        "Hino Mariano Tradicional Brasileiro", 99,
        "Piedade Mariana / Canto Final", "Ap 12, 1; Lc 1, 48",
        "Apenas 3 acordes (D, A7, G) num dos hinos marianos mais tradicionais da Igreja Católica.",
        """[Intro] D  A7  D

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
Do Onipotente ao mando, hosanas Lhe darei!"""
    ),
    make_song(
        "dai-nos-a-bencao-o-mae-querida",
        "Dai-nos a Bênção, Ó Mãe Querida (Nossa Senhora Aparecida)",
        "Hinário Oficial de Nossa Senhora Aparecida",
        "Final",
        "Qualquer",
        "G", 88, "4/4", "Hino Mariano", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino Tradicional da Padroeira do Brasil", 100,
        "Solenidade de Nossa Senhora da Conceição Aparecida (12 de Outubro)", "Lc 1, 42",
        "Canto curto de 4 acordes cantado em todas as paróquias do Brasil para pedir a bênção da Mãe Aparecida.",
        """[Intro] G  C  D7  G

[Refrão]
   G                        Em              Am          D7
Dai-nos a bênção, ó Mãe querida,
   Am                       D7              G
Nossa Senhora Aparecida!
   G7                       C               Cm
Dai-nos a bênção, ó Mãe querida,
   G                        D7              G
Nossa Senhora Aparecida!

[Estrofe]
   G                        Em              Am          D7
1. Sob esse manto do azul do céu,
   Am                       D7              G
Guardai-nos sempre no amor de Deus!"""
    ),
    make_song(
        "santa-mae-maria-nessa-travessia",
        "Santa Mãe Maria, Nessa Travessia (Manto Cor de Anil)",
        "José Acácio Santana / Hinário Mariano",
        "Final",
        "Qualquer",
        "C", 82, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico Mariano Litúrgico de Envio", 99,
        "Hinário Litúrgico CNBB / Canto Final", "Jo 2, 1-11; At 1, 14",
        "Quatro acordes simples (C, G7, F, Am) em um dos cantos finais marianos mais tradicionais da Missa.",
        """[Intro] C  F  G7  C

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
Com justiça queres que nossas mulheres sejam construtoras do Brasil!"""
    ),
    make_song(
        "imaculada-maria-de-deus",
        "Imaculada, Maria de Deus",
        "Frei Fabreti, ofm / Hinário Mariano",
        "Final",
        "Advento",
        "D", 82, "4/4", "Balada Mariana Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Mariano de Advento e Solenidades de Nossa Senhora", 100,
        "Solenidade da Imaculada Conceição (8 de Dezembro) / Hinário CNBB", "Lc 1, 28.38",
        "Quatro acordes (D, G, A7, Bm) celebrando Maria Imaculada, modelo da Igreja.",
        """[Intro] D  G  A7  D

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
Um coração que era "Sim" para Deus: Reino de Deus renovando este chão!"""
    ),
    make_song(
        "salve-rainha-mae-de-misericordia",
        "Salve Rainha, Mãe de Misericórdia",
        "Antífona Mariana Oficial da Igreja",
        "Final",
        "Tempo Comum",
        "D", 78, "4/4", "Hino Mariano Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Antífona Mariana Oficial da Liturgia das Horas", 100,
        "Liturgia das Horas - Completas / Missal Romano", "Lc 1, 42; Jo 19, 27",
        "Uma das 4 grandes Antífonas Marianas oficiais da Igreja Católica, prescrita para o Tempo Comum.",
        """[Intro] D  G  A7  D

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
Ó clemente, ó piedosa, ó doce sempre Virgem Maria!"""
    ),
    make_song(
        "povo-de-reis-assembleia-santa-lucien-deiss",
        "Povo de Reis, Assembleia Santa (Povo de Deus, Bendizei o Senhor)",
        "Pe. Lucien Deiss / Hinário Litúrgico CNBB",
        "Entrada",
        "Tempo Comum",
        "G", 88, "4/4", "Hino Processional Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino Litúrgico Conciliar (1 Pedro 2, 9 / Lumen Gentium 9)", 100,
        "IGMR 47 / 1Pedro 2, 9 / Sacrosanctum Concilium", "1Pd 2, 9; Ex 19, 6",
        "Obra-prima da música litúrgica pós-conciliar baseada em 1 Pedro 2, 9 sobre o sacerdócio comum dos fiéis.",
        """[Intro] G  Em  C  D7  G

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
Nós Te louvamos, eterna Palavra saída de Deus!"""
    ),
    make_song(
        "aleluia-a-minhalma-abrirei",
        "Aleluia, a Minh'alma Abrirei",
        "Tradicional Litúrgico",
        "Aclamação",
        "Tempo Comum",
        "C", 88, "4/4", "Balada de Aclamação", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Aclamação ao Evangelho Clássica e Simples", 97,
        "IGMR 62", "At 16, 14; Lc 24, 45",
        "Quatro acordes básicos (C, Am, Dm, G7) — uma das aclamações mais fáceis para tocar na Missa.",
        """[Intro] C  Am  Dm  G7  C

[Refrão]
   C                        Am              Dm          G7
Aleluia, aleluia, a minh'alma abrirei!
   C                        Am              Dm    G7    C
Aleluia, aleluia, Cristo é meu Rei!

[Versículo]
   F                        G7              C           Am
1. Fala, Senhor, que o Teu servo escuta:
   Dm                       G7              C
Tu tens palavras de vida eterna!"""
    ),
    make_song(
        "aleluia-quando-estamos-unidos",
        "Aleluia, Quando Estamos Unidos (Salmo 1)",
        "Hinário Litúrgico / Tradicional",
        "Aclamação",
        "Tempo Comum",
        "D", 92, "4/4", "Dedilhado / Marcha", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Aclamação Bíblica ao Evangelho (Mateus 18, 20 / Salmo 1)", 99,
        "IGMR 62 / Mateus 18, 20 / Salmo 1", "Mt 18, 20; Sl 1, 1-3",
        "Quatro acordes (D, A, Bm, G) muito conhecida em todas as dioceses do Brasil.",
        """[Intro] D  A  Bm  G  A7  D

[Refrão]
   D                        A               Bm          F#m
Aleluia, aleluia, aleluia!
   G                        D               Em    A7    D
Quando estamos unidos, estás entre nós, e nos falarás da Tua vida!

[Estrofe - Salmo 1]
   D                        A               Bm          F#m
1. Este nosso mundo sentido terá se Tua Palavra renovar;
   G                        D               Em    A7    D
Feliz quem medita na Lei do Senhor: dará frutos no tempo certo!"""
    ),
    make_song(
        "este-e-o-dia-que-o-senhor-fez-para-nos-salmo-117",
        "Este É o Dia Que o Senhor Fez Para Nós (Salmo 117)",
        "Pe. José Weber / Lecionário Dominical",
        "Salmo",
        "Páscoa",
        "D", 92, "4/4", "Salmo Pascal Festivo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Salmo Responsorial do Domingo da Páscoa (Salmo 117)", 100,
        "Lecionário Dominical - Domingo da Ressurreição / Salmo 117", "Sl 117, 1-2.16-17.22-24",
        "O Salmo mais importante do Ano Litúrgico, cantado na Vigília Pascal e no Domingo de Páscoa.",
        """[Intro] D  G  A7  D

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
Tornou-se agora a pedra angular!"""
    ),
    make_song(
        "a-vossa-palavra-senhor-salmo-18",
        "Senhor, Tens Palavras de Vida Eterna (Salmo 18)",
        "Ir. Miria T. Kolling / Lecionário Dominical",
        "Salmo",
        "Tempo Comum",
        "C", 82, "4/4", "Salmo Responsorial", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Salmo Responsorial Oficial do Lecionário (Salmo 18B)", 100,
        "IGMR 61 / Salmo 18 (19) / João 6, 68", "Sl 18, 8-11; Jo 6, 68",
        "Salmo responsorial clássico em 4 acordes simples (C, F, Dm, G7).",
        """[Intro] C  F  G7  C

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
Para os olhos é uma luz!"""
    ),
]
