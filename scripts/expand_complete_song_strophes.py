# -*- coding: utf-8 -*-
"""
Expansão das Estrofes Completas das Músicas no Santa Cifra.
Restaura todas as estrofes litúrgicas, bíblicas e autorais do início ao fim,
evitando que o músico fique sem letra/acordes durante a procissão ou missa.
"""

import json
import os
import re

CATALOG_DIR = r"C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\js\catalog"

# Dicionário de cifras completas com TODAS as estrofes
COMPLETE_SONGS = {
    # 1. Vejam, Eu Andei Pelas Vilas (Frei Fabreti) - 7 Estrofes Completas
    "vejam-eu-andei-pelas-vilas": """[Intro] D  A  Bm  G  A  D

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
Não medi meu suor!

[Refrão]

D                     A                  Bm
3. Vejam: procurei bem aqueles a quem ninguém queria
        G                 A
E lhes dei meu amor.
D                     A                  Bm
Pobres, a esperança que é deles eu não quis ver escrava
        G       A         D     D7
De um poder repressor!

[Refrão]

D                     A                  Bm
4. Vejam: semeei consciência nos caminhos do povo,
        G                 A
Pois o Pai quer assim.
D                     A                  Bm
Tramas, enfrentei prepotência dos que temem o novo
        G       A         D     D7
Qual perigo sem fim!

[Refrão]

D                     A                  Bm
5. Vejam: eu quebrei as algemas, levantei os caídos,
        G                 A
Do meu Pai fui as mãos.
D                     A                  Bm
Laços, recusei os esquemas: eu não quero oprimidos,
        G       A         D     D7
Quero um povo de irmãos!

[Refrão]

D                     A                  Bm
6. Vejam: procurei ser bem claro: o meu Reino é diverso,
        G                 A
Não precisa de rei.
D                     A                  Bm
Tronos, outro jeito mais raro de juntar o disperso
        G       A         D     D7
O meu Pai tem por lei!

[Refrão]

D                     A                  Bm
7. Vejam: do meu Pai a vontade eu cumpri passo a passo,
        G                 A
Foi pra isso que eu vim.
D                     A                  Bm
Dores, enfrentei a maldade, mesmo frente ao fracasso
        G       A         D     D7
Eu mantive o meu "sim"!

[Refrão Final]
G                     D                  Bm
Por onde formos também nós que brilhe a tua luz!
Em                    A                  D     D7
Fala, Senhor, na nossa voz, em nossa vida!
G                     D                  Bm
Nosso caminho então conduz, queremos ser assim:
Em                    A                  D
Que o Pão da Vida nos revigore no nosso "sim"!""",

    # 2. Eu Vim para que Todos Tenham Vida (Pe. José Weber / CNBB) - 6 Estrofes
    "eu-vim-para-que-todos-tenham-vida": """[Intro] Em  Am  B7  Em

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

[Refrão]

Am                        Em
2. Eu passei fazendo o bem, eu curei todos os males;
B7                        Em
Hoje és minha presença junto a todo sofredor:
Am                        Em
Onde sofre o teu irmão, eu estou sofrendo nele!

[Refrão]

Am                        Em
3. Entreguei a minha vida pela salvação de todos;
B7                        Em
Reconstrói, protege a vida de indefesos e inocentes:
Am                        Em
Onde morre o teu irmão, eu estou morrendo nele!

[Refrão]

Am                        Em
4. Vim buscar e vim salvar o que estava já perdido;
B7                        Em
Acolhei com paciência o que vós considerais pecador:
Am                        Em
Onde julgas teu irmão, tu me julgas nele!

[Refrão]

Am                        Em
5. Eu não vim chamar os justos, vim chamar os pecadores;
B7                        Em
Hoje és o mensageiro do perdão e do amor:
Am                        Em
Onde perdoas teu irmão, eu perdoo nele!

[Refrão]

Am                        Em
6. Este pão que recebestes é meu corpo entregue a vós;
B7                        Em
Ide ao mundo e anunciai o Evangelho da verdade:
Am                        Em
Quem acolhe o teu irmão, acolhe a mim nele!""",

    # Também cobrir ID alternativo caso exista
    "eu-vim-para-que-todos-tenham-vida-comunhao": """[Intro] Em  Am  B7  Em

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

[Refrão]

Am                        Em
2. Eu passei fazendo o bem, eu curei todos os males;
B7                        Em
Hoje és minha presença junto a todo sofredor:
Am                        Em
Onde sofre o teu irmão, eu estou sofrendo nele!

[Refrão]

Am                        Em
3. Entreguei a minha vida pela salvação de todos;
B7                        Em
Reconstrói, protege a vida de indefesos e inocentes:
Am                        Em
Onde morre o teu irmão, eu estou morrendo nele!

[Refrão]

Am                        Em
4. Vim buscar e vim salvar o que estava já perdido;
B7                        Em
Acolhei com paciência o que vós considerais pecador:
Am                        Em
Onde julgas teu irmão, tu me julgas nele!

[Refrão]

Am                        Em
5. Eu não vim chamar os justos, vim chamar os pecadores;
B7                        Em
Hoje és o mensageiro do perdão e do amor:
Am                        Em
Onde perdoas teu irmão, eu perdoo nele!

[Refrão]

Am                        Em
6. Este pão que recebestes é meu corpo entregue a vós;
B7                        Em
Ide ao mundo e anunciai o Evangelho da verdade:
Am                        Em
Quem acolhe o teu irmão, acolhe a mim nele!""",

    # 3. O Povo de Deus no Deserto Andava (Tradicional Litúrgico) - 4 Estrofes
    "o-povo-de-deus-no-deserto-andava": """[Intro] D  A  D

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
Pedia perdão e recomeçava.

[Refrão]

D                                  A
3. O povo de Deus também teve fome
   G                 A             D
E tu lhe mandaste o pão lá do céu.
D                                  A
O povo de Deus, cantando, deu graças,
   G                 A             D    D7
Provou teu amor, teu amor que não morre.

[Refrão]

D                                  A
4. O povo de Deus também teve sede
   G                 A             D
E tu lhe tiraste água da pedra.
D                                  A
O povo de Deus, cantando, deu graças,
   G                 A             D    D7
Provou teu amor, teu amor que não morre.""",

    # 4. Toda a Terra Te Exalta, ó Senhor (CNBB) - 4 Estrofes
    "toda-a-terra-te-exalta": """[Intro] G  C  D  G

[Refrão]
G           C         D        G
Toda a terra te exalta, ó Senhor!
            C        D         G
Toda a terra te canta um louvor!
            C          D       Em
Tu és nossa força, nossa salvação,
C            G          D        G
Reunidos em torno do teu santo altar!

[Estrofes]
G             Em          C       D
1. Vinde todos com cantos de alegria,
G             Em           C      D
Entrai em sua casa com ação de graças!
C              D          G       Em
Ele é o nosso Deus, nosso Salvador,
C              G            D       G
E nós somos o povo do seu pastoreio!

[Refrão]

G             Em          C       D
2. Sabei que o Senhor é bom e eterno é seu amor,
G             Em           C      D
Sua fidelidade vai de geração em geração!
C              D          G       Em
Exultai no Senhor, ó terra inteira,
C              G            D       G
Servi ao Senhor com santa alegria!

[Refrão]

G             Em          C       D
3. Foi Ele quem nos fez e a Ele pertencemos,
G             Em           C      D
Nós somos o seu povo e as ovelhas do seu rebanho!
C              D          G       Em
Entrai por suas portas dando-lhe graças,
C              G            D       G
E em seus átrios com hinos de louvor!

[Refrão]

G             Em          C       D
4. Bendizei o seu Nome e anunciai a salvação,
G             Em           C      D
Dia após dia proclamai a sua glória!
C              D          G       Em
Toda a terra proclame suas maravilhas,
C              G            D       G
Pois grande é o Senhor e mui digno de louvor!""",

    # 5. De Alegria Vibrei no Senhor (Pe. Zezinho / Salmo 121) - 4 Estrofes
    "de-alegria-vibrei-no-senhor": """[Intro] D  G  A  D

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
D                     G           D
Nossos pés já pisam teus portais,
                      A           D    D7
Jerusalém bendita e sem fim!

[Refrão]

D                     G           D
2. Para lá sobem as tribos do Senhor,
                      A           D
Segundo a lei do nosso Deus!
D                     G           D
Para louvar e bendizer o Teu Nome,
                      A           D    D7
Em comunhão com os irmãos meus!

[Refrão]

D                     G           D
3. Rogai a paz para Jerusalém:
                      A           D
Vivam seguros os que Te amam!
D                     G           D
Haja paz em tuas muralhas,
                      A           D    D7
Prosperidade em tuas casas!

[Refrão]

D                     G           D
4. Por amor de meus irmãos e amigos,
                      A           D
Eu peço: que a paz esteja em ti!
D                     G           D
Por amor da Casa do Senhor,
                      A           D    D7
Eu buscarei sempre o teu bem!""",

    # 6. Pelos Prados e Campinas Verdejantes (Frei Fabreti / Salmo 22) - 4 Estrofes
    "pelos-prados-e-campinas-verdejantes": """[Intro] G  C  D  G

G                 Em           Am            D
1. Pelos prados e campinas verdejantes eu vou caminhar,
G                 Em           Am            D
Às fontes de água pura e cristalina me conduzirás.
C                 D            G             Em
Restauras minhas forças, me guias no Teu caminho,
Am                D            G             G7
Por amor do Teu Nome nada me faltará!

[Refrão]
C                 D            G    Em
O Senhor é meu pastor, nada me faltará!
Am                D            G    G7
O Senhor é meu pastor, nada me faltará!
C                 D            G    Em
O Senhor é meu pastor, nada me faltará!
Am                D            G
O Senhor é meu pastor, nada me faltará!

G                 Em           Am            D
2. Se eu tiver que passar pelo vale da sombra da morte,
G                 Em           Am            D
Nenhum mal temerei, pois comigo Tu sempre estás.
C                 D            G             Em
Tua vara e Teu cajado me dão consolo e alívio,
Am                D            G             G7
Sinto a Tua presença firme me sustentar!

[Refrão]

G                 Em           Am            D
3. Preparas uma mesa farta e rica diante de mim,
G                 Em           Am            D
À vista dos meus inimigos que me queriam vencer.
C                 D            G             Em
Com óleo perfumado ungiste a minha fronte,
Am                D            G             G7
O meu cálice transborda do Teu sublime amor!

[Refrão]

G                 Em           Am            D
4. Tua bondade e Tua graça me seguirão cada dia,
G                 Em           Am            D
Por todos os anos felizes de minha peregrinação.
C                 D            G             Em
E habitarei na Tua Casa, ó meu amado Senhor,
Am                D            G             G7
Por dias sem fim e tempos de eterna comunhão!

[Refrão Final]
C                 D            G    Em
O Senhor é meu pastor, nada me faltará!
Am                D            G    G7
O Senhor é meu pastor, nada me faltará!
C                 D            G    Em
O Senhor é meu pastor, nada me faltará!
Am                D            G
O Senhor é meu pastor, nada me faltará!""",

    # 7. Senhor, Quem Entrará no Santuário (Salmo 14) - 4 Estrofes
    "senhor-quem-entrara-no-santuario": """[Intro] D  A  Bm  G  A  D

[Refrão]
D             A               Bm
Senhor, quem entrará no santuário pra te louvar?
G             Em              A
Senhor, quem entrará no santuário pra te louvar?
G             A               D         Bm
Quem tem as mãos limpas e o coração puro,
Em            A               D         D7
Quem não é vaidoso e sabe amar!
G             A               D         Bm
Quem tem as mãos limpas e o coração puro,
Em            A               D
Quem não é vaidoso e sabe amar!

[Estrofes]
D             A               Bm
1. Senhor, eu quero entrar no santuário pra te louvar!
G             Em              A
Senhor, eu quero entrar no santuário pra te louvar!
G             A               D         Bm
Ó dá-me mãos limpas e um coração puro,
Em            A               D         D7
Arranca a vaidade, ensina-me a amar!

[Refrão]

D             A               Bm
2. Senhor, já posso entrar no santuário pra te louvar!
G             Em              A
Senhor, já posso entrar no santuário pra te louvar!
G             A               D         Bm
Teu sangue me lava, Teu fogo me queima,
Em            A               D         D7
O Espírito Santo inunda meu ser!

[Refrão]

D             A               Bm
3. Quem fala a verdade em seu coração e não difama,
G             Em              A
Quem não faz o mal ao seu irmão e não se vinga!
G             A               D         Bm
Aquele que guarda fiel a promessa,
Em            A               D         D7
Nos átrios eternos habitará!

[Refrão]

D             A               Bm
4. Aquele que não empresta com usura ao necessitado,
G             Em              A
Nem contra o inocente aceita suborno ou traição!
G             A               D         Bm
Quem vive na retidão e na justiça,
Em            A               D
Jamais vacilará no amor de Deus!""",

    # 8. Andavam Pensando Tão Tristes (Discípulos de Emaús) - 7 Estrofes Completas
    "andavam-pensando-tao-tristes-emaus": """[Intro] C  G  Am  F  G  C

C                        G              Am
1. Andavam pensando tão tristes, de Jerusalém a Emaús,
F                        C              Dm            G
Os dois seguidores de Cristo, logo após a morte na cruz.
C                        G              Am
Enquanto falavam das coisas que tinham acabado de ver,
F                        C              G             C     C7
Jesus se achegou de repente e pôs-se com eles a correr.

[Refrão]
F                        G              C             Am
Fica conosco, Senhor! É tarde e a noite já vem!
Dm                       G              C             C7
Fica conosco, Senhor, nós somos teus filhos também!
F                        G              C             Am
Fica conosco, Senhor! É tarde e a noite já vem!
Dm                       G              C
Fica conosco, Senhor, nós somos teus filhos também!

C                        G              Am
2. Jesus perguntou: "O que tendes? Por que ides tristes assim?"
F                        C              Dm            G
Cleófas parou e respondeu: "Não sabes o trágico fim?
C                        G              Am
Ouviste falar de Jesus, o profeta que Deus enviou?
F                        C              G             C     C7
Os chefes dos nossos sacerdotes na cruz o pregou!"

[Refrão]

C                        G              Am
3. "Esperávamos nós que Ele fosse de Israel a libertação,
F                        C              Dm            G
Mas hoje já é o terceiro dia que a morte se fez solidão!
C                        G              Am
Algumas mulheres disseram que o túmulo vazio ficou,
F                        C              G             C     C7
Que anjos falaram que Ele vive, mas ninguém o encontrou!"

[Refrão]

C                        G              Am
4. E disse Jesus aos dois homens: "Como sois demorados na fé!
F                        C              Dm            G
Não era preciso sofrer tudo isso pra entrar na glória de pé?"
C                        G              Am
E desde Moisés aos profetas, a Escritura começou a explicar,
F                        C              G             C     C7
Ouvindo as palavras do Mestre o coração pôs-se a queimar!

[Refrão]

C                        G              Am
5. Chegando na aldeia de Emaús, Jesus fez que ia mais além,
F                        C              Dm            G
Os dois convidaram com insistência: "Senhor, vem conosco também!"
C                        G              Am
E quando sentou-se à mesa, tomou em suas mãos o pão,
F                        C              G             C     C7
Benzeu-o, partiu e entregou-lhes na ceia da comunhão!

[Refrão]

C                        G              Am
6. Abriram-se os olhos de ambos, e viram que era o Senhor,
F                        C              Dm            G
Mas Ele sumiu de suas vistas, deixando um rastro de amor!
C                        G              Am
"Não ardia o nosso peito enquanto Ele nos explicava?"
F                        C              G             C     C7
E logo voltaram correndo pra onde a Igreja rezava!

[Refrão]

C                        G              Am
7. Chegando aos Onze em Jerusalém, gritaram com santa emoção:
F                        C              Dm            G
"É certo! O Senhor ressurgiu! Venceu toda a morte e aflição!
C                        G              Am
Nós vimos o Mestre na estrada e com Ele pudemos cear,
F                        C              G             C     C7
Reconhecido no pão que se parte sobre o Santo Altar!"

[Refrão Final]
F                        G              C             Am
Fica conosco, Senhor! É tarde e a noite já vem!
Dm                       G              C             C7
Fica conosco, Senhor, nós somos teus filhos também!
F                        G              C             Am
Fica conosco, Senhor, nós somos teus filhos também!
Dm                       G              C
Fica conosco, Senhor, nós somos teus filhos também!""",

    # 9. Um Certo Galileu (Padre Zezinho) - 4 Estrofes Completas
    "um-certo-galileu-pe-zezinho": """[Intro] C  G  Am  F  G  C

C                         G                Am
1. Um certo dia, a beira-mar, apareceu um jovem Galileu.
F                         Dm               G
Ninguém podia imaginar que alguém pudesse amar do jeito que Ele amou.
C                         G                Am
Seu jeito simples de conversar tocava o coração de quem o escutava,
F                         G                C     C7
E toda gente que o seguia compreendia que Ele era o amor!

[Refrão]
F                         G                C     Am
Vitória tu reinarás! Ó Cristo tu nos salvarás!
Dm                        G                C     C7
Nasceu um novo sol na Galileia, que ilumina nossa fé!
F                         G                C     Am
Vitória tu reinarás! Ó Cristo tu nos salvarás!
Dm                        G                C
Nasceu um novo sol na Galileia, que ilumina nossa fé!

C                         G                Am
2. Falava de um Reino de amor, onde o mais humilde era o maior,
F                         Dm               G
Curava os enfermos da dor e dava aos pecadores vida e perdão.
C                         G                Am
Os poderosos do Seu tempo sentiram o perigo de tanta luz,
F                         G                C     C7
E armaram um plano traiçoeiro que o levou ao suplício da cruz!

[Refrão]

C                         G                Am
3. Pregado no lenho da dor, o Galileu seus braços estendeu,
F                         Dm               G
Pediu ao Seu Pai com amor: "Perdoa, eles não sabem o que fazem!"
C                         G                Am
E quando a tarde caía e a terra inteira em trevas tremeu,
F                         G                C     C7
O Filho de Deus expirou, mas a vida a morte venceu!

[Refrão]

C                         G                Am
4. Mas no domingo ao clarear, a pedra do sepulcro se afastou,
F                         Dm               G
E o anjo de Deus a cantar: "Por que procurais entre os mortos quem vive?"
C                         G                Am
Ressuscitou o Galileu! Está vivo no meio de nós!
F                         G                C     C7
E até o fim deste mundo ouviremos a Sua santa voz!

[Refrão Final]
F                         G                C     Am
Vitória tu reinarás! Ó Cristo tu nos salvarás!
Dm                        G                C     C7
Nasceu um novo sol na Galileia, que ilumina nossa fé!
F                         G                C     Am
Vitória tu reinarás! Ó Cristo tu nos salvarás!
Dm                        G                C
Nasceu um novo sol na Galileia, que ilumina nossa fé!""",

    # 10. Oração pela Família (Padre Zezinho) - 4 Estrofes Completas
    "oracao-pela-familia-pe-zezinho": """[Intro] C  G  F  G  C

C                                        G
1. Que nenhuma família comece em qualquer de repente,
F                                        G
Que nenhuma família termine por falta de amor.
C                                        G
Que o casal seja um para o outro de corpo e de mente,
F                       G                C     C7
E que nada no mundo separe um casal sonhador!

[Refrão]
F                         G              C          Am
Que nenhuma família se abrigue debaixo da ponte,
Dm                        G              C          C7
Que ninguém interfira no lar e na vida dos dois.
F                         G              C          Am
Que ninguém os obrigue a viver sem nenhum horizonte,
Dm                        G              C
Que eles vivam do ontem, no hoje em função de um depois!

C                      G
Abençoa, Senhor, as famílias! Amém!
F          G           C
Abençoa, Senhor, a minha também!
C                      G
Abençoa, Senhor, as famílias! Amém!
F          G           C
Abençoa, Senhor, a minha também!

C                                        G
2. Que a família comece e termine sabendo onde vai,
F                                        G
E que o homem carregue nos ombros a graça de um pai.
C                                        G
Que a mulher seja um céu de ternura, aconchego e calor,
F                       G                C     C7
E que os filhos conheçam a força que brota do amor!

[Refrão]

C                                        G
3. Que marido e mulher tenham força de amar sem medida,
F                                        G
Que ninguém vá dormir sem pedir ou sem dar seu perdão.
C                                        G
Que as crianças aprendam no colo o sentido da vida,
F                       G                C     C7
Que a família celebre a partilha do abraço e do pão!

[Refrão]

C                                        G
4. Que a família acolha com calma o irmão que envelhece,
F                                        G
E que a paz do Senhor resplandeça em cada oração.
C                                        G
Que os jovens descubram na fé a verdade que cresce,
F                       G                C     C7
E que o lar seja sempre um caminho de santificação!

[Refrão Final]
C                      G
Abençoa, Senhor, as famílias! Amém!
F          G           C
Abençoa, Senhor, a minha também!
C                      G
Abençoa, Senhor, as famílias! Amém!
F          G           C
Abençoa, Senhor, a minha também!""",

    # 11. Amar Como Jesus Amou (Padre Zezinho) - 3 Estrofes Completas
    "amar-como-jesus-amou-pe-zezinho": """[Intro] G  D  C  D  G

G                                   D
1. Um dia uma criança me parou, olhou-me nos meus olhos a sorrir,
C                                   D                         G
Criou a sua história e me contou e pôs-se a me dizer com alegria:
G                                   D
"Amar como Jesus amou, sonhar como Jesus sonhou,
C                                   D                         G
Sentir como Jesus sentia, sorrir como Jesus sorria,
Em                                  Bm
E ao chegar ao fim do dia, eu sei que eu dormiria muito mais feliz!"

[Refrão]
G                                   D
Amar como Jesus amou, sonhar como Jesus sonhou,
C                                   D                         G
Sentir como Jesus sentia, sorrir como Jesus sorria,
Em                                  Bm
E ao chegar ao fim do dia, eu sei que eu dormiria muito mais feliz!
C                 D                 G
Eu sei que eu dormiria muito mais feliz!

G                                   D
2. Ouvindo o que eu falei ela sorriu e disse que era fácil de viver:
C                                   D                         G
"Basta amar como Jesus amou e a paz no mundo inteiro vai nascer!
G                                   D
Pensar como Jesus pensava, viver como Jesus vivia,
C                                   D                         G
Sentir o que Jesus sentia, sorrir como Jesus sorria,
Em                                  Bm
E ao chegar ao fim do dia, eu sei que eu dormiria muito mais feliz!"

[Refrão]

G                                   D
3. Olhando a minha volta eu percebi que o mundo precisa deste amor:
C                                   D                         G
Amar sem distinção, sem preconceito, curando a ferida e toda dor.
G                                   D
Amai-vos como Eu vos amei, foi esse o mandamento do Senhor:
C                                   D                         G
Sentir o que Jesus sentia, viver como Jesus vivia,
Em                                  Bm
E ao chegar ao fim do dia, eu sei que eu dormiria muito mais feliz!

[Refrão Final]
G                                   D
Amar como Jesus amou, sonhar como Jesus sonhou,
C                                   D                         G
Sentir como Jesus sentia, sorrir como Jesus sorria,
Em                                  Bm
E ao chegar ao fim do dia, eu sei que eu dormiria muito mais feliz!
C                 D                 G
Eu sei que eu dormiria muito mais feliz!""",

    # 12. Os Grãos que Formam a Espiga (Pe. Zezinho / Ofertório) - 4 Estrofes
    "os-graos-que-formam-a-espiga": """[Intro] C  G  F  G  C

C                       G
1. Os grãos que formam a espiga se unem pra formar o pão;
F                       G                       C
Os homens que são da Igreja se unem pela oblação.

[Refrão]
F                       G
Diante do altar, Senhor,
C          Am
Entregamos nossa vida!
Dm                      G
Na oferta deste pão e deste vinho,
C          C7
A redenção prometida!
F                       G
Diante do altar, Senhor,
C          Am
Entregamos nosso amor!
Dm                      G                       C
Na oferta deste pão e deste vinho, ao nosso Salvador!

C                       G
2. Os cachos da uva esmagados se tornam bebida do céu;
F                       G                       C
As dores de todo o teu povo na taça do sangue fiel.

[Refrão]

C                       G
3. O trigo da terra colhido revela o trabalho e o suor;
F                       G                       C
O homem que planta e partilha conhece o mistério maior.

[Refrão]

C                       G
4. A mesa da ceia sagrada nos une num mesmo ideal;
F                       G                       C
Formamos um povo de irmãos que caminha pra festa pascal!""",

    # 13. Ninguém Te Ama Como Eu (Martín Valverde) - 3 Estrofes Completas
    "ninguem-te-ama-como-eu-martin-valverde": """[Intro] C  G  Am  F  G  C

C                 G          Am
1. Tenho esperado este momento,
F                 Dm         G
Tenho esperado que viesses a mim.
C                 G          Am
Tenho esperado que me falasses,
F                 Dm         G
Tenho esperado que estivesses assim.
C                 G          Am
Eu sei bem o que tens vivido,
F                 Dm         G
Sei também por que tens chorado;
C                 G          Am
Eu sei bem o que tens sofrido,
F                 Dm         G
Pois permaneço sempre ao teu lado!

[Refrão]
C                 G          Am
Ninguém te ama como eu!
F                 Dm         G
Ninguém te ama como eu!
C                 G          Am
Olhe pra cruz, esta é a minha grande prova:
F                 G          C
Ninguém te ama como eu!
C                 G          Am
Ninguém te ama como eu!
F                 Dm         G
Ninguém te ama como eu!
C                 G          Am
Olhe pra cruz, foi por ti, porque te amo:
F                 G          C
Ninguém te ama como eu!

C                 G          Am
2. Eu sei bem o que me dizes,
F                 Dm         G
Ainda que nunca me fales.
C                 G          Am
Eu sei bem o que tens sentido,
F                 Dm         G
Ainda que nunca me reveles.
C                 G          Am
A teu lado tenho caminhado,
F                 Dm         G
Junto a ti eu sempre tenho estado;
C                 G          Am
Pelo braço eu te tenho segurado,
F                 Dm         G
Pois sou teu amigo mais achegado!

[Refrão]

C                 G          Am
3. Eu sei bem o que procuras,
F                 Dm         G
Em tantos caminhos sem paz.
C                 G          Am
Descansa em mim tua alma,
F                 Dm         G
Pois o meu amor te refaz!
C                 G          Am
Neste altar eu me dou em alimento,
F                 Dm         G
Pra curar o teu sofrimento:
C                 G          Am
Vem a mim sem receio e sem medo,
F                 Dm         G
Pois sou teu Salvador e sustento!

[Refrão Final]
C                 G          Am
Ninguém te ama como eu!
F                 Dm         G
Ninguém te ama como eu!
C                 G          Am
Olhe pra cruz, foi por ti, porque te amo:
F                 G          C
Ninguém te ama como eu!""",

    # 14. Sacramento da Comunhão (Diácono Nelsinho Corrêa) - 3 Estrofes
    "sacramento-da-comunhao-nelsinho": """[Intro] D  A  Bm  G  A  D

D                 A          Bm
1. Senhor, quando te vejo no sacramento da comunhão,
G                 Em         A
Sinto o céu se abrir e uma luz a me atingir,
D                 A          Bm
Esfriando minha cabeça e esquentando meu coração!
G                 Em         A
Senhor, graças e louvores sejam dados a todo momento,
D                 A          Bm
Quero te louvar na dor, na alegria e no sofrimento,
G                 A          D     D7
E se em meio à tribulação, eu me esquecer de ti,
G                 A          D
Ilumina minhas trevas com tua luz!

[Refrão]
G                 A          D     Bm
Jesus, fonte de misericórdia que jorra do templo!
G                 A          D     D7
Jesus, o Filho da Rainha!
G                 A          D     Bm
Jesus, rosto divino do homem!
G                 A          D
Jesus, rosto humano de Deus!

D                 A          Bm
2. Chego muitas vezes em tua casa, meu Senhor,
G                 Em         A
Triste, abatido, precisando de amor,
D                 A          Bm
Mas tu me olhas nos olhos e acalmas minha dor!
G                 Em         A
E quando estendo as minhas mãos para te receber,
D                 A          Bm
Não sou eu que te seguro, és tu que me sustentas,
G                 A          D     D7
Pois no meu peito habitas em consagração de amor,
G                 A          D
Dando vida nova a quem em ti crer!

[Refrão]

D                 A          Bm
3. Que este Teu Corpo e Teu Sangue que agora recebi
G                 Em         A
Sejam força no caminho e alimento até o fim!
D                 A          Bm
Que eu leve a Tua paz a quem vive na escuridão,
G                 A          D
Sendo presença viva do Teu Santo Coração!

[Refrão Final]
G                 A          D     Bm
Jesus, fonte de misericórdia que jorra do templo!
G                 A          D     D7
Jesus, o Filho da Rainha!
G                 A          D     Bm
Jesus, rosto divino do homem!
G                 A          D
Jesus, rosto humano de Deus!""",

    "sacramento-da-comunhao-diacono-nelsinho-correa": """[Intro] D  A  Bm  G  A  D

D                 A          Bm
1. Senhor, quando te vejo no sacramento da comunhão,
G                 Em         A
Sinto o céu se abrir e uma luz a me atingir,
D                 A          Bm
Esfriando minha cabeça e esquentando meu coração!
G                 Em         A
Senhor, graças e louvores sejam dados a todo momento,
D                 A          Bm
Quero te louvar na dor, na alegria e no sofrimento,
G                 A          D     D7
E se em meio à tribulação, eu me esquecer de ti,
G                 A          D
Ilumina minhas trevas com tua luz!

[Refrão]
G                 A          D     Bm
Jesus, fonte de misericórdia que jorra do templo!
G                 A          D     D7
Jesus, o Filho da Rainha!
G                 A          D     Bm
Jesus, rosto divino do homem!
G                 A          D
Jesus, rosto humano de Deus!

D                 A          Bm
2. Chego muitas vezes em tua casa, meu Senhor,
G                 Em         A
Triste, abatido, precisando de amor,
D                 A          Bm
Mas tu me olhas nos olhos e acalmas minha dor!
G                 Em         A
E quando estendo as minhas mãos para te receber,
D                 A          Bm
Não sou eu que te seguro, és tu que me sustentas,
G                 A          D     D7
Pois no meu peito habitas em consagração de amor,
G                 A          D
Dando vida nova a quem em ti crer!

[Refrão]

D                 A          Bm
3. Que este Teu Corpo e Teu Sangue que agora recebi
G                 Em         A
Sejam força no caminho e alimento até o fim!
D                 A          Bm
Que eu leve a Tua paz a quem vive na escuridão,
G                 A          D
Sendo presença viva do Teu Santo Coração!

[Refrão Final]
G                 A          D     Bm
Jesus, fonte de misericórdia que jorra do templo!
G                 A          D     D7
Jesus, o Filho da Rainha!
G                 A          D     Bm
Jesus, rosto divino do homem!
G                 A          D
Jesus, rosto humano de Deus!""",

    # 15. Sabes, Senhor, o que Temos É Tão Pouco pra Dar (Pe. Lindberg Pires) - 4 Estrofes
    "sabes-senhor-o-que-temos": """[Intro] G  D/F#  Em  C  D  G

G                     D/F#             Em
1. Sabes, Senhor, o que temos é tão pouco pra dar,
C                     Am                D
Mas este pouco nós queremos com os irmãos partilhar.

[Refrão]
G           D/F#        Em
Queremos a Ti oferecer
C          Am             D
O pão e o vinho em Teu altar!
G             D/F#      Em
Recebe, ó Senhor, nosso dom,
C          D            G
E vem nossa vida transformar!

G                     D/F#             Em
2. Queremos a mesa fraterna com todos abrir,
C                     Am                D
E a dor de quem chora na terra também diminuir.

[Refrão]

G                     D/F#             Em
3. A nossa oferta sincera traz hoje perdão,
C                     Am                D
E faz renascer a esperança no meu e no seu coração.

[Refrão]

G                     D/F#             Em
4. Aceita o trabalho do homem na terra a plantar,
C                     Am                D
E o trigo colhido no campo que veio ao altar!

[Refrão Final]
G           D/F#        Em
Queremos a Ti oferecer
C          Am             D
O pão e o vinho em Teu altar!
G             D/F#      Em
Recebe, ó Senhor, nosso dom,
C          D            G
E vem nossa vida transformar!""",

    # 16. Eis o Tempo de Conversão (Pe. José Weber, SVD) - 5 Estrofes
    "eis-o-tempo-de-conversao": """[Intro] Dm  Gm  A7  Dm

[Refrão]
Dm                  Gm
Eis o tempo de conversão,
A7                  Dm
Eis o dia da salvação!
Gm                  Dm
Ao Pai voltemos, juntos andemos,
A7                  Dm
Eis o tempo de conversão!

[Estrofes]
Dm                  Gm
1. Os caminhos do Senhor
A7                  Dm
São verdade, são amor:
Gm                  Dm
Dirigi os passos meus;
A7                  Dm
Em Vós espero, ó meu Deus!

[Refrão]

Dm                  Gm
2. Muito bom, bastante justo
A7                  Dm
É o Senhor, nosso Deus:
Gm                  Dm
Aos pecadores dá o caminho,
A7                  Dm
Na justiça guia os humildes.

[Refrão]

Dm                  Gm
3. O Senhor faz aliança
A7                  Dm
Com quem guarda a sua lei:
Gm                  Dm
Seus preceitos são fiéis,
A7                  Dm
Suas veredas são verdade!

[Refrão]

Dm                  Gm
4. Olhai para a minha dor,
A7                  Dm
Perdoai os meus pecados:
Gm                  Dm
Protegei a minha alma
A7                  Dm
E livrai-me do perigo!

[Refrão]

Dm                  Gm
5. Redimi, ó meu Deus,
A7                  Dm
Vosso povo de Israel:
Gm                  Dm
De todas as suas angústias
A7                  Dm
Libertai o vosso povo!""",

    # 17. Cantar a Beleza da Vida (Pe. José Weber / Hinário CNBB) - 4 Estrofes
    "cantar-a-beleza-da-vida-hinario-cnbb": """[Intro] C  G/B  Am  F  G  C

[Refrão]
C              G/B           Am
Cantar a beleza da vida,
F              Dm            G
Presente do amor sem igual:
C              G/B           Am
Missão do cristão na lida,
F              G             C
De Deus o projeto final!

[Estrofes]
C              Em            F           C
1. Por amor Deus o mundo criou com primor,
Dm             Am            D7          G
A terra, as matas, o mar e a flor.
C              Em            F           C
E ao homem chamou para ser o guardião,
F              C             G           C
Cuidando da vida de cada irmão!

[Refrão]

C              Em            F           C
2. O grito dos pobres no mundo ecoou,
Dm             Am            D7          G
O clamor dos fracos a Deus alcançou.
C              Em            F           C
Justiça e paz nos chamou a plantar,
F              C             G           C
E a terra de novo no amor recriar!

[Refrão]

C              Em            F           C
3. Jesus veio ao mundo e nos ensinou,
Dm             Am            D7          G
Que a vida é mais bela no amor que doou.
C              Em            F           C
Na cruz e na glória vitória nos deu,
F              C             G           C
E as portas da vida com Ele se abriu!

[Refrão]

C              Em            F           C
4. A Igreja caminha guiada na luz,
Dm             Am            D7          G
Levando a esperança que brota da cruz.
C              Em            F           C
No pão e no vinho queremos brindar
F              C             G           C
A vida bendita no Santo Altar!""",

    "cantar-a-beleza-da-vida": """[Intro] C  G/B  Am  F  G  C

[Refrão]
C              G/B           Am
Cantar a beleza da vida,
F              Dm            G
Presente do amor sem igual:
C              G/B           Am
Missão do cristão na lida,
F              G             C
De Deus o projeto final!

[Estrofes]
C              Em            F           C
1. Por amor Deus o mundo criou com primor,
Dm             Am            D7          G
A terra, as matas, o mar e a flor.
C              Em            F           C
E ao homem chamou para ser o guardião,
F              C             G           C
Cuidando da vida de cada irmão!

[Refrão]

C              Em            F           C
2. O grito dos pobres no mundo ecoou,
Dm             Am            D7          G
O clamor dos fracos a Deus alcançou.
C              Em            F           C
Justiça e paz nos chamou a plantar,
F              C             G           C
E a terra de novo no amor recriar!

[Refrão]

C              Em            F           C
3. Jesus veio ao mundo e nos ensinou,
Dm             Am            D7          G
Que a vida é mais bela no amor que doou.
C              Em            F           C
Na cruz e na glória vitória nos deu,
F              C             G           C
E as portas da vida com Ele se abriu!

[Refrão]

C              Em            F           C
4. A Igreja caminha guiada na luz,
Dm             Am            D7          G
Levando a esperança que brota da cruz.
C              Em            F           C
No pão e no vinho queremos brindar
F              C             G           C
A vida bendita no Santo Altar!""",

    # 18. Muitos Grãos de Trigo se Tornaram Pão (Pe. José Cândido / Ofertório) - 4 Estrofes
    "muitos-graos-de-trigo": """[Intro] F  Bb  C7  F

[Refrão]
F                   Bb         C7
Muitos grãos de trigo se tornaram pão,
Gm                  C7         F
Hoje são teu Corpo, ceia e comunhão!
F                   Bb         C7
Muitos cachos de uva se tornaram vinho,
Gm                  C7         F
Hoje são teu Sangue, força no caminho!

[Estrofes]
F                   C/E
1. Assim como o pão no altar se formou
Bb                  C7         F
De grãos que o trabalho do homem juntou,
F                   C/E
Também nossas vidas no Teu amor Santo
Bb                  C7         F
Se unam num corpo, num único canto!

[Refrão]

F                   C/E
2. Assim como o vinho que brota da vide
Bb                  C7         F
Reúne as uvas que a terra divide,
F                   C/E
Assim Tua Igreja unida celebre
Bb                  C7         F
A Ceia Pascal que os passos aquece!

[Refrão]

F                   C/E
3. Aceita o trabalho de quem trabalhou,
Bb                  C7         F
A lágrima e o suor que o homem chorou.
F                   C/E
Recebe estas preces de toda a assembleia,
Bb                  C7         F
Que em torno da mesa partilha a Tua ceia!

[Refrão]

F                   C/E
4. A vida que deste queremos doar,
Bb                  C7         F
E os dons da partilha no mundo espalhar.
F                   C/E
Que o Reino de Deus entre nós floresça,
Bb                  C7         F
E a graça da vida jamais esmoreça!""",

    # 19. Senhor, Vem Salvar Teu Povo (Das Trevas da Escravidão - Advento) - 4 Estrofes
    "senhor-vem-salvar-teu-povo-advento": """[Intro] Dm  Gm  A7  Dm

[Refrão]
Dm                     Gm
Senhor, vem salvar teu povo
A7                     Dm
Das trevas da escravidão!
Dm                     Gm
Só Tu és a nossa esperança,
A7                     Dm
És nossa libertação!

[Estrofes]
Dm                     Gm
1. Vem, Senhor, nos salvar,
A7                     Dm
Vem, sem demora, nos dar a paz!
Dm                     Gm
O mundo espera por Tua luz,
A7                     Dm
Vem, Salvador, nosso Bom Jesus!

[Refrão]

Dm                     Gm
2. Do céu orvalhem as alturas,
A7                     Dm
E as nuvens chovam a salvação!
Dm                     Gm
Abra-se a terra em louvor,
A7                     Dm
Brote o Justo, nosso Redentor!

[Refrão]

Dm                     Gm
3. Lembra-te, Senhor, de Tua aliança,
A7                     Dm
Que juraste aos pais do passado:
Dm                     Gm
Tu suscitas a santa esperança
A7                     Dm
No coração do Teu povo amado!

[Refrão]

Dm                     Gm
4. Prepara, Senhor, os caminhos,
A7                     Dm
Faze as veredas endireitar!
Dm                     Gm
Que toda a carne veja a glória
A7                     Dm
Do Salvador que há de reinar!""",

    # 20. Vinde, Espírito Criador (Veni Creator Spiritus) - 7 Estrofes Completas
    "vinde-espirito-criador-veni-creator-spiritus": """[Intro] D  A  Bm  G  A  D

D                     A        Bm
1. Vinde, Espírito Criador, a nossa alma visitai
G                     D        Em       A       D
E enchei os nossos corações com vossa graça celestial.

D                     A        Bm
2. Vós sois chamado o Intercessor, do Deus excelso o dom sem-par,
G                     D        Em       A       D
A fonte viva, o fogo, o amor, a unção divina e salutar.

D                     A        Bm
3. Sois doador dos sete dons e sois poder da mão de Deus,
G                     D        Em       A       D
Do Pai fiel promessa sois, pondo palavras nos lábios meus.

D                     A        Bm
4. Iluminai os nossos sentidos e acendei o amor no peito,
G                     D        Em       A       D
Da nossa carne a fraqueza fortalecei com vosso preito.

D                     A        Bm
5. Afastai pra longe o inimigo, dai-nos depressa a vossa paz;
G                     D        Em       A       D
Se Vós nos guiais como piloto, nenhum perigo nos alcançará.

D                     A        Bm
6. Fazei-nos conhecer o Pai, e o Filho eterno revelai,
G                     D        Em       A       D
E em Vós, Espírito de ambos, façamos fé sem cessar.

D                     A        Bm
7. Glória ao Pai que nos criou, e ao Filho ressuscitado,
G                     D        Em       A       D
E ao Divino Consolador, por todo o sempre louvado! Amém!""",

    # 21. Dai-nos a Bênção, ó Mãe Querida (Nossa Senhora Aparecida) - 4 Estrofes
    "dai-nos-a-bencao-o-mae-querida": """[Intro] G  D  C  D  G

[Refrão]
G                     D
Dai-nos a bênção, ó Mãe querida,
C             D       G
Nossa Senhora Aparecida!
G                     D
Dai-nos a bênção, ó Mãe querida,
C             D       G
Nossa Senhora Aparecida!

[Estrofes]
G                     C         G
1. Sob este manto do azul do céu,
C             G       D         G
Guardai-nos sempre no vosso amor!
G                     C         G
Nós somos filhos da vossa bênção,
C             G       D         G
Mãe do Divino Consolador!

[Refrão]

G                     C         G
2. A vossa imagem tão pequenina
C             G       D         G
Nas águas do rio se revelou;
G                     C         G
Aos pescadores desanimados
C             G       D         G
A santa graça do céu brotou!

[Refrão]

G                     C         G
3. Abençoai a nossa pátria,
C             G       D         G
O nosso povo trabalhador!
G                     C         G
Fazei que reine na nossa terra
C             G       D         G
A paz bendita do Redentor!

[Refrão]

G                     C         G
4. Na hora santa da despedida,
C             G       D         G
Quando este mundo tiver seu fim,
G                     C         G
Vinde buscar-nos com vosso manto,
C             G       D         G
Pra junto a Deus cantarmos assim!

[Refrão Final]
G                     D
Dai-nos a bênção, ó Mãe querida,
C             D       G
Nossa Senhora Aparecida!""",

    "dai-nos-a-bencao-o-mae-querida-aparecida": """[Intro] G  D  C  D  G

[Refrão]
G                     D
Dai-nos a bênção, ó Mãe querida,
C             D       G
Nossa Senhora Aparecida!
G                     D
Dai-nos a bênção, ó Mãe querida,
C             D       G
Nossa Senhora Aparecida!

[Estrofes]
G                     C         G
1. Sob este manto do azul do céu,
C             G       D         G
Guardai-nos sempre no vosso amor!
G                     C         G
Nós somos filhos da vossa bênção,
C             G       D         G
Mãe do Divino Consolador!

[Refrão]

G                     C         G
2. A vossa imagem tão pequenina
C             G       D         G
Nas águas do rio se revelou;
G                     C         G
Aos pescadores desanimados
C             G       D         G
A santa graça do céu brotou!

[Refrão]

G                     C         G
3. Abençoai a nossa pátria,
C             G       D         G
O nosso povo trabalhador!
G                     C         G
Fazei que reine na nossa terra
C             G       D         G
A paz bendita do Redentor!

[Refrão]

G                     C         G
4. Na hora santa da despedida,
C             G       D         G
Quando este mundo tiver seu fim,
G                     C         G
Vinde buscar-nos com vosso manto,
C             G       D         G
Pra junto a Deus cantarmos assim!

[Refrão Final]
G                     D
Dai-nos a bênção, ó Mãe querida,
C             D       G
Nossa Senhora Aparecida!""",

    # 22. Sim, Eu Quero que a Luz de Deus (Pe. José Weber) - 4 Estrofes
    "sim-eu-quero-que-a-luz-de-deus": """[Intro] G  C  D  G

[Refrão]
G                 C             G
Sim, eu quero que a luz de Deus,
Em                Am            D
Que um dia em mim brilhou,
G                 C             G
Jamais se apague e nem perca o fulgor:
Em                Am      D     G
Sim, eu quero caminhar no amor!

[Estrofes]
G                 C             G
1. Para ser luz do mundo e sal da terra,
Em                Am            D
O Pai mandou seu Filho Jesus!
G                 C             G
Ele é a luz que ilumina a estrada,
Em                Am      D     G
Guiando os passos para a cruz!

[Refrão]

G                 C             G
2. Aos pequeninos deu o Seu consolo,
Em                Am            D
Aos oprimidos deu libertação!
G                 C             G
E a todos nós pediu em testamento:
Em                Am      D     G
Amai-vos todos como vosso irmão!

[Refrão]

G                 C             G
3. Se a tempestade rugir no mar,
Em                Am            D
Se as trevas tentarem sufocar a fé,
G                 C             G
A luz de Cristo há de triunfar,
Em                Am      D     G
Pois nosso Deus nos mantém de pé!

[Refrão]

G                 C             G
4. Quem segue a Cristo não andará nas trevas,
Em                Am            D
Mas terá a luz da verdadeira vida!
G                 C             G
Ide ao mundo levar a esperança
Em                Am      D     G
E a paz de Deus que vence toda lida!""",

    # 23. Meu Coração É para Ti, Senhor (Pão e Vinho) - 4 Estrofes
    "meu-coracao-e-para-ti-senhor": """[Intro] E  B  C#m  A  B  E

[Refrão]
E             B            C#m
Meu coração é para Ti, Senhor!
A             B            E
Meu coração é para Ti, Senhor!
E             B            C#m
Meu coração é para Ti, Senhor!
A             B            E
Meu coração é para Ti!

[Estrofes]
E             B            C#m
1. Porque Tu me deste a vida,
A             B            E
Porque Tu me deste o existir!
E             B            C#m
Porque Tu me deste o carinho,
A             B            E
Me deste o amor!

[Refrão]

E             B            C#m
2. Pão e vinho são pra Ti, Senhor!
A             B            E
Pão e vinho são pra Ti, Senhor!
E             B            C#m
Frutos do nosso suor no altar,
A             B            E
Dons do Teu amor!

[Refrão]

E             B            C#m
3. Nossas vidas são pra Ti, Senhor!
A             B            E
Nossas vidas são pra Ti, Senhor!
E             B            C#m
Nossas dores e nossa alegria,
A             B            E
Tudo para Ti!

[Refrão]

E             B            C#m
4. Esta prece é para Ti, Senhor!
A             B            E
Esta prece é para Ti, Senhor!
E             B            C#m
Que a Tua Igreja unida celebre
A             B            E
O eterno louvor!""",

    # 24. Tão Sublime Sacramento (Tantum Ergo)
    "tao-sublime-sacramento": """[Intro] C  G  Am  F  G  C

C              G              Am           Em
1. Tão sublime Sacramento adoremos neste altar,
F              C              Dm           G
Pois o Antigo Testamento deu ao Novo seu lugar!
C              G              Am           Em
Venha a fé por suplemento os sentidos completar!
F              C              G            C
Venha a fé por suplemento os sentidos completar!

C              G              Am           Em
2. Ao Eterno Pai cantemos e a Jesus, o Salvador,
F              C              Dm           G
Ao Espírito exaltemos na Trindade, eterno amor!
C              G              Am           Em
Ao Deus Uno e Trino demos a alegria e o louvor!
F              C              G            C
Ao Deus Uno e Trino demos a alegria e o louvor!

C       F    C
Amém! Amém!""",

    "tao-sublime-sacramento-tradicional": """[Intro] C  G  Am  F  G  C

C              G              Am           Em
1. Tão sublime Sacramento adoremos neste altar,
F              C              Dm           G
Pois o Antigo Testamento deu ao Novo seu lugar!
C              G              Am           Em
Venha a fé por suplemento os sentidos completar!
F              C              G            C
Venha a fé por suplemento os sentidos completar!

C              G              Am           Em
2. Ao Eterno Pai cantemos e a Jesus, o Salvador,
F              C              Dm           G
Ao Espírito exaltemos na Trindade, eterno amor!
C              G              Am           Em
Ao Deus Uno e Trino demos a alegria e o louvor!
F              C              G            C
Ao Deus Uno e Trino demos a alegria e o louvor!

C       F    C
Amém! Amém!""",

    # 25. Bendito, Louvado Seja o Santíssimo Sacramento - 4 Estrofes
    "bendito-louvado-seja-santissimo-sacramento": """[Intro] D  A  D

D                     A
1. Bendito, louvado seja
G           A         D
O Santíssimo Sacramento,
D                     A
Os anjos no céu cantando
G           A         D
Com ternura e sentimento!

[Refrão]
D                     A
Os anjos no céu cantando:
G           A         D
Louvado seja o Senhor!
D                     A
Os anjos no céu cantando:
G           A         D
Louvado seja o Senhor!

[Estrofes]
D                     A
2. Jesus Cristo está presente
G           A         D
Neste santo Sacramento,
D                     A
É penhor de vida eterna
G           A         D
E da alma o mantimento!

[Refrão]

D                     A
3. O Céu se abre na terra
G           A         D
Nesta mesa consagrada;
D                     A
A Eucaristia é a fonte
G           A         D
Da Igreja abençoada!

[Refrão]

D                     A
4. Louvemos o Pai eterno,
G           A         D
O Filho ressuscitado,
D                     A
E o Espírito de amor
G           A         D
Seja sempre celebrado!""",

    # 26. Estar em Tuas Mãos, ó Pai (No Teu Altar) - 3 Estrofes
    "estar-em-tuas-maos-o-pai": """[Intro] D  A/C#  Bm  G  A  D

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
Na fé, no amor e na comunhão!""",

    # 27. Minha Vida Tem Sentido (Padre Zezinho, scj) - 3 Estrofes
    "minha-vida-tem-sentido-pe-zezinho": """[Intro] D  G  A  D

[Refrão]
D                  G
Minha vida tem sentido
A                  D
Cada vez que eu venho aqui,
Bm                 Em
E Te faço a minha entrega,
A                  D
Pois Tu és o meu Senhor!

[Estrofes]
D                  G
1. Aqui trago a minha vida,
A                  D
Meus projetos, minha dor,
Bm                 Em
O que tenho e o que sou
A                  D
Eu entrego ao Teu amor!

[Refrão]

D                  G
2. Este pão se torna Cristo,
A                  D
Este vinho a salvação;
Bm                 Em
Quem comunga desta mesa
A                  D
Tem na vida a redenção!

[Refrão]

D                  G
3. Pela força desta Ceia
A                  D
Vou ao mundo anunciar:
Bm                 Em
Que o amor venceu a morte
A                  D
E a paz há de reinar!""",

    # 28. Vocação (Se Ouvires a Voz do Vento) (Padre Zezinho, scj) - 3 Estrofes
    "vocacao-se-ouvires-a-voz-do-vento-pe-zezinho": """[Intro] D  A  Bm  G  A  D

D                     A
1. Se ouvires a voz do vento
G                     D
Chamando sem cessar,
Bm                    Em
Se ouvires a voz do tempo
A                     D
Mandando esperar:

[Refrão]
G                     A
A decisão é tua, a decisão é tua!
D            Bm
São muitos os convidados,
Em           A        D
Quase ninguém tem tempo!

[Estrofes]
D                     A
2. Se ouvires a voz de Deus
G                     D
Chamando no teu coração,
Bm                    Em
Dizendo pra abandonar
A                     D
O barco e a servidão:

[Refrão]

D                     A
3. Se olhares para os campos
G                     D
Que prontos pra colheita estão,
Bm                    Em
E ouvires que faltam braços
A                     D
Pra semear o santo grão:

[Refrão Final]
G                     A
A decisão é tua, a decisão é tua!
D            Bm
São muitos os convidados,
Em           A        D
Quase ninguém tem tempo!""",

    # 29. Povo de Reis, Assembleia Santa (Pe. Lucien Deiss) - 5 Estrofes
    "povo-de-reis-assembleia-santa-lucien-deiss": """[Intro] Dm  Gm  A7  Dm

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
Pelos séculos dos séculos, no céu e na terra! Amém!""",

    # 30. Cidadão do Infinito (Padre Zezinho, scj) - 4 Estrofes
    "cidadao-do-infinito-pe-zezinho": """[Intro] D  A  Bm  G  A  D

D                 A             Bm
1. Por escutar uma voz que falou que você é meu irmão,
G                 D             Em            A
Eu caminhei procurando a verdade e encontrei a razão.
D                 A             Bm
Por ver a dor que você suportava sem ter redenção,
G                 D             A             D
Eu decidi caminhar ao seu lado e lhe dar minha mão!

[Refrão]
D                 A             Bm
Sou cidadão do infinito, do infinito, do infinito!
G                 D             Em            A
Eu vou plantar a esperança e o amor que é bendito!
D                 A             Bm
Sou cidadão do infinito, do infinito, do infinito!
G                 D             A             D
Eu sou um filho da luz procurando o infinito!

[Estrofes]
D                 A             Bm
2. Por descobrir que você tinha fome e não tinha lugar,
G                 D             Em            A
Eu me lembrei da mensagem do Cristo na ceia e no altar.
D                 A             Bm
Por escutar o clamor da criança chorando sem ter,
G                 D             A             D
Eu decidi que a justiça e a partilha precisam vencer!

[Refrão]

D                 A             Bm
3. Por entender que este mundo carece de tanta união,
G                 D             Em            A
Eu quis ser ponte onde a cerca divide e machuca o irmão.
D                 A             Bm
Por proclamar que o Evangelho liberta e renova a vida,
G                 D             A             D
Eu vou cantando na estrada a canção da fé renascida!

[Refrão]

D                 A             Bm
4. Por confiar no Senhor que promete um novo amanhã,
G                 D             Em            A
Onde a paz verdadeira reine entre toda a irmã.
D                 A             Bm
Até que o tempo se cumpra e no céu chegue a consumação,
G                 D             A             D
Serei semente de vida plantada no chão do sertão!

[Refrão Final]
D                 A             Bm
Sou cidadão do infinito, do infinito, do infinito!
G                 D             Em            A
Eu vou plantar a esperança e o amor que é bendito!
D                 A             Bm
Sou cidadão do infinito, do infinito, do infinito!
G                 D             A             D
Eu sou um filho da luz procurando o infinito!""",

    # 31. Estou Pensando em Deus (Padre Zezinho, scj) - 4 Estrofes
    "estou-pensando-em-deus-pe-zezinho": """[Intro] C  G  Am  F  G  C

[Refrão]
C                 G             Am
Estou pensando em Deus, estou pensando no amor!
F                 C             Dm            G
Estou pensando em Deus, estou pensando no amor!
C                 G             Am
Estou pensando em Deus, estou pensando no amor!
F                 G             C
Estou pensando em Deus, estou pensando no amor!

[Estrofes]
C                 Em            F             C
1. Os homens fogem do amor e depois começam a chorar;
Dm                Am            D7            G
Há tanta gente com fome de paz, sem saber onde buscar!
C                 Em            F             C
Mas esquecem que Deus é o caminho, a luz e o perdão,
F                 C             G             C
E que na mesa de Cristo partilha-se a vida e o pão!

[Refrão]

C                 Em            F             C
2. Há tanta gente que corre na vida sem rumo e sem fé,
Dm                Am            D7            G
Procuram glórias vazias esquecendo o Homem de Nazaré!
C                 Em            F             C
Mas na oração silenciosa a alma encontra a resposta:
F                 C             G             C
Deus é amigo que bate e espera abrir nossa porta!

[Refrão]

C                 Em            F             C
3. Eu quero ser mensageiro da graça, da luz e do bem,
Dm                Am            D7            G
Não quero ver o irmão esquecido na dor de ninguém!
C                 Em            F             C
Por isso canto e proclamo bem alto o nome de Deus:
F                 C             G             C
Ele é o amor verdadeiro que habita na terra e nos céus!

[Refrão]

C                 Em            F             C
4. Quando este dia terminar e o sol no horizonte descer,
Dm                Am            D7            G
Quero elevar minha prece a Deus pelo meu renascer!
C                 Em            F             C
E na manhã do descanso eterno cantar com ardor:
F                 C             G             C
Estou pensando em Deus, estou descansando no amor!""",

    # 32. Mãe do Céu Morena (Padre Zezinho, scj) - 3 Estrofes
    "mae-do-ceu-morena-pe-zezinho": """[Intro] D  A  Bm  G  A  D

[Refrão]
D                 A             Bm
Mãe do céu morena, Senhora da América Latina,
G                 D             Em            A
De olhar tão manso, tão meiga, tão pura, tão divina!
D                 A             Bm
Mãe do céu morena, Senhora de tantos clamores,
G                 D             A             D
Rogai por nós que sofremos, rogai por nossas dores!

[Estrofes]
D                 A             Bm
1. Escuta a voz desta terra sofrida que clama por paz,
G                 D             Em            A
Vem ensinar nossa gente o amor que o Evangelho nos traz!
D                 A             Bm
Mãe pequenina achada nas águas do rio Paraíba,
G                 D             A             D
Abençoai este povo e guardai a nossa vida!

[Refrão]

D                 A             Bm
2. Olha as crianças que pedem carinho e não têm um lar,
G                 D             Em            A
Olha os velhinhos cansados da vida na beira do cais!
D                 A             Bm
Dá esperança aos jovens que buscam a verdade sem fim,
G                 D             A             D
Ensina a todos nós a dizer ao teu Filho o nosso "sim"!

[Refrão]

D                 A             Bm
3. Guarda os lares, as mães, as famílias, os operários também,
G                 D             Em            A
Livra o irmão da injustiça e ajuda a fazer o bem!
D                 A             Bm
Quando chegar nossa hora final e a vida findar,
G                 D             A             D
Mãe do céu morena, vem nos acolher no teu santo altar!""",

    # 33. Como És Lindo (Vida Reluz) - Versos Completos
    "como-es-lindo-vida-reluz": """[Intro] D  A/C#  Bm  G  A  D

D                 A/C#          Bm
1. Que bom, Senhor, ir ao teu encontro,
G                 Em            A
Poder falar e te escutar!
D                 A/C#          Bm
Tu tens palavra de vida eterna,
G                 A             D     D7
Aonde iremos nós, Senhor?

[Refrão]
G                 A             D     Bm
Como és lindo, Senhor! Como és lindo!
Em                A             D     D7
Como és lindo, Senhor! Como és lindo!
G                 A             F#m   Bm
Tua presença nos traz a paz, o Teu amor nos conduz!
Em                A             D
Como és lindo, Senhor! Como és lindo!

[Estrofes]
D                 A/C#          Bm
2. Na Tua mesa de amor nos acolhes,
G                 Em            A
No pão da vida te dás a nós!
D                 A/C#          Bm
Bendito seja por Tua presença,
G                 A             D     D7
Ouvir de novo a Tua doce voz!

[Refrão]

D                 A/C#          Bm
3. O Teu olhar de ternura e afeto
G                 Em            A
Cura as feridas do coração!
D                 A/C#          Bm
Em Ti encontro consolo e alívio,
G                 A             D     D7
És minha rocha, és salvação!

[Refrão Final]
G                 A             D     Bm
Como és lindo, Senhor! Como és lindo!
Em                A             D     D7
Como és lindo, Senhor! Como és lindo!
G                 A             F#m   Bm
Tua presença nos traz a paz, o Teu amor nos conduz!
Em                A             D
Como és lindo, Senhor! Como és lindo!""",

    # 34. Diante do Rei (Walmir Alencar / Vida Reluz) - Versos Completos
    "diante-do-rei-vida-reluz": """[Intro] G  D/F#  Em  C  D  G

G                 D/F#          Em
1. Vem, Senhor Jesus, o coração já bate forte ao Te ver,
C                 Am            D
A Tua graça hoje quero receber!
G                 D/F#          Em
Sem a bênção do Senhor não sei viver!
C                 Am            D
Vem, Senhor Jesus, olhar pra Ti é contemplar a Tua luz,
G                 D/F#          Em
Me faz feliz Te adorar, meu bom Jesus!
C                 D             G     G7
O Teu amor a minha vida seduz!

[Refrão]
C                 D             Bm    Em
Diante do Rei dos reis todo joelho se dobrará!
C                 D             G     G7
Diante do Deus do amor todo coração se prostrará!
C                 D             B7    Em
Ao Cordeiro de Deus, ao Senhor Salvador,
C                 D             G
Toda honra, toda glória e louvor!

[Estrofes]
G                 D/F#          Em
2. Neste altar o milagre do amor se faz real,
C                 Am            D
O Pão da Vida, mistério divinal!
G                 D/F#          Em
Presença viva do Deus sem igual!
C                 Am            D
Prostrado aos Teus pés quero me derramar,
G                 D/F#          Em
Pedir perdão e meu ser renovar,
C                 D             G     G7
E Tua glória sem cessar proclamar!

[Refrão Final]
C                 D             Bm    Em
Diante do Rei dos reis todo joelho se dobrará!
C                 D             G     G7
Diante do Deus do amor todo coração se prostrará!
C                 D             B7    Em
Ao Cordeiro de Deus, ao Senhor Salvador,
C                 D             G
Toda honra, toda glória e louvor!""",

    # 35. Te Louvo em Verdade (Martín Valverde / Rosa de Saron)
    "rosa-de-saron-te-louvo-em-verdade": """[Intro] E  B  C#m  A  B  E

E                 B             C#m
1. Mesmo na tempestade, mesmo que se agite o mar,
A                 F#m           B
Te louvo, te louvo em verdade!
E                 B             C#m
Mesmo longe dos meus, mesmo na solidão,
A                 B             E     E7
Te louvo, te louvo em verdade!

[Refrão]
A                 B             G#m   C#m
Pois somente tenho a Ti, Tu és a minha herança!
A                 B             E     E7
Te louvo, te louvo em verdade!
A                 B             G#m   C#m
Pois somente tenho a Ti, Tu és a minha herança!
A                 B             E
Te louvo, te louvo em verdade!

[Estrofes]
E                 B             C#m
2. Mesmo que me falte a voz, mesmo se o pranto cair,
A                 F#m           B
Te louvo, te louvo em verdade!
E                 B             C#m
Mesmo sem entender as dores deste viver,
A                 B             E     E7
Te louvo, te louvo em verdade!

[Refrão]

E                 B             C#m
3. Mesmo na alegria, quando tudo vai bem,
A                 F#m           B
Te louvo, te louvo em verdade!
E                 B             C#m
Em toda circunstância, prostrado a Teus pés,
A                 B             E     E7
Te louvo, te louvo em verdade!

[Refrão Final]
A                 B             G#m   C#m
Pois somente tenho a Ti, Tu és a minha herança!
A                 B             E     E7
Te louvo, te louvo em verdade!
A                 B             G#m   C#m
Pois somente tenho a Ti, Tu és a minha herança!
A                 B             E
Te louvo, te louvo em verdade!""",

    # 36. Provai e Vede Quão Suave É o Senhor (Salmo 33) - 4 Estrofes
    "provai-e-vede-quao-suave-salmo-33": """[Intro] C  G  Am  F  G  C

[Refrão]
C                 G             Am
Provai e vede quão suave é o Senhor!
F                 G             C
Feliz o homem que tem n'Ele o seu refúgio!

[Estrofes]
C                 Em            F             C
1. Bendirei o Senhor em todo o tempo,
Dm                Am            D7            G
Seu louvor estará sempre em meus lábios!
C                 Em            F             C
Minha alma se gloria no Senhor:
F                 G             C
Que ouçam os humildes e se alegrem!

[Refrão]

C                 Em            F             C
2. Comigo engrandecei ao Senhor Deus,
Dm                Am            D7            G
Exaltemos todos juntos o Seu Nome!
C                 Em            F             C
Procurei o Senhor e Ele me atendeu,
F                 G             C
De todos os meus temores me livrou!

[Refrão]

C                 Em            F             C
3. Contemplai a sua face e alegrai-vos,
Dm                Am            D7            G
E vosso rosto não terá de enrubescer!
C                 Em            F             C
Este pobre clamou e o Senhor o ouviu,
F                 G             C
E o salvou de todas as suas angústias!

[Refrão]

C                 Em            F             C
4. O anjo do Senhor acampa ao redor
Dm                Am            D7            G
Dos que O temem, e os defende e salva!
C                 Em            F             C
Provai e vede como o Senhor é bom:
F                 G             C
Feliz aquele que se abriga no Seu amor!""",

    "salmo-33-provai-e-vede-quao-suave-e-o-senhor": """[Intro] C  G  Am  F  G  C

[Refrão]
C                 G             Am
Provai e vede quão suave é o Senhor!
F                 G             C
Feliz o homem que tem n'Ele o seu refúgio!

[Estrofes]
C                 Em            F             C
1. Bendirei o Senhor em todo o tempo,
Dm                Am            D7            G
Seu louvor estará sempre em meus lábios!
C                 Em            F             C
Minha alma se gloria no Senhor:
F                 G             C
Que ouçam os humildes e se alegrem!

[Refrão]

C                 Em            F             C
2. Comigo engrandecei ao Senhor Deus,
Dm                Am            D7            G
Exaltemos todos juntos o Seu Nome!
C                 Em            F             C
Procurei o Senhor e Ele me atendeu,
F                 G             C
De todos os meus temores me livrou!

[Refrão]

C                 Em            F             C
3. Contemplai a sua face e alegrai-vos,
Dm                Am            D7            G
E vosso rosto não terá de enrubescer!
C                 Em            F             C
Este pobre clamou e o Senhor o ouviu,
F                 G             C
E o salvou de todas as suas angústias!

[Refrão]

C                 Em            F             C
4. O anjo do Senhor acampa ao redor
Dm                Am            D7            G
Dos que O temem, e os defende e salva!
C                 Em            F             C
Provai e vede como o Senhor é bom:
F                 G             C
Feliz aquele que se abriga no Seu amor!"""
}

