# -*- coding: utf-8 -*-
"""
Parte 1 da Expansão Massiva do Santa Cifra:
- 30 Clássicos do Padre Zezinho, scj
- 30 Clássicos do Padre Marcelo Rossi (Cifra Club / Missas / Louvor)
- 25 Clássicos de Monsenhor Jonas Abib, Canção Nova, Eugênio Jorge, Eliana Ribeiro, Dunga e Salette Ferreira
"""

def make_song(id_slug, title, composer, moment, season, key, bpm, time_sig, rhythm_name, rhythm_pat,
              most_used, simple, chord_count, status, score, doc_ref, bib_ref, justification, cifra):
    return {
        "id": id_slug,
        "title": title,
        "composer": composer,
        "liturgicalMoment": moment,
        "liturgicalSeason": season,
        "originalKey": key,
        "bpm": bpm,
        "timeSignature": time_sig,
        "rhythmName": rhythm_name,
        "rhythmPattern": rhythm_pat,
        "isMostUsed": most_used,
        "isSimple": simple,
        "chordCount": chord_count,
        "youtubeUrl": f"https://www.youtube.com/results?search_query={title.replace(' ', '+')}+{composer.split('/')[0].strip().replace(' ', '+')}+cifra",
        "liturgicalAnalysis": {
            "status": status,
            "score": score,
            "documentRef": doc_ref,
            "biblicalRef": bib_ref,
            "justification": justification
        },
        "cifra": cifra.strip()
    }

