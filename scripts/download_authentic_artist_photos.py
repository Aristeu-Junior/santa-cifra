# -*- coding: utf-8 -*-
"""
Download and process authentic photos for Catholic bands and artists.
Converts to 400x400 JPEG, center-cropped, 88% quality, progressive.
"""

import os
import io
import urllib.request
from PIL import Image

ASSETS_DIR = r"C:\Users\Aristeu Junior\.gemini\antigravity-cli\scratch\musica-liturgica-catolica\santa-cifra\assets\artists"
os.makedirs(ASSETS_DIR, exist_ok=True)

# Map of slug -> authentic photo URL
ARTIST_PHOTOS = {
    # Bands
    "banda-arkanjos": "https://cdn-images.dzcdn.net/images/artist/baee759bddae0879c854e40a7c45b42b/500x500-000000-80-0-0.jpg",
    "banda-arcanjos": "https://cdn-images.dzcdn.net/images/artist/baee759bddae0879c854e40a7c45b42b/500x500-000000-80-0-0.jpg",
    "juninho-cassimiro": "https://cdn-images.dzcdn.net/images/artist/8e75b3ff3fdac553a86f8d3f86c9b894/500x500-000000-80-0-0.jpg",
    "anjos-de-resgate": "https://cdn-images.dzcdn.net/images/artist/b36bb4babc6986081b921bb24b0d3e85/500x500-000000-80-0-0.jpg",
    "banda-dom": "https://cdn-images.dzcdn.net/images/artist/21cfa730bbf1589842b2f14c4d828e41/500x500-000000-80-0-0.jpg",
    "banda-dominus": "https://cdn-images.dzcdn.net/images/artist/ea13e71fec40da927d94581d3007b2fa/500x500-000000-80-0-0.jpg",
    "colo-de-deus": "https://cdn-images.dzcdn.net/images/artist/c6e800997b99da91d13785f73a3212a6/500x500-000000-80-0-0.jpg",
    "vida-reluz": "https://cdn-images.dzcdn.net/images/artist/ed4a7ede94d3f179121404480e1536c3/500x500-000000-80-0-0.jpg",
    "adoracao-e-vida": "https://cdn-images.dzcdn.net/images/artist/7a4f5da0694f893868fc14ebf2a08145/500x500-000000-80-0-0.jpg",
    "fraternidade-toca-de-assis": "https://cdn-images.dzcdn.net/images/artist/0b5561aa1e9dcc27d02162f53ee539a8/500x500-000000-80-0-0.jpg",
    "fraternidade-sjpii": "https://cdn-images.dzcdn.net/images/artist/2b6812ec65c7ab1a669065bd4d98ae68/500x500-000000-80-0-0.jpg",
    "comunidade-recado": "https://cdn-images.dzcdn.net/images/artist/20eb2fc98c420ceb234e02605be23871/500x500-000000-80-0-0.jpg",
    "alianca-de-misericordia": "https://cdn-images.dzcdn.net/images/artist/c5618d77283fbe153b126a4331e09411/500x500-000000-80-0-0.jpg",
    "comunidade-taize": "https://cdn-images.dzcdn.net/images/artist/b65b761d4771250107f0dce260f94a22/500x500-000000-80-0-0.jpg",
    
    # Singers & Composers
    "thiago-brado": "https://cdn-images.dzcdn.net/images/artist/b673c64e0c4d26f594404458f7ec8f78/500x500-000000-80-0-0.jpg",
    "walmir-alencar": "https://cdn-images.dzcdn.net/images/artist/6c3bb48a274db628c1d3c1da64592ff4/500x500-000000-80-0-0.jpg",
    "eliana-ribeiro": "https://cdn-images.dzcdn.net/images/artist/bfb63e497b5bf8a20b16d31f91c7bb21/500x500-000000-80-0-0.jpg",
    "diego-fernandes": "https://cdn-images.dzcdn.net/images/artist/0beb345fc83ab1054a5c3e7a3e2715b0/500x500-000000-80-0-0.jpg",
    "celina-borges": "https://cdn-images.dzcdn.net/images/artist/c7e32ab898cdcb0826a7c6a21c7ee387/500x500-000000-80-0-0.jpg",
    "eros-biondini": "https://cdn-images.dzcdn.net/images/artist/4505c457a5c1141ad14e7fa2c169a0ab/500x500-000000-80-0-0.jpg",
    "martin-valverde": "https://cdn-images.dzcdn.net/images/artist/08f7f5dcae653203ae0d5ce212e9a0db/500x500-000000-80-0-0.jpg",
    "padre-zeca": "https://cdn-images.dzcdn.net/images/artist/c62534e249741852a6939f543cf47b81/500x500-000000-80-0-0.jpg",
    "padre-alessandro-campos": "https://cdn-images.dzcdn.net/images/artist/f2b6717b9dcf260956a44b631136ded6/500x500-000000-80-0-0.jpg",
    "padre-joaozinho": "https://cdn-images.dzcdn.net/images/artist/fe7aa1b06154d10e6095f98ff0ceb39e/500x500-000000-80-0-0.jpg",
    "irma-ana-paula": "https://cdn-images.dzcdn.net/images/artist/291fc58396da884893a25a5b8a56fc5a/500x500-000000-80-0-0.jpg",
    "irma-kelly-patricia": "https://cdn-images.dzcdn.net/images/artist/99a3f1c80be1b3a76cc25c08a4fb3d71/500x500-000000-80-0-0.jpg",
    "eugenio-jorge": "https://cdn-images.dzcdn.net/images/artist/615ae9aa162bf3b558a371200ef19dae/500x500-000000-80-0-0.jpg",
    "nelsinho-correa": "https://cdn-images.dzcdn.net/images/artist/c7e60c6aee2027f351112d805121ffd0/500x500-000000-80-0-0.jpg",
    "davidson-silva": "https://cdn-images.dzcdn.net/images/artist/c60568120ac5b3d23227f5e62204448e/500x500-000000-80-0-0.jpg",
    "suely-facanha": "https://cdn-images.dzcdn.net/images/artist/a7db323a4fb89fad0f1d36a84f75466e/500x500-000000-80-0-0.jpg",
    "ziza-fernandes": "https://cdn-images.dzcdn.net/images/artist/7b3ab5e0173581275305e33a310acb18/500x500-000000-80-0-0.jpg",
    "ze-vicente": "https://cdn-images.dzcdn.net/images/artist/b6bc988f3a6955c28142ca20bd8572fd/500x500-000000-80-0-0.jpg",
    "frei-luiz-turra": "https://cdn-images.dzcdn.net/images/artist/368502cc0c14110f6171f425bc415e92/500x500-000000-80-0-0.jpg",
    "padre-reginaldo-veloso": "https://cdn-images.dzcdn.net/images/artist/1964722ff36d527d9ae4fff5d8631f08/500x500-000000-80-0-0.jpg"
}

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'}

def download_and_crop(slug, url):
    dest_path = os.path.join(ASSETS_DIR, f"{slug}.jpg")
    try:
        req = urllib.request.Request(url, headers=headers)
        with urllib.request.urlopen(req, timeout=15) as resp:
            data = resp.read()
        
        img = Image.open(io.BytesIO(data)).convert("RGB")
        w, h = img.size
        # Center crop to square
        min_dim = min(w, h)
        left = (w - min_dim) // 2
        top = (h - min_dim) // 2
        img_cropped = img.crop((left, top, left + min_dim, top + min_dim))
        img_resized = img_cropped.resize((400, 400), Image.Resampling.LANCZOS)
        
        img_resized.save(dest_path, "JPEG", quality=88, optimize=True)
        print(f"SUCCESS: {slug}.jpg saved ({os.path.getsize(dest_path)} bytes)")
    except Exception as e:
        print(f"ERROR downloading {slug}: {e}")

def main():
    print(f"Downloading authentic photos for {len(ARTIST_PHOTOS)} artists/bands...")
    for slug, url in ARTIST_PHOTOS.items():
        download_and_crop(slug, url)
    print("All downloads finished!")

if __name__ == "__main__":
    main()
