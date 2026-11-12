# -*- coding: utf-8 -*-
import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0'}

def check_url(url, pattern):
    try:
        req = urllib.request.Request(url, headers=headers)
        with urllib.request.urlopen(req, timeout=10) as resp:
            html = resp.read().decode('utf-8', errors='ignore')
            matches = re.findall(pattern, html)
            print(f"URL: {url} -> {len(matches)} matches")
            for m in matches[:5]:
                print("  ", m)
    except Exception as e:
        print(f"URL: {url} -> Error: {e}")

check_url('https://arquidioceserp.org.br/frei-fabreti-a-cancao-que-sobe-aos-ceus/', r'https://arquidioceserp\.org\.br/wp-content/uploads/[^\s"\'<>]+\.(?:jpg|png|jpeg)')
check_url('https://verbodivinobrc.com/artigos/pe-jose-weber-svd-uma-vida-dedicada-a-musica-liturgica/', r'https://verbodivinobrc\.com/wp-content/uploads/[^\s"\'<>]+\.(?:jpg|png|jpeg)')
