# -*- coding: utf-8 -*-
"""
Gerador de Capas de Álbuns e Artistas para o Santa Cifra:
Gera capas em 300x300 px com design litúrgico profissional para todos os artistas
do acervo que ainda não possuem fotografia oficial do Wikimedia Commons.
"""

import os
from PIL import Image, ImageDraw, ImageFont

ASSETS_DIR = r"C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\assets\artists"
os.makedirs(ASSETS_DIR, exist_ok=True)

FONT_SERIF = r"C:\Windows\Fonts\georgia.ttf"
FONT_SANS = r"C:\Windows\Fonts\segoeui.ttf"

THEMES = {
    # charism: (bg_top, bg_bottom, border_gold, glyph, category_label)
    "liturgica": ((45, 10, 12), (90, 15, 20), (226, 181, 90), "✠", "LITURGIA DA IGREJA"),
    "marian":    ((10, 25, 47), (24, 49, 83), (240, 205, 120), "✦", "CANTO MARIANO"),
    "louvor":    ((55, 8, 25), (105, 18, 48), (235, 195, 105), "❖", "ADORAÇÃO & LOUVOR"),
    "jovem":     ((35, 12, 60), (75, 22, 110), (240, 210, 130), "♪", "MÚSICA CATÓLICA"),
    "pastoral":  ((50, 25, 10), (95, 45, 15), (230, 190, 95), "✤", "CANTO PASTORAL"),
    "monastica": ((25, 20, 18), (55, 42, 35), (215, 175, 90), "✟", "CONTEMPLAÇÃO & TAIZÉ")
}

ARTISTS_CONFIG = [
    # (slug, display_name, initials, theme)
    ("thiago-brado", "Thiago Brado", "TB", "jovem"),
    ("banda-dom", "Banda Dom", "DOM", "jovem"),
    ("colo-de-deus", "Colo de Deus", "CD", "jovem"),
    ("celina-borges", "Celina Borges", "CB", "louvor"),
    ("irma-kelly-patricia", "Ir. Kelly Patrícia", "KP", "marian"),
    ("walmir-alencar", "Walmir Alencar", "WA", "louvor"),
    ("vida-reluz", "Vida Reluz", "VR", "louvor"),
    ("adoracao-e-vida", "Adoração e Vida", "AV", "louvor"),
    ("anjos-de-resgate", "Anjos de Resgate", "AR", "jovem"),
    ("ze-vicente", "Zé Vicente", "ZV", "pastoral"),
    ("ziza-fernandes", "Ziza Fernandes", "ZF", "marian"),
    ("banda-dominus", "Banda Dominus", "BD", "jovem"),
    ("padre-joaozinho", "Padre Joãozinho", "PJ", "pastoral"),
    ("diego-fernandes", "Diego Fernandes", "DF", "jovem"),
    ("davidson-silva", "Davidson Silva", "DS", "louvor"),
    ("eliana-ribeiro", "Eliana Ribeiro", "ER", "louvor"),
    ("eugenio-jorge", "Eugênio Jorge", "EJ", "louvor"),
    ("nelsinho-correa", "Nelsinho Corrêa", "NC", "pastoral"),
    ("catequese-catolica", "Catequese Católica", "CAT", "liturgica"),
    ("campanha-da-fraternidade", "Campanha da Fraternidade", "CF", "liturgica"),
    ("fraternidade-toca-de-assis", "Toca de Assis", "TA", "monastica"),
    ("fraternidade-sjpii", "Frat. São João Paulo II", "JPII", "monastica"),
    ("missal-romano", "Missal Romano", "MR", "liturgica"),
    ("lecionario-dominical", "Lecionário Dominical", "LD", "liturgica"),
    ("padre-jose-weber", "Pe. José Weber", "JW", "liturgica"),
    ("comunidade-taize", "Comunidade de Taizé", "TZ", "monastica"),
    ("padre-reginaldo-veloso", "Pe. Reginaldo Veloso", "RV", "liturgica"),
    ("suely-facanha", "Suely Façanha", "SF", "louvor"),
    ("padre-zeca", "Padre Zeca", "PZ", "jovem"),
    ("padre-alessandro-campos", "Pe. Alessandro Campos", "AC", "pastoral"),
    ("martin-valverde", "Martín Valverde", "MV", "louvor"),
    ("eros-biondini", "Eros Biondini", "EB", "jovem"),
    ("comunidade-recado", "Comunidade Recado", "REC", "louvor"),
    ("alianca-de-misericordia", "Aliança de Misericórdia", "AM", "monastica"),
    ("irma-ana-paula", "Irmã Ana Paula", "AP", "marian"),
    ("frei-fabreti", "Frei Fabreti", "FF", "liturgica"),
    ("frei-luiz-turra", "Frei Luiz Turra", "FLT", "liturgica"),
    ("waldeci-farias", "Waldeci Farias", "WF", "pastoral"),
    ("sao-tomas-de-aquino", "São Tomás de Aquino", "STA", "liturgica"),
    ("default-cover", "Santa Cifra", "SC", "liturgica"),
]

