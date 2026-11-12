# -*- coding: utf-8 -*-
import urllib.request
import urllib.parse
import json

headers = {'User-Agent': 'Mozilla/5.0'}

def search_deezer_artist(name):
    encoded = urllib.parse.quote(name)
    url = f"https://api.deezer.com/search/artist?q={encoded}"
    req = urllib.request.Request(url, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            if data.get('data'):
                first = data['data'][0]
                return {
                    'name': first.get('name'),
                    'picture': first.get('picture_medium'),
                    'picture_big': first.get('picture_big'),
                    'picture_xl': first.get('picture_xl')
                }
            return None
    except Exception as e:
        return f"Error: {e}"

test_artists = [
    'Banda Arkanjos',
    'Anjos de Resgate',
    'Banda Dom',
    'Banda Dominus',
    'Colo de Deus',
    'Thiago Brado',
    'Walmir Alencar',
    'Vida Reluz',
    'Adoração e Vida',
    'Eliana Ribeiro',
    'Diego Fernandes',
    'Celina Borges',
    'Eros Biondini',
    'Martín Valverde',
    'Padre Zeca',
    'Padre Alessandro Campos',
    'Padre Joãozinho',
    'Irmã Ana Paula',
    'Irmã Kelly Patrícia',
    'Fraternidade Toca de Assis',
    'Fraternidade São João Paulo II',
    'Comunidade Recado',
    'Aliança de Misericórdia',
    'Eugênio Jorge',
    'Nelsinho Corrêa',
    'Davidson Silva',
    'Suely Façanha',
    'Ziza Fernandes',
    'Zé Vicente',
    'Frei Luiz Turra'
]

for a in test_artists:
    res = search_deezer_artist(a)
    print(f"{a}: {res}")