# Canções que devem ser adicionadas caso não existam nos catálogos
NEW_SONGS_TO_INSERT = {
    "catalog-ofertorio-comunhao.js": [
        {
            "id": "a-barca-tu-te-abeiraste-da-praia",
            "title": "A Barca (Tu Te Abeiraste da Praia)",
            "composer": "Cesáreo Gabaráin",
            "liturgicalMoment": "Comunhão",
            "liturgicalSeason": "Tempo Comum",
            "originalKey": "D",
            "bpm": 76,
            "timeSignature": "4/4",
            "rhythmName": "Balada Suave",
            "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
            "isMostUsed": True,
            "isSimple": True,
            "chordCount": 5,
            "youtubeUrl": "https://www.youtube.com/results?search_query=A+Barca+Tu+Te+Abeiraste+da+Praia+Cesareo+Gabarain+cifra",
            "liturgicalAnalysis": {
                "status": "Canto Vocacional e de Comunhão Evangélico (Lucas 5, 1-11)",
                "theologicalTheme": "Seguimento de Jesus, chamado ao discipulado e entrega total ao Reino de Deus.",
                "biblicalReference": "Lucas 5, 1-11; Mateus 4, 18-22",
                "liturgicalNotes": "Excelente para Comunhão, envio missionário, ordenações e encontros pastorais."
            },
            "cifra": """[Intro] D  A  Bm  G  A  D

D                 A          Bm
1. Tu te abeiraste da praia,
G                 Em         A
Não buscaste nem sábios nem ricos:
D                 A          Bm    D7
Apenas queres que eu te siga!

[Refrão]
G                 A          D     Bm
Senhor, tu me olhaste nos olhos,
Em                A          D     D7
A sorrir, pronunciaste meu nome!
G                 A          D     Bm
Lá na praia, eu larguei o meu barco,
Em                A          D
Junto a ti, buscarei outro mar!

D                 A          Bm
2. Tu sabes bem o que tenho:
G                 Em         A
Em meu barco não há ouro nem prata,
D                 A          Bm    D7
Somente redes e o meu trabalho!

[Refrão]

D                 A          Bm
3. Tu minhas mãos solicitas,
G                 Em         A
Meu cansaço que a outros descanse,
D                 A          Bm    D7
Amor que almeja seguir amando!

[Refrão]

D                 A          Bm
4. Tu, pescador de outros lagos,
G                 Em         A
Ânsia eterna de almas que esperam,
D                 A          Bm    D7
Bondoso amigo que assim me chamas!

[Refrão Final]
G                 A          D     Bm
Senhor, tu me olhaste nos olhos,
Em                A          D     D7
A sorrir, pronunciaste meu nome!
G                 A          D     Bm
Lá na praia, eu larguei o meu barco,
Em                A          D
Junto a ti, buscarei outro mar!"""
        },
        {
            "id": "pao-e-vinho-te-apresentamos",
            "title": "Pão e Vinho Te Apresentamos Neste Altar",
            "composer": "Litúrgico Popular / Hinário CNBB",
            "liturgicalMoment": "Ofertório",
            "liturgicalSeason": "Tempo Comum",
            "originalKey": "D",
            "bpm": 84,
            "timeSignature": "4/4",
            "rhythmName": "Guarânia Suave",
            "rhythmPattern": "↓  ↓ ↑  ↑ ↓",
            "isMostUsed": True,
            "isSimple": True,
            "chordCount": 5,
            "youtubeUrl": "https://www.youtube.com/results?search_query=Pao+e+Vinho+Te+Apresentamos+Neste+Altar+cifra",
            "liturgicalAnalysis": {
                "status": "Canto Clássico Tradicional de Preparação das Oferendas",
                "theologicalTheme": "Apresentação dos dons do trabalho humano unidos ao sacrifício de Cristo no altar.",
                "biblicalReference": "Gênesis 14, 18; Lucas 22, 19-20",
                "liturgicalNotes": "Perfeito para o momento da Procissão das Ofertas em qualquer domingo do Tempo Comum."
            },
            "cifra": """[Intro] D  G  A  D

[Refrão]
D               G            D
Pão e vinho te apresentamos neste altar,
                A            D
Pão e vinho te apresentamos neste altar!
                G            D
Eles são o fruto do nosso trabalho,
                A            D
Fruto do nosso suor e do nosso amor!

[Estrofes]
D               G            D
1. Recebe, Senhor, a nossa oferta,
                A            D
Com nosso coração humilde e sincero.
G               D            Bm
Transforma este pão no Corpo de Cristo,
Em              A            D
Pão vivo do céu que nos dá salvação!

[Refrão]

D               G            D
2. Recebe, Senhor, o vinho da uva,
                A            D
Alegria e festa da nossa união.
G               D            Bm
Transforma este cálice no Sangue de Cristo,
Em              A            D
Aliança eterna e de redenção!

[Refrão]

D               G            D
3. Recebe, Senhor, as nossas fadigas,
                A            D
As lutas e dores de todo o teu povo.
G               D            Bm
Que a bênção sagrada renove a esperança
Em              A            D
De um mundo fraterno, de paz e de luz!

[Refrão]

D               G            D
4. Recebe a Igreja reunida em oração,
                A            D
Que em torno do altar te rende louvor.
G               D            Bm
Na Ceia Sagrada seremos um só corpo,
Em              A            D
Unidos na fé, na esperança e no amor!"""
        }
    ],
    "catalog-adoracao-comunidades.js": [
        {
            "id": "segura-na-mao-de-deus",
            "title": "Segura na Mão de Deus",
            "composer": "Nelson Monteiro da Mota",
            "liturgicalMoment": "Ação de Graças",
            "liturgicalSeason": "Tempo Comum",
            "originalKey": "G",
            "bpm": 76,
            "timeSignature": "4/4",
            "rhythmName": "Balada / Marcha Lenta",
            "rhythmPattern": "↓  ↓ ↑  ↑ ↓ ↑",
            "isMostUsed": True,
            "isSimple": True,
            "chordCount": 4,
            "youtubeUrl": "https://www.youtube.com/results?search_query=Segura+na+Mao+de+Deus+Nelson+Monteiro+cifra",
            "liturgicalAnalysis": {
                "status": "Canto Religioso Popular Cristão de Confiança e Esperança",
                "theologicalTheme": "Abandono confiante na Providência Divina e fidelidade a Cristo nas tribulações.",
                "biblicalReference": "Isaías 41, 13; Salmo 23",
                "liturgicalNotes": "Excelente para Ação de Graças, orações comunitárias, terços e vigílias."
            },
            "cifra": """[Intro] G  D  C  D  G

G                      D
1. Se as águas do mar da vida quiserem te afogar,
C                      D                G
Segura na mão de Deus e vai!
G                      D
Se as tribulações desta vida quiserem te sufocar,
C                      D                G     G7
Segura na mão de Deus e vai!

[Refrão]
C                      D                G          Em
Segura na mão de Deus, segura na mão de Deus,
C                      D                G          G7
Pois ela, ela te sustentará!
C                      D                G          Em
Não temas, segue adiante e não olhes para trás:
C                      D                G
Segura na mão de Deus e vai!

G                      D
2. Se a jornada é pesada e te cansa a caminhada,
C                      D                G
Segura na mão de Deus e vai!
G                      D
Orando, jejuando, confiando e vigiando,
C                      D                G     G7
Segura na mão de Deus e vai!

[Refrão]

G                      D
3. Jesus Cristo prometeu que jamais te deixará:
C                      D                G
Segura na mão de Deus e vai!
G                      D
No banquete celeste um lugar te espera já:
C                      D                G
Segura na mão de Deus e vai!

[Refrão Final]
C                      D                G          Em
Segura na mão de Deus, segura na mão de Deus,
C                      D                G          G7
Pois ela, ela te sustentará!
C                      D                G          Em
Não temas, segue adiante e não olhes para trás:
C                      D                G
Segura na mão de Deus e vai!"""
        }
    ]
}

