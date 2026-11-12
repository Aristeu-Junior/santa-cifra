# -*- coding: utf-8 -*-
import urllib.request
import urllib.parse
import json

headers = {'User-Agent': 'Mozilla/5.0'}

def search_deezer_album(query):
    encoded = urllib.parse.quote(query)
    url = f"https://api.deezer.com/search/album?q={encoded}"
    req = urllib.request.Request(url, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            if data.get('data'):
                for item in data['data'][:3]:
                    print(f"[{query}] -> Album: {item.get('title')} | cover: {item.get('cover_big')} | artist: {item.get('artist', {}).get('name')}")
            else:
                print(f"[{query}] -> No album results")
    except Exception as e:
        print(f"[{query}] -> Error: {e}")

search_deezer_album('Frei Fabreti')
search_deezer_album('Waldeci Farias')
search_deezer_album('Pe. José Weber')
search_deezer_album('Padre José Weber')
