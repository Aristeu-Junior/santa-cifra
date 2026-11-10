import datetime

# Test script for calendar logic in Python before writing JS
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

def get_advent_start(year):
    # Sunday closest to Nov 30 (between Nov 27 and Dec 3)
    # Or 4 Sundays before Dec 25
    xmas = datetime.date(year, 12, 25)
    days_back = (xmas.weekday() + 1) % 7 # days to previous Sunday
    if days_back == 0:
        days_back = 7
    fourth_advent = xmas - datetime.timedelta(days=days_back)
    return fourth_advent - datetime.timedelta(days=21)

print("Advent 2026 starts:", get_advent_start(2026))
print("Advent 2025 starts:", get_advent_start(2025))
print("Advent 2024 starts:", get_advent_start(2024))