def update_catalog():
    updated_count = 0
    added_count = 0
    catalog_files = [
        "catalog-entrada-final.js",
        "catalog-ofertorio-comunhao.js",
        "catalog-ordinario-salmos.js",
        "catalog-adoracao-comunidades.js"
    ]

    for fname in catalog_files:
        fpath = os.path.join(CATALOG_DIR, fname)
        with open(fpath, "r", encoding="utf-8") as f:
            content = f.read()

        match = re.search(r"=\s*(\[[\s\S]*\]);", content)
        if not match:
            print(f"Pular {fname}: formato não reconhecido.")
            continue

        songs = json.loads(match.group(1))
        file_modified = False
        existing_ids = {s.get("id") for s in songs}

        for s in songs:
            sid = s.get("id")
            if sid in COMPLETE_SONGS:
                old_lines = len(s.get("cifra", "").split("\n"))
                new_cifra = COMPLETE_SONGS[sid].strip()
                new_lines = len(new_cifra.split("\n"))
                s["cifra"] = new_cifra
                file_modified = True
                updated_count += 1
                print(f"[{fname}] Expandida '{s['title']}' ({sid}): {old_lines} -> {new_lines} linhas.")

        # Inserir músicas essenciais se ainda não constarem no arquivo
        if fname in NEW_SONGS_TO_INSERT:
            for new_song in NEW_SONGS_TO_INSERT[fname]:
                if new_song["id"] not in existing_ids:
                    songs.append(new_song)
                    existing_ids.add(new_song["id"])
                    file_modified = True
                    added_count += 1
                    print(f"[{fname}] Inserida nova música completa: '{new_song['title']}' ({new_song['id']})")

        if file_modified:
            var_name = content.split("=")[0].strip()
            new_json_str = json.dumps(songs, ensure_ascii=False, indent=2)
            new_content = f"{var_name} = {new_json_str};\n"
            with open(fpath, "w", encoding="utf-8") as f:
                f.write(new_content)

    print(f"\n==========================================")
    print(f"Sucesso!")
    print(f"Músicas atualizadas com estrofes completas: {updated_count}")
    print(f"Novas músicas completas adicionadas: {added_count}")
    print(f"==========================================")

if __name__ == "__main__":
    update_catalog()
