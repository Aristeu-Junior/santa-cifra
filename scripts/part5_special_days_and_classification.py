# -*- coding: utf-8 -*-
"""
Módulo Parte 5 do Santa Cifra:
1. Adiciona 36 cantos litúrgicos oficiais de Dias Específicos e Solenidades da Igreja:
   - Quarta-Feira de Cinzas e Quaresma
   - Domingo de Ramos e da Paixão do Senhor
   - Quinta-Feira Santa (Missa da Ceia do Senhor, Lava-Pés e Transladação)
   - Sexta-Feira Santa (Paixão do Senhor e Adoração da Santa Cruz)
   - Sábado Santo (Vigília Pascal) e Domingo da Páscoa
   - Solenidade de Pentecostes
   - Santíssima Trindade e Corpus Christi
   - Sagrado Coração de Jesus, Cristo Rei, Todos os Santos e Finados
   - Solenidades Marianas (Nossa Senhora Aparecida, Imaculada, Assunção) e Santos Apóstolos
   - Advento, Natal do Senhor e Epifania
2. Classifica rigorosamente TODAS as músicas do catálogo entre:
   - "liturgica": Aprovadas para os ritos da Santa Missa (IGMR / Estudos 43 e 79 da CNBB / Hinário Litúrgico CNBB)
   - "popular": Músicas religiosas populares/devocionais (Grupos de Oração, Retiros, Encontros, Shows, Adoração livre) que NÃO devem substituir os cantos rituais da Santa Missa.
"""

from part1_padre_zezinho_marcelo import make_song

