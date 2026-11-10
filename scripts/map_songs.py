import json, glob, re

songs = []
for fp in glob.glob(r'C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\js\catalog\*.js'):
    with open(fp, 'r', encoding='utf-8') as f:
        c = f.read()
    # Find all objects with id and title
    matches = re.finditer(r'\{\s*"id":\s*"([^"]+)",\s*"title":\s*"([^"]+)",\s*"composer":\s*"([^"]*)".*?"liturgicalMoment":\s*"([^"]*)".*?"liturgicalSeason":\s*"([^"]*)"', c, re.DOTALL)
    for m in matches:
        songs.append({
            'id': m.group(1),
            'title': m.group(2),
            'composer': m.group(3),
            'moment': m.group(4),
            'season': m.group(5)
        })

print(f"Total songs mapped: {len(songs)}")
# Show sample by moment
by_m = {}
for s in songs:
    by_m.setdefault(s['moment'], []).append(s)

for m, l in by_m.items():
    print(f"\n--- {m} ({len(l)}) ---")
    for s in l[:3]:
        print(f"  [{s['id']}] {s['title']} ({s['composer']}) [{s['season']}]")
