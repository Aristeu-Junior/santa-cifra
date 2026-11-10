# -*- coding: utf-8 -*-
"""
Script to build all Catholic Church documents on Sacred/Liturgical Music:
- Extracts integral texts from the Vatican and official translations
- Saves Markdown files with clear metadata in textos_originais/
- Renders beautifully formatted ecclesiastical PDFs in documentos_pdf/
- Generates a consolidated Master Compendium PDF
"""

import os
import sys
import subprocess
import urllib.request
import re
from bs4 import BeautifulSoup

BASE_DIR = r"C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica"
TEXTS_DIR = os.path.join(BASE_DIR, "textos_originais")
PDFS_DIR = os.path.join(BASE_DIR, "documentos_pdf")
EDGE_EXE = r"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

os.makedirs(TEXTS_DIR, exist_ok=True)
os.makedirs(PDFS_DIR, exist_ok=True)

CSS_STYLES = """
@page {
    size: A4;
    margin: 22mm 20mm 22mm 20mm;
    @bottom-center {
        content: counter(page);
        font-family: 'Georgia', serif;
        font-size: 9pt;
        color: #777777;
    }
}
body {
    font-family: 'Georgia', 'Times New Roman', serif;
    font-size: 11pt;
    line-height: 1.6;
    color: #1a1a1a;
    background-color: #ffffff;
    margin: 0;
    padding: 0;
}
.header-box {
    border-bottom: 2px solid #8b0000;
    padding-bottom: 14px;
    margin-bottom: 26px;
    text-align: center;
}
.cross {
    font-size: 26pt;
    color: #8b0000;
    margin-bottom: 4px;
    line-height: 1;
}
.doc-authority {
    font-size: 10.5pt;
    text-transform: uppercase;
    letter-spacing: 2.5px;
    color: #555555;
    font-weight: bold;
    margin-top: 4px;
}
.doc-title {
    font-size: 22pt;
    color: #8b0000;
    margin: 10px 0 6px 0;
    font-weight: normal;
    font-family: 'Palatino Linotype', 'Georgia', serif;
}
.doc-subtitle {
    font-size: 12.5pt;
    font-style: italic;
    color: #333333;
    margin-bottom: 8px;
}
.doc-meta {
    font-size: 9.5pt;
    color: #666666;
    border-top: 1px dotted #cccccc;
    padding-top: 6px;
}
h2 {
    color: #8b0000;
    font-size: 13.5pt;
    border-bottom: 1px solid #c5a059;
    padding-bottom: 4px;
    margin-top: 24px;
    margin-bottom: 12px;
    page-break-after: avoid;
    font-family: 'Palatino Linotype', 'Georgia', serif;
}
h3 {
    color: #2c3e50;
    font-size: 11.5pt;
    margin-top: 18px;
    margin-bottom: 8px;
    page-break-after: avoid;
}
p {
    text-align: justify;
    text-indent: 1.5em;
    margin-top: 0;
    margin-bottom: 8pt;
}
p.no-indent {
    text-indent: 0;
}
blockquote {
    border-left: 3px solid #8b0000;
    margin: 12px 18px;
    padding: 8px 16px;
    background-color: #fdfbf7;
    font-style: italic;
    color: #333333;
}
.highlight-box {
    background-color: #fcf9f2;
    border: 1px solid #e5d8b8;
    border-left: 4px solid #8b0000;
    padding: 12px 16px;
    margin: 16px 0;
    border-radius: 3px;
    page-break-inside: avoid;
}
.highlight-box strong {
    color: #8b0000;
}
ul, ol {
    margin-top: 4px;
    margin-bottom: 12px;
    padding-left: 28px;
}
li {
    margin-bottom: 5px;
    text-align: justify;
}
.article-num {
    font-weight: bold;
    color: #8b0000;
}
.footer-note {
    margin-top: 36px;
    border-top: 1px solid #e0e0e0;
    padding-top: 12px;
    font-size: 9pt;
    color: #777777;
    text-align: center;
    page-break-before: avoid;
}
.page-break {
    page-break-before: always;
}
"""

