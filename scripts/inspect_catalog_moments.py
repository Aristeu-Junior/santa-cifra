import re, glob

moments = {}
seasons = {}
special_days = {}

for fp in glob.glob(r'C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\js\catalog\*.js'):
    with open(fp, 'r', encoding='utf-8') as f:
        c = f.read()
    for m in re.findall(r'"liturgicalMoment":\s*"([^"]+)"', c):
        moments[m] = moments.get(m, 0) + 1
    for s in re.findall(r'"liturgicalSeason":\s*"([^"]+)"', c):
        seasons[s] = seasons.get(s, 0) + 1
    for sd in re.findall(r'"specialDay":\s*"([^"]+)"', c):
        special_days[sd] = special_days.get(sd, 0) + 1

print('Moments breakdown:', moments)
print('Seasons breakdown:', seasons)
print('Special Days:', special_days)
