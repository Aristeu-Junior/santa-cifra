const fs = require('fs');
const path = require('path');

const ROOT = path.resolve(__dirname, '..');
const CATALOG_DIR = path.join(ROOT, 'santa-cifra', 'js', 'catalog');
const SONGS_JSON_PATH = path.join(ROOT, 'santa-cifra', 'data', 'songs.json');

const PROTECTED_ID = 'pe-fabio-de-melo-incendeia-minha-alma';

// Moments that belong exclusively outside Mass (Fora da Missa) per IGMR / CNBB Estudos 79
const NON_MASS_MOMENT_PATTERNS = [
  /^Adoração/i,
  /^Cura/i,
  /^Louvor/i,
  /^Devoção/i,
  /^Mariano$/i,
  /^Mariano \/ Adoração$/i,
  /^Mariano \/ Devoção$/i,
  /^São José/i,
  /^Pentecostes \/ (Adoração|Louvor|Invocação|Espírito Santo)$/i,
  /^Meditação/i,
  /^Família \/ Cura$/i,
  /^Misericórdia/i,
  /^Esperança/i,
  /^Anjos/i,
  /^Santos \/ Eucaristia$/i,
  /^Semana Santa \/ Cruz$/i,
  /^Abraço da Paz$/i,
  /^Pai Nosso/i,
  /^Cordeiro \/ Adoração$/i,
  /^Ato Penitencial \/ Cura$/i,
  /^Aclamação \/ Meditação$/i,
  /^Comunhão \/ (Cura|Devoção)$/i
];