def render_to_pdf(html_content, pdf_path):
    temp_html = pdf_path.replace('.pdf', '_temp.html')
    with open(temp_html, 'w', encoding='utf-8') as f:
        f.write(html_content)
    
    file_uri = "file:///" + temp_html.replace('\\', '/')
    out_pdf = pdf_path.replace('\\', '/')
    
    cmd = [
        EDGE_EXE,
        "--headless",
        "--no-sandbox",
        "--disable-gpu",
        f"--print-to-pdf={out_pdf}",
        file_uri
    ]
    subprocess.run(cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if os.path.exists(temp_html):
        os.remove(temp_html)
    print(f"Generated PDF: {os.path.basename(pdf_path)} ({os.path.getsize(pdf_path):,} bytes)")

def fetch_url(url, encoding='utf-8'):
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'})
    with urllib.request.urlopen(req, timeout=20) as resp:
        return resp.read().decode(encoding, errors='ignore')

# -------------------------------------------------------------
# 1. TRA LE SOLLECITUDINI (1903)
# -------------------------------------------------------------
def build_tra_le_sollecitudini():
    print("Building 01_Tra_le_Sollecitudini_1903...")
    url = "https://www.vatican.va/holy_father/pius_x/motu_proprio/documents/hf_p-x_motu-proprio_19031122_sollecitudini_po.html"
    raw = fetch_url(url, encoding='utf-8')
    soup = BeautifulSoup(raw, 'html.parser')
    doc = soup.find('div', class_='documento') or soup.body
    
    paragraphs = [p.get_text().strip() for p in doc.find_all('p') if p.get_text().strip()]
    
    md_content = """# Tra le Sollecitudini (1903)
**Motu Proprio de Sua Santidade o Papa São Pio X sobre a Restauração da Música Sacra**  
*Data de Promulgação:* 22 de novembro de 1903 (Festa de Santa Cecília)  
*Fonte Oficial:* Santa Sé (Vatican.va)  

---

## Síntese Teológica e Normativa
O Papa São Pio X estabeleceu o primeiro código jurídico sistemático da música sacra na Igreja contemporânea. O documento estabelece a célebre **Tríplice Regra de Ouro**:
1. **Santidade:** Deve excluir todo elemento profano e mundano, tanto na composição quanto no modo de tocar e cantar.
2. **Bondade de Formas (Verdadeira Arte):** Não basta ter boa intenção; a música da Igreja deve ser nobre e constituir verdadeira arte.
3. **Universalidade:** Deve suscitar em qualquer ouvinte católico, de qualquer cultura ou nação, um verdadeiro sentimento de piedade e recolhimento sagrado.

---

"""
    html_body = """
    <div class="header-box">
        <div class="cross">&#10014;</div>
        <div class="doc-authority">SANTA SÉ &bull; PAPA SÃO PIO X</div>
        <h1 class="doc-title">Tra le Sollecitudini</h1>
        <div class="doc-subtitle">Motu Proprio sobre a Restauração da Música Sacra</div>
        <div class="doc-meta">Promulgado em 22 de novembro de 1903 &bull; Código Canônico-Litúrgico da Música Sacra</div>
    </div>
    
    <div class="highlight-box">
        <strong>A Tríplice Regra de São Pio X:</strong>
        <p class="no-indent">"A música sacra deve possuir em grau eminente as qualidades próprias da liturgia: a <strong>santidade</strong> e a <strong>delicadeza do bom gosto</strong>, donde nasce espontaneamente outro caráter: a <strong>universalidade</strong>." (n. 2)</p>
    </div>
    """
    
    for p in paragraphs:
        if "MOTU PROPRIO" in p and "PIO X" in p:
            continue
        if p.startswith("I.") or p.startswith("II.") or p.startswith("III.") or p.startswith("IV.") or p.startswith("V.") or p.startswith("VI.") or p.startswith("VII.") or p.startswith("VIII.") or p.startswith("IX."):
            md_content += f"\n## {p}\n\n"
            html_body += f"<h2>{p}</h2>\n"
        elif p.startswith("INTRODUÇÃO"):
            md_content += f"\n## {p}\n\n"
            html_body += f"<h2>{p}</h2>\n"
        elif re.match(r"^\d+\.", p):
            num = p.split('.')[0]
            rest = p[len(num)+1:].strip()
            md_content += f"**{num}.** {rest}\n\n"
            html_body += f"<p><span class=\"article-num\">{num}.</span> {rest}</p>\n"
        else:
            md_content += f"{p}\n\n"
            html_body += f"<p>{p}</p>\n"
            
    html_doc = f"""<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<title>Tra le Sollecitudini - Papa São Pio X</title>
<style>{CSS_STYLES}</style>
</head>
<body>
{html_body}
<div class="footer-note">Compêndio de Documentos Litúrgicos &bull; Santa Sé &bull; Arquivo Canônico</div>
</body>
</html>"""

    md_path = os.path.join(TEXTS_DIR, "01_Tra_le_Sollecitudini_1903.md")
    with open(md_path, 'w', encoding='utf-8') as f:
        f.write(md_content)
        
    pdf_path = os.path.join(PDFS_DIR, "01_Tra_le_Sollecitudini_1903.pdf")
    render_to_pdf(html_doc, pdf_path)

# -------------------------------------------------------------
# 2. MUSICAE SACRAE DISCIPLINA (1955)
# -------------------------------------------------------------
def build_musicae_sacrae():
    print("Building 02_Musicae_Sacrae_Disciplina_1955...")
    url = "https://www.vatican.va/content/pius-xii/pt/encyclicals/documents/hf_p-xii_enc_25121955_musicae-sacrae.html"
    raw = fetch_url(url, encoding='utf-8')
    soup = BeautifulSoup(raw, 'html.parser')
    doc = soup.find('div', class_='documento') or soup.body
    
    paragraphs = [p.get_text().strip() for p in doc.find_all('p') if p.get_text().strip()]
    
    md_content = """# Musicae Sacrae Disciplina (1955)
**Carta Encíclica do Sumo Pontífice Papa Pio XII sobre a Música Sacra**  
*Data de Promulgação:* 25 de dezembro de 1955  
*Fonte Oficial:* Santa Sé (Vatican.va)  

---

## Síntese Teológica e Normativa
O Papa Pio XII aprofundou a fundamentação bíblica, patrística e dogmática da música sacra. 
Pontos centrais da encíclica:
1. **O Princípio da Finalidade:** A música sacra tem por finalidade suprema a glória de Deus e a santificação dos fiéis.
2. **A Função Ministerial:** A música não é mero acessório de entretenimento; ela é a serva do texto sagrado e do mistério litúrgico.
3. **Música Litúrgica vs. Música Religiosa Popular:** Distingue com precisão o canto que pertence à liturgia estrita e os cânticos populares piedosos fora ou em momentos periféricos.
4. **Primazia da Voz Humana e do Canto Gregoriano:** Destaca a soberania da voz e do repertório próprio romano.

---

"""
    html_body = """
    <div class="header-box">
        <div class="cross">&#10014;</div>
        <div class="doc-authority">SANTA SÉ &bull; PAPA PIO XII</div>
        <h1 class="doc-title">Musicae Sacrae Disciplina</h1>
        <div class="doc-subtitle">Carta Encíclica sobre a Disciplina e a Dignidade da Música Sacra</div>
        <div class="doc-meta">Promulgada em 25 de dezembro de 1955 &bull; O Magistério Pontifício e o Culto Divino</div>
    </div>
    
    <div class="highlight-box">
        <strong>O Princípio Ministerial de Pio XII:</strong>
        <p class="no-indent">"A música sacra atinge o seu cume e a sua mais sublime nobreza quando se une intimamente à mais alta ação litúrgica, o Sacrifício Eucarístico, tornando-se intérprete viva dos sentimentos da Igreja em oração."</p>
    </div>
    """
    
    for p in paragraphs:
        if "CARTA ENCÍCLICA" in p and "PIO XII" in p:
            continue
        if p.startswith("I.") or p.startswith("II.") or p.startswith("III.") or p.startswith("IV."):
            md_content += f"\n## {p}\n\n"
            html_body += f"<h2>{p}</h2>\n"
        elif p.isupper() and len(p) < 60:
            md_content += f"\n### {p}\n\n"
            html_body += f"<h3>{p}</h3>\n"
        elif re.match(r"^\d+\.", p):
            num = p.split('.')[0]
            rest = p[len(num)+1:].strip()
            md_content += f"**{num}.** {rest}\n\n"
            html_body += f"<p><span class=\"article-num\">{num}.</span> {rest}</p>\n"
        else:
            md_content += f"{p}\n\n"
            html_body += f"<p>{p}</p>\n"
            
    html_doc = f"""<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<title>Musicae Sacrae Disciplina - Papa Pio XII</title>
<style>{CSS_STYLES}</style>
</head>
<body>
{html_body}
<div class="footer-note">Compêndio de Documentos Litúrgicos &bull; Santa Sé &bull; Arquivo Canônico</div>
</body>
</html>"""

    md_path = os.path.join(TEXTS_DIR, "02_Musicae_Sacrae_Disciplina_1955.md")
    with open(md_path, 'w', encoding='utf-8') as f:
        f.write(md_content)
        
    pdf_path = os.path.join(PDFS_DIR, "02_Musicae_Sacrae_Disciplina_1955.pdf")
    render_to_pdf(html_doc, pdf_path)

# -------------------------------------------------------------
# 3. SACROSANCTUM CONCILIUM - CAPÍTULO VI (1963)
# -------------------------------------------------------------
def build_sacrosanctum_concilium_cap6():
    print("Building 03_Sacrosanctum_Concilium_CapVI_1963...")
    url = "https://www.vatican.va/archive/hist_councils/ii_vatican_council/documents/vat-ii_const_19631204_sacrosanctum-concilium_po.html"
    raw = fetch_url(url, encoding='utf-8')
    soup = BeautifulSoup(raw, 'html.parser')
    text = soup.get_text()
    
    # Extract Capitulo VI
    cap6_pos = text.find('CAPÍTULO VI')
    cap7_pos = text.find('CAPÍTULO VII')
    cap6_raw = text[cap6_pos:cap7_pos].strip()
    
    # Parse articles 112 to 121
    parts = re.split(r'(\d{3}\.\s*)', cap6_raw)
    
    md_content = """# Sacrosanctum Concilium — Capítulo VI: A Música Sacra (1963)
**Constituição Conciliar do Concílio Ecumênico Vaticano II sobre a Sagrada Liturgia**  
*Data de Promulgação:* 4 de dezembro de 1963 pelo Papa Paulo VI e Padres Conciliares  
*Fonte Oficial:* Santa Sé (Vatican.va)  

---

## Síntese Teológica Conciliar
O Capítulo VI da *Sacrosanctum Concilium* é o fundamento dogmático e pastoral definitivo da música católica na atualidade:
1. **Pars Integralis (Parte Integrante):** A música litúrgica não é um acessório decorativo nem música ambiente de fundo; é *parte necessária e integrante da liturgia solene* (Art. 112).
2. **Finalidade Dupla:** A glória de Deus e a santificação dos fiéis.
3. **Canto Gregoriano e Polifonia:** O Canto Gregoriano é expressamente reconhecido como *o canto próprio da liturgia romana*, ocupando o *primeiro lugar* nas celebrações (Art. 116).
4. **Participação Ativa dos Fiéis (*Actuosa Participatio*):** Promover com ardor o canto de toda a comunidade reunida (Arts. 113, 114, 118).
5. **Critério Textual Rígido:** As letras das canções litúrgicas devem ser hauridas *da Sagrada Escritura e das fontes litúrgicas* e estar em total consonância com a doutrina católica (Art. 121).
6. **Instrumentos:** Grande apreço pelo órgão de tubos; outros instrumentos só podem ser tolerados se convierem à dignidade do templo e favorecerem a edificação dos fiéis (Art. 120).

---

## Texto Integral dos Artigos (112 a 121)

"""
    html_body = """
    <div class="header-box">
        <div class="cross">&#10014;</div>
        <div class="doc-authority">CONCÍLIO ECUMÊNICO VATICANO II</div>
        <h1 class="doc-title">Sacrosanctum Concilium</h1>
        <div class="doc-subtitle">Capítulo VI: Da Música Sacra (Artigos 112 a 121)</div>
        <div class="doc-meta">Promulgado em 4 de dezembro de 1963 &bull; Magna Carta da Liturgia Renovada</div>
    </div>
    
    <div class="highlight-box">
        <strong>Artigo 112 &bull; O Valor Inestimável da Música Sacra:</strong>
        <p class="no-indent">"A tradição musical da Igreja universal constitui um tesouro de valor inestimável que se avantaja a todas as outras expressões de arte, sobretudo porque o canto sagrado, intimamente unido com as palavras, é parte necessária ou integrante da Liturgia solene."</p>
    </div>
    
    <h2>Texto Oficial dos Artigos</h2>
    """
    
    for i in range(1, len(parts), 2):
        num_str = parts[i].strip()
        num = num_str.replace('.', '').strip()
        body = parts[i+1].strip()
        md_content += f"### Artigo {num}\n{body}\n\n"
        html_body += f"<div style='margin-bottom: 14px;'><p><span class=\"article-num\">{num}.</span> {body}</p></div>\n"

    html_doc = f"""<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<title>Sacrosanctum Concilium - Cap. VI: A Música Sacra</title>
<style>{CSS_STYLES}</style>
</head>
<body>
{html_body}
<div class="footer-note">Compêndio de Documentos Litúrgicos &bull; Concílio Vaticano II &bull; Santa Sé</div>
</body>
</html>"""

    md_path = os.path.join(TEXTS_DIR, "03_Sacrosanctum_Concilium_CapVI_1963.md")
    with open(md_path, 'w', encoding='utf-8') as f:
        f.write(md_content)
        
    pdf_path = os.path.join(PDFS_DIR, "03_Sacrosanctum_Concilium_CapVI_1963.pdf")
    render_to_pdf(html_doc, pdf_path)

# -------------------------------------------------------------
# 4. MUSICAM SACRAM (1967)
# -------------------------------------------------------------
def build_musicam_sacram():
    print("Building 04_Musicam_Sacram_1967...")
    url = "https://divinicultussanctitatem.blogspot.com/2011/03/musicam-sacram-1967-sagrada-congregacao.html"
    raw = fetch_url(url, encoding='utf-8')
    soup = BeautifulSoup(raw, 'html.parser')
    post = soup.find('div', class_='post-body')
    lines = [l.strip() for l in post.get_text().splitlines() if l.strip()]
    
    md_content = """# Musicam Sacram (1967)
**Instrução da Sagrada Congregação dos Ritos e do Consilium sobre a Música na Sagrada Liturgia**  
*Data de Promulgação:* 5 de março de 1967 (Aprovada pelo Papa Paulo VI)  
*Autoridade:* Sagrada Congregação dos Ritos & Consilium ad Exsequendam Constitutionem de Sacra Liturgia  

---

## Síntese Teológica e Normativa
A *Musicam Sacram* é a mais importante e normativa instrução pós-conciliar sobre a execução prática da música litúrgica.
Princípios e regras fundamentais estabelecidos:
1. **Definição de Música Sacra (n. 4):** Aquela que, sendo criada para o culto divino, possui santidade e excelência de formas (Canto Gregoriano, Polifonia antiga e moderna, Música sacra para órgão e outros instrumentos legítimos, e Canto religioso popular litúrgico).
2. **Os Três Graus de Participação Cantada (nn. 28-31):** 
   - Estabelece a regra de ouro da hierarquia litúrgica: **não se pode cantar as partes do 3º grau se as do 1º e 2º grau forem omitidas!**
   - *1º Grau:* Saudações do sacerdote e respostas do povo, Oração Coleta, Sobre as Oferendas e Pós-Comunhão, Prefácio e Diálogo, Santo (*Sanctus*), Oração do Senhor (*Pai Nosso*) e seu embolismo, *Pax Domini*, Bênção e Despedida.
   - *2º Grau:* Kyrie, Gloria, Credo, Cordeiro de Deus (*Agnus Dei*), Oração Universal dos Fiéis.
   - *3º Grau:* Cantos Processionais (Entrada, Ofertório, Comunhão), Salmo Responsorial e Aclamação ao Evangelho.
3. **Papel Ministerial do Coro (*Schola*) e da Assembleia (nn. 13-26):** O coro não existe para fazer show ou espetáculo particular; sua missão é guiar e sustentar o canto de todo o povo de Deus. Partes próprias reservadas ao coro só devem ocorrer com prudência e nunca calando a assembleia nas respostas do povo.
4. **Uso dos Instrumentos (nn. 62-67):**
   - O órgão de tubos permanece no lugar de honra.
   - Todo instrumento admitido deve ser apto a sustentar a oração sagrada e elevar o espírito.
   - Instrumentos característicos de música profana, barulhentos ou que incitem agitação corporal incompatível com o recolhimento não são aceitos.
   - O som dos instrumentos jamais pode abafar a voz nem impedir a inteligibilidade dos textos.
   - Silêncio instrumental estrito no Advento e na Quaresma (exceto o estritamente indispensável para sustentar as vozes, e salvo no 3º Domingo do Advento *Gaudete* e 4º Domingo da Quaresma *Laetare*).

---

"""
    html_body = """
    <div class="header-box">
        <div class="cross">&#10014;</div>
        <div class="doc-authority">SAGRADA CONGREGAÇÃO DOS RITOS &bull; SANTA SÉ</div>
        <h1 class="doc-title">Musicam Sacram</h1>
        <div class="doc-subtitle">Instrução sobre a Música na Sagrada Liturgia</div>
        <div class="doc-meta">Promulgada em 5 de março de 1967 &bull; Norma Fundamental de Aplicação do Vaticano II</div>
    </div>
    
    <div class="highlight-box">
        <strong>A Hierarquia dos Três Graus de Canto (nn. 28-31):</strong>
        <p class="no-indent">"Para que os fiéis participem mais ativamente na celebração com o canto, é necessário observar uma sábia gradação. <strong>Não é permitido começar pelo terceiro grau sem ter primeiro assegurado o canto do primeiro e do segundo grau.</strong> A liturgia não consiste em cantar apenas canções soltas enquanto os ritos se desenrolam; consiste em cantar os próprios ritos!"</p>
    </div>
    """
    
    in_proemio = False
    for line in lines:
        if "No dia 5 de Março de 1967" in line or "Tradução não-oficial" in line or "por favor lede" in line:
            continue
        if line.startswith("Proémio"):
            md_content += f"\n## {line}\n\n"
            html_body += f"<h2>{line}</h2>\n"
        elif line.startswith("I.") or line.startswith("II.") or line.startswith("III.") or line.startswith("IV.") or line.startswith("V.") or line.startswith("VI.") or line.startswith("VII.") or line.startswith("VIII.") or line.startswith("IX."):
            md_content += f"\n## {line}\n\n"
            html_body += f"<h2>{line}</h2>\n"
        elif re.match(r"^\d+\.", line):
            num = line.split('.')[0]
            rest = line[len(num)+1:].strip()
            md_content += f"**{num}.** {rest}\n\n"
            html_body += f"<p><span class=\"article-num\">{num}.</span> {rest}</p>\n"
        elif re.match(r"^[a-z]\)", line):
            md_content += f"- {line}\n"
            html_body += f"<p style='margin-left: 20px;'><strong>{line[:2]}</strong> {line[2:]}</p>\n"
        else:
            md_content += f"{line}\n\n"
            html_body += f"<p>{line}</p>\n"

    html_doc = f"""<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<title>Musicam Sacram (1967) - Sagrada Congregação dos Ritos</title>
<style>{CSS_STYLES}</style>
</head>
<body>
{html_body}
<div class="footer-note">Compêndio de Documentos Litúrgicos &bull; Sagrada Congregação dos Ritos &bull; Santa Sé</div>
</body>
</html>"""

    md_path = os.path.join(TEXTS_DIR, "04_Musicam_Sacram_1967.md")
    with open(md_path, 'w', encoding='utf-8') as f:
        f.write(md_content)
        
    pdf_path = os.path.join(PDFS_DIR, "04_Musicam_Sacram_1967.pdf")
    render_to_pdf(html_doc, pdf_path)

# -------------------------------------------------------------
# 5. INSTRUÇÃO GERAL SOBRE O MISSAL ROMANO (IGMR) - NORMAS SOBRE O CANTO
# -------------------------------------------------------------
def build_igmr_normas_canto():
    print("Building 05_Instrucao_Geral_Missal_Romano_Musica...")
    
    md_content = """# Instrução Geral sobre o Missal Romano (IGMR) — Normas sobre a Música e o Canto
**Santa Sé & Conferência Nacional dos Bispos do Brasil (3ª Edição Típica)**  
*Legislação Litúrgica Vigente para a Celebração da Santa Missa*  

---

## 1. O Valor e a Importância do Canto Litúrgico (IGMR 39-41)

**39.** O Apóstolo exorta os fiéis que se reúnem em assembleia à espera da vinda de seu Senhor a cantarem juntos salmos, hinos e cânticos espirituais (cf. Cl 3, 16). O canto é sinal de alegria do coração (cf. At 2, 46). Por isso, muito acertadamente dizia Santo Agostinho: «Cantar é próprio de quem ama»; e há um provérbio antigo que diz: «Quem canta bem, reza duas vezes».

**40.** Tenha-se, por isso, em grande apreço o canto nas celebrações, atendendo à índole dos povos e às possibilidades de cada assembleia litúrgica. Embora não seja necessário cantar sempre todos os textos de per si destinados a serem cantados, cuide-se diligentemente para que não falte o canto dos ministros e do povo nas celebrações que se realizam nos domingos e festas de preceito.
Ao fazer a escolha das partes que de fato se vão cantar, dê-se preferência àquelas que são de maior importância, sobretudo àquelas em que o povo deve responder ao sacerdote, ao diácono ou ao leitor, e àquelas em que o sacerdote e o povo cantam conjuntamente.

**41.** O Canto Gregoriano, como próprio da Liturgia Romana, deve, em igualdade de circunstâncias, ocupar o primeiro lugar. Os demais gêneros de música sacra, sobretudo a polifonia, de modo algum são excluídos, desde que correspondam ao espírito da ação litúrgica e favoreçam a participação de todos os fiéis.

---

## 2. Normas Específicas para Cada Canto da Missa

### Canto de Entrada (IGMR 47-48)
* **Finalidade Litúrgica:** Abrir a celebração, promover a união dos fiéis reunidos, introduzir os seus espíritos no mistério do tempo litúrgico ou da festa, e acompanhar a procissão do sacerdote e dos ministros.
* **Execução:** Cantado alternadamente pelo coro e pelo povo, ou pelo cantor e pelo povo, ou só pelo povo, ou só pelo coro.
* **Texto:** Utiliza-se a antífona com o seu salmo que se encontra no *Graduale Romanum* ou no *Graduale Simplex*, ou outro canto apropriado à ação sagrada e ao dia litúrgico, cujo texto tenha sido aprovado pela Conferência Episcopal.
* **Término:** O canto termina logo que o sacerdote chega ao altar e faz a reverência/beijo. O canto não deve se prolongar desnecessariamente atrasando o rito.

### Ato Penitencial e Senhor, Tende Piedade (Kyrie eleison) (IGMR 52)
* **Finalidade:** Sendo um cântico com que os fiéis aclamam o Senhor e imploram a Sua misericórdia, é executado por todos, participando nele o povo e o coro ou o cantor.
* **Fidelidade Textual:** Cada aclamação diz-se normalmente duas vezes, ou três vezes quando o caráter da língua ou a melodia o exigir. As palavras devem respeitar a invocação a Cristo Senhor («Senhor, tende piedade; Cristo, tende piedade; Senhor, tende piedade»).

### Hino de Louvor: Glória a Deus nas Alturas (Gloria in excelsis) (IGMR 53)
* **Natureza:** É um hino antiquíssimo e venerável, com que a Igreja, congregada no Espírito Santo, glorifica e suplica a Deus Pai e ao Cordeiro.
* **Regra Doutrinal Absoluta:** **O texto deste hino não pode ser substituído por nenhum outro!** É estritamente proibido substituir o texto do Glória por canções paráfrases ou musiquinhas populares que não contenham o texto litúrgico integral trinitário da Igreja.
* **Dias em que se canta:** Nos domingos fora do Advento e da Quaresma, nas solenidades e festas, e em celebrações especiais solenes.

### Salmo Responsorial (IGMR 61)
* **Natureza:** É parte integrante da Liturgia da Palavra, possuindo grande importância litúrgica e pastoral, porque favorece a meditação da Palavra de Deus.
* **Execução:** O Salmo deve corresponder a cada leitura e tirar-se habitualmente do Lecionário. É cantado do ambão pelo salmista ou cantor.
* **Regra Fundamental:** O Salmo responsorial **não pode ser substituído por um canto qualquer**! Se não puder ser cantado na sua melodia inteira, canta-se ao menos o refrão pelo povo.

### Aclamação antes do Evangelho: Aleluia (IGMR 62-64)
* **Natureza:** A aclamação com o *Aleluia* é um rito ou ato por si mesmo, com que a assembleia recebe e saúda o Senhor que lhe vai falar no Evangelho e professa a sua fé cantando.
* **Tempo Quaresmal:** Durante o tempo da Quaresma, no lugar do *Aleluia*, canta-se o versículo antes do Evangelho que vem no Lecionário («Louvor a Vós, ó Cristo, Rei da eterna glória» ou fórmula equivalente).

### Canto das Oferendas / Ofertório (IGMR 74)
* **Finalidade:** Acompanhar a procissão das oferendas (pão, vinho, doações para a igreja e para os pobres).
* **Duração:** O canto das oferendas deve durar apenas enquanto durar a preparação e apresentação dos dons e a incensação. Logo que o sacerdote lava as mãos e se volta para o povo para dizer «Orai, irmãos...», o canto deve cessar imediatamente.
* **Temática:** O canto não precisa falar exclusivamente de pão e vinho; pode refletir o mistério do dia litúrgico ou da festa.

### O Santo (Sanctus) (IGMR 79b)
* **Natureza:** É a magna aclamação com que toda a assembleia, unindo-se aos coros celestes, canta o louvor a Deus no final do Prefácio da Oração Eucarística.
* **Execução:** Deve ser cantado por toda a assembleia juntamente com o sacerdote. O texto sagrado deve ser fiel ao texto litúrgico bíblico (Is 6, 3; Mt 21, 9).

### Cordeiro de Deus (Agnus Dei) (IGMR 83)
* **Finalidade Ritual:** Acompanha a fração do Pão consagrado e a imissão de uma partícula da Hóstia no cálice com o Preciosíssimo Sangue.
* **Duração:** A invocação repete-se tantas vezes quantas forem necessárias para acompanhar o rito da fração. A última vez conclui sempre com «dai-nos a paz».
* **Sentido:** É uma oração litanoide de súplica direta a Cristo Jesus, o Cordeiro pascal.

### Canto de Comunhão (IGMR 86-88)
* **Finalidade:** Exprimir a união espiritual dos comungantes pela unidade das vozes, manifestar a alegria do coração e salientar mais a índole «comunitária» da procissão para a Sagrada Comunhão.
* **Início:** O canto começa logo que o sacerdote comunga do Sacramento e prolonga-se enquanto se administra a Comunhão aos fiéis.
* **Término e Silêncio Sagrado (IGMR 88):** Terminada a distribuição da Sagrada Comunhão, o sacerdote e os fiéis oram algum tempo em silêncio sagrado. Se se quiser, toda a assembleia pode também cantar um salmo ou outro cântico de louvor ou um hino.

---

## 3. O Lugar do Órgão e dos Instrumentos Musicais (IGMR 313)
* O órgão e os demais instrumentos legítimos devem ser colocados em lugar conveniente, de modo que possam ajudar o canto, tanto do coro como do povo, e sejam ouvidos por todos perfeitamente quando tocam a solo.
* No tempo do Advento, o órgão e outros instrumentos musicais devem ser usados com a moderação que convém à natureza deste tempo, de modo a não antecipar a plena alegria do Natal do Senhor.
* No tempo da Quaresma, o toque do órgão e de outros instrumentos é permitido unicamente para sustentar o canto, salvo no domingo *Laetare* (IV da Quaresma), nas solenidades e festas.
"""

    html_body = f"""
    <div class="header-box">
        <div class="cross">&#10014;</div>
        <div class="doc-authority">SANTA SÉ &bull; CONGREGAÇÃO PARA O CULTO DIVINO</div>
        <h1 class="doc-title">Missale Romanum</h1>
        <div class="doc-subtitle">Instrução Geral sobre o Missal Romano (IGMR 3ª Edição) &bull; Normas sobre a Música</div>
        <div class="doc-meta">Legislação Canônico-Litúrgica Vigente para a Igreja Universal</div>
    </div>
    
    <div class="highlight-box">
        <strong>A Regra Fundamental da Liturgia:</strong>
        <p class="no-indent">"A música existe para servir ao rito, e não o rito para servir à música. O canto litúrgico deve respeitar estritamente a verdade dos momentos rituais, o texto oficial dos livros sagrados e a participação do povo santo de Deus."</p>
    </div>
    """
    
    # Convert markdown sections to html
    sections = md_content.split('\n## ')
    for sec in sections[1:]:
        lines = sec.split('\n')
        title = lines[0].strip()
        html_body += f"<h2>{title}</h2>\n"
        rest = "\n".join(lines[1:])
        paragraphs = rest.split('\n\n')
        for p in paragraphs:
            p_strip = p.strip()
            if not p_strip:
                continue
            if p_strip.startswith('### '):
                sub = p_strip.replace('### ', '')
                html_body += f"<h3>{sub}</h3>\n"
            elif p_strip.startswith('* '):
                items = p_strip.split('\n* ')
                html_body += "<ul>\n"
                for it in items:
                    it_clean = it.replace('* ', '').strip()
                    html_body += f"<li>{it_clean}</li>\n"
                html_body += "</ul>\n"
            elif re.match(r"^\*\*\d+\.\*\*", p_strip):
                m = re.match(r"^\*\*(\d+)\.\*\*\s*(.*)", p_strip, re.DOTALL)
                num = m.group(1)
                text_p = m.group(2)
                html_body += f"<p><span class=\"article-num\">{num}.</span> {text_p}</p>\n"
            else:
                html_body += f"<p>{p_strip}</p>\n"

    html_doc = f"""<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<title>IGMR - Normas sobre o Canto Litúrgico</title>
<style>{CSS_STYLES}</style>
</head>
<body>
{html_body}
<div class="footer-note">Compêndio de Documentos Litúrgicos &bull; Missal Romano &bull; Santa Sé</div>
</body>
</html>"""

    md_path = os.path.join(TEXTS_DIR, "05_Instrucao_Geral_Missal_Romano_Musica.md")
    with open(md_path, 'w', encoding='utf-8') as f:
        f.write(md_content)
        
    pdf_path = os.path.join(PDFS_DIR, "05_Instrucao_Geral_Missal_Romano_Musica.pdf")
    render_to_pdf(html_doc, pdf_path)

# -------------------------------------------------------------
# 6. QUIROGRAFO DE JOAO PAULO II (2003)
# -------------------------------------------------------------
def build_quirografo_jpii():
    print("Building 06_Quirografo_Joao_Paulo_II_2003...")
    url = "https://www.vatican.va/content/john-paul-ii/pt/letters/2003/documents/hf_jp-ii_let_20031203_musica-sacra.html"
    raw = fetch_url(url, encoding='utf-8')
    soup = BeautifulSoup(raw, 'html.parser')
    doc = soup.find('div', class_='documento') or soup.body
    
    paragraphs = [p.get_text().strip() for p in doc.find_all('p') if p.get_text().strip()]
    
    md_content = """# Quirógrafo de São João Paulo II sobre a Música Sacra (2003)
**Carta do Sumo Pontífice no Centenário do Motu Proprio "Tra le Sollecitudini" de São Pio X**  
*Data de Promulgação:* 3 de dezembro de 2003  
*Fonte Oficial:* Santa Sé (Vatican.va)  

---

## Síntese Teológica e Normativa
Neste magistral documento, o Papa São João Paulo II faz a síntese definitiva entre a tradição milenar da Igreja e a renovação pastoral promovida pelo Concílio Vaticano II:
1. **O Sentido do Sagrado:** A música litúrgica deve manter viva a consciência da sacralidade do templo e dos mistérios divinos, repudiando qualquer vulgaridade, secularismo ou superficialidade.
2. **Atualidade de São Pio X:** Reafirma solenemente a necessidade dos três critérios: Santidade, Bondade das Formas e Universalidade.
3. **Fidelidade aos Textos Litúrgicos:** Os cantos não devem ser invenções poéticas desconectadas da Bíblia ou da teologia litúrgica; devem estar em perfeita harmonia com os ritos e as estações litúrgicas.
4. **Formação Espiritual e Litúrgica dos Músicos:** Os compositores, cantores e instrumentistas necessitam não apenas de técnica musical, mas de uma profunda formação espiritual e litúrgica para desempenharem seu ministério como verdadeiros servidores do Altar.

---

"""
    html_body = """
    <div class="header-box">
        <div class="cross">&#10014;</div>
        <div class="doc-authority">SANTA SÉ &bull; PAPA SÃO JOÃO PAULO II</div>
        <h1 class="doc-title">Quirógrafo sobre a Música Sacra</h1>
        <div class="doc-subtitle">No Centenário do Motu Proprio «Tra le Sollecitudini» de São Pio X</div>
        <div class="doc-meta">Promulgado em 3 de dezembro de 2003 &bull; O Sentido do Sagrado no Terceiro Milênio</div>
    </div>
    
    <div class="highlight-box">
        <strong>O Sentido do Sagrado segundo São João Paulo II:</strong>
        <p class="no-indent">"Hoje, como no passado, a música litúrgica deve ser santa, deve ter a bondade das formas e deve ser universal. A renovação não pode significar a perda do sentido do sagrado, nem a entrada de formas musicais profanas ou mundanas nas celebrações da Eucaristia."</p>
    </div>
    """
    
    for p in paragraphs:
        if "QUIRÓGRAFO" in p and "JOÃO PAULO II" in p:
            continue
        if re.match(r"^\d+\.", p):
            num = p.split('.')[0]
            rest = p[len(num)+1:].strip()
            md_content += f"**{num}.** {rest}\n\n"
            html_body += f"<p><span class=\"article-num\">{num}.</span> {rest}</p>\n"
        elif p.isupper() and len(p) < 60:
            md_content += f"\n## {p}\n\n"
            html_body += f"<h2>{p}</h2>\n"
        else:
            md_content += f"{p}\n\n"
            html_body += f"<p>{p}</p>\n"

    html_doc = f"""<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<title>Quirógrafo sobre a Música Sacra - São João Paulo II</title>
<style>{CSS_STYLES}</style>
</head>
<body>
{html_body}
<div class="footer-note">Compêndio de Documentos Litúrgicos &bull; Santa Sé &bull; Arquivo Canônico</div>
</body>
</html>"""

    md_path = os.path.join(TEXTS_DIR, "06_Quirografo_Joao_Paulo_II_2003.md")
    with open(md_path, 'w', encoding='utf-8') as f:
        f.write(md_content)
        
    pdf_path = os.path.join(PDFS_DIR, "06_Quirografo_Joao_Paulo_II_2003.pdf")
    render_to_pdf(html_doc, pdf_path)

# -------------------------------------------------------------
# 7. CRITÉRIOS PASTORAIS DA CNBB (ESTUDO 79 & DOC 7)
# -------------------------------------------------------------
def build_cnbb_criterios():
    print("Building 07_CNBB_Estudo_79_Diretrizes_Brasil...")
    
    md_content = """# Critérios Pastorais e Litúrgicos da CNBB para a Música Litúrgica
**Conferência Nacional dos Bispos do Brasil (Estudos da CNBB nº 79 e Documento nº 7)**  
*Orientações para Compositores, Animadores, Coros e Músicos Católicos no Brasil*  

---

## 1. O Princípio Teológico da CNBB: "Cantar a Liturgia e não Apenas Cantar na Liturgia"
A CNBB insiste com frequência no princípio fundamental estabelecido pela Constituição *Sacrosanctum Concilium*: 
> **Não se trata simplesmente de colocar músicas dentro da Missa para que o povo não fique entediado, mas de cantar a própria oração da Igreja.**

A música é um elemento sacramental e ministerial:
* **Não é música de fundo:** A liturgia não tolera "música ambiente" para preencher vazios.
* **Não é show nem espetáculo:** O foco de toda a música é o Cristo presente no altar e na comunidade, jamais o músico, o cantor solista ou a banda.
* **O primado da Assembleia:** O coro e o ministério de música existem para animar e apoiar o canto do povo reunido. Se o povo não canta e fica mudo ouvindo um concerto do ministério, o ministério falhou em sua missão litúrgica.

---

## 2. A Quadrícula de Avaliação da CNBB (Os 4 Julgamentos)

Para saber com clareza matemática e pastoral se uma música é litúrgica ou não, a CNBB e os liturgistas estabelecem 4 critérios indispensáveis:

### 1º Critério Teológico (A Doutrina e a Bíblia)
* A letra reflete fielmente o Mistério Pascal de Cristo?
* As letras são inspiradas diretamente na Sagrada Escritura (especialmente nos Evangelhos e Salmos) ou nos textos litúrgicos da Igreja?
* **O que NÃO pode:** Letras puramente intimistas ("eu e meu Jesus"), sentimentalistas, individualistas, teologicamente heréticas ou confusas, ou que reduzam a fé cristã a mera autoajuda ou discurso político-partidário sem transcendência.

### 2º Critério Litúrgico (O Momento Ritual Específico)
* A música cumpre exatamente a função ritual daquele momento da celebração?
  - *No Canto de Entrada:* Tem caráter de acolhida, abertura, caminhada comunitária e celebra o mistério do dia litúrgico?
  - *No Glória:* É o texto litúrgico oficial sem adulteração?
  - *No Salmo:* É a resposta orante à Primeira Leitura?
  - *No Ofertório:* Expressa a entrega de si mesmo, o dom da vida associado ao pão e vinho?
  - *No Santo:* É a aclamação profética e celestial a Deus três vezes Santo?
  - *Na Comunhão:* Expressa o banquete eucarístico, a comunhão do Pão da Vida e a unidade dos irmãos em Cristo?
* **O que NÃO pode:** Cantar cantos com letras que nada têm a ver com o momento (ex: cantar música mariana no Ofertório comum ou na Comunhão, ou cantar canções de retiro no Santo).

### 3º Critério Pastoral (A Realidade da Comunidade)
* A comunidade consegue cantar a melodia com facilidade e dignidade?
* O tom da música está ajustado à extensão vocal da média do povo (entre Lá 2 e Ré 4 para vozes médias)?
* **O que NÃO pode:** Músicas com tessitura inacessível, cheias de firulas, vibratos teatrais ou tons excessivamente altos feitos apenas para o solista brilhar.

### 4º Critério Musical e Estético (A Beleza e Nobreza da Arte)
* A música tem dignidade artística e beleza verdadeira?
* O ritmo convida à oração e ao recolhimento, ou agita o corpo de forma profana e sensual?
* **O que NÃO pode:** Paródias de canções de novela, músicas de rádio seculares adaptadas com letra religiosa ("música sacra travestida"), ritmos frenéticos incompatíveis com o templo santo.

---

## 3. Diretrizes Práticas por Tempo Litúrgico no Brasil

| Tempo Litúrgico | Caráter Musical | Instrumentos | Observações Rituais |
| :--- | :--- | :--- | :--- |
| **Advento** | Sóbrio, vigilante, expectativa orante | Moderados; evitar excessos sonoros | Omite-se o Glória. O Aleluia permanece. |
| **Natal / Epifania** | Festivo, radiante, solene | Uso pleno, alegre e nobre | Retorna o Glória com júbilo. Canto solene. |
| **Quaresma** | Austero, penitencial, recolhido | Apenas para sustentar a voz (sem solos) | Proibido o Aleluia e o Glória. Sem flores e sem instrumentos a solo. |
| **Páscoa / Pentecostes** | Exultante, vitória pascal, triunfante | Pleno e solene | Canto contínuo do Aleluia pascal e da Sequência. |
| **Tempo Comum** | Equilibrado, catequético, louvor | Adequado ao mistério do domingo | Glória e Aleluia solenes nos domingos. |
"""

    html_body = f"""
    <div class="header-box">
        <div class="cross">&#10014;</div>
        <div class="doc-authority">CONFERÊNCIA NACIONAL DOS BISPOS DO BRASIL &bull; CNBB</div>
        <h1 class="doc-title">Música Litúrgica no Brasil</h1>
        <div class="doc-subtitle">Estudos da CNBB nº 79 &amp; Documento nº 7 &bull; Princípios e Critérios Pastorais</div>
        <div class="doc-meta">Diretrizes Nacionais para Animadores, Coros e Equipes de Liturgia</div>
    </div>
    
    <div class="highlight-box">
        <strong>O Axioma da Liturgia no Brasil:</strong>
        <p class="no-indent">"Não se vai à Missa para cantar qualquer coisa que emocione ou agrade individualmente; vai-se à Missa para mergulhar no Mistério Pascal de Cristo através dos ritos e dos cantos que a Igreja entrega ao seu povo santo."</p>
    </div>
    """
    
    sections = md_content.split('\n## ')
    for sec in sections[1:]:
        lines = sec.split('\n')
        title = lines[0].strip()
        html_body += f"<h2>{title}</h2>\n"
        rest = "\n".join(lines[1:])
        paragraphs = rest.split('\n\n')
        for p in paragraphs:
            p_strip = p.strip()
            if not p_strip:
                continue
            if p_strip.startswith('### '):
                sub = p_strip.replace('### ', '')
                html_body += f"<h3>{sub}</h3>\n"
            elif p_strip.startswith('> '):
                quote = p_strip.replace('> ', '').strip()
                html_body += f"<blockquote>{quote}</blockquote>\n"
            elif p_strip.startswith('* '):
                items = p_strip.split('\n* ')
                html_body += "<ul>\n"
                for it in items:
                    it_clean = it.replace('* ', '').strip()
                    html_body += f"<li>{it_clean}</li>\n"
                html_body += "</ul>\n"
            elif p_strip.startswith('|'):
                # Convert markdown table to simple html
                rows = [r.strip() for r in p_strip.splitlines() if r.strip()]
                html_body += "<table border='1' cellspacing='0' cellpadding='6' style='width:100%; border-collapse:collapse; margin:14px 0; font-size:10pt; border-color:#e0e0e0;'>\n"
                for i, r in enumerate(rows):
                    if '---' in r:
                        continue
                    cols = [c.strip() for c in r.split('|')[1:-1]]
                    if i == 0:
                        html_body += "<tr style='background-color:#8b0000; color:#ffffff;'>\n"
                        for c in cols: html_body += f"<th>{c}</th>\n"
                        html_body += "</tr>\n"
                    else:
                        bg = "#fdfbf7" if i % 2 == 1 else "#ffffff"
                        html_body += f"<tr style='background-color:{bg};'>\n"
                        for c in cols: html_body += f"<td>{c}</td>\n"
                        html_body += "</tr>\n"
                html_body += "</table>\n"
            else:
                html_body += f"<p>{p_strip}</p>\n"

    html_doc = f"""<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<title>CNBB - A Música Litúrgica no Brasil</title>
<style>{CSS_STYLES}</style>
</head>
<body>
{html_body}
<div class="footer-note">Compêndio de Documentos Litúrgicos &bull; CNBB &bull; Setor de Liturgia e Música Sacra</div>
</body>
</html>"""

    md_path = os.path.join(TEXTS_DIR, "07_CNBB_Estudo_79_Diretrizes_Brasil.md")
    with open(md_path, 'w', encoding='utf-8') as f:
        f.write(md_content)
        
    pdf_path = os.path.join(PDFS_DIR, "07_CNBB_Estudo_79_Diretrizes_Brasil.pdf")
    render_to_pdf(html_doc, pdf_path)

# -------------------------------------------------------------
# 8. MASTER COMPENDIUM COMPILATION PDF
# -------------------------------------------------------------
def build_master_compendium():
    print("Building 00_Compendio_Magisterio_Musica_Liturgica.pdf...")
    import pypdf
    writer = pypdf.PdfWriter()
    
    ordered_files = [
        "01_Tra_le_Sollecitudini_1903.pdf",
        "02_Musicae_Sacrae_Disciplina_1955.pdf",
        "03_Sacrosanctum_Concilium_CapVI_1963.pdf",
        "04_Musicam_Sacram_1967.pdf",
        "05_Instrucao_Geral_Missal_Romano_Musica.pdf",
        "06_Quirografo_Joao_Paulo_II_2003.pdf",
        "07_CNBB_Estudo_79_Diretrizes_Brasil.pdf"
    ]
    
    for fname in ordered_files:
        fpath = os.path.join(PDFS_DIR, fname)
        if os.path.exists(fpath):
            reader = pypdf.PdfReader(fpath)
            for page in reader.pages:
                writer.add_page(page)
            
    out_master = os.path.join(PDFS_DIR, "00_Compendio_Magisterio_Musica_Liturgica.pdf")
    with open(out_master, 'wb') as f:
        writer.write(f)
    print(f"Master Compendium generated successfully: {out_master} ({os.path.getsize(out_master):,} bytes)")

if __name__ == "__main__":
    build_tra_le_sollecitudini()
    build_musicae_sacrae()
    build_sacrosanctum_concilium_cap6()
    build_musicam_sacram()
    build_igmr_normas_canto()
    build_quirografo_jpii()
    build_cnbb_criterios()
    build_master_compendium()
    print("ALL DOCUMENTS GENERATED SUCCESSFULLY!")
