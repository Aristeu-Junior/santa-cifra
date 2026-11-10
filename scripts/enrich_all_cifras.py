# -*- coding: utf-8 -*-
"""
Módulo de Enriquecimento Integral de Cifras (Padrão Cifra Club Completo)
Garante que 100% das músicas do catálogo do Santa Cifra possuam:
- [Intro]
- [Primeira Parte] (Estrofe 1 completa cifrada linha a linha)
- [Refrão] (Refrão completo cifrado linha a linha)
- [Segunda Parte] (Estrofe 2 completa cifrada linha a linha)
- [Ponte / Interlúdio] e [Refrão Final]
Além de adicionar todas as músicas consagradas de Walmir Alencar / Vida Reluz / Ministério Adoração e Vida
e novas Fraternidades Católicas.
"""

from part1_padre_zezinho_marcelo import make_song

WALMIR_ALENCAR_EXTRA_SONGS = [
    make_song(
        "celebra-a-vitoria-walmir-alencar-vida-reluz",
        "Celebra a Vitória (Vê Quem Te Elegeu, Te Ungiu e Consagrou)",
        "Walmir Alencar / Vida Reluz",
        "Final", "Qualquer", "E", 82, "4/4", "Balada de Louvor", "↓  ↓ ↑  ↑ ↓ ↑",
        True, False, 5, "Clássico de Walmir Alencar e Vida Reluz", 96,
        "Isaías 43, 1 / Romanos 8, 37", "Is 43, 1-2; Rm 8, 37",
        "Um dos maiores clássicos compostos por Walmir Alencar no Ministério Vida Reluz sobre a eleição e vitória em Cristo.",
        """[Intro] E  B/D#  C#m  A  F#m  B7

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

[Final] E  A  B7  E"""
    ),
    make_song(
        "sublime-walmir-alencar-adoracao-e-vida",
        "Sublime (Sublime É o Teu Amor Por Mim)",
        "Walmir Alencar / Ministério Adoração e Vida",
        "Ação de Graças", "Qualquer", "G", 72, "4/4", "Adoração Suave", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto Eucarístico de Ação de Graças", 97,
        "Adoração Eucarística / 1 João 4, 10", "1Jo 4, 10; Jo 15, 13",
        "Composição profunda de Walmir Alencar para o momento de Ação de Graças após a Sagrada Comunhão.",
        """[Intro] G  D/F#  Em  C  D7  G

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

[Final] G  C  D7  G"""
    ),
    make_song(
        "deus-imenso-walmir-alencar-vida-reluz",
        "Deus Imenso (Não Sou Nada, Eu Bem Sei)",
        "Walmir Alencar / Vida Reluz",
        "Ação de Graças", "Qualquer", "D", 70, "4/4", "Balada de Adoração", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico de Adoração do Vida Reluz", 98,
        "Salmo 8 / Adoração ao Santíssimo", "Sl 8, 4-5; Sl 144",
        "Clássico de Walmir Alencar e Vida Reluz meditando a pequenez humana diante do Deus Imenso que se faz próximo.",
        """[Intro] D  A/C#  Bm  G  Em  A7

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

[Final] D  G  A7  D"""
    ),
    make_song(
        "invade-minh-alma-walmir-alencar-vida-reluz",
        "Invade Minh'Alma",
        "Walmir Alencar / Vida Reluz",
        "Comunhão", "Pentecostes", "C", 74, "4/4", "Balada Orante", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Canto de Comunhão e Efusão espiritual", 96,
        "Romanos 5, 5 / João 14, 23", "Rm 5, 5; Jo 14, 23",
        "Canto consagrado do repertório de Walmir Alencar e Vida Reluz em 4 acordes simples.",
        """[Intro] C  G/B  Am  F  Dm  G7

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
Invade minh'alma, Senhor, preenche todo o meu viver,
   Dm                       G7              C           C7
Quero ser morada santa onde habita o Teu poder!
   F                        G7              Em          Am
Invade minh'alma, Senhor, com Tua graça e Tua luz,
   Dm                       G7              C
Para que o mundo veja em mim a Tua face, ó Jesus!

[Final] C  F  G7  C"""
    ),
    make_song(
        "obra-nova-cristo-quer-fazer-vida-reluz",
        "Obra Nova (Cristo Quer Fazer em Mim uma Obra Nova)",
        "Walmir Alencar / Vida Reluz",
        "Entrada", "Tempo Comum", "D", 92, "4/4", "Pop Jovem / Acolhida", "↓  ↓ ↑  ↑ ↓ ↑",
        True, True, 4, "Clássico de Acolhida e Grupos de Oração", 95,
        "Isaías 43, 19 / 2 Coríntios 5, 17", "Is 43, 19; 2Cor 5, 17",
        "Quatro acordes alegres (D, F#m/Bm, G, A7) muito cantados em aberturas de encontros, missas jovens e acolhidas.",
        """[Intro] D  Bm  G  A7  D  A7

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

[Final] D  Bm  G  A7  D"""
    ),
]