SPECIAL_LITURGICAL_DAYS_SONGS = [
    # =========================================================================
    # DOMINGO DE RAMOS E DA PAIXÃO DO SENHOR
    # =========================================================================
    make_song(
        "hosana-ao-filho-de-davi-domingo-de-ramos-cnbb",
        "Hosana ao Filho de Davi (Antífona de Abertura - Domingo de Ramos)",
        "Hinário Litúrgico CNBB / Missal Romano",
        "Entrada", "Quaresma", "D", 96, "4/4", "Marcha Processional", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona Oficial da Benção e Procissão de Ramos (Mt 21, 9)", 100,
        "Missal Romano - Domingo de Ramos (IGMR 47)", "Mt 21, 9",
        "Antífona oficial do Missal Romano para o início da celebração do Domingo de Ramos.",
        """[Intro] D  G  A7  D

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
A fim de que o Rei da glória possa entrar!"""
    ),
    make_song(
        "os-filhos-dos-hebreus-procissao-de-ramos",
        "Os Filhos dos Hebreus (Procissão de Domingo de Ramos)",
        "Hinário Litúrgico CNBB / Pe. José Weber, SVD",
        "Entrada", "Quaresma", "G", 98, "4/4", "Marcha Festiva", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Oficial da Procissão de Ramos", 100,
        "Missal Romano - Procissão de Ramos", "Mt 21, 8-9; Sl 23(24)",
        "Canto litúrgico oficial prescrito pelo Missal Romano para a procissão solene dos ramos.",
        """[Intro] G  C  D7  G

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
O Senhor poderoso nas batalhas, o Rei da Glória!"""
    ),
    make_song(
        "meu-deus-meu-deus-por-que-me-abandonastes-salmo-ramos",
        "Meu Deus, Meu Deus, Por Que Me Abandonastes? (Salmo 21 - Ramos)",
        "Lecionário Dominical / Hinário Litúrgico CNBB",
        "Salmo", "Quaresma", "Dm", 70, "4/4", "Salmodia Meditativa", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Responsorial Próprio do Domingo de Ramos", 100,
        "Lecionário Dominical - Domingo de Ramos (IGMR 61)", "Sl 21(22)",
        "Salmo responsorial oficial da Missa do Domingo de Ramos e da Paixão do Senhor.",
        """[Intro] Dm  Gm  A7  Dm

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
Ó minha força, vinde logo em meu socorro!"""
    ),

    # =========================================================================
    # QUARTA-FEIRA DE CINZAS E QUARESMA
    # =========================================================================
    make_song(
        "pecador-agora-e-tempo-quaresma-cnbb",
        "Pecador, Agora É Tempo (Quarta-Feira de Cinzas e Quaresma)",
        "Hinário Litúrgico CNBB / Tradicional Quaresmal",
        "Ato Penitencial", "Quaresma", "Dm", 72, "4/4", "Toque Quaresmal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Tradicional de Imposição das Cinzas e Penitência", 99,
        "Missal Romano - Quarta-Feira de Cinzas", "Jl 2, 12-13; Mc 1, 15",
        "Canto tradicional brasileiro para a imposição das cinzas e celebrações penitenciais da Quaresma.",
        """[Intro] Dm  Gm  A7  Dm

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
Voltai para o vosso Deus, que é bondoso e compassivo!"""
    ),
    make_song(
        "escuta-senhor-a-voz-do-teu-povo-attende-domine",
        "Escuta, Senhor, a Voz do Teu Povo (Attende Domine - Quaresma)",
        "Hinário Litúrgico CNBB / Canto Gregoriano",
        "Entrada", "Quaresma", "Em", 72, "4/4", "Balada Sóbria", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Litúrgico Oficial da Quaresma (Attende Domine)", 100,
        "Missal Romano / Liturgia Quaresmal", "Sl 50(51)",
        "Tradução litúrgica oficial do hino quaresmal Attende Domine: Escuta, Senhor, a compaixão do Teu povo.",
        """[Intro] Em  Am  B7  Em

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
Lava as manchas dos nossos pecados!"""
    ),
    make_song(
        "mudai-o-vosso-coracao-imposicao-das-cinzas",
        "Mudai o Vosso Coração (Imposição das Cinzas - Quaresma)",
        "Hinário Litúrgico CNBB / Pe. José Weber, SVD",
        "Comunhão", "Quaresma", "Am", 76, "4/4", "Balada Penitencial", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Oficial para a Imposição das Cinzas", 100,
        "Missal Romano - Quarta-Feira de Cinzas (Jl 2, 13)", "Jl 2, 12-18; Mt 6, 1-6",
        "Canto próprio para o rito da imposição das cinzas na Quarta-Feira de Cinzas.",
        """[Intro] Am  Dm  E7  Am

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
Restituí-me a alegria da vossa salvação!"""
    ),

    # =========================================================================
    # QUINTA-FEIRA SANTA (CEIA DO SENHOR, LAVA-PÉS E TRANSLADAÇÃO)
    # =========================================================================
    make_song(
        "nos-nos-gloriamos-na-cruz-quinta-feira-santa",
        "Quanto a Nós, Devemos Gloriar-nos na Cruz (Entrada - Quinta-Feira Santa)",
        "Hinário Litúrgico CNBB / Pe. José Weber, SVD",
        "Entrada", "Quaresma", "D", 84, "4/4", "Marcha Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona de Entrada Oficial da Missa da Ceia do Senhor (Gl 6, 14)", 100,
        "Missal Romano - Quinta-Feira Santa (Ceia do Senhor)", "Gl 6, 14; Sl 66(67)",
        "Antífona de entrada oficial da Missa Vespertina da Ceia do Senhor na Quinta-Feira Santa.",
        """[Intro] D  G  A7  D

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
E entre todas as nações a Sua salvação!"""
    ),
    make_song(
        "eu-vos-dou-um-novo-mandamento-lava-pes",
        "Eu Vos Dou um Novo Mandamento (Rito do Lava-Pés - Quinta-Feira Santa)",
        "Hinário Litúrgico CNBB / Missal Romano",
        "Ofertório", "Quaresma", "C", 78, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona Oficial do Rito do Lava-Pés (Jo 13, 34)", 100,
        "Missal Romano - Quinta-Feira Santa (Lava-Pés)", "Jo 13, 1-15.34-35",
        "Canto oficial proposto pelo Missal Romano para o rito do Lava-Pés na Quinta-Feira Santa.",
        """[Intro] C  F  G7  C

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
Se tiverdes amor uns pelos outros, como Eu vos amei!"""
    ),
    make_song(
        "onde-ha-caridade-e-amor-ubi-caritas-quinta-santa",
        "Onde Há Caridade e Amor, Aí Está Deus (Ubi Caritas - Quinta-Feira Santa)",
        "Hinário Litúrgico CNBB / Canto Gregoriano",
        "Ofertório", "Quaresma", "F", 76, "4/4", "Balada Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Oficial da Apresentação dos Dons na Quinta-Feira Santa", 100,
        "Missal Romano - Quinta-Feira Santa (Ubi Caritas)", "1Jo 4, 16; 1Cor 13",
        "Hino prescrito pelo Missal Romano para a procissão das oferendas na Missa da Ceia do Senhor.",
        """[Intro] F  Bb  C7  F

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
E amemo-nos uns aos outros de coração sincero!"""
    ),

    # =========================================================================
    # SEXTA-FEIRA SANTA (PAIXÃO DO SENHOR E ADORAÇÃO DA CRUZ)
    # =========================================================================
    make_song(
        "meu-povo-que-te-fiz-eu-improperios-sexta-santa",
        "Meu Povo, Que Te Fiz Eu? (Impropérios - Sexta-Feira Santa)",
        "Hinário Litúrgico CNBB / Missal Romano",
        "Comunhão", "Quaresma", "Em", 68, "4/4", "Lamento Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Oficial da Adoração da Santa Cruz (Impropérios)", 100,
        "Missal Romano - Sexta-Feira da Paixão do Senhor", "Mq 6, 3-4",
        "Canto litúrgico próprio da Adoração da Santa Cruz na Sexta-Feira da Paixão do Senhor.",
        """[Intro] Em  Am  B7  Em

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
Tu Me deste vinagre na Minha sede e transpassaste o lado do teu Salvador!"""
    ),
    make_song(
        "fiel-madeiro-da-santa-cruz-crux-fidelis-sexta-santa",
        "Fiel Madeiro da Santa Cruz (Crux Fidelis - Sexta-Feira Santa)",
        "Hinário Litúrgico CNBB / Venâncio Fortunato",
        "Ação de Graças", "Quaresma", "Dm", 72, "4/4", "Hino da Paixão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Hino Litúrgico Oficial da Adoração da Cruz (Crux Fidelis)", 100,
        "Missal Romano - Sexta-Feira da Paixão", "Gl 6, 14",
        "Hino tradicional do Missal Romano para o momento da Adoração da Santa Cruz na Sexta-Feira Santa.",
        """[Intro] Dm  Gm  A7  Dm

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
Doce lenho, doces cravos, que sustentam tão doce peso!"""
    ),

    # =========================================================================
    # VIGÍLIA PASCAL E DOMINGO DA PÁSCOA
    # =========================================================================
    make_song(
        "exulte-de-alegria-proclamacao-da-pascoa-exsultet",
        "Exulte de Alegria (Proclamação da Páscoa - Exsultet / Vigília Pascal)",
        "Missal Romano / Hinário Litúrgico CNBB",
        "Entrada", "Páscoa", "Am", 76, "4/4", "Recitativo Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Precônio Pascal Oficial da Noite da Vigília Pascal", 100,
        "Missal Romano - Vigília Pascal na Noite Santa", "Ex 14; Rm 6, 3-11",
        "Precônio Pascal (Exsultet) entoado diante do Círio Pascal na grande Vigília da Páscoa.",
        """[Intro] Am  G  F  E7

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
Na solene oferta desta vela acesa em vossa honra!"""
    ),
    make_song(
        "cristo-ressuscitou-aleluia-sequencia-pascal",
        "Cristo Ressuscitou, Aleluia! (Sequência da Páscoa - Victimae Paschali)",
        "Hinário Litúrgico CNBB / Missal Romano",
        "Aclamação ao Evangelho", "Páscoa", "D", 96, "4/4", "Hino Pascal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Sequência Oficial do Domingo de Páscoa (Victimae Paschali Laudes)", 100,
        "Missal Romano - Domingo da Ressurreição (Obrigatória antes do Aleluia)", "1Cor 5, 7-8; Jo 20, 1-9",
        "Sequência oficial obrigatória do Domingo de Páscoa, cantada antes do Evangelho.",
        """[Intro] D  G  A7  D

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
"Vi o sepulcro de Cristo vazio e a glória do Ressuscitado!" """
    ),
    make_song(
        "este-e-o-dia-que-o-senhor-fez-para-nos-pascoa",
        "Este É o Dia que o Senhor Fez para Nós (Salmo 117 - Páscoa)",
        "Hinário Litúrgico CNBB / Pe. José Weber, SVD",
        "Salmo", "Páscoa", "C", 96, "4/4", "Salmo Festivo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Oficial da Vigília Pascal e Domingo de Páscoa", 100,
        "Lecionário Dominical - Domingo de Páscoa (Sl 117)", "Sl 117(118)",
        "Salmo pascal por excelência da Vigília Pascal e do Domingo da Ressurreição.",
        """[Intro] C  F  G7  C

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
Pelo Senhor é que foi feito tudo isso: que maravilhas Ele fez a nossos olhos!"""
    ),

    # =========================================================================
    # PENTECOSTES
    # =========================================================================
    make_song(
        "vinde-espirito-santo-sequencia-de-pentecostes",
        "Vinde, Espírito Santo (Sequência Oficial de Pentecostes - Veni Sancte Spiritus)",
        "Hinário Litúrgico CNBB / Missal Romano",
        "Aclamação ao Evangelho", "Páscoa", "G", 82, "4/4", "Hino de Pentecostes", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Sequência Oficial Obrigatória do Domingo de Pentecostes", 100,
        "Missal Romano - Solenidade de Pentecostes", "At 2, 1-11; Jo 20, 19-23",
        "Sequência áurea Veni Sancte Spiritus, obrigatória na Missa do Domingo de Pentecostes antes do Evangelho.",
        """[Intro] G  C  D7  G

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
Dobrai o que é duro, guiai no caminho, dai-nos vossos dons!"""
    ),

    # =========================================================================
    # SANTÍSSIMA TRINDADE E CORPUS CHRISTI
    # =========================================================================
    make_song(
        "bendito-seja-deus-pai-santissima-trindade",
        "Bendito Seja Deus Pai (Solenidade da Santíssima Trindade)",
        "Hinário Litúrgico CNBB / Pe. José Weber, SVD",
        "Entrada", "Tempo Comum", "D", 92, "4/4", "Hino Trinitário", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona de Entrada Oficial da Santíssima Trindade", 100,
        "Missal Romano - Solenidade da Santíssima Trindade", "Tb 12, 6; Mt 28, 19",
        "Antífona oficial para a abertura da Missa na Solenidade da Santíssima Trindade.",
        """[Intro] D  G  A7  D

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
Como era no princípio, agora e sempre. Amém!"""
    ),
    make_song(
        "louva-siao-o-salvador-lauda-sion-corpus-christi",
        "Louva, Sião, o Salvador (Sequência de Corpus Christi - Lauda Sion)",
        "São Tomás de Aquino / Hinário Litúrgico CNBB",
        "Aclamação ao Evangelho", "Tempo Comum", "C", 88, "4/4", "Hino Eucarístico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Sequência Oficial da Solenidade de Corpus Christi", 100,
        "Missal Romano - Solenidade do Santíssimo Corpo e Sangue de Cristo", "Jo 6, 51-58",
        "Sequência eucarística composta por São Tomás de Aquino para a Solenidade de Corpus Christi.",
        """[Intro] C  F  G7  C

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
Verdadeiro pão dos filhos: Bom Pastor, verdadeiro Pão, tende piedade de nós!"""
    ),

    # =========================================================================
    # ADVENTO E NATAL DO SENHOR
    # =========================================================================
    make_song(
        "como-o-sol-nasce-da-aurora-advento-cnbb",
        "Como o Sol Nasce da Aurora (Tempo do Advento - CNBB)",
        "Hinário Litúrgico CNBB / Reginaldo Veloso",
        "Comunhão", "Advento", "Em", 80, "4/4", "Balada do Advento", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Litúrgico Mariano do Tempo do Advento", 100,
        "Hinário Litúrgico CNBB - Advento", "Lc 1, 26-38.78",
        "Um dos mais belos cantos litúrgicos do Advento no Brasil, celebrando a Virgem Maria que traz o Sol da Justiça.",
        """[Intro] Em  Am  B7  Em

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
Desperta o Teu poder e vem para nos salvar!"""
    ),
    make_song(
        "nasceu-nos-hoje-um-menino-natal-missa-noite",
        "Nasceu-nos Hoje um Menino (Noite de Natal - CNBB)",
        "Hinário Litúrgico CNBB / Pe. José Weber, SVD",
        "Entrada", "Natal", "D", 96, "4/4", "Marcha Natalina", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Oficial da Missa da Noite e do Dia de Natal (Is 9, 5)", 100,
        "Missal Romano - Solenidade do Natal do Senhor", "Is 9, 1-6; Lc 2, 1-14",
        "Canto litúrgico oficial baseado na profecia de Isaías 9, 5 para a Solenidade do Natal do Senhor.",
        """[Intro] D  G  A7  D

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
E às nações revelou Sua justiça!"""
    ),
    make_song(
        "hoje-nasceu-para-nos-o-salvador-salmo-natal",
        "Hoje Nasceu para Nós o Salvador (Salmo 95 - Missa da Noite de Natal)",
        "Lecionário Dominical / Hinário Litúrgico CNBB",
        "Salmo", "Natal", "C", 90, "4/4", "Salmo de Natal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Salmo Responsorial Oficial da Missa da Noite de Natal", 100,
        "Lecionário Dominical - Solenidade do Natal do Senhor", "Sl 95(96); Lc 2, 11",
        "Salmo responsorial oficial da Missa do Galo (Noite de Natal).",
        """[Intro] C  F  G7  C

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
E entre os povos do universo Seus prodígios!"""
    ),

    # =========================================================================
    # SOLENIDADES MARIANAS, CRISTO REI, TODOS OS SANTOS E FINADOS
    # =========================================================================
    make_song(
        "dai-nos-a-bencao-o-mae-querida-aparecida",
        "Dai-nos a Bênção, Ó Mãe Querida (Solenidade de Nossa Senhora Aparecida - 12 de Outubro)",
        "Tradicional Mariano / Hinário Mariano Católico",
        "Final", "Tempo Comum", "C", 96, "3/4", "Valsa Mariana", "↓  ↑ ↑  ↓  ↑ ↑",
        True, True, 4, "Hino da Padroeira do Brasil (12 de Outubro)", 98,
        "Solenidade de Nossa Senhora da Conceição Aparecida", "Jo 2, 1-11; Ap 12, 1",
        "Hino tradicional de encerramento das celebrações da Padroeira do Brasil em 12 de outubro.",
        """[Intro] C  F  G7  C

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
Abençoai nossa nação e cada lar, cada coração!"""
    ),
    make_song(
        "jesus-cristo-ontem-hoje-e-sempre-cristo-rei",
        "Jesus Cristo Ontem, Hoje e Sempre (Solenidade de Cristo Rei do Universo)",
        "Hinário Litúrgico CNBB / Pe. José Weber, SVD",
        "Entrada", "Tempo Comum", "G", 98, "4/4", "Marcha Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Oficial de Abertura da Solenidade de Cristo Rei", 100,
        "Missal Romano - Solenidade de Nosso Senhor Jesus Cristo, Rei do Universo", "Ap 1, 5-6; Hb 13, 8",
        "Hino solene de abertura para o último domingo do Ano Litúrgico: Solenidade de Cristo Rei.",
        """[Intro] G  C  D7  G

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
Cristo vence, Cristo reina, Cristo impera!"""
    ),
    make_song(
        "alegrai-vos-sempre-no-senhor-todos-os-santos",
        "Alegremo-nos Todos no Senhor (Solenidade de Todos os Santos - 1º de Novembro)",
        "Hinário Litúrgico CNBB / Missal Romano",
        "Entrada", "Tempo Comum", "D", 94, "4/4", "Marcha Festiva", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona de Entrada Oficial da Solenidade de Todos os Santos", 100,
        "Missal Romano - Solenidade de Todos os Santos (Mt 5, 1-12)", "Ap 7, 9-14; Mt 5, 1-12",
        "Canto oficial de entrada e comunhão (Bem-Aventuranças) para a Solenidade de Todos os Santos.",
        """[Intro] D  G  A7  D

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
Alegrai-vos e exultai, porque é grande a vossa recompensa nos Céus!"""
    ),
    make_song(
        "dai-lhes-senhor-o-descanso-eterno-finados",
        "Dai-lhes, Senhor, o Descanso Eterno (Comemoração de Todos os Fiéis Defuntos - Finados)",
        "Hinário Litúrgico CNBB / Missal Romano",
        "Entrada", "Tempo Comum", "Dm", 72, "4/4", "Balada da Esperança Pascal", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Antífona Oficial da Missa de Finados e Exéquias", 100,
        "Missal Romano - Comemoração dos Fiéis Defuntos (2 de Novembro)", "1Ts 4, 14; Jo 11, 25",
        "Antífona oficial do Missal Romano (Requiem aeternam) para o Dia de Finados e Missas de Sétimo Dia.",
        """[Intro] Dm  Gm  A7  Dm

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
"Quem crê em Mim, ainda que tenha morrido, viverá para sempre!" """
    ),
]