// Specific IDs in Mass moments that violate IGMR / CNBB Estudos 79
const DEMOTE_IDS = new Map([
  // Ato Penitencial (non-Kyrie / non-Confiteor / devotional / gospel)
  ['alo-meu-deus-pe-zezinho', 'Fora da Missa: canto devocional/reflexivo, não corresponde ao rito do Ato Penitencial (Kyrie/Confiteor — IGMR 51).'],
  ['sonda-me-pe-marcelo-rossi', 'Fora da Missa: oração pessoal baseada no Salmo 138, inadequada como Ato Penitencial litúrgico (IGMR 51).'],
  ['abraco-de-pai-walmir-alencar', 'Fora da Missa: canto de oração/cura interior, não possui o texto litúrgico do Ato Penitencial (IGMR 51).'],
  ['oracao-da-noite-perdoai-nos-senhor-pe-zezinho', 'Fora da Missa: oração devocional da noite, não substitui o Ato Penitencial da Missa (IGMR 51).'],
  ['filho-de-davi-tony-allysson', 'Fora da Missa: canto de súplica/cura de grupo de oração, não é o Ato Penitencial litúrgico (IGMR 51).'],
  ['entao-volta-diego-fernandes', 'Fora da Missa: canto exortativo de conversão para grupos de oração, não é Ato Penitencial (IGMR 51).'],
  ['maos-ensanguentadas-de-jesus-pe-cleidimar', 'Fora da Missa: devoção particular de cura, não pertence ao Ordinário da Missa (IGMR 51).'],
  ['celina-borges-lava-me', 'Fora da Missa: canto devocional de purificação para adoração/grupo de oração, não é Kyrie litúrgico (IGMR 51).'],
  ['tony-allysson-purifica-me', 'Fora da Missa: canto devocional de adoração/cura, não substitui o Ato Penitencial (IGMR 51).'],
  ['pe-reginaldo-manzotti-o-grito-de-misericordia', 'Fora da Missa: canto devocional de súplica, não possui a estrutura do Ato Penitencial (IGMR 51).'],
  ['ziza-fernandes-abre-tua-porta', 'Fora da Missa: canto devocional/meditativo, inadequado para o Ato Penitencial da Missa (IGMR 51).'],
  ['nelsinho-correa-primeiro-amor', 'Fora da Missa: canto carismático de reavivamento, não é o Ato Penitencial litúrgico (IGMR 51).'],
  ['coracao-novo-banda-arkanjos', 'Fora da Missa: canto devocional de conversão, não substitui o Kyrie/Confiteor (IGMR 51).'],
  ['ceremonya-perdao-meu-senhor', 'Fora da Missa: canção religiosa pessoal de perdão, sem a fórmula litúrgica do Ato Penitencial (IGMR 51).'],
  ['kleber-lucas-perdao', 'Fora da Missa: música evangélica/gospel contemporânea, fora do repertório litúrgico católico (CNBB Estudos 79).'],

  // Glória (must be the official liturgical Gloria hymn)
  ['seja-engrandecido-pe-marcelo-rossi', 'Fora da Missa: refrão de louvor não litúrgico; o Hino do Glória não pode ser substituído por outro texto (IGMR 53).'],

  // Santo (must be the liturgical Sanctus text)
  ['pe-reginaldo-manzotti-santo-espirito-vem-sobre-nos', 'Fora da Missa: invocação ao Espírito Santo, não é o texto litúrgico do Sanctus (IGMR 79).'],
  ['dunga-santo-sou-teu', 'Fora da Missa: canto devocional/louvor, não contém a aclamação oficial do Santo (IGMR 79).'],
  ['santo-tabernaculo-david-quinlan', 'Fora da Missa: louvor evangélico/adoração, não é o Sanctus da Oração Eucarística (IGMR 79).'],
  ['santo-espirito-defensor-adriana-arydes', 'Fora da Missa: hino ao Espírito Santo, não substitui o Santo da Oração Eucarística (IGMR 79).'],
  ['santo-dos-santos-laura-morena', 'Fora da Missa: louvor devocional, não corresponde ao texto oficial do Sanctus (IGMR 79).'],
  ['santo-anjo-eliana-ribeiro', 'Fora da Missa: oração ao Anjo da Guarda, não é o Sanctus da Missa (IGMR 79).'],
  ['ministerio-adoracao-vida-santo-o-grande-rei', 'Fora da Missa: canto de adoração/louvor, não reproduz o texto litúrgico do Santo (IGMR 79).'],
  ['olivia-ferreira-santo-sacrificio', 'Fora da Missa: canto devocional de entrega, não é o Sanctus litúrgico (IGMR 79).'],
  ['pitter-di-laura-santo-instante', 'Fora da Missa: canto meditativo/devocional, não substitui o Santo da Oração Eucarística (IGMR 79).'],
  ['ze-vicente-santo-e-deus', 'Fora da Missa: canto de reflexão/louvor, não possui o texto litúrgico do Sanctus (IGMR 79).'],
  ['marcos-barrientos-santo-es-grande-el-amor-del-senor', 'Fora da Missa: louvor evangélico em espanhol, não é o Sanctus litúrgico (IGMR 79).'],

  // Cordeiro
  ['toca-de-assis-abraco-de-paz-cordeiro-de-deus', 'Fora da Missa: mescla canto de abraço da paz com o Agnus Dei; a IGMR/CNBB orienta manter o Cordeiro de Deus próprio para a fração do pão (IGMR 83).'],

  // Aclamação ao Evangelho
  ['ministerio-koinonya-de-louvor-aleluia-jesus-eu-te-amo', 'Fora da Missa: refrão evangélico de louvor, não é Aclamação ao Evangelho (IGMR 62).'],

  // Ação de Graças (catequese infantil recreativa / gospel)
  ['catequese-o-amor-de-deus-e-maravilhoso', 'Fora da Missa: canto recreativo de catequese/encontros, inadequado para a ação de graças eucarística (CNBB Estudos 79).'],
  ['catequese-pedro-tiago-joao-no-barquinho', 'Fora da Missa: dinâmica infantil de catequese, sem função ritual na Missa (CNBB Estudos 79).'],
  ['catequese-tres-palavrinhas-so', 'Fora da Missa: música infantil de catequese, fora do rito da Missa (CNBB Estudos 79).'],
  ['segura-na-mao-de-deus', 'Fora da Missa: hino devocional popular/protestante, fora do repertório litúrgico da Missa (CNBB Estudos 79).'],
  ['sou-um-milagre-danilo-casemiro', 'Fora da Missa: louvor gospel contemporâneo, sem vínculo com o rito eucarístico (CNBB Estudos 79).'],
  ['te-agradeco-kleber-lucas', 'Fora da Missa: música evangélica/gospel, fora do repertório litúrgico católico (CNBB Estudos 79).'],

  // Entrada (carismáticos/gospel/louvor genérico sem caráter processional-eclesial)
  ['senhor-poe-teus-anjos-aqui-pe-marcelo-rossi', 'Fora da Missa: canto carismático de invocação/acolhida para grupos de oração, sem caráter de canto de entrada litúrgico (IGMR 47).'],
  ['reunidos-aqui-pe-marcelo-rossi', 'Fora da Missa: refrão de animação para grupos de oração, não recomendado pela CNBB para abertura da Missa (Estudos 79).'],
  ['espirito-enche-a-minha-vida-pe-marcelo', 'Fora da Missa: canto gospel/carismático de invocação ao Espírito, inadequado como canto de entrada (IGMR 47).'],
  ['podes-reinar-eliana-ribeiro-agnus-dei', 'Fora da Missa: canto de louvor/entronização para grupos de oração, não é canto processional de entrada (IGMR 47).'],
  ['santo-espirito-es-bem-vindo-aqui-pe-marcelo', 'Fora da Missa: canto de adoração/grupo de oração, sem caráter processional de entrada (IGMR 47).'],
  ['louvemos-ao-senhor-pe-marcelo-rossi', 'Fora da Missa: louvor carismático de animação (Adhemar de Campos), fora do repertório litúrgico da Missa.'],
  ['o-senhor-e-a-minha-forca-salette-ferreira', 'Fora da Missa: canto de animação/avivamento carismático, inadequado para o rito de entrada (IGMR 47).'],
  ['sopra-espirito-emanuel-stenio', 'Fora da Missa: canto de oração/efusão para grupos de oração, não é canto de entrada da Missa (IGMR 47).'],
  ['muitos-virao-te-louvar-guilherme-kerr', 'Fora da Missa: louvor evangélico contemporâneo, fora do repertório litúrgico da Missa.'],
  ['exultai-comunidade-catolica-pantokrator', 'Fora da Missa: canto de louvor/adoração de grupo de oração.'],

  // Comunhão / Adoração (gospel / não-eucarísticos)
  ['cinco-paes-e-dois-peixinhos-quatro-por-um', 'Fora da Missa: canção gospel contemporânea, não recomendada como canto de comunhão litúrgico (IGMR 86).'],
  ['invocamos-eros-biondini', 'Fora da Missa: canto de avivamento/adoração para encontros, sem foco eucarístico da Comunhão (IGMR 86).'],
  ['sopra-em-nos-irma-ana-paula', 'Fora da Missa: canto devocional ao Espírito Santo para adoração/grupo de oração.'],
  ['tempo-de-graca-ziza-fernandes', 'Fora da Missa: canto de oração/meditação devocional, fora do rito da Comunhão.'],
  ['fogo-suave-ziza-fernandes', 'Fora da Missa: canto devocional ao Espírito Santo para momentos de oração.'],
  ['teus-planos-juninho-cassimiro', 'Fora da Missa: canto devocional de entrega pessoal, mais adequado a adoração e grupos de oração.'],

  // Final (orações de combate espiritual / medalhas, não envio missionário)
  ['quem-como-deus-banda-arkanjos', 'Fora da Missa: oração de combate espiritual a São Miguel Arcanjo; após a Missa, o canto final deve expressar louvor/envio (CNBB Estudos 79).'],
  ['a-cruz-sagrada-seja-a-minha-luz-ricardo-sa', 'Fora da Missa: oração devocional da Medalha de São Bento, não é canto de envio litúrgico.']
]);