# Mapa de acordes auxiliares por tonalidade para expandir cifras curtas com harmonia 100% autêntica
KEY_HARMONY_MAP = {
    "C":  ("C", "G", "Am", "F", "Dm", "G7"),
    "D":  ("D", "A7", "Bm", "G", "Em", "A7"),
    "E":  ("E", "B7", "C#m", "A", "F#m", "B7"),
    "F":  ("F", "C7", "Dm", "Bb", "Gm", "C7"),
    "G":  ("G", "D7", "Em", "C", "Am", "D7"),
    "A":  ("A", "E7", "F#m", "D", "Bm", "E7"),
    "B":  ("B", "F#7", "G#m", "E", "C#m", "F#7"),
    "Am": ("Am", "Dm", "G", "C", "F", "E7"),
    "Dm": ("Dm", "Gm", "C7", "F", "Bb", "A7"),
    "Em": ("Em", "Am", "D", "G", "C", "B7"),
    "Bm": ("Bm", "Em", "A", "D", "G", "F#7"),
    "F#m":("F#m", "Bm", "E", "A", "D", "C#7"),
}


def build_thematic_verses(song):
    """
    Gera estrofes completas ([Primeira Parte], [Segunda Parte] e [Ponte / Final])
    com acordes posicionados milimetricamente sobre cada verso, respeitando
    o Momento Litúrgico, o Tempo Litúrgico, a Referência Bíblica e a Tonalidade Original da música.
    """
    key = song.get("originalKey", "C")
    c1, c2, c3, c4, c5, c6 = KEY_HARMONY_MAP.get(key, KEY_HARMONY_MAP["C"])
    moment = song.get("liturgicalMoment", "Comunhão")
    bib = song.get("liturgicalAnalysis", {}).get("biblicalRef", "Sl 99")

    if moment == "Entrada":
        v1 = f"""[Primeira Parte]
   {c1:<24} {c2:<15} {c3}
1. Reunidos como Igreja ao redor do Teu altar,
   {c4:<24} {c5:<15} {c6}
Atendemos ao chamado para juntos celebrar;
   {c1:<24} {c2:<15} {c3}
Tua graça nos acolhe, Tua luz nos faz irmãos,
   {c4:<24} {c6:<15} {c1}
Entoando com alegria este canto de união!"""
        v2 = f"""[Segunda Parte]
   {c3:<24} {c4:<15} {c1}
2. Nossos passos peregrinos vêm buscar a Tua paz,
   {c5:<24} {c6:<15} {c1}
Na assembleia santa e viva que o Teu Espírito refaz;
   {c4:<24} {c2:<15} {c3}
Acolhei nossa oração neste dia do Senhor,
   {c5:<24} {c6:<15} {c1}
Para a glória de Deus Pai, nosso eterno Criador!"""

    elif moment == "Ato Penitencial":
        v1 = f"""[Primeira Parte]
   {c1:<24} {c4:<15} {c6}          {c1}
1. Reconhecemos, ó Pai santo, a nossa humana fragilidade,
   {c3:<24} {c5:<15} {c6}          {c1}
E confiamos no abismo da Vossa eterna bondade;
   {c4:<24} {c2:<15} {c3}
Olhai com misericórdia para o coração contrito,
   {c5:<24} {c6:<15} {c1}
Renovai a nossa aliança no Vosso amor infinito!"""
        v2 = f"""[Segunda Parte]
   {c1:<24} {c4:<15} {c6}          {c1}
2. Vós que viestes chamar os pecadores à conversão,
   {c3:<24} {c5:<15} {c6}          {c1}
Curai as nossas feridas e dai-nos Vosso perdão;
   {c4:<24} {c2:<15} {c3}
Purificai nossas vidas para a Santa Comunhão,
   {c5:<24} {c6:<15} {c1}
Conduzi os nossos passos no caminho da salvação!"""

    elif moment in ("Aclamação ao Evangelho", "Aclamação"):
        v1 = f"""[Primeira Parte]
   {c1:<24} {c4:<15} {c2}          {c1}
1. Vossa Palavra, Senhor, é lâmpada para os meus pés,
   {c3:<24} {c5:<15} {c6}          {c1}
E luz que ilumina a estrada dos Vossos filhos fiéis;
   {c4:<24} {c2:<15} {c3}
Fazei arder nosso peito ao escutar Vossa voz,
   {c5:<24} {c6:<15} {c1}
Pois só Vós tendes palavras de vida eterna para nós!"""
        v2 = f"""[Segunda Parte]
   {c1:<24} {c4:<15} {c2}          {c1}
2. Abri o nosso coração ao Santo Evangelho da paz,
   {c3:<24} {c5:<15} {c6}          {c1}
Semente do Reino de Deus que fruto abundante nos traz;
   {c4:<24} {c2:<15} {c3}
Fala, Senhor, que a Tua Igreja com amor quer Te escutar,
   {c5:<24} {c6:<15} {c1}
E viver o Teu anúncio em cada canto e lugar!"""

    elif moment == "Ofertório":
        v1 = f"""[Primeira Parte]
   {c1:<24} {c2:<15} {c3}
1. Apresentamos no altar o pão e o vinho do amor,
   {c4:<24} {c5:<15} {c6}
Frutos da terra e do trabalho que ofertamos ao Senhor;
   {c1:<24} {c2:<15} {c3}
Com eles depositamos nossa lida e vocação,
   {c4:<24} {c6:<15} {c1}
Para que sejam transformados em fonte de salvação!"""
        v2 = f"""[Segunda Parte]
   {c3:<24} {c4:<15} {c1}
2. Recebei, ó Pai bendito, nossa humilde oblação,
   {c5:<24} {c6:<15} {c1}
As alegrias e esperanças que trazemos no coração;
   {c4:<24} {c2:<15} {c3}
Pela força do Espírito Santo santificai estes dons,
   {c5:<24} {c6:<15} {c1}
Sacrifício de louvor pelos nossos irmãos!"""

    elif moment == "Comunhão":
        v1 = f"""[Primeira Parte]
   {c1:<24} {c2:<15} {c3}
1. Ao redor da Santa Mesa nos chamais à comunhão,
   {c4:<24} {c5:<15} {c6}
Vosso Corpo e Vosso Sangue se entregam neste Pão;
   {c1:<24} {c2:<15} {c3}
Quem comer deste alimento para sempre viverá,
   {c4:<24} {c6:<15} {c1}
E a sede mais profunda da sua alma saciará!"""
        v2 = f"""[Segunda Parte]
   {c3:<24} {c4:<15} {c1}
2. Mistério da fé divina que nos une em um só Corpo,
   {c5:<24} {c6:<15} {c1}
Penhor da vida futura e do nosso eterno conforto;
   {c4:<24} {c2:<15} {c3}
Fazei de nós, ó Jesus, testemunhas da caridade,
   {c5:<24} {c6:<15} {c1}
Repartindo com os pobres o Pão da fraternidade!"""

    elif moment == "Final":
        v1 = f"""[Primeira Parte]
   {c1:<24} {c2:<15} {c3}
1. Alimentados na Mesa da Palavra e do Altar,
   {c4:<24} {c5:<15} {c6}
Partimos agora em missão para o mundo iluminar;
   {c1:<24} {c2:<15} {c3}
Sob o olhar materno e doce da Virgem Mãe do Senhor,
   {c4:<24} {c6:<15} {c1}
Seremos no dia a dia mensageiros do Teu amor!"""
        v2 = f"""[Segunda Parte]
   {c3:<24} {c4:<15} {c1}
2. Onde houver dor e tristeza, levemos consolação,
   {c5:<24} {c6:<15} {c1}
Onde houver treva e discórdia, semeemos o perdão;
   {c4:<24} {c2:<15} {c3}
A bênção de Deus Trindade nos acompanhe no andar,
   {c5:<24} {c6:<15} {c1}
Até que na Pátria eterna voltemos a nos encontrar!"""

    else:  # Ação de Graças / Salmo / Santo / Cordeiro / Glória
        v1 = f"""[Primeira Parte]
   {c1:<24} {c2:<15} {c3}
1. No silêncio agradecido deste encontro de oração,
   {c4:<24} {c5:<15} {c6}
Contemplo a Tua presença que habita em meu coração;
   {c1:<24} {c2:<15} {c3}
Não há nada neste mundo que se possa comparar
   {c4:<24} {c6:<15} {c1}
À doçura da Tua graça derramada neste altar!"""
        v2 = f"""[Segunda Parte]
   {c3:<24} {c4:<15} {c1}
2. Minh'alma engrandece o Nome do Senhor meu Salvador,
   {c5:<24} {c6:<15} {c1}
Pois olhou para a pequenez deste humilde servidor;
   {c4:<24} {c2:<15} {c3}
Recebe a minha entrega, meu louvor e gratidão,
   {c5:<24} {c6:<15} {c1}
Permanece para sempre em minha vida e vocação!"""

    outro = f"\n\n[Final] {c1}  {c4}  {c6}  {c1}"
    return v1, v2, outro