def create_gradient_cover(slug, display_name, initials, theme_key):
    dest_path = os.path.join(ASSETS_DIR, f"{slug}.jpg")
    # Se já existir uma foto do Wikimedia Commons baixada, não sobrescrever
    if os.path.exists(dest_path) and os.path.getsize(dest_path) > 10000 and slug in (
        "padre-zezinho", "padre-marcelo-rossi", "monsenhor-jonas-abib", "frei-gilson",
        "padre-fabio-de-melo", "rosa-de-saron", "adriana-arydes", "dunga",
        "padre-reginaldo-manzotti", "tony-allysson", "comunidade-shalom", "cancao-nova",
        "hinario-liturgico-cnbb", "padre-antonio-maria", "irma-miria-kolling"
    ):
        print(f"Skipping {slug} (already has Wikimedia photo)")
        return

    theme = THEMES.get(theme_key, THEMES["liturgica"])
    c_top, c_bot, c_gold, glyph, cat_label = theme

    w, h = 300, 300
    img = Image.new("RGB", (w, h), color=c_top)
    draw = ImageDraw.Draw(img)

    # 1. Gradient background vertical
    for y in range(h):
        factor = y / float(h)
        r = int(c_top[0] + (c_bot[0] - c_top[0]) * factor)
        g = int(c_top[1] + (c_bot[1] - c_top[1]) * factor)
        b = int(c_top[2] + (c_bot[2] - c_top[2]) * factor)
        draw.line([(0, y), (w, y)], fill=(r, g, b))

    # 2. Subtle vinyl/album circular groove texture in background
    for radius in [130, 115, 100, 85]:
        draw.ellipse([150 - radius, 150 - radius, 150 + radius, 150 + radius], outline=(255, 255, 255, 15), width=1)

    # 3. Elegant Ornate Gold Frames
    # Outer frame
    draw.rectangle([14, 14, 286, 286], outline=c_gold, width=2)
    # Inner thin frame
    draw.rectangle([18, 18, 282, 282], outline=c_gold, width=1)
    # Corner diamonds
    for cx, cy in [(14, 14), (286, 14), (14, 286), (286, 286)]:
        draw.polygon([(cx, cy - 4), (cx + 4, cy), (cx, cy + 4), (cx - 4, cy)], fill=c_gold)

    # 4. Header: SANTA CIFRA branding with mini cross
    try:
        font_brand = ImageFont.truetype(FONT_SANS, 11)
        font_initials = ImageFont.truetype(FONT_SERIF, 64)
        font_glyph = ImageFont.truetype(FONT_SERIF, 22)
        font_title = ImageFont.truetype(FONT_SERIF, 20 if len(display_name) <= 15 else 16)
        font_cat = ImageFont.truetype(FONT_SANS, 10)
    except Exception:
        font_brand = font_initials = font_glyph = font_title = font_cat = None

    brand_text = "SANTA CIFRA"
    if font_brand:
        bb = draw.textbbox((0, 0), brand_text, font=font_brand)
        bw = bb[2] - bb[0]
        draw.text(((w - bw) / 2, 26), brand_text, fill=c_gold, font=font_brand)

    # Center circle for initials / monogram
    draw.ellipse([85, 65, 215, 195], outline=c_gold, width=2)
    draw.ellipse([91, 71, 209, 189], outline=c_gold, width=1)

    # Monogram Initials
    if font_initials:
        ib = draw.textbbox((0, 0), initials, font=font_initials)
        iw = ib[2] - ib[0]
        ih = ib[3] - ib[1]
        draw.text(((w - iw) / 2, 70 + (120 - ih) / 2), initials, fill=c_gold, font=font_initials)

    # Golden glyph below circle
    if font_glyph:
        gb = draw.textbbox((0, 0), glyph, font=font_glyph)
        gw = gb[2] - gb[0]
        draw.text(((w - gw) / 2, 200), glyph, fill=c_gold, font=font_glyph)

    # Artist Title (with soft shadow for readability)
    if font_title:
        tb = draw.textbbox((0, 0), display_name, font=font_title)
        tw = tb[2] - tb[0]
        # Shadow
        draw.text(((w - tw) / 2 + 1, 228 + 1), display_name, fill=(0, 0, 0), font=font_title)
        # Main text
        draw.text(((w - tw) / 2, 228), display_name, fill=(255, 255, 255), font=font_title)

    # Category Subtitle
    if font_cat:
        cb = draw.textbbox((0, 0), cat_label, font=font_cat)
        cw = cb[2] - cb[0]
        draw.text(((w - cw) / 2, 258), cat_label, fill=c_gold, font=font_cat)

    img.save(dest_path, "JPEG", quality=88, optimize=True)
    print(f"Generated album cover: {slug} ({os.path.getsize(dest_path)} bytes)")

def main():
    for item in ARTISTS_CONFIG:
        create_gradient_cover(*item)
    print(f"DONE! Total files in {ASSETS_DIR}: {len(os.listdir(ASSETS_DIR))}")

if __name__ == "__main__":
    main()