PADRE_ZEZINHO_SONGS = [
    make_song(
        "oracao-pela-familia-pe-zezinho",
        "Oração pela Família",
        "Padre Zezinho, scj",
        "Ação de Graças",
        "Qualquer",
        "C", 76, "4/4", "Guarânia / Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico Pastoral Familiar (Ação de Graças / Bênção das Famílias)", 95,
        "Estudo 79 CNBB / Diretório da Pastoral Familiar", "Ef 5, 21-33; Cl 3, 12-21",
        "Cântico consagrado nas paróquias brasileiras para bênção das famílias, matrimônios e envio final.",
        """[Intro] C  G7  C  G7  C

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
Abençoa, Senhor, a minha também!"""
    ),
    make_song(
        "maria-de-nazare-pe-zezinho",
        "Maria de Nazaré",
        "Padre Zezinho, scj",
        "Final",
        "Qualquer",
        "D", 72, "3/4", "Valsa Sacra", "↓  ↑ ↓  ↑ ↓",
        True, True, 4,
        "Clássico Mariano Consagrado (Canto Final / Festas Marianas)", 98,
        "Lumen Gentium 66-67 / Marialis Cultus", "Lc 1, 26-56; Jo 19, 25-27",
        "Uma das canções marianas mais cantadas no Brasil, profundamente bíblica e acessível no violão.",
        """[Intro] D  Em  A7  D

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
Ave Maria, Mãe de Jesus!"""
    ),
    make_song(
        "utopia-pe-zezinho",
        "Utopia (Das Muitas Coisas do Meu Tempo de Criança)",
        "Padre Zezinho, scj",
        "Ação de Graças",
        "Qualquer",
        "D", 82, "4/4", "Toada / Dedilhado", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Vocacional e Catequético", 92,
        "Estudo 79 CNBB / Catequese e Família", "Dt 6, 6-7; Pv 22, 6",
        "Cântico catequético sobre a transmissão da fé em família e a devoção a Jesus e Nossa Senhora.",
        """[Intro] D  A7  D  A7  D

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
Foi mamãe que ensinou a rezar a Ave-Maria!"""
    ),
    make_song(
        "amar-como-jesus-amou-pe-zezinho",
        "Amar Como Jesus Amou",
        "Padre Zezinho, scj",
        "Comunhão",
        "Tempo Comum",
        "D", 86, "4/4", "Balada Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Canto de Caridade Fraterna e Mandamento Novo", 95,
        "IGMR 86 / Evangelho de São João", "Jo 13, 34-35; Jo 15, 12",
        "Três acordes apenas (D, A7, G) cantando o Mandamento Novo de Cristo: amar como Jesus amou.",
        """[Intro] D  A7  D  G  D  A7  D

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
E ao chegar ao fim do dia, eu sei que dormiria muito mais feliz!"""
    ),
    make_song(
        "um-certo-galileu-pe-zezinho",
        "Um Certo Galileu",
        "Padre Zezinho, scj",
        "Aclamação",
        "Tempo Comum",
        "D", 96, "4/4", "Marcha / Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Canto Cristocêntrico Querigmático", 94,
        "Estudo 79 CNBB / Catequese e Missão", "Mt 4, 18-22; Mc 1, 16-20",
        "Apenas 3 acordes (D, Em/G, A7) narrando o anúncio do Reino de Deus por Jesus da Galileia.",
        """[Intro] D  A7  D  A7  D

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
Naquela estrada, naquele sol, e o povo a escutar histórias tão bonitas!"""
    ),
    make_song(
        "estou-pensando-em-deus-pe-zezinho",
        "Estou Pensando em Deus",
        "Padre Zezinho, scj",
        "Entrada",
        "Tempo Comum",
        "D", 82, "4/4", "Balada / Meditação", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico de Reflexão e Abertura Comunitária", 93,
        "Estudo 79 CNBB", "1Jo 4, 7-16; Mt 22, 37-39",
        "Canto clássico de fácil execução com 4 acordes sobre a volta da humanidade ao amor de Deus.",
        """[Intro] D  Em  A7  D

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
Muitos falam de esperança, mas esquecem de Você!"""
    ),
    make_song(
        "nova-geracao-pe-zezinho",
        "Nova Geração (Eu Venho do Sul e do Norte)",
        "Padre Zezinho, scj",
        "Entrada",
        "Tempo Comum",
        "Dm", 92, "4/4", "Guarânia / Caminhada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Entrada para Assembleias e Juventude", 95,
        "IGMR 47 / Hinário Litúrgico", "Is 2, 3; Gl 3, 28",
        "Canto de entrada vibrante sobre a reunião do povo de todas as regiões em torno do altar.",
        """[Intro] Dm  A7  Dm

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
No meu coração, o que disse Jesus! (2x)"""
    ),
    make_song(
        "minha-vida-tem-sentido-pe-zezinho",
        "Minha Vida Tem Sentido",
        "Padre Zezinho, scj",
        "Ofertório",
        "Tempo Comum",
        "D", 80, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico de Apresentação dos Dons", 96,
        "IGMR 74 / Estudo 79 CNBB", "Rm 12, 1; Mt 5, 23-24",
        "Canto de ofertório extremamente conhecido, unindo a entrega da vida ao pão e vinho no altar.",
        """[Intro] D  Em  A7  D

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
Eu Te ofereço vinho e pão, eu Te ofereço meu amor!"""
    ),
    make_song(
        "sabes-senhor-pe-zezinho",
        "Sabes, Senhor (Deus É Pai)",
        "Padre Zezinho, scj / Lindberg Pires",
        "Ofertório",
        "Tempo Comum",
        "D", 76, "4/4", "Dedilhado / Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Tradicional de Ofertório", 98,
        "IGMR 74 / Hinário Litúrgico CNBB", "Jo 6, 9; At 4, 32",
        "Um dos cantos de ofertório mais amados e cantados nas paróquias brasileiras.",
        """[Intro] D  Bm  Em  A7  D

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
Mas com a Tua graça, Senhor, queremos dar!"""
    ),
    make_song(
        "vocacao-se-ouvires-a-voz-do-vento-pe-zezinho",
        "Vocação (Se Ouvires a Voz do Vento)",
        "Padre Zezinho, scj",
        "Comunhão",
        "Tempo Comum",
        "Em", 78, "4/4", "Balada / Dedilhado", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Vocacional e Missionário", 96,
        "IGMR 86 / Mês Vocacional", "Is 6, 8; Mt 9, 37-38",
        "Clássico vocacional com 4 acordes simples (Em, Am, B7, E7) sobre o chamado de Deus.",
        """[Intro] Em  Am  B7  Em

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
Se ouvires a voz do mundo, querendo te enganar:"""
    ),
    make_song(
        "quando-jesus-passar-pe-zezinho",
        "Quando Jesus Passar",
        "Padre Zezinho, scj",
        "Entrada",
        "Tempo Comum",
        "D", 94, "4/4", "Marcha Alegre", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Canto de Acolhida e Prontidão Cristã", 94,
        "IGMR 47 / Evangelho de Lucas", "Lc 19, 1-10",
        "Apenas 3 acordes (D, Em/G, A7), muito fácil para iniciantes tocarem na entrada da Missa.",
        """[Intro] D  Em  A7  D

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
No meu direito e no meu dever!"""
    ),
    make_song(
        "alo-meu-deus-pe-zezinho",
        "Alô, Meu Deus",
        "Padre Zezinho, scj",
        "Ato Penitencial",
        "Quaresma",
        "C", 74, "4/4", "Balada / Oração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Reconciliação e Retorno ao Pai", 91,
        "Catequese Penitencial / Lc 15", "Lc 15, 11-24",
        "Cântico inspirado no retorno do Filho Pródigo à casa do Pai, excelente para celebrações penitenciais.",
        """[Intro] C  Dm  G7  C

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
Eu vim fazer meu ninho em Tua casa e repousar!"""
    ),
    make_song(
        "cidadao-do-infinito-pe-zezinho",
        "Cidadão do Infinito",
        "Padre Zezinho, scj",
        "Final",
        "Tempo Comum",
        "C", 88, "4/4", "Toada Missionária", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Envio Missionário e Vocacional", 94,
        "IGMR 90 / Evangelii Nuntiandi", "Mt 13, 3-9; Fl 3, 20",
        "Hino missionário sobre semear a Palavra de Deus no mundo.",
        """[Intro] C  F  G7  C

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
Semeando a paz e o amor!"""
    ),
    make_song(
        "palavra-de-salvacao-pe-zezinho",
        "Palavra de Salvação",
        "Padre Zezinho, scj",
        "Aclamação",
        "Tempo Comum",
        "C", 92, "4/4", "Marcha Jovem", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Canto de Aclamação à Palavra de Deus", 96,
        "IGMR 62 / Jo 6, 68", "Jo 6, 68; Hb 4, 12",
        "Canto de preparação para o Evangelho baseado na confissão de São Pedro: 'Senhor, só Tu tens palavras de vida eterna'.",
        """[Intro] C  F  G7  C

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
Tua Palavra queremos guardar!"""
    ),
    make_song(
        "fala-senhor-pe-zezinho",
        "Fala, Senhor, Palavra de Fraternidade",
        "Padre Zezinho, scj",
        "Aclamação",
        "Tempo Comum",
        "D", 88, "4/4", "Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Canto de Escuta da Palavra", 95,
        "IGMR 62 / 1Sm 3, 9", "1Sm 3, 9-10",
        "Canto bíblico inspirado na vocação do jovem Samuel para escuta da Palavra de Deus.",
        """[Intro] D  G  A7  D

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
Penetra a nossa vida e não morre!"""
    ),
    make_song(
        "gloria-a-deus-na-imensidao-pe-zezinho",
        "Glória a Deus na Imensidão",
        "Padre Zezinho, scj",
        "Glória",
        "Tempo Comum",
        "G", 98, "4/4", "Marcha Festiva", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino de Louvor Trinitário", 93,
        "IGMR 53 / Lc 2, 14", "Lc 2, 14",
        "Glória festivo com estrutura trinitária simples em 4 acordes (G, C, D7, Em).",
        """[Intro] G  C  D7  G

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
Na glória de Deus Pai para sempre, amém, nosso louvor!"""
    ),
    make_song(
        "mae-do-ceu-morena-pe-zezinho",
        "Mãe do Céu Morena",
        "Padre Zezinho, scj",
        "Final",
        "Qualquer",
        "D", 82, "3/4", "Valsa / Guarânia", "↓  ↑ ↓  ↑ ↓",
        True, True, 4,
        "Clássico Mariano para Nossa Senhora Aparecida", 97,
        "Lumen Gentium 67 / Festa da Padroeira", "Lc 1, 48; Ap 12, 1",
        "Canto mariano dedicado a Nossa Senhora Aparecida, Padroeira do Brasil, com apenas 4 acordes.",
        """[Intro] D  G  A7  D

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
E faz o nosso povo caminhar em paz!"""
    ),
    make_song(
        "cantico-de-maria-magnificat-pe-zezinho",
        "Cântico de Maria (Meu Espírito Exulta de Alegria)",
        "Padre Zezinho, scj",
        "Salmo",
        "Advento",
        "C", 84, "4/4", "Balada Bíblica", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Cântico Evangélico de Nossa Senhora (Magnificat)", 100,
        "IGMR 61 / Lucas 1, 46-55", "Lc 1, 46-55",
        "Paráfrase fiel do Magnificat de Maria em Lucas 1, ideal para o Advento e solenidades marianas.",
        """[Intro] C  Am  Dm  G7  C

[Refrão]
C             Am         Dm          G7
A minh'alma engrandece o Senhor,
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
E Santo, eternamente Santo é o Seu Nome!"""
    ),
    make_song(
        "paz-inquieta-paz-de-cristo-pe-zezinho",
        "Paz, Paz de Cristo",
        "Padre Zezinho, scj",
        "Ação de Graças",
        "Tempo Comum",
        "Em", 86, "4/4", "Balada Comunitária", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Fraternidade e Paz", 92,
        "Estudo 79 CNBB", "Jo 14, 27",
        "Clássico sobre a verdadeira Paz de Cristo que nos impulsiona à caridade com os irmãos.",
        """[Intro] Em  Am  B7  Em

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
Saiba que sou seu amigo, pode comigo contar!"""
    ),
    make_song(
        "aguia-pequena-pe-zezinho",
        "Águia Pequena",
        "Padre Zezinho, scj",
        "Ação de Graças",
        "Tempo Comum",
        "D", 78, "4/4", "Dedilhado / Balada", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Canto de Confiança na Providência Divina", 91,
        "Estudo 79 CNBB / Meditação Pós-Comunhão", "Is 40, 31; Sl 90",
        "Inspirado em Isaías 40, 31 sobre renovar as forças na presença do Senhor como as águias.",
        """[Intro] D  G  A7  D

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
Não foi à toa que eu nasci para voar!"""
    ),
    make_song(
        "ilumina-ilumina-pe-zezinho",
        "Ilumina, Ilumina",
        "Padre Zezinho, scj",
        "Entrada",
        "Advento",
        "Am", 86, "4/4", "Toada Profética", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Profético de Luz para Advento e Missão", 95,
        "IGMR 47 / Isaías 9, 1", "Is 9, 1; Jo 8, 12",
        "Canto muito utilizado no Advento, Natal e celebrações da Palavra sobre Cristo Luz do Mundo.",
        """[Intro] Am  Dm  E7  Am

[Primeira Parte]
   Am                                       Dm
1. Meu povo estava no escuro, sem direção a caminhar,
   E7                                       Am
Mas veio a Luz de Jesus Cristo para o meu povo iluminar!

[Refrão]
   A7           Dm          G7              C
Ilumina, ilumina nossos passos, ó Senhor!
   Am           Dm          E7              Am
Ilumina, ilumina nosso mundo com Teu amor!"""
    ),
    make_song(
        "de-la-do-interior-pe-zezinho",
        "De Lá do Interior",
        "Padre Zezinho, scj",
        "Entrada",
        "Tempo Comum",
        "G", 88, "4/4", "Sertanejo / Toada", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Canto de Romaria e Peregrinação", 92,
        "Diretório sobre Piedade Popular e Liturgia", "Sl 121",
        "Canto de acolhida dos romeiros e comunidades rurais que sobem ao santuário do Senhor.",
        """[Intro] G  C  D7  G

[Primeira Parte]
   G                                        D7
1. De lá do interior eu vim, trazendo a minha fé no peito,
   C                    D7                  G
Pra agradecer ao bom Deus tudo o que Ele tem feito!

[Refrão]
   C                                        G
Romeiro da esperança, romeiro do amor,
   D7                                       G
Eu vim cantar na casa do meu Senhor!"""
    ),
    make_song(
        "rosto-de-cristo-como-sao-belos-pe-zezinho",
        "Como São Belos os Pés do Mensageiro",
        "Padre Zezinho, scj",
        "Final",
        "Tempo Comum",
        "G", 90, "4/4", "Marcha Missionária", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Bíblico de Envio Missionário", 97,
        "IGMR 90 / Isaías 52, 7 / Romanos 10, 15", "Is 52, 7; Rm 10, 15",
        "Canto bíblico clássico para envio missionário, catequistas e ministros da Palavra.",
        """[Intro] G  Em  C  D7  G

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
O seu Reino de amor e justiça para sempre permanecerá!"""
    ),
    make_song(
        "cantiga-por-sao-francisco-pe-zezinho",
        "Cantiga por São Francisco",
        "Padre Zezinho, scj",
        "Comunhão",
        "Tempo Comum",
        "C", 82, "4/4", "Balada Franciscana", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Canto de Espiritualidade Franciscana e Fraternidade", 94,
        "Estudo 79 CNBB", "Mt 5, 3-12",
        "Canto inspirado no testemunho evangélico de São Francisco de Assis.",
        """[Intro] C  Am  Dm  G7  C

[Primeira Parte]
   C                      Am              Dm          G7
1. O mundo precisa de paz, o mundo precisa de amor,
   Dm                     G7              C
E de gente que saiba seguir o Evangelho de Nosso Senhor!

[Refrão]
   F                      G7              C           Am
Irmão Sol, Irmã Lua, clareia a nossa estrada,
   Dm                     G7              C
Que a exemplo de São Francisco reconstruamos a Tua morada!"""
    ),
    make_song(
        "amar-e-doar-se-pe-zezinho",
        "Amar É Doar-se",
        "Padre Zezinho, scj",
        "Ofertório",
        "Tempo Comum",
        "G", 78, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        False, True, 4,
        "Canto de Ofertório e Doação Cristã", 94,
        "IGMR 74", "Jo 15, 13",
        "Canto de apresentação das oferendas focado na entrega generosa da vida.",
        """[Intro] G  Em  Am  D7  G

[Refrão]
G             Em          Am              D7
Amar é doar-se sem medir o que se dá,
Am            D7          G
É fazer da própria vida um eterno ofertar!

[Estrofe]
   C                      D7              G           Em
1. Com o pão e com o vinho colocamos no altar
   Am                     D7              G
Nossa lida, nosso sonho e a vontade de amar!"""
    ),
]

