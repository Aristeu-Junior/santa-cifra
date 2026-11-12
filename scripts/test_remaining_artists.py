# -*- coding: utf-8 -*-
import urllib.request
import urllib.parse
import json

headers = {'User-Agent': 'Mozilla/5.0'}

def search_deezer_artist(query):
    encoded = urllib.parse.quote(query)
    url = f"https://api.deezer.com/search/artist?q={encoded}"
    req = urllib.request.Request(url, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            if data.get('data'):
                for item in data['data'][:3]:
                    print(f"[{query}] -> Found: {item.get('name')} | pic: {item.get('picture_big')}")
                return
            print(f"[{query}] -> No results")
    except Exception as e:
        print(f"[{query}] -> Error: {e}")

queries = [
    'Toca de Assis',
    'Pe. Zeca',
    'Padre Zeca',
    'Alessandro Campos',
    'Martin Valverde',
    'Eros Biondini',
    'Taizé',
    'Fabreti',
    'Waldeci Farias',
    'Reginaldo Veloso',
    'José Weber',
    'Pe. Joãozinho'
]

for q in queries:
    search_deezer_artist(q)
