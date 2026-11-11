async function getArtistSongs(artistSlug) {
  try {
    const res = await fetch(`https://www.cifraclub.com.br/${artistSlug}/`, {
      headers: { 'User-Agent': 'Mozilla/5.0' }
    });
    if (!res.ok) {
      console.log(`HTTP ${res.status} for ${artistSlug}`);
      return;
    }
    const html = await res.text();
    const songRegex = /href="\/([^"]+)\/" class="art_music_link"/g;
    let match;
    const songs = [];
    while ((match = songRegex.exec(html)) !== null) {
      songs.push(match[1]);
    }
    console.log(`Found ${songs.length} songs for ${artistSlug}:`);
    console.log(songs.slice(0, 30));
  } catch (e) {
    console.error(e.message);
  }
}

getArtistSongs('padre-jonas-abib');
getArtistSongs('monsenhor-jonas-abib');
getArtistSongs('padre-zezinho');