PADRE_MARCELO_ROSSI_SONGS = [
    make_song(
        "noites-traicoeiras-pe-marcelo-rossi",
        "Noites Traiçoeiras (Deus Está Aqui Neste Momento)",
        "Padre Marcelo Rossi / Carlos Papae",
        "Ação de Graças",
        "Qualquer",
        "G", 74, "4/4", "Balada / Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico de Adoração, Consolação e Ação de Graças", 92,
        "Estudo 79 CNBB / Piedade Popular e Adoração", "Sl 29, 6; Mt 28, 20",
        "Uma das músicas católicas mais acessadas no Cifra Club; indicada para momentos de adoração, grupo de oração e ação de graças.",
        """[Intro] G  Bm  C  D7  G

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
Mas Deus te quer sorrindo! (2x)"""
    ),
    make_song(
        "erguei-as-maos-pe-marcelo-rossi",
        "Erguei as Mãos",
        "Padre Marcelo Rossi",
        "Final",
        "Tempo Comum",
        "A", 118, "4/4", "Pop Louvor / Animado", "↓ ↑ ↓ ↑  ↓ ↑ ↓ ↑",
        True, True, 3,
        "Clássico de Louvor Comunitário e Catequese Infantil", 90,
        "Diretório de Missas com Crianças / Louvor Comunitário", "Sl 133, 2; Gn 12, 1-3",
        "Apenas 3 acordes (A, D, E), super simples no violão, ideal para encontros, catequese infantil e encerramento festivo.",
        """[Intro] A  D  E  A

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
Como os filhos do Senhor!"""
    ),
    make_song(
        "anjos-de-deus-pe-marcelo-rossi",
        "Anjos de Deus (Se Acontecer um Barulho)",
        "Padre Marcelo Rossi / Elizeu Gomes",
        "Final",
        "Tempo Comum",
        "D", 110, "4/4", "Country / Louvor", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Cântico de Louvor e Devoção aos Santos Anjos", 90,
        "Piedade Popular / Grupo de Oração", "Sl 90, 11; Gn 28, 12",
        "Cifra clássica de 3 acordes (D, A, G) que se repete do início ao fim da música!",
        """[Intro] D  A  G  D

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
Porque o próprio Deus está aqui!"""
    ),
    make_song(
        "basta-querer-pe-marcelo-rossi",
        "Basta Querer (Meu Pensamento Vive em Você)",
        "Padre Marcelo Rossi / Jorge Guedes",
        "Ação de Graças",
        "Tempo Comum",
        "G", 76, "4/4", "Balada Romântica Sacra", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Intimidade com Cristo e Pós-Comunhão", 93,
        "Estudo 79 CNBB / Ação de Graças", "Ap 3, 20; Sl 26",
        "Sucesso absoluto nas paróquias com 4 acordes simples (G, D, Em, C) para o momento de ação de graças.",
        """[Intro] G  D  Em  C  G  D

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
Outra vez, outra vez!"""
    ),
    make_song(
        "quero-te-dar-a-paz-pe-marcelo-rossi",
        "Paz (Quero Te Dar a Paz do Meu Senhor)",
        "Padre Marcelo Rossi",
        "Ação de Graças",
        "Qualquer",
        "G", 84, "4/4", "Balada Fraterna", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Fraternidade e Abraço da Paz", 92,
        "Estudo 79 CNBB", "Jo 14, 27; Rm 12, 10",
        "Progressão clássica G – Em – C – D7 extremamente fácil para iniciantes.",
        """[Intro] G  Em  C  D7  G

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
Sinto forte o poder do amor dentro do meu coração!"""
    ),
    make_song(
        "sonda-me-pe-marcelo-rossi",
        "Sonda-me, Senhor, e Me Conhece (Salmo 138)",
        "Padre Marcelo Rossi",
        "Ato Penitencial",
        "Quaresma",
        "Em", 72, "4/4", "Dedilhado / Oração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração Salmódica de Exame de Consciência (Salmo 138)", 97,
        "IGMR 51 / Salmo 138 (139)", "Sl 138, 1-24",
        "Paráfrase orante do Salmo 138 ('Senhor, vós me sondais e conheceis'), ideal para recolhimento e penitência.",
        """[Intro] Em  Am  D7  G  B7

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
Deus de amor!"""
    ),
    make_song(
        "forca-e-vitoria-pe-marcelo-rossi",
        "Força e Vitória (Todo Joelho Se Dobrará)",
        "Padre Marcelo Rossi / Eliana Ribeiro",
        "Ação de Graças",
        "Tempo Comum",
        "Bm", 78, "4/4", "Balada Forte", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino Bíblico de Exaltação de Cristo Senhor (Filipenses 2)", 96,
        "Cântico de Filipenses 2, 10-11", "Fl 2, 9-11; Rm 8, 37",
        "Baseado no hino cristológico de Filipenses 2 ('Todo joelho se dobrará e toda língua proclamará que Jesus Cristo é o Senhor').",
        """[Intro] Bm  G  Em  F#7

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
Mas só Te peço, livra-me do mal!"""
    ),
    make_song(
        "a-minha-vida-e-do-mestre-pe-marcelo-rossi",
        "Meu Mestre (A Minha Vida É do Mestre)",
        "Padre Marcelo Rossi",
        "Ofertório",
        "Tempo Comum",
        "G", 80, "4/4", "Balada de Entrega", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Entrega e Consagração a Cristo", 94,
        "Estudo 79 CNBB", "Rm 14, 8; Mc 4, 39",
        "Quatro acordes abertos (G, Em, C, D) sobre pertencer inteiramente a Cristo, Mestre do mar e da vida.",
        """[Intro] G  Em  C  D  G

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
Pois o meu Mestre está comigo a governar!"""
    ),
    make_song(
        "derrama-o-teu-amor-aqui-pe-marcelo-rossi",
        "Derrama o Teu Amor Aqui",
        "Padre Marcelo Rossi / Celina Borges",
        "Entrada",
        "Pentecostes",
        "G", 92, "4/4", "Pop Rock Litúrgico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Invocação do Amor de Deus e Fraternidade", 94,
        "Rm 5, 5 / Pentecostes e Encontros", "Rm 5, 5; Ef 5, 14",
        "Quatro acordes (G, D, Em, C) em progressão universal, muito fácil e vibrante.",
        """[Intro] G  D  Em  C  (2x)

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
Faz chover sobre nós Água Viva! (2x)"""
    ),
    make_song(
        "senhor-poe-teus-anjos-aqui-pe-marcelo-rossi",
        "Senhor, Põe Teus Anjos Aqui",
        "Padre Marcelo Rossi",
        "Entrada",
        "Tempo Comum",
        "D", 88, "4/4", "Balada / Oração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Canto de Abertura para Grupos de Oração e Encontros", 91,
        "Sl 90, 11 / Piedade Popular", "Sl 90, 11-12; Sl 33, 8",
        "Apenas 3 acordes (D, Em, A7) para abrir encontros paroquiais e vigílias.",
        """[Intro] D  Em  A7  D

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
E envia São Miguel Arcanjo para nos guardar!"""
    ),
    make_song(
        "cura-senhor-onde-doi-pe-marcelo-rossi",
        "Cura, Senhor, Onde Dói",
        "Padre Marcelo Rossi / Pe. Antônio Maria",
        "Ação de Graças",
        "Tempo Comum",
        "C", 70, "4/4", "Dedilhado / Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, False, 5,
        "Oração de Cura Interior e Adoração Eucarística", 93,
        "Adoração ao Santíssimo / Missas pelos Enfermos", "Mt 8, 17; Is 53, 4",
        "Canto profundamente contemplativo para adoração ao Santíssimo Sacramento e bênção dos enfermos.",
        """[Intro] C  G/B  Am  F  Dm  G7

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
Sinto minha alma a chorar junto de Ti!"""
    ),
    make_song(
        "maria-da-minha-infancia-pe-marcelo-rossi",
        "Maria da Minha Infância (Eu Era Pequeno, Nem Me Lembro)",
        "Padre Marcelo Rossi / Padre Zezinho, scj",
        "Final",
        "Qualquer",
        "D", 82, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico Mariano Consagrado (Composto por Pe. Zezinho e gravado por Pe. Marcelo)", 97,
        "Lumen Gentium 67 / Devoção Mariana", "Lc 1, 28.42",
        "Apenas 4 acordes (D, Em, A7, G) na canção mariana que marcou gerações na Igreja do Brasil.",
        """[Intro] D  Em  A7  D

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
Ave Maria, Mãe de Jesus!"""
    ),
    make_song(
        "reunidos-aqui-pe-marcelo-rossi",
        "Reunidos Aqui Só Pra Louvar o Senhor",
        "Padre Marcelo Rossi / Tradicional Carismático",
        "Entrada",
        "Tempo Comum",
        "G", 96, "4/4", "Marcha Alegre", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Canto Curto e Simples de Acolhida Comunitária", 94,
        "IGMR 47 / Mt 18, 20", "Mt 18, 20; Sl 132, 1",
        "Três acordes básicos (G, C, D7) — excelente para iniciantes no violão abrirem celebrações.",
        """[Intro] G  C  D7  G

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
Novamente aqui, em união!"""
    ),
    make_song(
        "tudo-e-do-pai-pe-marcelo-rossi",
        "Tudo É do Pai (Eu Pensava Que Podia Viver Por Mim Mesmo)",
        "Padre Marcelo Rossi / Frederico Cruz",
        "Ação de Graças",
        "Quaresma",
        "G", 74, "4/4", "Balada / Dedilhado", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Humildade, Gratidão e Retorno ao Pai", 95,
        "Estudo 79 CNBB / Parábola do Filho Pródigo", "Lc 15, 11-32; Tg 1, 17",
        "Canto emocionante inspirado na parábola do Filho Pródigo e no reconhecimento de que toda graça vem de Deus.",
        """[Intro] G  D  Em  C  D7  G

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
Bem mais forte é o meu Senhor, que me cura por amor!"""
    ),
    make_song(
        "batiza-me-senhor-no-teu-espirito-pe-marcelo",
        "Batiza-me, Senhor, no Teu Espírito (Vem, Espírito Santo)",
        "Padre Marcelo Rossi / Tradicional",
        "Comunhão",
        "Pentecostes",
        "Em", 78, "4/4", "Balada Orante", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Clássico de Crisma e Pentecostes", 95,
        "Ritual da Confirmação / Pentecostes", "At 2, 1-4; Jo 20, 22",
        "Um dos cânticos ao Espírito Santo mais fáceis do repertório católico (Em, B7, Am, D7, G).",
        """[Intro] Em  B7  Em

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
Inunda-me, Senhor, no Teu amor!"""
    ),
    make_song(
        "seja-engrandecido-pe-marcelo-rossi",
        "Seja Engrandecido",
        "Padre Marcelo Rossi / Guilherme Kerr",
        "Glória",
        "Tempo Comum",
        "G", 94, "4/4", "Louvor Alegre", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Louvor e Exaltação a Deus", 91,
        "Encontros e Grupos de Oração", "Sl 33, 4; Sl 144",
        "Quatro acordes abertos (G, Bm/Em, C, D7) muito fáceis de tocar.",
        """[Intro] G  Em  C  D7  G

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
Para sempre, amém!"""
    ),
    make_song(
        "pai-nosso-pe-marcelo-rossi",
        "Pai Nosso (Padre Marcelo Rossi)",
        "Padre Marcelo Rossi",
        "Cordeiro",
        "Qualquer",
        "G", 72, "4/4", "Balada Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração Dominical (Observação Litúrgica Inclusa)", 90,
        "IGMR 81 / Mateus 6, 9-13", "Mt 6, 9-13",
        "Melodia muito conhecida do Pai Nosso em 4 acordes (G, Em, C, D). Na Missa, observar sempre a letra oficial do Missal Romano.",
        """[Intro] G  Em  C  D  G

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
Mas livrai-nos do mal. Amém!"""
    ),
    make_song(
        "quem-e-esta-que-avanca-como-a-aurora-pe-marcelo",
        "Quem É Esta Que Avança Como a Aurora",
        "Padre Marcelo Rossi / Cântico dos Cânticos 6,10",
        "Final",
        "Qualquer",
        "G", 92, "4/4", "Balada Mariana", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Antífona Bíblica Mariana (Cântico dos Cânticos 6, 10)", 98,
        "Liturgia das Horas / Festas Marianas", "Ct 6, 10",
        "Apenas 3 acordes (G, C, D) com texto 100% bíblico extraído do Cântico dos Cânticos.",
        """[Intro] G  C  D  G

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
Meu espírito exulta em Deus, meu Salvador! (2x)"""
    ),
    make_song(
        "eu-navegarei-pe-marcelo-rossi",
        "Eu Navegarei no Oceano do Espírito",
        "Padre Marcelo Rossi / Adoração",
        "Ação de Graças",
        "Pentecostes",
        "Am", 74, "4/4", "Balada Contemplativa", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Clássico de Adoração e Invocação do Espírito Santo", 93,
        "Vigílias de Pentecostes e Adoração", "Ez 47, 1-9; Jo 4, 24",
        "Ciclo fixo de 4 acordes (Am, G, F, E7) que se repete na música inteira — campeão de acessos no Cifra Club!",
        """[Intro] Am  G  F  E7

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
Vem como em Pentecostes e enche-me de novo! (2x)"""
    ),
    make_song(
        "espirito-enche-a-minha-vida-pe-marcelo",
        "Espírito, Enche a Minha Vida",
        "Padre Marcelo Rossi",
        "Entrada",
        "Pentecostes",
        "C", 78, "4/4", "Balada / Oração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração ao Espírito Santo", 94,
        "Efésios 5, 18 / Crisma e Pentecostes", "Ef 5, 18; Gl 5, 22",
        "Clássico de invocação ao Espírito Santo em Dó maior.",
        """[Intro] C  F  G7  C

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
As minhas mãos eu quero levantar, e em louvor Te adorar!"""
    ),
    make_song(
        "te-agradeco-pe-marcelo-rossi",
        "Te Agradeço (Por Tudo o Que Tens Feito)",
        "Padre Marcelo Rossi",
        "Ação de Graças",
        "Qualquer",
        "G", 84, "4/4", "Balada de Gratidão", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Ação de Graças", 94,
        "1Ts 5, 18 / Ação de Graças", "1Ts 5, 18; Sl 102",
        "Apenas 4 acordes (G, D, Em, C) para agradecer a Deus após a Comunhão.",
        """[Intro] G  D  Em  C

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
Por ter morrido em meu lugar: Te agradeço!"""
    ),
]