function classifyDemotion(song) {
  if (!song || song.id === PROTECTED_ID) return null;
  if (song.repertoireType === 'popular') return null;

  if (DEMOTE_IDS.has(song.id)) {
    return DEMOTE_IDS.get(song.id);
  }

  const moment = song.liturgicalMoment || '';
  for (const pat of NON_MASS_MOMENT_PATTERNS) {
    if (pat.test(moment)) {
      return 'Fora da Missa: momento devocional/paralitúrgico (' + moment + ') próprio para adoração, grupos de oração ou vigílias (IGMR / CNBB Estudos 79).';
    }
  }

  // Catch any remaining gospel/protestant composers accidentally left in liturgical
  const composer = (song.composer || '').toLowerCase();
  if (/(kleber lucas|quatro por um|danilo casemiro|ministério koinonya|david quinlan|marcos barrientos|guilherme kerr)/i.test(composer)) {
    return 'Fora da Missa: repertório gospel/não litúrgico, reservado para encontros e momentos devocionais fora da Missa (CNBB Estudos 79).';
  }

  return null;
}

// 1. Update songs.json
const songs = JSON.parse(fs.readFileSync(SONGS_JSON_PATH, 'utf8'));
const demotedMap = new Map();
for (const song of songs) {
  const reason = classifyDemotion(song);
  if (reason) {
    song.repertoireType = 'popular';
    song.liturgicalAnalysis = reason;
    demotedMap.set(song.id, reason);
  }
}

fs.writeFileSync(SONGS_JSON_PATH, JSON.stringify(songs, null, 2) + '\n', 'utf8');

// 2. Update the 4 JS catalog files in santa-cifra/js/catalog/
const catalogFiles = fs.readdirSync(CATALOG_DIR).filter(f => f.endsWith('.js'));
let jsUpdatedCount = 0;

for (const file of catalogFiles) {
  const fullPath = path.join(CATALOG_DIR, file);
  const raw = fs.readFileSync(fullPath, 'utf8');
  const match = raw.match(/^([\s\S]*?window\.\w+\s*=\s*)(\[[\s\S]*\])(\s*;?\s*)$/);
  if (!match) {
    console.warn('Skipping unrecognized catalog format:', file);
    continue;
  }
  const prefix = match[1];
  const arr = JSON.parse(match[2]);
  const suffix = match[3];
  let changed = false;
  for (const item of arr) {
    if (demotedMap.has(item.id)) {
      item.repertoireType = 'popular';
      item.liturgicalAnalysis = demotedMap.get(item.id);
      changed = true;
      jsUpdatedCount++;
    }
  }
  if (changed) {
    fs.writeFileSync(fullPath, prefix + JSON.stringify(arr, null, 2) + suffix, 'utf8');
  }
}

const remainingLit = songs.filter(s => s.repertoireType !== 'popular').length;
const totalPop = songs.filter(s => s.repertoireType === 'popular').length;
console.log(`Demoted ${demotedMap.size} songs in songs.json and ${jsUpdatedCount} entries in JS catalogs.`);
console.log(`New totals -> Total: ${songs.length} | Para a Missa (liturgical): ${remainingLit} | Fora da Missa (popular): ${totalPop}`);
