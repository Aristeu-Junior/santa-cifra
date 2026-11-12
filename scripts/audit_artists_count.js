const fs = require('fs');
const path = require('path');
const catalog = require(path.join(__dirname, '../santa-cifra/data/songs.json'));

const artists = [
  { id: 'banda-arkanjos', name: 'Banda Arkanjos / Arcanjos', kw: ['arkanjos', 'arcanjos', 'cassimiro'] },
  { id: 'padre-zezinho', name: 'Padre Zezinho, scj', kw: ['zezinho'] },
  { id: 'padre-marcelo-rossi', name: 'Padre Marcelo Rossi', kw: ['marcelo rossi'] },
  { id: 'padre-fabio-de-melo', name: 'Padre Fábio de Melo', kw: ['fábio de melo', 'fabio de melo'] },
  { id: 'frei-gilson', name: 'Frei Gilson / Som do Monte', kw: ['frei gilson', 'som do monte'] },
  { id: 'monsenhor-jonas-abib', name: 'Monsenhor Jonas Abib', kw: ['jonas abib'] },
  { id: 'comunidade-shalom', name: 'Comunidade Católica Shalom', kw: ['shalom', 'suely', 'davidson'] },
  { id: 'cancao-nova', name: 'Canção Nova', kw: ['canção nova', 'dunga', 'eliana ribeiro', 'nelsinho'] },
  { id: 'walmir-alencar', name: 'Walmir Alencar / Vida Reluz / Adoração e Vida', kw: ['walmir', 'vida reluz', 'adoração e vida'] },
  { id: 'anjos-de-resgate', name: 'Anjos de Resgate', kw: ['anjos de resgate'] },
  { id: 'rosa-de-saron', name: 'Rosa de Saron', kw: ['rosa de saron'] },
  { id: 'thiago-brado', name: 'Thiago Brado', kw: ['thiago brado', 'brado'] },
  { id: 'colo-de-deus', name: 'Comunidade Colo de Deus', kw: ['colo de deus'] },
  { id: 'tony-allysson', name: 'Tony Allysson', kw: ['tony allysson'] },
  { id: 'diego-fernandes', name: 'Diego Fernandes', kw: ['diego fernandes'] },
  { id: 'celina-borges', name: 'Celina Borges', kw: ['celina borges', 'celina'] },
  { id: 'adriana-arydes', name: 'Adriana Arydes', kw: ['adriana arydes', 'adriana'] },
  { id: 'dunga', name: 'Dunga', kw: ['dunga'] },
  { id: 'eliana-ribeiro', name: 'Eliana Ribeiro', kw: ['eliana ribeiro'] },
  { id: 'eugenio-jorge', name: 'Eugênio Jorge', kw: ['eugênio jorge', 'eugenio jorge', 'eugênio'] },
  { id: 'padre-reginaldo-manzotti', name: 'Padre Reginaldo Manzotti', kw: ['manzotti'] },
  { id: 'padre-antonio-maria', name: 'Padre Antonio Maria', kw: ['antônio maria', 'antonio maria'] },
  { id: 'padre-joaozinho', name: 'Padre Joãozinho', kw: ['joãozinho', 'joaozinho'] },
  { id: 'padre-zeca', name: 'Padre Zeca', kw: ['padre zeca'] },
  { id: 'padre-alessandro-campos', name: 'Padre Alessandro Campos', kw: ['alessandro campos'] },
  { id: 'irma-kelly-patricia', name: 'Irmã Kelly Patrícia / Instituto Hesed', kw: ['kelly patrícia', 'kelly patricia', 'hesed'] },
  { id: 'irma-miria-kolling', name: 'Irmã Míria Kolling', kw: ['miria', 'míria', 'kolling'] },
  { id: 'irma-ana-paula', name: 'Irmã Ana Paula', kw: ['ana paula'] },
  { id: 'banda-dom', name: 'Banda Dom', kw: ['banda dom'] },
  { id: 'banda-dominus', name: 'Banda Dominus', kw: ['dominus'] },
  { id: 'ziza-fernandes', name: 'Ziza Fernandes', kw: ['ziza'] },
  { id: 'ze-vicente', name: 'Zé Vicente', kw: ['zé vicente', 'ze vicente'] },
  { id: 'padre-jose-weber', name: 'Padre José Weber', kw: ['weber'] },
  { id: 'padre-reginaldo-veloso', name: 'Padre Reginaldo Veloso', kw: ['reginaldo veloso', 'veloso'] },
  { id: 'frei-fabreti', name: 'Frei Fabreti', kw: ['fabreti'] },
  { id: 'frei-luiz-turra', name: 'Frei Luiz Turra', kw: ['turra'] },
  { id: 'waldeci-farias', name: 'Waldeci Farias', kw: ['farias'] },
  { id: 'martin-valverde', name: 'Martín Valverde', kw: ['valverde'] },
  { id: 'eros-biondini', name: 'Eros Biondini', kw: ['biondini'] },
  { id: 'fraternidade-toca-de-assis', name: 'Fraternidade Toca de Assis', kw: ['toca de assis'] },
  { id: 'fraternidade-sjpii', name: 'Fraternidade São João Paulo II', kw: ['joão paulo ii', 'sjpii'] },
  { id: 'comunidade-recado', name: 'Comunidade Recado', kw: ['recado'] },
  { id: 'alianca-de-misericordia', name: 'Aliança de Misericórdia', kw: ['aliança de misericórdia', 'alianca de misericordia'] },
  { id: 'comunidade-taize', name: 'Comunidade de Taizé', kw: ['taizé', 'taize'] }
];

const results = artists.map(a => {
  const matchingSongs = catalog.filter(s => {
    const comp = (s.composer || '').toLowerCase();
    const title = (s.title || '').toLowerCase();
    return a.kw.some(k => comp.includes(k));
  });
  return {
    ...a,
    count: matchingSongs.length,
    titles: matchingSongs.map(s => s.title)
  };
}).sort((a, b) => a.count - b.count);

console.log('--- CONTAGEM DE MÚSICAS POR ARTISTA NO SANTA CIFRA ---');
results.forEach(r => {
  console.log(String(r.count).padStart(2, ' ') + ' músicas | ' + r.name + ' (' + r.titles.slice(0, 3).join(', ') + (r.titles.length > 3 ? '...' : '') + ')');
});