CANCAO_NOVA_E_COMUNIDADES_1 = [
    make_song(
        "a-ele-a-gloria-eugenio-jorge",
        "A Ele a Glória (Alfa, Ômega, Princípio e Fim)",
        "Eugênio Jorge / Ministério Missão Mensagem Brasil",
        "Ação de Graças",
        "Qualquer",
        "Em", 72, "4/4", "Adoração Solene", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Doxologia Bíblica Paulina (Romanos 11, 36)", 99,
        "Romanos 11, 36 / Apocalipse 1, 8", "Rm 11, 36; Ap 1, 8",
        "Texto 100% bíblico extraído de Romanos 11, 36 ('Porque Dele, por Ele e para Ele são todas as coisas. A Ele a glória!') com apenas 4 acordes (Em, C, D, G).",
        """[Intro] Em  C  D  Em

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
Porque Dele, por Ele, para Ele são todas as coisas!"""
    ),
    make_song(
        "so-por-ti-jesus-eugenio-jorge",
        "Só Por Ti, Jesus (Quero Me Consumir)",
        "Eugênio Jorge / Canção Nova",
        "Ofertório",
        "Qualquer",
        "D", 70, "4/4", "Dedilhado Contemplativo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico de Adoração, Ofertório e Consagração Sacerdotal", 98,
        "IGMR 74 / Adoração Eucarística", "Fl 2, 17; Sl 62",
        "Um dos cânticos mais belos e litúrgicos da música católica brasileira, muito usado em ordenações, adoração e ofertório.",
        """[Intro] D  G  Em  A7  D

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
És alegria de minh'alma!
   G                        A7
Só em Ti repousa a minha esperança,
   F#m                      Bm
Não vacilarei, e mesmo na dor,
   Em                       A7              D
Quero seguir até o fim!"""
    ),
    make_song(
        "ninguem-te-ama-como-eu-martin-valverde",
        "Ninguém Te Ama Como Eu",
        "Martín Valverde / Eugênio Jorge",
        "Ação de Graças",
        "Quaresma",
        "C", 68, "4/4", "Balada / Dedilhado", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Clássico de Contemplação da Cruz e Pós-Comunhão", 96,
        "Sexta-Feira da Paixão / Ação de Graças", "Jo 15, 13; Gl 2, 20",
        "Quatro acordes universais (C, G/B, Am, F, G7) meditando o amor supremo de Cristo na Cruz.",
        """[Intro] C  G  Am  F  Dm  G7

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
Ninguém te ama como Eu!"""
    ),
    make_song(
        "chuva-de-graca-eliana-ribeiro",
        "Chuva de Graça",
        "Eliana Ribeiro / Canção Nova",
        "Entrada",
        "Pentecostes",
        "G", 82, "4/4", "Balada Carismática", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Efusão do Espírito Santo (4 Acordes Fixos)", 93,
        "Ez 34, 26 / Pentecostes", "Ez 34, 26; Jl 3, 1",
        "Usa exatamente os mesmos 4 acordes (G, D, Em, C) do início ao fim da música! Perfeita para iniciantes.",
        """[Intro] G  D  Em  C  (2x)

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
Derrama!"""
    ),
    make_song(
        "barco-a-vela-eliana-ribeiro",
        "Barco a Vela",
        "Eliana Ribeiro / Canção Nova",
        "Comunhão",
        "Pentecostes",
        "G", 76, "4/4", "Balada Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Docilidade ao Espírito Santo", 94,
        "Jo 3, 8 / Crisma e Pentecostes", "Jo 3, 8; Rm 8, 14",
        "Inspirado em João 3, 8 ('O vento sopra onde quer'), com acordes simples em Sol maior.",
        """[Intro] G  D  Em  C

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
Faz em mim o Teu querer!"""
    ),
    make_song(
        "sacramento-da-comunhao-diacono-nelsinho-correa",
        "Sacramento da Comunhão (Senhor, Quando Te Vejo no Sacramento)",
        "Diácono Nelsinho Corrêa / Canção Nova",
        "Comunhão",
        "Qualquer",
        "D", 74, "4/4", "Balada Eucarística", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto Eucarístico de Comunhão e Unidade da Igreja", 99,
        "IGMR 86 / Sacrosanctum Concilium 47", "Jo 17, 21; 1Cor 10, 17",
        "Canto estritamente eucarístico para o momento da Comunhão e adoração ao Santíssimo Sacramento.",
        """[Intro] D  A/C#  Bm  G  Em  A7

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
Para que o mundo creia no Vosso amor!"""
    ),
    make_song(
        "diante-do-rei-vida-reluz",
        "Diante do Rei (Vem, Senhor Jesus, o Coração Já Bate Forte)",
        "Walmir Alencar / Vida Reluz",
        "Ação de Graças",
        "Qualquer",
        "A", 72, "4/4", "Adoração ao Santíssimo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino Clássico de Adoração Eucarística", 99,
        "Ritual da Sagrada Comunhão e o Culto do Mistério Eucarístico Fora da Missa", "Sl 94, 6; Fl 2, 10",
        "Um dos cantos mais executados em exposições do Santíssimo Sacramento e Corpus Christi em todo o Brasil.",
        """[Intro] A  E  F#m  D  Bm  E7

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
Diante do Rei dos reis todo joelho se dobrará!"""
    ),
    make_song(
        "tao-sublime-sacramento-tradicional",
        "Tão Sublime Sacramento (Tantum Ergo)",
        "São Tomás de Aquino / Melodia Tradicional",
        "Ação de Graças",
        "Qualquer",
        "D", 76, "4/4", "Hino Solene Eucarístico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino Litúrgico Oficial da Bênção do Santíssimo Sacramento", 100,
        "Missal Romano / Ritual do Culto Eucarístico", "1Cor 11, 23-26; Jo 6, 51",
        "Composto por São Tomás de Aquino para a Solenidade de Corpus Christi; padrão ouro da música sacra católica.",
        """[Intro] D  A7  D  G  D  A7  D

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
Amém! Amém!"""
    ),
    make_song(
        "cantemos-a-jesus-sacramentado-tradicional",
        "Cantemos a Jesus Sacramentado",
        "Hinário Eucarístico Tradicional",
        "Entrada",
        "Qualquer",
        "D", 86, "3/4", "Hino / Valsa Sacra", "↓  ↑ ↓  ↑ ↓",
        True, True, 4,
        "Hino Eucarístico Tradicional", 100,
        "Ritual do Culto Eucarístico / Corpus Christi", "Jo 6, 51; Sl 147",
        "Hino eucarístico tradicional em 3/4 com apenas 4 acordes básicos.",
        """[Intro] D  G  A7  D

[Primeira Parte]
   D                        A7              D
1. Cantemos a Jesus Sacramentado! Cantemos ao Senhor!
   G                        D               A7          D
Deus está aqui! Dos anjos adorado, adoremos a Cristo Redentor!

[Refrão]
   G                        D
Glória a Cristo Jesus! Céus e terra, bendizei ao Senhor!
   A7                       D               G           A7      D
Louvor e glória a Ti, ó Rei da glória! Amor pra sempre a Ti, ó Deus de amor!"""
    ),
    make_song(
        "bendito-louvado-seja-santissimo-sacramento",
        "Bendito, Louvado Seja o Santíssimo Sacramento",
        "Tradição Litúrgica Luso-Brasileira",
        "Ação de Graças",
        "Qualquer",
        "G", 78, "4/4", "Canto Processional Eucarístico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Hino Tradicional de Adoração e Procissão de Corpus Christi", 100,
        "Ritual do Culto Eucarístico / Piedade Eucarística", "Sl 112, 2",
        "Três acordes simples (G, C, D7) no hino mais tradicional das procissões do Santíssimo Sacramento.",
        """[Intro] G  C  D7  G

[Primeira Parte]
   G                        C               G
1. Bendito, louvado seja, bendito, louvado seja
   C                        D7              G
O Santíssimo Sacramento! (2x)

[Segunda Parte]
   G                        C               G
2. Os anjos, todos os anjos, os anjos, todos os anjos
   C                        D7              G
Louvem a Deus para sempre! Amém! (2x)"""
    ),
    make_song(
        "gloria-a-jesus-na-hostia-santa",
        "Glória a Jesus na Hóstia Santa",
        "Hinário Eucarístico Tradicional",
        "Ação de Graças",
        "Qualquer",
        "G", 82, "4/4", "Hino Eucarístico", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Hino Clássico de Adoração ao Santíssimo", 100,
        "Ritual do Culto Eucarístico", "Jo 6, 35",
        "Clássico das quintas-feiras de adoração e de Corpus Christi.",
        """[Intro] G  C  D7  G

[Primeira Parte]
   G                        D7              G
1. Glória a Jesus na Hóstia Santa, que se consagra sobre o altar,
   C                        G               D7          G
E aos nossos olhos se levanta para o Brasil abençoar!

[Refrão]
   C                        G
Que o Santo Sacramento, que é o próprio Cristo Jesus,
   D7                       G               C           D7      G
Seja adorado e seja amado nesta terra de Santa Cruz!"""
    ),
    make_song(
        "podes-reinar-eliana-ribeiro-agnus-dei",
        "Podes Reinar (Senhor, Eu Sei Que É Teu Este Lugar)",
        "Ministério Koinonya / Eliana Ribeiro",
        "Entrada",
        "Tempo Comum",
        "G", 76, "4/4", "Balada de Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Acolhida da Presença do Senhor", 93,
        "Solenidade de Cristo Rei / Adoração", "Sl 23, 7-10; Lc 19, 1-10",
        "Quatro acordes abertos (G, D, C, Em) muito populares nas paróquias e grupos de oração.",
        """[Intro] G  D  C  G

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
Reina, Senhor, neste lugar!"""
    ),
    make_song(
        "quero-mergulhar-nas-profundezas-cancao-nova",
        "Quero Mergulhar nas Profundezas",
        "Canção Nova / Salette Ferreira",
        "Ação de Graças",
        "Pentecostes",
        "G", 72, "4/4", "Balada Contemplativa", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Canto de Efusão do Espírito Santo", 93,
        "1Cor 2, 10 / Pentecostes", "1Cor 2, 10; Ez 47",
        "Sequência fixa de 4 acordes (G, Bm/Em, C, D) super simples para momentos de oração.",
        """[Intro] G  Em  C  D

[Refrão]
   G                                        Em
Quero mergulhar nas profundezas do Espírito de Deus,
   C                                        D
E descobrir Suas riquezas em meu coração! (2x)

[Estrofe]
   Em                                       Bm
1. É tão lindo, tão simples,
   C                        Am              D
Brisa leve tão suave, doce Espírito Santo de Deus!"""
    ),
    make_song(
        "incendeia-minha-alma-padre-fabio-cancao-nova",
        "Incendeia Minha Alma",
        "Rogério / Canção Nova",
        "Comunhão",
        "Pentecostes",
        "G", 74, "4/4", "Balada ao Espírito Santo", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração ao Espírito Santo", 94,
        "Pentecostes e Crisma", "Lc 12, 49; Rm 8, 26",
        "Canto de invocação ao Espírito Santo em Sol maior.",
        """[Intro] G  D/F#  Em  C  D

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
Incendeia minha alma, Senhor! (2x)"""
    ),
    make_song(
        "vem-louvar-hoje-e-tempo-de-louvar-a-deus",
        "Hoje É Tempo de Louvar a Deus (Vem Louvar)",
        "Monsenhor Jonas Abib / Canção Nova",
        "Entrada",
        "Tempo Comum",
        "D", 104, "4/4", "Pop Louvor", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Clássico Histórico de Louvor Comunitário", 93,
        "1Cor 3, 16 / Encontros e Missas Jovens", "1Cor 3, 16; Sl 149",
        "Apenas 3 acordes (D, G, A7) na música inteira! Um dos maiores clássicos para iniciantes.",
        """[Intro] D  G  A7  D  G  A7

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
2. No meio dos louvores Deus habita, é Seu prazer cumprir o que nos diz!"""
    ),
    make_song(
        "o-senhor-e-rei-monsenhor-jonas-abib",
        "O Senhor É Rei (O Senhor É Meu Pastor e Rei)",
        "Monsenhor Jonas Abib / Pe. Marcelo Rossi",
        "Entrada",
        "Tempo Comum",
        "Em", 108, "4/4", "Rock / Balada Litúrgica", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 3,
        "Hino para a Solenidade de Cristo Rei e Entrada", 96,
        "Solenidade de Nosso Senhor Jesus Cristo, Rei do Universo", "Sl 22; Sl 92; Ap 19, 16",
        "Apenas 3 acordes (Em, G, D, C) num dos maiores sucessos da música católica brasileira.",
        """[Intro] Em  G  D  C

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
Pois o Senhor está comigo!"""
    ),
    make_song(
        "restaura-nossa-casa-dunga-cancao-nova",
        "Restaura Nossa Casa, Senhor (Restauração)",
        "Dunga / Canção Nova",
        "Ação de Graças",
        "Tempo Comum",
        "G", 76, "4/4", "Balada Familiar", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4,
        "Oração pela Restauração das Famílias", 93,
        "Pastoral Familiar / Encontros de Casais", "Js 24, 15; Sl 127",
        "Quatro acordes em Sol maior para oração pelas famílias.",
        """[Intro] G  D  Em  C

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
Pois eu e minha casa serviremos ao Senhor!"""
    ),
]