# IDs ou padrões de músicas que são POPULARES / DEVOCIONAIS (para Grupos de Oração,
# Encontros, Retiros, Adoração livre, Shows — NÃO próprias para os ritos da Missa segundo a IGMR / CNBB)
EXPLICIT_POPULAR_SONG_IDS = {
    "erguei-as-maos-pe-marcelo",
    "faz-um-milagre-em-mim-pe-marcelo-rossi",
    "noites-traicoeiras-pe-marcelo",
    "a-chave-do-coracao-adriana-arydes",
    "chuva-de-graca-eliana-ribeiro",
    "derrama-o-teu-amor-aqui-celina-borges",
    "forca-e-vitoria-eliana-ribeiro",
    "restauracao-dunga",
    "foi-por-voce-anjos-de-resgate",
    "mais-que-amigos-anjos-de-resgate",
    "amigos-pela-fe-anjos-de-resgate",
    "sem-voce-rosa-de-saron",
    "do-alto-da-pedra-rosa-de-saron",
    "menos-de-um-segundo-rosa-de-saron",
    "monte-inverno-rosa-de-saron",
    "acalma-minha-tempestade-frei-gilson",
    "eu-te-levantarei-frei-gilson",
    "deus-dos-impossiveis-frei-gilson",
    "minha-essencia-thiago-brado",
    "verdades-do-tempo-thiago-brado",
    "meu-alvo-thiago-brado",
    "desperta-colo-de-deus",
    "dependente-colo-de-deus",
    "confia-em-mim-colo-de-deus",
    "soberano-eliana-ribeiro",
    "tu-es-o-centro-frei-gilson",
    "oracao-pela-familia-pe-zezinho",
    "utopia-pe-zezinho",
    "um-certo-galileu-pe-zezinho",
    "amar-como-jesus-amou-pe-zezinho",
    "maria-de-nazare-pe-zezinho",
    "segura-na-mao-de-deus",
    "humano-amor-de-deus-pe-fabio-de-melo",
    "tudo-e-do-pai-frederico-cruz",
    "a-barca-senhor-tu-me-olhaste-na-areia",
    "ninguem-te-ama-como-eu-martin-valverde",
    "cuidar-da-familia-pe-reginaldo-manzotti",
    "milagres-pe-reginaldo-manzotti",
    "o-que-e-que-eu-sou-sem-jesus-pe-alessandro-campos",
}


