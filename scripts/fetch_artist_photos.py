# -*- coding: utf-8 -*-
import urllib.request
import re
import json

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}

def get_artist_image(slug):
    url = f"https://www.cifraclub.com.br/{slug}/"
    req = urllib.request.Request(url, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            html = resp.read().decode('utf-8', errors='ignore')
            
            # Look for og:image
            og_match = re.search(r'<meta\s+property=["\']og:image["\']\s+content=["\']([^"\']+)["\']', html)
            if og_match:
                img_url = og_match.group(1)
                if 'cifraclub' in img_url and not 'placeholder' in img_url:
                    return img_url
            
            # Look for schema.org image or image tag
            schema_match = re.search(r'"image":\s*"([^"]+)"', html)
            if schema_match:
                return schema_match.group(1)
                
            return None
    except Exception as e:
        return f"Error: {e}"

test_slugs = ['banda-arkanjos', 'anjos-de-resgate', 'banda-dom', 'banda-dominus', 'colo-de-deus', 'thiago-brado']
for s in test_slugs:
    res = get_artist_image(s)
    print(f"{s}: {res}")