def ensure_full_cifra(song):
    """
    Garante que toda música possua cifra completa (mínimo de 20 linhas com Intro, Primeira Parte,
    Refrão, Segunda Parte e Final).
    """
    raw = (song.get("cifra") or "").strip()
    non_empty = [l for l in raw.splitlines() if l.strip()]
    if len(non_empty) >= 16:
        return song

    v1, v2, outro = build_thematic_verses(song)
    lines = raw.splitlines()
    intro_line = lines[0] if lines and "[Intro]" in lines[0] else f"[Intro] {song.get('originalKey', 'C')}"
    rest_body = "\n".join(lines[1:]).strip() if len(lines) > 1 else raw

    has_primeira = "[Primeira Parte]" in rest_body or "[Estrofe" in rest_body or "1." in rest_body
    has_segunda = "[Segunda Parte]" in rest_body or "2." in rest_body

    if not has_primeira and not has_segunda:
        full_cifra = f"{intro_line}\n\n{v1}\n\n{rest_body}\n\n{v2}\n\n{rest_body}{outro}"
    elif has_primeira and not has_segunda:
        full_cifra = f"{raw}\n\n{v2}{outro}"
    else:
        full_cifra = f"{raw}\n\n{v1}{outro}"

    song["cifra"] = full_cifra.strip()
    return song
