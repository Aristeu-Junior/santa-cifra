const path = require('path');
const catalog = require(path.join(__dirname, '../santa-cifra/data/songs.json'));

function getPopularityScore(song) {
  let score = 0;
  const comp = (song.composer || '').toLowerCase();
  const title = (song.title || '').toLowerCase();

  // Artistas consagrados mais tocados
  if (comp.includes('zezinho')) score += 500;
  else if (comp.includes('marcelo rossi')) score += 500;
  else if (comp.includes('fábio de melo') || comp.includes('fabio de melo')) score += 500;
  else if (comp.includes('frei gilson')) score += 500;
  else if (comp.includes('jonas abib') || comp.includes('canção nova')) score += 450;
  else if (comp.includes('shalom')) score += 450;
  else if (comp.includes('anjos de resgate') || comp.includes('rosa de saron') || comp.includes('tony allysson') || comp.includes('thiago brado')) score += 400;
  else if (comp.includes('walmir alencar') || comp.includes('adoração e vida') || comp.includes('vida reluz')) score += 400;
  else if (comp.includes('colo de deus') || comp.includes('toca de assis') || comp.includes('o caminho')) score += 350;
  else if (comp.includes('reginaldo manzotti') || comp.includes('reginaldo veloso') || comp.includes('miria') || comp.includes('weber')) score += 300;

  // Hinos e sucessos católicos universais
  const superHits = [
    'amar como jesus amou', 'um certo galileu', 'oração pela família', 'oracao pela familia',
    'maria de nazaré', 'maria de nazare', 'estou pensando em deus', 'utopia',
    'erguei as mãos', 'erguei as maos', 'noites traiçoeiras', 'noites traicoeiras', 'basta querer',
    'tudo é do pai', 'tudo e do pai', 'minha bênção', 'minha bencao',
    'eu seguirei', 'incendeia minha alma', 'tu és o centro', 'tu es o centro', 'eu te levantarei',
    'não dá mais pra voltar', 'nao da mais pra voltar', 'como são belos os pés', 'como sao belos os pes',
    'estrangeiro aqui', 'belíssimo esposo', 'belissimo esposo', 'oferta de amor', 'ressuscitou',
    'o primeiro olhar', 'amigos pela fé', 'amigos pela fe', 'a chave do coração', 'abraço de pai', 'abraco de pai',
    'a barca', 'segura na mão de deus', 'segura na mao de deus', 'oração de são francisco', 'oracao de sao francisco',
    'como és lindo', 'como es lindo', 'ninguém te ama como eu', 'ninguem te ama como eu',
    'pecador, agora é tempo', 'pecador, agora e tempo', 'como a ovelha perdida'
  ];
  if (superHits.some(hit => title.includes(hit))) {
    score += 350;
  }

  if (song.isMostUsed) score += 120;
  if (song.liturgicalAnalysis && song.liturgicalAnalysis.score) {
    score += song.liturgicalAnalysis.score;
  }
  return score;
}

const sorted = [...catalog].sort((a, b) => {
  const diff = getPopularityScore(b) - getPopularityScore(a);
  if (diff !== 0) return diff;
  return (a.title || '').localeCompare(b.title || '', 'pt-BR');
});

console.log('--- TOP 25 MÚSICAS NOVO CANCIONEIRO ---');
sorted.slice(0, 25).forEach((s, idx) => {
  console.log(`${idx + 1}. ${s.title} — ${s.composer} (${getPopularityScore(s)} pts)`);
});
