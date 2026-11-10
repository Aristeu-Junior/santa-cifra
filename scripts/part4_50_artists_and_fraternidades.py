# -*- coding: utf-8 -*-
"""
Parte 4 da Expansão Massiva do Santa Cifra:
- Todas as Fraternidades e Comunidades Católicas (Fraternidade São João Paulo II, Fraternidade Toca de Assis,
  Fraternidade O Caminho, Fraternidade Arca de Maria, Aliança de Misericórdia, Comunidade Recado, Pantokrator,
  Obra de Maria, Doce Mãe de Deus, Instituto Hesed, Colo de Deus, Shalom, Canção Nova)
- Hinos das Campanhas da Fraternidade (CNBB) de várias edições
- Mais de 55 Cantores, Padres, Irmãs e Bandas Católicas variadas
"""

from part1_padre_zezinho_marcelo import make_song

FRATERNIDADES_E_CAMPANHAS_SONGS = [
    # ================= FRATERNIDADES CATÓLICAS & NOVAS COMUNIDADES =================
    make_song(
        "sopra-em-nos-fraternidade-sao-joao-paulo-ii",
        "Sopra em Nós (Vento Impetuoso)",
        "Fraternidade São João Paulo II",
        "Comunhão", "Pentecostes", "Em", 76, "4/4", "Balada / Adoração", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Pentecostes e Adoração", 96, "Atos 2, 1-4", "At 2, 1-4; Ez 37",
        "Um dos maiores hinos da Fraternidade São João Paulo II, todo estruturado em 4 acordes simples (Em, C, G, D).",
        """[Intro] Em  C  G  D

[Primeira Parte]
   Em                                       C
1. Minh'alma tem sede de Ti, ó meu Deus,
   G                                        D
Minh'alma suspira pelo Teu amor!
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
Espírito Santo de Deus, vem sobre nós!"""
    ),
    make_song(
        "leao-de-juda-fraternidade-sao-joao-paulo-ii",
        "Leão de Judá / Filho de Davi",
        "Fraternidade São João Paulo II",
        "Ação de Graças", "Qualquer", "Dm", 80, "4/4", "Adoração Solene", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Cristológico (Apocalipse 5, 5)", 95, "Apocalipse 5, 5", "Ap 5, 5; Mc 10, 47",
        "Clássico da Fraternidade São João Paulo II exaltando Cristo como o Leão da Tribo de Judá.",
        """[Intro] Dm  Bb  F  C

[Primeira Parte]
   Dm                       Bb              F           C
1. Ouço o som do céu que desce sobre este altar,
   Dm                       Bb              F           C
É o Cordeiro Santo que veio reinar!

[Refrão]
   Dm                       Bb
Filho de Davi, tem compaixão de mim!
   F                        C
Leão da Tribo de Judá, vem vencer em mim!"""
    ),
    make_song(
        "tudo-passa-so-deus-nao-passa-fsjpii",
        "Tudo Passa (Só Deus Basta)",
        "Fraternidade São João Paulo II",
        "Ação de Graças", "Qualquer", "G", 74, "4/4", "Balada Orante", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Meditação Pós-Comunhão", 96, "Santa Teresa d'Ávila", "Sl 45; Mt 24, 35",
        "Canto de entrega e confiança da Fraternidade São João Paulo II em 4 acordes.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D
Tudo passa, tudo passará,
   Em                       C
Mas o Teu amor jamais mudará!
   G                        D
Quem a Deus tem, nada lhe falta:
   Em                       C               G
Só Deus basta, só Deus basta!"""
    ),
    make_song(
        "sacramento-de-amor-toca-de-assis",
        "Sacramento de Amor (Deus Escondido no Pão)",
        "Fraternidade Toca de Assis",
        "Comunhão", "Qualquer", "D", 70, "4/4", "Dedilhado Eucarístico", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino Eucarístico da Fraternidade Toca de Assis", 100, "IGMR 86 / Culto Eucarístico", "Jo 6, 51; Is 45, 15",
        "Canto profundamente eucarístico da Fraternidade Toca de Assis, próprio para Comunhão e Adoração ao Santíssimo.",
        """[Intro] D  A  Bm  G  Em  A7

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
Quero amar-Te e servir-Te, ó Jesus, meu Redentor!"""
    ),
    make_song(
        "adorador-por-excelencia-toca-de-assis",
        "Adorador por Excelência (Pra Sempre Teu)",
        "Fraternidade Toca de Assis",
        "Ação de Graças", "Qualquer", "G", 72, "4/4", "Balada Franciscana", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Eucarístico e Franciscano", 98, "Adoração ao Santíssimo", "Jo 4, 23-24",
        "Clássico da Toca de Assis unindo a adoração ao Santíssimo Sacramento e o amor aos pobres.",
        """[Intro] G  D  Em  C

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
Seja para sempre bendito e adorado!"""
    ),
    make_song(
        "nos-pobres-te-encontrei-fraternidade-o-caminho",
        "Nos Pobres Te Encontrei (Tive Fome e Me Deste de Comer)",
        "Fraternidade O Caminho",
        "Comunhão", "Quaresma", "Em", 74, "4/4", "Balada Evangélica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Baseado em Mateus 25, 35-40", 99, "IGMR 86 / Mateus 25, 35-40", "Mt 25, 35-40",
        "Canto da Fraternidade O Caminho meditando a presença real de Cristo na Eucaristia e nos mais pobres.",
        """[Intro] Em  C  G  D

[Primeira Parte]
   Em                       C               G           D
1. Tive fome e me deste de comer, tive sede e me deste de beber;
   Em                       C               G           D
Era forasteiro e me acolheste em teu lar, no irmão ferido vi Teu olhar!

[Refrão]
   C                        D               G           Em
Todas as vezes que fizestes ao menor dos meus irmãos,
   Am                       B7              Em
Foi a Mim que o fizestes, diz o Senhor!"""
    ),
    make_song(
        "totus-tuus-maria-fraternidade-arca-de-maria",
        "Totus Tuus Maria (Todo Teu, ó Mãe)",
        "Fraternidade Arca de Maria",
        "Final", "Qualquer", "D", 74, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Consagração Mariana (Tratado de São Luís Maria Grignion de Montfort)", 97,
        "Lumen Gentium 62", "Jo 19, 26-27",
        "Canto de consagração a Jesus por mãos de Maria da Fraternidade Arca de Maria.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Totus Tuus, Maria! Todo teu eu quero ser!
   G                        Em              A7          D
Por tuas mãos maternas, a Jesus pertencer!"""
    ),
    make_song(
        "ruah-sopro-de-deus-alianca-de-misericordia",
        "Ruah (Espírito Santo Repousa)",
        "Comunidade Aliança de Misericórdia",
        "Comunhão", "Pentecostes", "Am", 72, "4/4", "Balada ao Espírito Santo", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Invocação ao Espírito Santo", 95, "Isaías 61, 1 / Lucas 4, 18", "Is 61, 1; Lc 4, 18",
        "Quatro acordes fixos (Am, F, C, G) do início ao fim da música da Comunidade Aliança de Misericórdia.",
        """[Intro] Am  F  C  G

[Primeira Parte]
   Am                       F               C           G
1. O Espírito do Senhor repousa sobre mim,
   Am                       F               C           G
Porque o Senhor me ungiu e enviou para anunciar a paz!

[Refrão]
   Am                       F
Ruah, Ruah, Sopro de Deus,
   C                        G
Vem renovar os corações dos filhos Teus!"""
    ),
    make_song(
        "mao-no-arado-comunidade-recado",
        "Mão no Arado (Ninguém Olha Para Trás)",
        "Comunidade Recado",
        "Final", "Tempo Comum", "G", 90, "4/4", "Pop Missionário", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Vocacional e Missionário (Lucas 9, 62)", 96, "IGMR 90 / Lucas 9, 62", "Lc 9, 62",
        "Clássico da Comunidade Recado inspirado no Evangelho de Lucas ('Quem põe a mão no arado não olha para trás').",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Quem põe a mão no arado não pode olhar pra trás,
   C                        D               G
Seguir Jesus de perto é encontrar a verdadeira paz!"""
    ),
    make_song(
        "fidelidade-comunidade-pantokrator",
        "Fidelidade (Ser Teu Tudo, Senhor)",
        "Comunidade Católica Pantokrator",
        "Ofertório", "Tempo Comum", "D", 74, "4/4", "Balada de Entrega", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto de Oferta Vocacional e Fidelidade", 96, "IGMR 74", "Ap 2, 10",
        "Hino da Comunidade Católica Pantokrator sobre a resposta fiel ao chamado de Deus.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Recebe, Senhor, minha fidelidade sobre este altar,
   G                        A7              D
No pão e no vinho, minha vida inteira quero ofertar!"""
    ),
    make_song(
        "alegra-te-cheia-de-graca-obra-de-maria",
        "Alegra-te, Cheia de Graça (Servir Com Alegria)",
        "Comunidade Obra de Maria",
        "Final", "Qualquer", "G", 84, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Mariano de Evangelização (Lucas 1, 28)", 97, "Lucas 1, 28-45", "Lc 1, 28-45",
        "Hino do carisma da Comunidade Obra de Maria: evangelizar de todas as formas com a alegria de Nossa Senhora.",
        """[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Alegra-te, cheia de graça, o Senhor é contigo!
   Em                       Am              D7          G
Com Maria partimos apressados para servir ao irmão amigo!"""
    ),
    make_song(
        "mae-da-divina-graca-doce-mae-de-deus",
        "Doce Mãe de Deus, Rainha da Paz",
        "Comunidade Católica Doce Mãe de Deus",
        "Final", "Qualquer", "C", 78, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Mariano Final", 96, "Lumen Gentium 62", "Lc 1, 48",
        "Quatro acordes simples (C, Am, Dm, G7) em louvor à Mãe de Deus.",
        """[Intro] C  Am  Dm  G7  C

[Refrão]
   C                        Am              Dm          G7
Doce Mãe de Deus, olha pelos filhos teus,
   Dm                       G7              C
Conduze nossos passos ao Reino dos Céus!"""
    ),

    # ================= HINOS DAS CAMPANHAS DA FRATERNIDADE (CNBB) =================
    make_song(
        "hino-campanha-da-fraternidade-2024-amizade-social",
        "Vós Sois Todos Irmãos e Irmãs (Hino da Campanha da Fraternidade 2024)",
        "CNBB - Campanha da Fraternidade 2024 (Fraternidade e Amizade Social)",
        "Entrada", "Quaresma", "D", 82, "4/4", "Hino Oficial da CF", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da CNBB para a Quaresma (Mateus 23, 8)", 100,
        "CNBB - Campanha da Fraternidade 2024 / Fratelli Tutti", "Mt 23, 8; Sl 132",
        "Hino oficial da Campanha da Fraternidade da CNBB sobre a Amizade Social ('Vós sois todos irmãos e irmãs').",
        """[Intro] D  G  A7  D

[Primeira Parte]
   D                        Bm              G           A7
1. Convertei-vos e crede no Evangelho, eis o tempo favorável da mudança;
   G                        D               Em    A7    D
Superando a divisão e a indiferença, construamos a amizade e a esperança!

[Refrão]
   G                        A7              F#m         Bm
"Vós sois todos irmãos e irmãs!" — é Palavra de Cristo, o Senhor;
   Em                       A7              D
Pois um só é o nosso Pai: vivamos na paz e no amor!"""
    ),
    make_song(
        "hino-campanha-da-fraternidade-2023-fome",
        "Dai-lhes Vós Mesmos de Comer (Hino da Campanha da Fraternidade 2023)",
        "CNBB - Campanha da Fraternidade 2023 (Fraternidade e Fome)",
        "Ofertório", "Quaresma", "G", 84, "4/4", "Toada Litúrgica da CF", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da CNBB (Mateus 14, 16)", 100,
        "CNBB - Campanha da Fraternidade 2023 / Mateus 14, 16", "Mt 14, 13-21; Jo 6, 1-15",
        "Baseado no mandato evangélico de Jesus na multiplicação dos pães: 'Dai-lhes vós mesmos de comer!'.",
        """[Intro] G  C  D7  G

[Primeira Parte]
   G                        Em              Am          D7
1. Vocês que têm fome e sede de justiça, venham todos para a Mesa da partilha;
   C                        G               Am    D7    G
Cinco pães e dois peixinhos ofertados saciarão a multidão que é família!

[Refrão]
   C                        D7              G           Em
"Dai-lhes vós mesmos de comer!" — ordena o Mestre com compaixão;
   Am                       D7              G
Na Eucaristia aprendemos a repartir a vida e o pão!"""
    ),
    make_song(
        "hino-campanha-da-fraternidade-2022-educacao",
        "Fala Com Sabedoria, Ensina Com Amor (Hino da Campanha da Fraternidade 2022)",
        "CNBB - Campanha da Fraternidade 2022 (Fraternidade e Educação)",
        "Entrada", "Quaresma", "C", 84, "4/4", "Marcha Litúrgica da CF", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da CNBB (Provérbios 31, 26)", 100,
        "CNBB - Campanha da Fraternidade 2022 / Provérbios 31, 26", "Pv 31, 26; Mc 10, 14",
        "Hino oficial da Campanha da Fraternidade sobre a missão cristã de educar com sabedoria e amor.",
        """[Intro] C  F  G7  C

[Refrão]
   C                        Am              Dm          G7
Fala com sabedoria, ensina com amor!
   F                        G7              C
Em Cristo Mestre encontramos a verdade que liberta e dá valor!"""
    ),
    make_song(
        "hino-campanha-da-fraternidade-2020-vida-dom-e-compromisso",
        "Viu, Sentiu Compaixão e Cuidou Dele (Hino da Campanha da Fraternidade 2020)",
        "CNBB - Campanha da Fraternidade 2020 (Fraternidade e Vida: Dom e Compromisso)",
        "Comunhão", "Quaresma", "Dm", 78, "4/4", "Balada Quaresmal da CF", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da CNBB (O Bom Samaritano - Lucas 10, 33-34)", 100,
        "CNBB - Campanha da Fraternidade 2020 / Irmã Dulce dos Pobres", "Lc 10, 25-37",
        "Inspirado na parábola do Bom Samaritano e no testemunho de Santa Dulce dos Pobres.",
        """[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              C7          F
Deus viu, sentiu compaixão, e cuidou de seu povo com amor!
   Gm                       Dm              A7          Dm
Aprendamos do Bom Samaritano a cuidar da vida na dor!"""
    ),
    make_song(
        "hino-campanha-da-fraternidade-2015-eu-vim-para-servir",
        "Eu Vim Para Servir (Hino da Campanha da Fraternidade 2015)",
        "CNBB - Campanha da Fraternidade 2015 (Marcos 10, 45)",
        "Comunhão", "Quaresma", "G", 82, "4/4", "Balada Litúrgica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da CNBB (Marcos 10, 45)", 100,
        "CNBB - Campanha da Fraternidade 2015 / Marcos 10, 45", "Mc 10, 45; Jo 13, 14",
        "Canta as palavras do Filho do Homem: 'Eu não vim para ser servido, mas para servir e dar a vida'.",
        """[Intro] G  Em  C  D7  G

[Refrão]
   G                        Em              C           D7
"Eu vim para servir, Eu vim para servir
   Am                       D7              G
E dar a minha vida em resgate por muitos!" (2x)"""
    ),
    make_song(
        "hino-campanha-da-fraternidade-2013-juventude-eis-me-aqui",
        "Eis-me Aqui, Envia-me! (Hino da Campanha da Fraternidade 2013 - Juventude)",
        "CNBB - Campanha da Fraternidade 2013 (Isaías 6, 8)",
        "Final", "Quaresma", "D", 90, "4/4", "Marcha Jovem Litúrgica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da CNBB e JMJ Rio 2013 (Isaías 6, 8)", 100,
        "CNBB - Campanha da Fraternidade 2013 / Isaías 6, 8", "Is 6, 8; Jr 1, 7",
        "Canto vocacional e missionário da Campanha da Fraternidade da Juventude.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Quem enviarei? Quem irá por nós?
   Bm                       Em              A7          D
"Eis-me aqui, Senhor, envia-me a mim!" """
    ),
]

FIFTY_CATHOLIC_SINGERS_SONGS = [
    # 1. Tony Allysson
    make_song(
        "soberano-poderoso-deus-tony-allysson",
        "Poderoso Deus / Soberano",
        "Tony Allysson",
        "Ação de Graças", "Qualquer", "G", 72, "4/4", "Adoração", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Adoração", 95, "Adoração ao Santíssimo", "Ap 4, 8; Sl 92",
        "Quatro acordes fixos (G, D, Em, C) na voz de Tony Allysson.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D
Poderoso Deus, Soberano Rei,
   Em                       C
Diante do Teu trono me prostrarei!
   G                        D
Santo é o Teu Nome, digno de louvor,
   Em                       C               G
Recebe a minha vida, ó meu Senhor!"""
    ),
    make_song(
        "filho-de-davi-tony-allysson",
        "Filho de Davi (Tem Compaixão de Mim)",
        "Tony Allysson",
        "Ato Penitencial", "Quaresma", "Em", 74, "4/4", "Balada de Súplica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Clamor Evangélico do Cego de Jericó (Marcos 10, 47)", 96, "Marcos 10, 47-52", "Mc 10, 47-52",
        "Baseado na oração bíblica de Bartimeu: 'Jesus, Filho de Davi, tem compaixão de mim!'.",
        """[Intro] Em  C  G  D

[Refrão]
   Em                       C
Jesus, Filho de Davi, tem compaixão de mim!
   G                        D
Jesus, Filho de Davi, cura o meu coração!"""
    ),
    # 2. Diego Fernandes
    make_song(
        "entao-volta-diego-fernandes",
        "Então Volta (Casa do Pai)",
        "Diego Fernandes",
        "Ato Penitencial", "Quaresma", "C", 74, "4/4", "Balada de Reconciliação", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Retorno ao Pai", 94, "Lucas 15, 20", "Lc 15, 11-24",
        "Canto de reconciliação de Diego Fernandes em 4 acordes simples (C, G, Am, F).",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Então volta para a casa do teu Pai,
   F                        G               C
Os braços d'Ele abertos sempre estão por ti!"""
    ),
    # 3. Davidson Silva (Comunidade Shalom)
    make_song(
        "amar-te-mais-davidson-silva",
        "Amar-Te Mais",
        "Davidson Silva / Comunidade Shalom",
        "Ação de Graças", "Qualquer", "D", 70, "4/4", "Dedilhado / Adoração", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Eucarístico de Ação de Graças (João 21, 15-17)", 98,
        "João 21, 15-17 / Pós-Comunhão", "Jo 21, 15-17",
        "Inspirado na resposta de São Pedro a Jesus Ressuscitado: 'Senhor, Tu sabes tudo, Tu sabes que eu Te amo'.",
        """[Intro] D  A  Bm  G

[Primeira Parte]
   D                        A               Bm
1. Senhor, Tu sabes tudo, Tu sabes que Te amo,
   G                        Em              A7
Mesmo na minha fraqueza, pelo Teu Nome eu clamo!

[Refrão]
   D                        A               Bm
Amar-Te mais que a mim mesmo, amar-Te mais que tudo que há aqui,
   G                        A7              D
Entregar a minha vida inteira só por Ti!"""
    ),
    # 4. Ana Gabriela
    make_song(
        "eu-sou-teu-ana-gabriela",
        "Eu Sou Teu (Mais Que Tudo)",
        "Ana Gabriela",
        "Ofertório", "Tempo Comum", "G", 76, "4/4", "Balada Jovem", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Jovem de Oferta de Vida", 94, "IGMR 74", "Ct 6, 3",
        "Quatro acordes em Sol maior na voz de Ana Gabriela.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Eu sou Teu, inteiramente Teu, Senhor,
   C                        D               G
Toma em Tuas mãos minha vida e meu amor!"""
    ),
    # 5. Laura Salvador
    make_song(
        "fiat-faca-se-em-mim-laura-salvador",
        "Fiat (Faça-se em Mim Segundo a Tua Palavra)",
        "Laura Salvador",
        "Final", "Advento", "C", 74, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Mariano da Anunciação (Lucas 1, 38)", 98, "Lucas 1, 38", "Lc 1, 38",
        "Canta o 'Fiat' de Nossa Senhora na Anunciação do Anjo Gabriel.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Eis aqui a serva do Senhor:
   F                        G               C
Faça-se em mim segundo a Tua Palavra!"""
    ),
    # 6. Juninho Cassimiro
    make_song(
        "teu-amor-me-sustentara-juninho-cassimiro",
        "Teu Amor Me Sustentará",
        "Juninho Cassimiro",
        "Ação de Graças", "Tempo Comum", "A", 74, "4/4", "Balada de Oração", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Confiança na Graça de Deus", 95, "2Coríntios 12, 9", "2Cor 12, 9",
        "Composição de Juninho Cassimiro em 4 acordes (A, E, F#m, D).",
        """[Intro] A  E  F#m  D

[Refrão]
   A                        E               F#m
Basta-me a Tua graça, Teu amor me sustentará;
   D                        E               A
Na minha fraqueza a Tua força brilhará!"""
    ),
    # 7. Olívia Ferreira
    make_song(
        "maria-passa-a-frente-olivia-ferreira",
        "Maria Passa à Frente",
        "Olívia Ferreira",
        "Final", "Qualquer", "D", 76, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Devoção Mariana", 95, "Jo 2, 1-11", "Jo 2, 1-11",
        "Oração mariana muito popular nas paróquias e grupos de oração.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Maria, passa à frente, vai abrindo estradas e caminhos;
   G                        A7              D
Onde Maria põe a mão, Jesus derrama a Sua bênção!"""
    ),
    # 8. Salette Ferreira (Canção Nova)
    make_song(
        "o-senhor-e-a-minha-forca-salette-ferreira",
        "O Senhor É a Minha Força (Neemias 8, 10)",
        "Salette Ferreira / Canção Nova",
        "Entrada", "Tempo Comum", "G", 88, "4/4", "Marcha Bíblica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Bíblico de Alegria no Senhor (Neemias 8, 10)", 98, "Neemias 8, 10 / Salmo 27", "Ne 8, 10; Sl 27, 7",
        "Baseado em Neemias 8, 10 ('A alegria do Senhor é a nossa força').",
        """[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
A alegria do Senhor é a nossa força!
   Em                       Am              D7          G
A alegria do Senhor é a nossa força!"""
    ),
    # 9. Márcio Todeschini (Canção Nova)
    make_song(
        "a-forca-do-amor-marcio-todeschini",
        "A Força do Amor",
        "Márcio Todeschini / Canção Nova",
        "Comunhão", "Tempo Comum", "D", 76, "4/4", "Balada Eucarística", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto sobre o Amor de Cristo na Eucaristia", 96, "Romanos 8, 35", "Rm 8, 35-39",
        "Composição de Márcio Todeschini sobre o amor de Cristo que vence toda dor.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Quem nos separará do amor de Cristo?
   G                        A7              D
Em todas as coisas somos mais que vencedores!"""
    ),
    # 10. Pitter Di Laura (Canção Nova)
    make_song(
        "a-vitoria-e-nossa-pitter-di-laura",
        "A Vitória É Nossa Pelo Sangue de Jesus",
        "Pitter Di Laura / Canção Nova",
        "Ação de Graças", "Páscoa", "G", 82, "4/4", "Balada Pascal", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Vitória Pascal (Apocalipse 12, 11)", 94, "Apocalipse 12, 11", "Ap 12, 11",
        "Quatro acordes em Sol maior na voz de Pitter Di Laura.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Pelo Sangue do Cordeiro alcançamos redenção,
   C                        D               G
Nele está nossa vitória e nossa salvação!"""
    ),
    # 11. Emanuel Stênio (Canção Nova)
    make_song(
        "sopra-espirito-emanuel-stenio",
        "Sopra, Espírito de Deus",
        "Emanuel Stênio / Canção Nova",
        "Entrada", "Pentecostes", "Em", 78, "4/4", "Balada de Pentecostes", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Invocação ao Espírito Santo", 95, "Ezequiel 37, 9", "Ez 37, 9",
        "Canto de Pentecostes e Crisma em 4 acordes simples (Em, C, G, D).",
        """[Intro] Em  C  G  D

[Refrão]
   Em                       C               G           D
Vem dos quatro ventos, ó Espírito de Deus,
   Em                       C               D           Em
Sopra sobre nós e dá vida aos filhos Teus!"""
    ),
    # 12. Amor e Adoração (Canção Nova)
    make_song(
        "reunidos-em-teu-nome-amor-e-adoracao",
        "Reunidos em Teu Nome",
        "Ministério Amor e Adoração / Canção Nova",
        "Entrada", "Tempo Comum", "G", 88, "4/4", "Pop Litúrgico", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Abertura Comunitária (Mateus 18, 20)", 97, "IGMR 47 / Mateus 18, 20", "Mt 18, 20",
        "Excelente canto de Entrada para a Missa Dominical.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Reunidos em Teu Nome, celebramos Teu amor,
   C                        D               G
No altar da Eucaristia Te adoramos, ó Senhor!"""
    ),
    # 13. Thiago Tomé (Canção Nova)
    make_song(
        "tu-es-meu-tudo-thiago-tome",
        "Senhor, Tu És Meu Tudo",
        "Thiago Tomé / Canção Nova",
        "Ação de Graças", "Qualquer", "C", 72, "4/4", "Adoração", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Oração Pós-Comunhão", 95, "Salmo 72, 25", "Sl 72, 25-26",
        "Quatro acordes em Dó maior (C, G, Am, F) na voz do Pe. Thiago Tomé.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Quem tenho eu no céu senão a Ti?
   F                        G               C
E na terra nada quero além de Ti, meu Senhor!"""
    ),
    # 14. Rogerinha Moreira
    make_song(
        "coracao-adorador-rogerinha-moreira",
        "Coração Adorador",
        "Rogerinha Moreira / Canção Nova",
        "Ação de Graças", "Qualquer", "D", 72, "4/4", "Balada de Adoração", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto de Adoração Eucarística", 95, "João 4, 24", "Jo 4, 24",
        "Canto suave de adoração em Ré maior.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Dá-me um coração adorador, fiel e sincero,
   G                        A7              D
Pois somente a Tua presença é tudo o que eu quero!"""
    ),
    # 15. Padre Adriano Zandoná
    make_song(
        "confiarei-pe-adriano-zandona",
        "Confiarei no Teu Amor",
        "Padre Adriano Zandoná",
        "Ação de Graças", "Tempo Comum", "G", 74, "4/4", "Balada de Esperança", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Confiança em Deus (Salmo 36, 5)", 95, "Salmo 36, 5", "Sl 36, 5",
        "Quatro acordes simples (G, D, Em, C) do Pe. Adriano Zandoná.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Entrega o teu caminho ao Senhor, confia Nele,
   C                        D               G
E tudo o mais Ele fará por ti!"""
    ),
    # 16. Padre Cleidimar Moreira
    make_song(
        "maos-ensanguentadas-de-jesus-pe-cleidimar",
        "Mãos Ensanguentadas de Jesus",
        "Padre Cleidimar Moreira / Devocional",
        "Ato Penitencial", "Quaresma", "D", 72, "4/4", "Balada de Súplica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Oração às Santas Chagas de Cristo", 94, "João 20, 27", "Jo 20, 27; Is 53, 5",
        "Canto devocional às Santas Chagas de Nosso Senhor Jesus Cristo.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Mãos ensanguentadas de Jesus, mãos feridas lá na Cruz!
   Bm                       Em              A7          D
Vem tocar em minha vida, vem curar meu coração!"""
    ),
    # 17. Padre Alessandro Campos
    make_song(
        "o-que-e-que-eu-sou-sem-jesus-pe-alessandro-campos",
        "O Que É Que Eu Sou Sem Jesus",
        "Padre Alessandro Campos",
        "Ação de Graças", "Tempo Comum", "G", 86, "3/4", "Guarânia Sertaneja", "↓ ↑ ↓ ↑ ↓",
        True, True, 3, "Clássico Sertanejo Católico (João 15, 5)", 94, "João 15, 5", "Jo 15, 5",
        "Apenas 3 acordes (G, D7, C) — uma das músicas católicas sertanejas mais conhecidas do Brasil!",
        """[Intro] G  D7  G  C  G  D7  G

[Refrão]
   G                                        D7
O que é que eu sou sem Jesus?
   C                        D7              G
Nada, nada, nada!
   G                        G7              C
Sem Jesus eu sou folha seca que o vento leva,
   G                        D7              G
Com Jesus a minha vida está abençoada!"""
    ),
    # 18. Padre Juarez de Castro
    make_song(
        "restaura-minha-fe-pe-juarez-de-castro",
        "Restaura Minha Fé, Senhor",
        "Padre Juarez de Castro",
        "Ação de Graças", "Tempo Comum", "C", 74, "4/4", "Balada", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Oração de Fé (Lucas 17, 5)", 94, "Lucas 17, 5", "Lc 17, 5",
        "Quatro acordes em Dó maior na voz do Padre Juarez de Castro.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Aumenta a minha fé, restaura o meu viver,
   F                        G               C
Em Tuas mãos, Senhor, entrego todo o meu ser!"""
    ),
    # 19. Padre Robson de Oliveira
    make_song(
        "no-teu-altar-pai-eterno-pe-robson",
        "No Teu Altar, Divino Pai Eterno",
        "Padre Robson de Oliveira",
        "Entrada", "Tempo Comum", "D", 82, "4/4", "Hino de Romaria", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Romaria ao Divino Pai Eterno", 95, "Diretório sobre Piedade Popular", "Sl 121",
        "Hino tradicional das romarias ao Divino Pai Eterno em 4 acordes simples.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Divino Pai Eterno, aqui viemos Te louvar,
   Bm                       Em              A7          D
Abençoa as famílias reunidas no Teu altar!"""
    ),
    # 20. Padre Ezequiel Dal Pozzo
    make_song(
        "cuidar-da-familia-pe-ezequiel-dal-pozzo",
        "Cuidar da Família e da Vida",
        "Padre Ezequiel Dal Pozzo",
        "Ação de Graças", "Tempo Comum", "G", 80, "4/4", "Balada Familiar", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto para Pastoral Familiar", 95, "Eclesiástico 3", "Eclo 3, 1-16",
        "Quatro acordes abertos (G, C, D7, Em) celebrando a vocação familiar.",
        """[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Abençoa, Senhor, nosso lar e nossa união,
   Em                       Am              D7          G
Que a Tua paz governe sempre o nosso coração!"""
    ),
    # 21. Padre João Carlos
    make_song(
        "quem-me-tocou-pe-joao-carlos",
        "Quem Me Tocou? (Pela Fé Eu Vou Tocar no Manto de Jesus)",
        "Padre João Carlos",
        "Comunhão", "Tempo Comum", "Dm", 78, "4/4", "Balada Evangélica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Evangélico (Marcos 5, 25-34)", 97, "Marcos 5, 25-34", "Mc 5, 25-34",
        "Inspirado no Evangelho da mulher que tocou na orla do manto de Jesus com fé.",
        """[Intro] Dm  Gm  A7  Dm

[Refrão]
   Dm                       Gm              C7          F
Olhou Jesus ao Seu redor e perguntou: "Quem Me tocou?"
   Gm                       Dm              A7          Dm
Foi a fé daquela mulher que a salvou e a curou!"""
    ),
    # 22. Padre Rodrigo Natal
    make_song(
        "passa-na-frente-maria-pe-rodrigo-natal",
        "Nossa Senhora do Caminho",
        "Padre Rodrigo Natal",
        "Final", "Qualquer", "C", 80, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Mariano de Envio", 95, "Lumen Gentium 62", "Lc 1, 45",
        "Canto mariano em 4 acordes simples.",
        """[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Caminha conosco, ó Mãe do Senhor,
   Am                       Dm              G7          C
Ensina teus filhos a viver no amor!"""
    ),
    # 23. Irmã Ana Paula, cmc
    make_song(
        "pertinho-de-ti-irma-ana-paula",
        "Pertinho de Ti (Aos Pés do Sacrário)",
        "Irmã Ana Paula, cmc",
        "Ação de Graças", "Qualquer", "G", 70, "4/4", "Dedilhado Eucarístico", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Adoração e Ação de Graças", 98, "Lucas 10, 39", "Lc 10, 39-42",
        "Inspirado em Maria de Betânia sentada aos pés de Jesus escutando Sua Palavra.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Pertinho de Ti eu quero ficar,
   C                        Am              D
Aos pés do Teu altar em silêncio Te adorar!
   G                        D               Em
Escolhi a melhor parte que não me será tirada:
   C                        D               G
Estar contigo, ó Jesus, minha morada!"""
    ),
    # 24. Irmã Inês de Jesus
    make_song(
        "doce-coracao-de-maria-irma-ines-de-jesus",
        "Doce Coração de Maria, Sede a Minha Salvação",
        "Irmã Inês de Jesus / Tradicional Mariano",
        "Final", "Qualquer", "D", 82, "3/4", "Valsa Mariana", "↓ ↑ ↓ ↑ ↓",
        True, True, 3, "Hino Tradicional ao Imaculado Coração de Maria", 99,
        "Memória do Imaculado Coração de Maria", "Lc 2, 19.51",
        "Apenas 3 acordes (D, G, A7) num dos refrões marianos mais tradicionais da Igreja.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Doce Coração de Maria, sede a minha salvação!
   Bm                       Em              A7          D
Doce Coração de Maria, sede a minha salvação!"""
    ),
    # 25. Banda Dom
    make_song(
        "tudo-e-possivel-ao-que-cre-banda-dom",
        "Tudo É Possível ao Que Crê (Marcos 9, 23)",
        "Banda Dom",
        "Ação de Graças", "Tempo Comum", "G", 84, "4/4", "Pop Acústico", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Bíblico (Marcos 9, 23)", 95, "Marcos 9, 23", "Mc 9, 23",
        "Clássico da Banda Dom em 4 acordes simples (G, D, Em, C).",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Tudo é possível ao que crê no Senhor,
   C                        D               G
Não há muralha que resista à força do Seu amor!"""
    ),
    # 26. Banda Dominus (Léo Rabello)
    make_song(
        "nao-ha-limites-banda-dominus",
        "Não Há Limites Para o Amor de Deus",
        "Banda Dominus / Léo Rabello",
        "Final", "Tempo Comum", "A", 98, "4/4", "Pop Jovem", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Jovem de Envio Missionário", 93, "Efésios 3, 18-19", "Ef 3, 18-19",
        "Clássico da Banda Dominus para missas com jovens e encontros.",
        """[Intro] A  E  F#m  D

[Refrão]
   A                        E               F#m
Não há limites para o amor de Deus,
   D                        E               A
Ele deu Seu próprio Filho para salvar os filhos Seus!"""
    ),
    # 27. Banda Romanos
    make_song(
        "mais-que-vencedores-banda-romanos",
        "Em Cristo Somos Mais Que Vencedores (Romanos 8, 37)",
        "Banda Romanos",
        "Final", "Tempo Comum", "E", 92, "4/4", "Rock Acústico", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Paulino (Romanos 8, 37)", 95, "Romanos 8, 37", "Rm 8, 37",
        "Quatro acordes em Mi maior (E, B, C#m, A) proclamando Romanos 8, 37.",
        """[Intro] E  B  C#m  A

[Refrão]
   E                        B               C#m
Em todas as coisas somos mais que vencedores,
   A                        B7              E
Por Aquele que nos amou na Cruz!"""
    ),
    # 28. Banda Arkanjos
    make_song(
        "sao-miguel-arcanjo-defendei-nos-no-combate-arkanjos",
        "São Miguel Arcanjo, Defendei-nos no Combate",
        "Banda Arkanjos / Oração de Leão XIII",
        "Final", "Tempo Comum", "Em", 86, "4/4", "Hino a São Miguel", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Oração Clássica do Papa Leão XIII a São Miguel Arcanjo", 97,
        "Festa dos Santos Arcanjos (29 de Setembro)", "Ap 12, 7-9; Dn 12, 1",
        "A oração tradicional de São Miguel Arcanjo musicada em 4 acordes simples (Em, C, D, B7).",
        """[Intro] Em  C  D  Em

[Refrão]
   Em                       C               D           Em
São Miguel Arcanjo, defendei-nos no combate!
   C                        D               B7          Em
Sede o nosso refúgio contra as ciladas do inimigo:
   Am                       D               B7          Em
Quem como Deus? Ninguém é como Deus!"""
    ),
    # 29. Ceremonya
    make_song(
        "tua-graca-me-basta-ceremonya",
        "Tua Graça Me Basta, Senhor",
        "Banda Ceremonya",
        "Ação de Graças", "Qualquer", "G", 76, "4/4", "Balada", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Paulino (2 Coríntios 12, 9)", 95, "2Coríntios 12, 9", "2Cor 12, 9",
        "Quatro acordes abertos em Sol maior.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Tua graça me basta, Tua presença me refaz,
   C                        D               G
Só no Teu altar encontro a verdadeira paz!"""
    ),
    # 30. Nádia Santolli
    make_song(
        "simplesmente-amar-nadia-santolli",
        "Simplesmente Amar",
        "Nádia Santolli",
        "Ofertório", "Tempo Comum", "D", 74, "4/4", "Dedilhado Suave", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Ofertório e Caridade (1 Coríntios 13)", 96, "1Coríntios 13", "1Cor 13, 1-13",
        "Canto delicado de Nádia Santolli inspirado no Hino à Caridade de São Paulo.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Ainda que eu falasse a língua dos anjos,
   G                        Em              A7          D
Sem amor eu nada seria diante de Ti, Senhor!"""
    ),
    # 31. Luciana Antunes
    make_song(
        "basta-uma-palavra-luciana-antunes",
        "Senhor, Eu Não Sou Digno (Basta uma Palavra)",
        "Luciana Antunes",
        "Comunhão", "Qualquer", "C", 72, "4/4", "Balada Eucarística", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Oração do Centurião antes da Comunhão (Mateus 8, 8)", 100,
        "Missal Romano - Rito da Comunhão / Mateus 8, 8", "Mt 8, 8",
        "Inspirado na resposta litúrgica antes da Comunhão: 'Senhor, eu não sou digno de que entreis em minha morada, mas dizei uma palavra e serei salvo'.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Senhor, eu não sou digno de que entreis em minha morada,
   F                        Dm              G7          C
Mas dizei uma só palavra e a minh'alma será curada!"""
    ),
    # 32. Ricardo Sá (Canção Nova)
    make_song(
        "a-cruz-sagrada-seja-a-minha-luz-ricardo-sa",
        "A Cruz Sagrada Seja a Minha Luz (Oração de São Bento)",
        "Ricardo Sá / Canção Nova",
        "Final", "Quaresma", "Em", 82, "4/4", "Balada Sacra", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Oração Tradicional da Medalha de São Bento", 98,
        "Memória de São Bento Abade (11 de Julho) / Exaltação da Santa Cruz", "Gl 6, 14",
        "A oração latina/portuguesa de São Bento musicada em 4 acordes simples (Em, Am, D, G).",
        """[Intro] Em  Am  D  G  B7  Em

[Refrão]
   Em                       Am
A Cruz Sagrada seja a minha luz,
   D                        G               B7
Não seja o dragão o meu guia!
   Em                       Am
Retira-te, satanás! Nunca me aconselhes coisas vãs!
   C                        B7              Em
É mau o que tu me ofereces: bebe tu mesmo os teus venenos!"""
    ),
    # 33. Eros Biondini
    make_song(
        "mundo-novo-eros-biondini",
        "Mundo Novo (Novo Céu e Nova Terra)",
        "Eros Biondini / Missão Mundo Novo",
        "Final", "Páscoa", "G", 88, "4/4", "Pop Cristão", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Escatológico de Esperança (Apocalipse 21, 1)", 95, "Apocalipse 21, 1-5", "Ap 21, 1-5",
        "Quatro acordes em Sol maior cantando a promessa do Novo Céu e da Nova Terra.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Eu vejo um Mundo Novo que nasce do Teu amor,
   C                        D               G
Onde enxugas toda lágrima, ó Cristo Redentor!"""
    ),
    # 34. Álvaro e Daniel
    make_song(
        "aleluia-alvaro-e-daniel",
        "Aleluia (Pai, Eu Quero Te Amar)",
        "Álvaro e Daniel",
        "Ação de Graças", "Qualquer", "C", 68, "6/8", "Dedilhado 6/8", "↓ ↓ ↑ ↓ ↑",
        True, True, 4, "Canto de Ação de Graças e Casamentos", 94, "Salmo 150", "Sl 150",
        "Cinco/quatro acordes clássicos (C, Am, F, G) muito tocados em casamentos e ação de graças.",
        """[Intro] C  Am  C  Am  F  G  C

[Primeira Parte]
   C                        Am
1. Pai, eu quero Te amar, tocar o Teu coração,
   F                        G               C       G
E me derramar aos Teus pés!

[Refrão]
   F                        Am
Aleluia, aleluia,
   F                        C               G       C
Aleluia, aleluia!"""
    ),
    # 35. Italo Villar
    make_song(
        "tua-graca-me-alcancou-italo-villar",
        "Tua Graça Me Alcançou",
        "Italo Villar",
        "Ação de Graças", "Tempo Comum", "G", 74, "4/4", "Balada Acústica", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto de Gratidão pela Misericórdia Divina", 95, "Efésios 2, 8", "Ef 2, 8",
        "Quatro acordes abertos (G, D, Em, C) na voz de Italo Villar.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Quando eu não merecia, Tua graça me alcançou,
   C                        D               G
Na Tua Santa Eucaristia minha vida se renovou!"""
    ),
    # 36. Guilherme Pontes (Missionário Shalom)
    make_song(
        "oferta-agradavel-guilherme-pontes",
        "Oferta Agradável a Ti",
        "Guilherme Pontes / Missionário Shalom",
        "Ofertório", "Qualquer", "D", 76, "4/4", "Balada de Ofertório", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Litúrgico de Ofertório", 98, "IGMR 74 / Filipenses 4, 18", "Fl 4, 18; Rm 12, 1",
        "Excelente canto de Preparação das Oferendas em 4 acordes.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Que a nossa vida junto ao pão e ao vinho no altar
   G                        A7              D
Seja oferta agradável a Ti, Senhor!"""
    ),
    # 37. Yuri Costa
    make_song(
        "rendido-estou-aos-teus-pes-yuri-costa",
        "Rendido Estou aos Teus Pés",
        "Yuri Costa",
        "Ação de Graças", "Qualquer", "C", 72, "4/4", "Adoração", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto de Adoração", 95, "Salmo 94, 6", "Sl 94, 6",
        "Quatro acordes simples (C, G, Am, F) para adoração e pós-comunhão.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Rendido estou diante da Tua Majestade,
   F                        G               C
Adoro-Te, Senhor, em espírito e verdade!"""
    ),
    # 38. Pe. Wallison Rodrigues
    make_song(
        "senhor-em-tua-presenca-pe-wallison-rodrigues",
        "Em Tua Presença, Senhor (Canto Litúrgico)",
        "Padre Wallison Rodrigues",
        "Entrada", "Tempo Comum", "D", 84, "4/4", "Balada Litúrgica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Litúrgico Contemporâneo de Entrada", 99, "IGMR 47", "Sl 99, 2",
        "Composição litúrgica do Pe. Wallison Rodrigues muito utilizada nas paróquias brasileiras.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               D
Em Tua presença, Senhor, nos reunimos como irmãos,
   Bm                       Em              A7          D
Para ouvir a Tua Palavra e repartir o mesmo Pão!"""
    ),
    # 39. Eurivaldo Silva Ferreira (Hinário Litúrgico CNBB)
    make_song(
        "bendito-sejais-senhor-deus-do-universo-eurivaldo",
        "Bendito Sejais, Senhor, Pelos Dons do Pão e do Vinho",
        "Eurivaldo Silva Ferreira / Hinário Litúrgico CNBB",
        "Ofertório", "Tempo Comum", "C", 82, "4/4", "Toada Litúrgica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Oficial do Hinário Litúrgico da CNBB", 100, "IGMR 74 / Hinário CNBB", "Sl 103",
        "Composição oficial do Hinário Litúrgico da CNBB em 4 acordes simples.",
        """[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Bendito sejais, Senhor, pelos dons que apresentamos:
   Am                       Dm              G7          C
O pão e o vinho da terra que com amor compartilhamos!"""
    ),
    # 40. Pe. José Cândido da Silva (CNBB)
    make_song(
        "toda-semente-e-um-anseio-de-frutificar-ofertorio",
        "Toda Semente É um Anseio de Frutificar",
        "Pe. José Cândido da Silva / Hinário Litúrgico CNBB",
        "Ofertório", "Tempo Comum", "D", 82, "4/4", "Balada Litúrgica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Clássico de Ofertório do Hinário da CNBB", 100, "IGMR 74 / João 12, 24", "Jo 12, 24",
        "Canto clássico de apresentação das oferendas sobre o grão de trigo que germina.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Toda semente é um anseio de frutificar,
   Bm                       Em              A7          D
E todo fruto é uma forma de a gente se dar!"""
    ),
    # 41. Irmã Custódia Cardoso (CNBB)
    make_song(
        "aleluia-alegria-minha-gente-irma-custodia",
        "Aleluia, Alegria, Minha Gente!",
        "Irmã Custódia Cardoso / Hinário Litúrgico CNBB",
        "Aclamação ao Evangelho", "Tempo Comum", "G", 96, "4/4", "Baião Litúrgico", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 3, "Aclamação ao Evangelho do Hinário da CNBB", 100, "IGMR 62", "Lc 4, 18",
        "Apenas 3 acordes (G, C, D7) numa aclamação ao Evangelho vibrante e genuinamente brasileira.",
        """[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Aleluia, alegria, minha gente! Aleluia, alegria!
   C                        D7              G
O Senhor vai falar com a gente: acolhamos Sua Palavra neste dia!"""
    ),
    # 42. Frei Telles Ramon, O. de M.
    make_song(
        "cristo-luz-do-mundo-frei-telles-ramon",
        "Cristo, Luz do Mundo, Dissipai as Trevas",
        "Frei Telles Ramon / Hinário Litúrgico CNBB",
        "Entrada", "Advento", "Em", 80, "4/4", "Hino Litúrgico", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Litúrgico da CNBB (João 8, 12)", 100, "IGMR 47 / João 8, 12", "Jo 8, 12",
        "Composição litúrgica de Frei Telles Ramon em 4 acordes simples.",
        """[Intro] Em  Am  B7  Em

[Refrão]
   Em                       Am              D7          G
Ó Cristo, Luz do mundo, dissipai as nossas trevas,
   Am                       Em              B7          Em
E guiai os nossos passos no caminho da paz!"""
    ),
    # 43. Gilson Celerino (Compositor Litúrgico)
    make_song(
        "felizes-os-convidados-para-a-ceia-do-senhor-gilson-celerino",
        "Felizes os Convidados Para a Ceia do Senhor (Apocalipse 19, 9)",
        "Gilson Celerino / Hinário Litúrgico",
        "Comunhão", "Tempo Comum", "C", 80, "4/4", "Processional de Comunhão", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Antífona Bíblica Oficial da Comunhão (Apocalipse 19, 9)", 100,
        "Missal Romano - Rito da Comunhão / Apocalipse 19, 9", "Ap 19, 9; Jo 1, 29",
        "Canta literalmente o convite do sacerdote antes da Comunhão: 'Felizes os convidados para a Ceia do Senhor!'.",
        """[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Felizes os convidados para a Ceia do Senhor!
   Am                       Dm              G7          C
Eis o Cordeiro de Deus, que tira o pecado do mundo!"""
    ),
    # 44. Pe. Lucas de Paula Almeida (CNBB)
    make_song(
        "bendito-o-que-vem-em-nome-do-senhor-pe-lucas",
        "Bendito o Que Vem em Nome do Senhor (Canto de Advento)",
        "Pe. Lucas de Paula Almeida / Hinário CNBB",
        "Entrada", "Advento", "D", 84, "4/4", "Marcha do Advento", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Litúrgico do Advento", 100, "IGMR 47 / Salmo 117, 26", "Sl 117, 26",
        "Quatro acordes em Ré maior para a abertura das Missas do Advento.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Bendito o que vem em nome do Senhor!
   Bm                       Em              A7          D
Preparai os caminhos do nosso Salvador!"""
    ),
    # 45. Marcus Vinícius Lima / Coral Palestrina
    make_song(
        "kyrie-eleison-senhor-que-viestes-salvar-palestrina",
        "Senhor, Tende Piedade (Kyrie Solene em Ré Menor)",
        "Coral Palestrina / Liturgia Dominical",
        "Ato Penitencial", "Qualquer", "Dm", 76, "4/4", "Solene Litúrgico", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 3, "Ato Penitencial Canônico em 3 Acordes (Dm, Gm, A7)", 100, "IGMR 52 / Missal Romano", "Sl 50",
        "Apenas 3 acordes (Dm, Gm, A7) com o texto exato do Missal Romano.",
        """[Intro] Dm  Gm  A7  Dm

[Invocações]
   Dm                       Gm              A7          Dm
Senhor, tende piedade de nós! Kyrie eleison!
   Dm                       Gm              A7          Dm
Cristo, tende piedade de nós! Christe eleison!
   Dm                       Gm              A7          Dm
Senhor, tende piedade de nós! Kyrie eleison!"""
    ),
    # 46. Fraternidade São Francisco de Assis
    make_song(
        "paz-e-bem-irmao-fraternidade-sao-francisco",
        "Paz e Bem, Irmão (Saudação Franciscana)",
        "Fraternidade São Francisco de Assis",
        "Entrada", "Tempo Comum", "G", 88, "4/4", "Toada Franciscana", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Acolhida Franciscano", 96, "IGMR 47", "Lc 10, 5",
        "Canto franciscano de acolhida em 4 acordes simples.",
        """[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Paz e Bem pra você que veio celebrar!
   Em                       Am              D7          G
Na alegria de Francisco, vamos juntos ao Senhor louvar!"""
    ),
    # 47. Fraternidade Casa de Maria
    make_song(
        "sob-o-manto-da-virgem-fraternidade-casa-de-maria",
        "Sob o Manto da Virgem Maria",
        "Fraternidade Casa de Maria",
        "Final", "Qualquer", "D", 78, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Mariano Devocional", 96, "Lumen Gentium 62", "Jo 19, 27",
        "Hino mariano da Fraternidade Casa de Maria.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Na Casa de Maria aprendemos a dizer o nosso sim,
   Bm                       Em              A7          D
Servindo a Jesus Cristo com amor até o fim!"""
    ),
    # 48. Comunidade Católica Sementes do Verbo
    make_song(
        "semeadores-da-palavra-sementes-do-verbo",
        "Semeadores da Palavra (Mateus 13, 3-9)",
        "Comunidade Católica Sementes do Verbo",
        "Aclamação ao Evangelho", "Tempo Comum", "C", 86, "4/4", "Balada Bíblica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto da Parábola do Semeador (Mateus 13)", 99, "IGMR 62 / Mateus 13, 3-9", "Mt 13, 3-9",
        "Canto da Comunidade Sementes do Verbo preparando a proclamação do Santo Evangelho.",
        """[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Aleluia, aleluia! A semente é a Palavra de Deus,
   Am                       Dm              G7          C
E o semeador é Cristo, que nos abre o Reino dos Céus!"""
    ),
    # 49. Comunidade Católica Palavra Viva
    make_song(
        "tua-palavra-e-vida-comunidade-palavra-viva",
        "Tua Palavra É Viva e Eficaz (Hebreus 4, 12)",
        "Comunidade Católica Palavra Viva",
        "Aclamação ao Evangelho", "Tempo Comum", "D", 88, "4/4", "Marcha Litúrgica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Bíblico (Hebreus 4, 12)", 99, "Hebreus 4, 12", "Hb 4, 12",
        "Hino da Comunidade Católica Palavra Viva em 4 acordes.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Aleluia, aleluia! Tua Palavra é viva e eficaz:
   Bm                       Em              A7          D
Ilumina a nossa mente e nos conduz à Tua paz!"""
    ),
    # 50. Comunidade Católica Mar a Dentro
    make_song(
        "avanca-para-aguas-mais-profundas-mar-a-dentro",
        "Avança Para Águas Mais Profundas (Duc in Altum - Lucas 5, 4)",
        "Comunidade Católica Mar a Dentro",
        "Final", "Tempo Comum", "G", 84, "4/4", "Balada Vocacional", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Vocacional e Missionário (Lucas 5, 4)", 98, "Lucas 5, 4 / Novo Millennio Ineunte", "Lc 5, 4-11",
        "Baseado no mandato de Jesus a São Pedro: 'Avança para águas mais profundas e lançai vossas redes!'.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Avança para águas mais profundas,
   C                        Am              D
Sobre a Tua Palavra lançarei as minhas redes!
   G                        D               Em
Contigo na barca nada temerei, Senhor:
   C                        D               G
Serei pescador de almas no Teu amor!"""
    ),
    # 51. Comunidade Católica Emanuel
    make_song(
        "deus-conosco-emanuel-comunidade-emanuel",
        "Emanuel, Deus Conosco (Mateus 1, 23)",
        "Comunidade Católica Emanuel",
        "Entrada", "Advento", "Em", 82, "4/4", "Hino do Advento e Natal", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Messiânico (Isaías 7, 14 / Mateus 1, 23)", 100, "Mateus 1, 23 / Isaías 7, 14", "Is 7, 14; Mt 1, 23",
        "Clássico da Comunidade Emanuel para o Advento, Natal e Adoração.",
        """[Intro] Em  C  G  D

[Refrão]
   Em                       C               G           D
Emanuel, Emanuel, Seu Nome é Emanuel:
   Em                       C               D           Em
Deus conosco, revelado em nós!"""
    ),
    # 52. Comunidade Católica Missão Maria de Nazaré
    make_song(
        "ser-como-maria-missao-maria-de-nazare",
        "Ser Como Maria no Meio do Mundo",
        "Comunidade Missão Maria de Nazaré",
        "Final", "Qualquer", "C", 78, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Mariano de Envio", 96, "Lumen Gentium 65", "Lc 1, 38",
        "Quatro acordes em Dó maior (C, G, Am, F).",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Quero ser como Maria, guardar Tua Palavra no coração,
   F                        G               C
E levar Jesus ao mundo em cada gesto de doação!"""
    ),
    # 53. Padre Chrystian Shankar
    make_song(
        "orar-pela-familia-pe-chrystian-shankar",
        "Restaura a Nossa Família, Senhor",
        "Padre Chrystian Shankar",
        "Ação de Graças", "Tempo Comum", "G", 76, "4/4", "Balada Familiar", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Oração pelas Famílias", 94, "Josué 24, 15", "Js 24, 15",
        "Oração cantada pelas famílias em 4 acordes simples.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Eu e minha casa serviremos ao Senhor,
   C                        D               G
Nosso lar é santuário da Tua paz e do Teu amor!"""
    ),
    # 54. Padre Marcos Rogério
    make_song(
        "minha-familia-no-altar-pe-marcos-rogerio",
        "Minha Família no Altar",
        "Padre Marcos Rogério",
        "Ofertório", "Tempo Comum", "D", 76, "4/4", "Balada de Ofertório", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Ofertório das Famílias", 95, "IGMR 74", "Sl 127",
        "Canto de ofertório colocando a família sobre o altar do Senhor.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Coloco minha família sobre o Teu santo altar,
   G                        A7              D
Com o pão e com o vinho para a vida consagrar!"""
    ),
    # 55. Padre Hewaldo Trevisan
    make_song(
        "cura-me-senhor-pe-hewaldo-trevisan",
        "Cura-me, Senhor Jesus (Salmo 6, 3)",
        "Padre Hewaldo Trevisan",
        "Ação de Graças", "Tempo Comum", "C", 70, "4/4", "Oração de Cura", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Oração Bíblica de Cura (Salmo 6, 3 / Jeremias 17, 14)", 95, "Jeremias 17, 14", "Jr 17, 14; Sl 6, 3",
        "Baseado em Jeremias 17, 14: 'Cura-me, Senhor, e serei curado; salva-me e serei salvo'.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Cura-me, Senhor, e serei curado,
   F                        G               C
Salva-me, Senhor, pois Tu és o meu louvor!"""
    ),
    # 56. Padre Delair Cuerva
    make_song(
        "alegria-de-servir-pe-delair-cuerva",
        "Alegria de Servir ao Senhor (Salmo 99)",
        "Padre Delair Cuerva",
        "Entrada", "Tempo Comum", "G", 90, "4/4", "Marcha Alegre", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 3, "Canto Baseado no Salmo 99 (Servi ao Senhor com Alegria)", 97, "IGMR 47 / Salmo 99, 2", "Sl 99, 1-5",
        "Apenas 3 acordes (G, C, D7) cantando o Salmo 99.",
        """[Intro] G  C  D7  G

[Refrão]
   G                        C               D7          G
Servi ao Senhor com alegria, entrai em Sua presença a cantar!
   C                        D7              G
Sabei que o Senhor é Deus e para sempre nos quer amar!"""
    ),
    # 57. Padre Evaldo César
    make_song(
        "maria-do-sim-pe-evaldo-cesar",
        "Maria do Sim, Ensina-nos a Dizer Sim",
        "Padre Evaldo César",
        "Final", "Advento", "D", 80, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto Mariano Vocacional", 96, "Lucas 1, 38", "Lc 1, 38",
        "Quatro acordes simples em Ré maior.",
        """[Intro] D  G  A7  D

[Refrão]
   D                        G               A7          D
Maria do Sim, ensina-nos a escutar,
   Bm                       Em              A7          D
E a fazer tudo aquilo que Jesus nos ordenar!"""
    ),
    # 58. Irmã Zélia Garcia
    make_song(
        "manso-e-humilde-de-coracao-irma-zelia",
        "Jesus, Manso e Humilde de Coração (Mateus 11, 29)",
        "Irmã Zélia Garcia",
        "Ação de Graças", "Tempo Comum", "C", 72, "4/4", "Oração ao Sagrado Coração", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 3, "Jaculatória Oficial ao Sagrado Coração de Jesus (Mateus 11, 29)", 100,
        "Mateus 11, 29 / Ladainha do Sagrado Coração", "Mt 11, 28-30",
        "Apenas 3 acordes (C, F, G7) na jaculatória clássica ao Sagrado Coração de Jesus.",
        """[Intro] C  F  G7  C

[Refrão]
   C                        F               G7          C
Jesus, manso e humilde de Coração,
   F                        G7              C
Fazei o nosso coração semelhante ao Vosso! (2x)"""
    ),
    # 59. Irmã Maria Raquel / Instituto Hesed
    make_song(
        "exercito-de-sao-miguel-instituto-hesed",
        "Quem Como Deus? (Consagração a São Miguel Arcanjo)",
        "Irmã Maria Raquel / Irmã Kelly Patrícia / Instituto Hesed",
        "Final", "Qualquer", "Am", 78, "4/4", "Hino a São Miguel", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino da Quaresma de São Miguel Arcanjo", 96,
        "Festa dos Santos Arcanjos / Apocalipse 12, 7", "Ap 12, 7-9",
        "Quatro acordes em Lá menor (Am, F, C, E7) muito cantado durante a Quaresma de São Miguel.",
        """[Intro] Am  F  C  E7

[Refrão]
   Am                       F               C           E7
Quem como Deus? Ninguém é como Deus!
   Am                       F               E7          Am
São Miguel Arcanjo, príncipe da milícia celeste, defendei os filhos teus!"""
    ),
    # 60. Laércio Oliveira
    make_song(
        "adorar-te-em-verdade-laercio-oliveira",
        "Adorar-Te em Espírito e em Verdade",
        "Laércio Oliveira",
        "Ação de Graças", "Qualquer", "G", 72, "4/4", "Adoração", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Canto de Adoração (João 4, 23)", 96, "João 4, 23-24", "Jo 4, 23-24",
        "Quatro acordes em Sol maior para adoração ao Santíssimo.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
O Pai procura adoradores em espírito e em verdade:
   C                        D               G
Eis-me aqui diante do altar da Tua Majestade!"""
    ),
    # 61. Danilo Casemiro
    make_song(
        "sopro-de-vida-danilo-casemiro",
        "Sopro de Vida (Vem, Espírito Criador)",
        "Danilo Casemiro",
        "Comunhão", "Pentecostes", "D", 74, "4/4", "Balada de Pentecostes", "↓ ↓ ↑ ↑ ↓ ↑",
        False, True, 4, "Oração ao Espírito Santo", 95, "Gênesis 2, 7 / João 20, 22", "Jo 20, 22",
        "Quatro acordes simples em Ré maior.",
        """[Intro] D  A  Bm  G

[Refrão]
   D                        A               Bm
Sopra em mim Teu Sopro de Vida, ó Espírito de Amor,
   G                        A7              D
Renova a minha alma na presença do Senhor!"""
    ),
    # 62. Gustavo Osterno (Missionário Shalom)
    make_song(
        "todo-teu-senhor-gustavo-osterno-msh",
        "Todo Teu, Senhor (Missionário Shalom)",
        "Gustavo Osterno / Missionário Shalom",
        "Ofertório", "Tempo Comum", "G", 80, "4/4", "Pop Acústico", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Jovem de Ofertório e Consagração", 96, "IGMR 74", "Rm 12, 1",
        "Quatro acordes (G, D, Em, C) do Missionário Shalom.",
        """[Intro] G  D  Em  C

[Refrão]
   G                        D               Em
Sou todo Teu, Senhor, minha vida Te dou no altar,
   C                        D               G
Transforma meu coração para sempre Te amar!"""
    ),
    # 63. Rafael Morel (Missionário Shalom)
    make_song(
        "teu-amor-nao-falha-rafael-morel-msh",
        "Teu Amor Jamais Falhará (Salmo 135)",
        "Rafael Morel / Missionário Shalom",
        "Ação de Graças", "Qualquer", "C", 78, "4/4", "Balada Salmódica", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Louvor Baseado no Salmo 135 (Eterna É a Sua Misericórdia)", 97, "Salmo 135 (136)", "Sl 135, 1-26",
        "Quatro acordes em Dó maior proclamando a misericórdia eterna de Deus.",
        """[Intro] C  G  Am  F

[Refrão]
   C                        G               Am
Teu amor não falha, eterna é a Tua compaixão;
   F                        G               C
Em todas as manhãs se renova a Tua salvação!"""
    ),
    # 64. Flávio Vitor Jr.
    make_song(
        "fogo-alto-santo-espirito-flavio-vitor-jr",
        "Fogo Alto (Vem Queimar Meu Coração)",
        "Flávio Vitor Jr.",
        "Ação de Graças", "Pentecostes", "Em", 74, "4/4", "Adoração", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto de Efusão e Adoração (Lucas 24, 32)", 95, "Lucas 24, 32; Lucas 12, 49", "Lc 24, 32; Lc 12, 49",
        "Quatro acordes fixos (Em, C, G, D) na voz de Flávio Vitor Jr.",
        """[Intro] Em  C  G  D

[Refrão]
   Em                       C               G           D
Vim buscar o Fogo Alto que desce do Teu altar,
   Em                       C               D           Em
Faz arder meu coração quando o Pão Tu vens quebrar!"""
    ),
    # 65. Mayara Marques / Colo de Deus
    make_song(
        "casa-de-maria-mayara-marques-colo-de-deus",
        "Casa de Maria (Cheia de Graça)",
        "Mayara Marques / Comunidade Colo de Deus",
        "Final", "Qualquer", "D", 72, "4/4", "Balada Mariana", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Canto Mariano de Intimidade", 96, "João 19, 27", "Jo 19, 27; Lc 1, 28",
        "Como o discípulo amado João, que recebeu Maria em sua casa (João 19, 27).",
        """[Intro] D  G  Bm  A

[Refrão]
   D                        G               Bm          A
Bem-vinda à minha casa, ó Mãe do meu Senhor;
   D                        G               A           D
Ensina-me a adorar Jesus com todo o teu amor!"""
    ),
    # 66. CNBB - Campanha da Fraternidade 2025 (Fraternidade e Ecologia Integral)
    make_song(
        "hino-campanha-da-fraternidade-2025-ecologia-integral",
        "Deus Viu Que Tudo Era Muito Bom (Hino da Campanha da Fraternidade 2025)",
        "CNBB - Campanha da Fraternidade 2025 (Fraternidade e Ecologia Integral)",
        "Entrada", "Quaresma", "G", 82, "4/4", "Hino Oficial da CF 2025", "↓ ↓ ↑ ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da CNBB para a Quaresma 2025 (Gênesis 1, 31)", 100,
        "CNBB - Campanha da Fraternidade 2025 / Gênesis 1, 31 / Laudato Si'", "Gn 1, 31; Sl 103",
        "Hino oficial da Campanha da Fraternidade 2025 ('Fraternidade e Ecologia Integral: Deus viu que tudo era muito bom - Gn 1, 31').",
        """[Intro] G  Em  C  D7  G

[Primeira Parte]
   G                        Em              C           D7
1. No princípio o Espírito pairava sobre as águas da criação,
   G                        Em              Am    D7    G
E da Palavra eterna de Deus Pai brotou a vida em comunhão!

[Refrão]
   C                        D7              G           Em
"E Deus viu que tudo era muito bom!" — cuidemos da Casa Comum no amor;
   Am                       D7              G
Na conversão quaresmal voltamos o olhar ao nosso Criador!"""
    ),
]