def classify_song_liturgical_and_theme(song):
    """
    Enriquece cada música do catálogo com:
    - repertoireType: 'liturgica' (Santa Missa - IGMR/CNBB) ou 'popular' (Popular/Devocional - Fora da Missa)
    - specialDay: Tema / Solenidade / Dia Específico da Igreja
    - liturgicalNormNote: Explicação clara segundo os Documentos 43 e 79 da CNBB e a IGMR
    """
    sid = song.get("id", "").lower()
    title = song.get("title", "").lower()
    comp = song.get("composer", "").lower()
    moment = song.get("liturgicalMoment", "")
    season = song.get("liturgicalSeason", "Tempo Comum")
    analysis = song.get("liturgicalAnalysis", {}) or {}
    igmr = (analysis.get("igmrReference", "") or "").lower()
    suitability = analysis.get("suitabilityScore", 95)

    # 1. Determinar repertoireType ('liturgica' vs 'popular')
    is_ordinario_or_salmo = moment in {
        "Ato Penitencial",
        "Glória",
        "Salmo",
        "Aclamação ao Evangelho",
        "Santo",
        "Cordeiro de Deus",
    }
    is_cnbb_or_missal = any(
        kw in comp or kw in igmr or kw in title
        for kw in [
            "cnbb", "missal", "lecionário", "weber", "kolling", "fabreti",
            "waldeci", "reginaldo veloso", "gregoriano", "campanha da fraternidade",
            "hinário", "antífona", "sequência",
        ]
    )

    is_popular = False
    if sid in EXPLICIT_POPULAR_SONG_IDS:
        is_popular = True
    elif not is_ordinario_or_salmo and not is_cnbb_or_missal:
        # Músicas de Pós-Comunhão/Ação de Graças de bandas/comunidades carismáticas, shows e grupos de oração
        if moment == "Ação de Graças":
            is_popular = True
        elif any(
            kw in comp
            for kw in [
                "rosa de saron", "anjos de resgate", "colo de deus", "thiago brado",
                "frei gilson", "tony allysson", "diego fernandes", "dunga",
                "pe. ferguson", "alessandro campos", "reginaldo manzotti",
                "fábio de melo", "martin valverde", "banda dom", "dominus", "ceremonya",
                "juninho cassimiro", "ana gabriela", "italo vilar", "eros biondini",
                "fraternidade", "toca de assis", "aliança de misericórdia",
                "recado", "pantokrator", "obra de maria", "sementes do verbo",
                "palavra viva", "mar a dentro", "hesed", "kelly patrícia",
                "celina borges", "adriana arydes", "davidson silva", "catequese",
                "nelsinho", "jonas abib", "antônio maria",
            ]
        ) and "igmr" not in igmr:
            is_popular = True

    repertoire_type = "popular" if is_popular else "liturgica"

    # 2. Determinar o Dia Específico / Solenidade (specialDay)
    special_day = "Missa Dominical (Tempo Comum)"
    if "ramos" in sid or "ramos" in title or "filhos dos hebreus" in title or "hosana ao filho de davi" in title or "hosana hey" in title:
        special_day = "Domingo de Ramos"
    elif "quinta-feira santa" in title or "lava-pés" in title or "lava pes" in sid or "ubi caritas" in title or "onde há caridade" in title or "ceia do senhor" in igmr:
        special_day = "Semana Santa (Quinta e Sexta)"
    elif "sexta-feira santa" in title or "sexta santa" in sid or "impropérios" in title or "meu povo, que te fiz" in title or "fiel madeiro" in title or "vitória! tu reinarás" in title:
        special_day = "Semana Santa (Quinta e Sexta)"
    elif "vigília pascal" in title or "exsultet" in sid or "sequência da páscoa" in title or "banhados em cristo" in title or season == "Páscoa":
        if "pentecostes" in title or "espírito santo" in title or "espírito" in title or season == "Pentecostes":
            special_day = "Pentecostes"
        else:
            special_day = "Páscoa e Vigília Pascal"
    elif season == "Pentecostes" or "pentecostes" in title or "vinde, espírito santo" in title or "envia teu espírito" in title:
        special_day = "Pentecostes"
    elif "campanha da fraternidade" in comp or "cf " in title or season == "Quaresma" or "cinzas" in title or "quaresma" in title:
        special_day = "Quaresma e CF"
    elif season == "Advento" or "advento" in title or "maranathá" in title or "da cepa brotou" in title:
        special_day = "Advento"
    elif season == "Natal" or "natal" in title or "noite feliz" in title or "menino" in title:
        special_day = "Natal do Senhor"
    elif "corpus christi" in title or "lauda sion" in sid or "tão sublime sacramento" in title or "santíssima trindade" in title or "trindade" in sid:
        special_day = "Corpus Christi e Trindade"
    elif "cristo rei" in title or "todos os santos" in title or "finados" in title or "descanso eterno" in title:
        special_day = "Cristo Rei, Santos e Finados"
    elif any(m in title for m in ["maria", "aparecida", "senhora", "mãe", "imaculada", "magnificat", "salve rainha"]):
        special_day = "Solenidades Marianas"
    elif repertoire_type == "popular":
        special_day = "Encontros, Retiros e Grupo de Oração"

    # 3. Nota Pastoral / Regra Litúrgica
    if repertoire_type == "liturgica":
        norm_note = (
            f"Aprovada para a Santa Missa ({moment} • {special_day}): "
            f"Segue as normas da IGMR e dos Documentos 43 e 79 da CNBB, com texto fiel ao mistério celebrado."
        )
    else:
        norm_note = (
            "Música Religiosa Popular / Devocional: Recomendada para Grupos de Oração, Encontros, "
            "Retiros, Shows e Adoração fora da Missa. Segundo a IGMR e a CNBB, não deve substituir "
            "os cantos rituais próprios da Santa Missa."
        )

    song["repertoireType"] = repertoire_type
    song["specialDay"] = special_day
    song["liturgicalNormNote"] = norm_note
    if "liturgicalAnalysis" not in song or not isinstance(song["liturgicalAnalysis"], dict):
        song["liturgicalAnalysis"] = {}
    song["liturgicalAnalysis"]["repertoireType"] = repertoire_type
    song["liturgicalAnalysis"]["specialDay"] = special_day
    song["liturgicalAnalysis"]["normExplanation"] = norm_note
    return song
