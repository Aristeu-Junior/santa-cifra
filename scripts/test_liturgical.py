import datetime

def get_easter(year):
    a = year % 19
    b = year // 100
    c = year % 100
    d = b // 4
    e = b % 4
    f = (b + 8) // 25
    g = (b - f + 1) // 3
    h = (19 * a + b - d - g + 15) % 30
    i = c // 4
    k = c % 4
    l = (32 + 2 * e + 2 * i - h - k) % 7
    m = (a + 11 * h + 22 * l) // 451
    month = (h + l - 7 * m + 114) // 31
    day = ((h + l - 7 * m + 114) % 31) + 1
    return datetime.date(year, month, day)

for y in [2024, 2025, 2026, 2027]:
    e = get_easter(y)
    ash = e - datetime.timedelta(days=46)
    palm = e - datetime.timedelta(days=7)
    pent = e + datetime.timedelta(days=49)
    corp = pent + datetime.timedelta(days=11)
    print(f"Ano {y}: Pascoa={e}, Cinzas={ash}, Ramos={palm}, Pentecostes={pent}, Corpus={corp}")
