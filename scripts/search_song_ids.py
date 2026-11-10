import glob, re, json

with open(r'C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\js\songs-catalog.js', 'r', encoding='utf-8') as f:
    pass

songs = []
for fp in glob.glob(r'C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\js\catalog\*.js'):
    with open(fp, 'r', encoding='utf-8') as f:
        c = f.read()
    for m in re.finditer(r'\{\s*"id":\s*"([^"]+)",\s*"title":\s*"([^"]+)"', c):
        songs.append((m.group(1), m.group(2)))

def search(kw):
    print(f"=== Search: {kw} ===")
    for sid, title in songs:
        if kw.lower() in title.lower() or kw.lower() in sid.lower():
            print(f"  {sid} -> {title}")

search("martinho")
search("cecilia")
search("aparecida")
search("ressuscitou")
search("conversao")
search("barca")
search("zezinho")
search("aleluia")
