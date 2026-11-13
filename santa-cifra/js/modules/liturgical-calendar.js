/**
 * SANTA CIFRA — Calendário Litúrgico e Recomendador de Repertório para a Santa Missa
 * 
 * Calcula o Ano Litúrgico da Igreja Católica (Rito Romano e CNBB Brasil):
 * - Computus Pascal (Meeus/Jones/Butcher) para festas móveis (Páscoa, Cinzas, Pentecostes, Corpus Christi, Cristo Rei).
 * - Tempos litúrgicos: Advento, Natal, Quaresma, Semana Santa, Páscoa e Tempo Comum.
 * - Cores litúrgicas: Verde, Branco, Vermelho, Roxo e Rosa.
 * - Santoral e Solenidades do Brasil (ex.: São Martinho, N. Sra Aparecida, Santa Cecília, etc.).
 * - Leituras bíblicas e recomendações personalizadas de cantos para cada momento da Missa
 *   conectadas diretamente às 541 cifras do Santa Cifra.
 */

window.SantaCifra = window.SantaCifra || {};

(function () {
  'use strict';

  const SC = window.SantaCifra;

  // Estado interno do calendário
  const calState = {
    viewYear: new Date().getFullYear(),
    viewMonth: new Date().getMonth(), // 0-11
    selectedDate: new Date(),
    filter: 'all' // 'all', 'solenidades', 'memorias', 'domingos'
  };

  /**
   * Cálculo da data da Páscoa pelo algoritmo do Computus Gregoriano (Meeus/Jones/Butcher)
   */
  function getEaster(year) {
    const a = year % 19;
    const b = Math.floor(year / 100);
    const c = year % 100;
    const d = Math.floor(b / 4);
    const e = b % 4;
    const f = Math.floor((b + 8) / 25);
    const g = Math.floor((b - f + 1) / 3);
    const h = (19 * a + b - d - g + 15) % 30;
    const i = Math.floor(c / 4);
    const k = c % 4;
    const l = (32 + 2 * e + 2 * i - h - k) % 7;
    const m = Math.floor((a + 11 * h + 22 * l) / 451);
    const month = Math.floor((h + l - 7 * m + 114) / 31) - 1; // 0-indexed
    const day = ((h + l - 7 * m + 114) % 31) + 1;
    return new Date(year, month, day);
  }

  /**
   * Adiciona dias a uma data
   */
  function addDays(date, days) {
    const res = new Date(date.getTime());
    res.setDate(res.getDate() + days);
    return res;
  }

  /**
   * Compara se duas datas são o mesmo dia
   */
  function isSameDay(d1, d2) {
    return (
      d1.getFullYear() === d2.getFullYear() &&
      d1.getMonth() === d2.getMonth() &&
      d1.getDate() === d2.getDate()
    );
  }

  /**
   * Início do Advento (4 domingos antes do Natal)
   */
  function getAdventStart(year) {
    const xmas = new Date(year, 11, 25);
    let daysToSun = (xmas.getDay()) % 7;
    if (daysToSun === 0) daysToSun = 7;
    const fourthAdvent = addDays(xmas, -daysToSun);
    return addDays(fourthAdvent, -21);
  }

  /**
   * Determina o Ciclo Bíblico Dominical (Ano A, B ou C)
   */
  function getLiturgicalCycle(date) {
    const y = date.getFullYear();
    const adventStart = getAdventStart(y);
    const refYear = date >= adventStart ? y + 1 : y;
    const rem = refYear % 3;
    if (rem === 1) return 'Ano A (São Mateus)';
    if (rem === 2) return 'Ano B (São Marcos)';
    return 'Ano C (São Lucas)';
  }

  /**
   * Santoral Católico e Festas Fixas (Mês 1-12, Dia 1-31)
   */
  const FIXED_FEASTS = {
    '1-1': { title: 'Solenidade de Santa Maria, Mãe de Deus', color: 'branco', rank: 'Solenidade' },
    '1-2': { title: 'São Basílio Magno e São Gregório Nazianzeno, Bispos e Doutores', color: 'branco', rank: 'Memória' },
    '1-3': { title: 'Santíssimo Nome de Jesus', color: 'branco', rank: 'Memória Facultativa' },
    '1-20': { title: 'São Sebastião, Mártir', color: 'vermelho', rank: 'Memória' },
    '1-21': { title: 'Santa Inês, Virgem e Mártir', color: 'vermelho', rank: 'Memória' },
    '1-24': { title: 'São Francisco de Sales, Bispo e Doutor', color: 'branco', rank: 'Memória' },
    '1-25': { title: 'Conversão de São Paulo, Apóstolo', color: 'branco', rank: 'Festa' },
    '1-26': { title: 'São Timóteo e São Tito, Bispos', color: 'branco', rank: 'Memória' },
    '1-28': { title: 'Santo Tomás de Aquino, Presbítero e Doutor', color: 'branco', rank: 'Memória' },
    '1-31': { title: 'São João Bosco, Presbítero', color: 'branco', rank: 'Memória' },

    '2-2': { title: 'Apresentação do Senhor', color: 'branco', rank: 'Festa' },
    '2-5': { title: 'Santa Águeda, Virgem e Mártir', color: 'vermelho', rank: 'Memória' },
    '2-6': { title: 'São Paulo Miki e Companheiros, Mártires', color: 'vermelho', rank: 'Memória' },
    '2-10': { title: 'Santa Escolástica, Virgem', color: 'branco', rank: 'Memória' },
    '2-11': { title: 'Nossa Senhora de Lourdes', color: 'branco', rank: 'Memória Facultativa' },
    '2-22': { title: 'Cátedra de São Pedro, Apóstolo', color: 'branco', rank: 'Festa' },

    '3-19': { title: 'Solenidade de São José, Esposo da Virgem Maria', color: 'branco', rank: 'Solenidade' },
    '3-25': { title: 'Solenidade da Anunciação do Senhor', color: 'branco', rank: 'Solenidade' },

    '4-23': { title: 'São Jorge, Mártir', color: 'vermelho', rank: 'Memória Facultativa' },
    '4-25': { title: 'São Marcos, Evangelista', color: 'vermelho', rank: 'Festa' },
    '4-29': { title: 'Santa Catarina de Sena, Virgem e Doutora da Igreja', color: 'branco', rank: 'Memória' },

    '5-1': { title: 'São José Operário', color: 'branco', rank: 'Memória' },
    '5-2': { title: 'Santo Atanásio, Bispo e Doutor', color: 'branco', rank: 'Memória' },
    '5-3': { title: 'São Filipe e São Tiago, Apóstolos', color: 'vermelho', rank: 'Festa' },
    '5-13': { title: 'Nossa Senhora de Fátima', color: 'branco', rank: 'Memória' },
    '5-14': { title: 'São Matias, Apóstolo', color: 'vermelho', rank: 'Festa' },
    '5-24': { title: 'Nossa Senhora Auxiliadora', color: 'branco', rank: 'Memória Facultativa' },
    '5-26': { title: 'São Filipe Néri, Presbítero', color: 'branco', rank: 'Memória' },
    '5-31': { title: 'Visitação de Nossa Senhora', color: 'branco', rank: 'Festa' },

    '6-1': { title: 'São Justino, Mártir', color: 'vermelho', rank: 'Memória' },
    '6-3': { title: 'São Carlos Lwanga e Companheiros, Mártires', color: 'vermelho', rank: 'Memória' },
    '6-5': { title: 'São Bonifácio, Bispo e Mártir', color: 'vermelho', rank: 'Memória' },
    '6-11': { title: 'São Barnabé, Apóstolo', color: 'vermelho', rank: 'Memória' },
    '6-13': { title: 'Santo Antônio de Pádua (de Lisboa), Presbítero e Doutor', color: 'branco', rank: 'Memória' },
    '6-21': { title: 'São Luís Gonzaga, Religioso', color: 'branco', rank: 'Memória' },
    '6-24': { title: 'Solenidade da Natividade de São João Batista', color: 'branco', rank: 'Solenidade' },
    '6-28': { title: 'Santo Irineu, Bispo e Mártir', color: 'vermelho', rank: 'Memória' },
    '6-29': { title: 'Solenidade de São Pedro e São Paulo, Apóstolos', color: 'vermelho', rank: 'Solenidade' },

    '7-3': { title: 'São Tomé, Apóstolo', color: 'vermelho', rank: 'Festa' },
    '7-11': { title: 'São Bento, Abade', color: 'branco', rank: 'Memória' },
    '7-16': { title: 'Nossa Senhora do Carmo', color: 'branco', rank: 'Memória' },
    '7-22': { title: 'Santa Maria Madalena', color: 'branco', rank: 'Festa' },
    '7-25': { title: 'São Tiago Maior, Apóstolo', color: 'vermelho', rank: 'Festa' },
    '7-26': { title: 'São Joaquim e Sant\'Ana, Pais da Virgem Maria', color: 'branco', rank: 'Memória' },
    '7-29': { title: 'Santa Marta, Maria e Lázaro', color: 'branco', rank: 'Memória' },
    '7-31': { title: 'Santo Inácio de Loyola, Presbítero', color: 'branco', rank: 'Memória' },

    '8-1': { title: 'Santo Afonso Maria de Ligório, Bispo e Doutor', color: 'branco', rank: 'Memória' },
    '8-4': { title: 'São João Maria Vianney (Cura d\'Ars), Padroeiro dos Padres', color: 'branco', rank: 'Memória' },
    '8-6': { title: 'Transfiguração do Senhor', color: 'branco', rank: 'Festa' },
    '8-8': { title: 'São Domingos de Gusmão, Presbítero', color: 'branco', rank: 'Memória' },
    '8-10': { title: 'São Lourenço, Diácono e Mártir', color: 'vermelho', rank: 'Festa' },
    '8-11': { title: 'Santa Clara de Assis, Virgem', color: 'branco', rank: 'Memória' },
    '8-12': { title: 'Santa Dulce dos Pobres', color: 'branco', rank: 'Memória no Brasil' },
    '8-14': { title: 'São Maximiliano Maria Kolbe, Presbítero e Mártir', color: 'vermelho', rank: 'Memória' },
    '8-15': { title: 'Solenidade da Assunção de Nossa Senhora', color: 'branco', rank: 'Solenidade' },
    '8-20': { title: 'São Bernardo, Abade e Doutor', color: 'branco', rank: 'Memória' },
    '8-21': { title: 'São Pio X, Papa', color: 'branco', rank: 'Memória' },
    '8-22': { title: 'Nossa Senhora Rainha', color: 'branco', rank: 'Memória' },
    '8-24': { title: 'São Bartolomeu, Apóstolo', color: 'vermelho', rank: 'Festa' },
    '8-27': { title: 'Santa Mônica', color: 'branco', rank: 'Memória' },
    '8-28': { title: 'Santo Agostinho, Bispo e Doutor da Igreja', color: 'branco', rank: 'Memória' },
    '8-29': { title: 'Martírio de São João Batista', color: 'vermelho', rank: 'Memória' },

    '9-3': { title: 'São Gregório Magno, Papa e Doutor', color: 'branco', rank: 'Memória' },
    '9-8': { title: 'Natividade de Nossa Senhora', color: 'branco', rank: 'Festa' },
    '9-13': { title: 'São João Crisóstomo, Bispo e Doutor', color: 'branco', rank: 'Memória' },
    '9-14': { title: 'Exaltação da Santa Cruz', color: 'vermelho', rank: 'Festa' },
    '9-15': { title: 'Nossa Senhora das Dores', color: 'branco', rank: 'Memória' },
    '9-16': { title: 'São Cornélio e São Cipriano, Mártires', color: 'vermelho', rank: 'Memória' },
    '9-21': { title: 'São Mateus, Apóstolo e Evangelista', color: 'vermelho', rank: 'Festa' },
    '9-23': { title: 'São Pio de Pietrelcina (Padre Pio), Presbítero', color: 'branco', rank: 'Memória' },
    '9-27': { title: 'São Vicente de Paulo, Presbítero', color: 'branco', rank: 'Memória' },
    '9-29': { title: 'Santos Arcanjos Miguel, Gabriel e Rafael', color: 'branco', rank: 'Festa' },
    '9-30': { title: 'São Jerônimo, Presbítero e Doutor (Dia da Bíblia)', color: 'branco', rank: 'Memória' },

    '10-1': { title: 'Santa Teresinha do Menino Jesus, Virgem e Doutora', color: 'branco', rank: 'Memória' },
    '10-2': { title: 'Santos Anjos da Guarda', color: 'branco', rank: 'Memória' },
    '10-4': { title: 'São Francisco de Assis', color: 'branco', rank: 'Memória' },
    '10-7': { title: 'Nossa Senhora do Rosário', color: 'branco', rank: 'Memória' },
    '10-12': { title: 'Solenidade de Nossa Senhora Aparecida, Rainha e Padroeira do Brasil', color: 'branco', rank: 'Solenidade' },
    '10-15': { title: 'Santa Teresa de Jesus (de Ávila), Virgem e Doutora', color: 'branco', rank: 'Memória' },
    '10-17': { title: 'Santo Inácio de Antioquia, Bispo e Mártir', color: 'vermelho', rank: 'Memória' },
    '10-18': { title: 'São Lucas, Evangelista', color: 'vermelho', rank: 'Festa' },
    '10-19': { title: 'São Pedro de Alcântara, Padroeiro do Brasil', color: 'branco', rank: 'Festa no Brasil' },
    '10-22': { title: 'São João Paulo II, Papa', color: 'branco', rank: 'Memória Facultativa' },
    '10-25': { title: 'Santo Antônio de Sant\'Anna Galvão (Frei Galvão)', color: 'branco', rank: 'Memória' },
    '10-28': { title: 'São Simão e São Judas Tadeu, Apóstolos', color: 'vermelho', rank: 'Festa' },

    '11-1': { title: 'Solenidade de Todos os Santos', color: 'branco', rank: 'Solenidade' },
    '11-2': { title: 'Comemoração de Todos os Fiéis Defuntos (Finados)', color: 'roxo', rank: 'Comemoração' },
    '11-4': { title: 'São Carlos Borromeu, Bispo', color: 'branco', rank: 'Memória' },
    '11-9': { title: 'Dedicação da Basílica de Latrão', color: 'branco', rank: 'Festa' },
    '11-10': { title: 'São Leão Magno, Papa e Doutor', color: 'branco', rank: 'Memória' },
    '11-11': { title: 'Memória de São Martinho de Tours, Bispo', color: 'branco', rank: 'Memória' },
    '11-12': { title: 'São Josafá, Bispo e Mártir', color: 'vermelho', rank: 'Memória' },
    '11-17': { title: 'Santa Isabel da Hungria, Religiosa', color: 'branco', rank: 'Memória' },
    '11-21': { title: 'Apresentação de Nossa Senhora', color: 'branco', rank: 'Memória' },
    '11-22': { title: 'Santa Cecília, Virgem e Mártir, Padroeira dos Músicos e Cantores', color: 'vermelho', rank: 'Memória' },
    '11-24': { title: 'Santo André Dung-Lac e Companheiros, Mártires', color: 'vermelho', rank: 'Memória' },
    '11-30': { title: 'Santo André, Apóstolo', color: 'vermelho', rank: 'Festa' },

    '12-3': { title: 'São Francisco Xavier, Presbítero', color: 'branco', rank: 'Memória' },
    '12-7': { title: 'Santo Ambrósio, Bispo e Doutor', color: 'branco', rank: 'Memória' },
    '12-8': { title: 'Solenidade da Imaculada Conceição da Bem-Aventurada Virgem Maria', color: 'branco', rank: 'Solenidade' },
    '12-12': { title: 'Nossa Senhora de Guadalupe, Padroeira da América Latina', color: 'branco', rank: 'Festa' },
    '12-13': { title: 'Santa Luzia, Virgem e Mártir', color: 'vermelho', rank: 'Memória' },
    '12-14': { title: 'São João da Cruz, Presbítero e Doutor', color: 'branco', rank: 'Memória' },
    '12-25': { title: 'Solenidade do Natal de Nosso Senhor Jesus Cristo', color: 'branco', rank: 'Solenidade' },
    '12-26': { title: 'Santo Estêvão, Primeiro Mártir', color: 'vermelho', rank: 'Festa' },
    '12-27': { title: 'São João, Apóstolo e Evangelista', color: 'branco', rank: 'Festa' },
    '12-28': { title: 'Santos Inocentes, Mártires', color: 'vermelho', rank: 'Festa' }
  };

  /**
   * Descrição teológica da cor litúrgica
   */
  const COLOR_MEANINGS = {
    verde: 'O verde simboliza a esperança, a vida que cresce na graça e o seguimento fiel de Cristo no cotidiano do Tempo Comum.',
    branco: 'O branco simboliza a pureza, a luz divina, a alegria da ressurreição, as festas do Senhor, da Virgem Maria e dos santos.',
    vermelho: 'O vermelho simboliza o fogo do Espírito Santo (Pentecostes) e o sangue derramado no amor e martírio pelos apóstolos e santos mártires.',
    roxo: 'O roxo simboliza a penitência, a conversão, o recolhimento, a expectativa vigilante (Advento) e a oração pelos fiéis defuntos.',
    rosa: 'O rosa expressa o alívio e a alegria suave da proximidade da salvação nos domingos Gaudete (Advento) e Laetare (Quaresma).'
  };

  /**
   * Calcula as informações litúrgicas completas de um dia
   */
  function getLiturgicalDayInfo(date) {
    const y = date.getFullYear();
    const m = date.getMonth();
    const d = date.getDate();
    const dow = date.getDay(); // 0 = Domingo

    const easter = getEaster(y);
    const ashWednesday = addDays(easter, -46);
    const palmSunday = addDays(easter, -7);
    const holyThursday = addDays(easter, -3);
    const goodFriday = addDays(easter, -2);
    const holySaturday = addDays(easter, -1);
    const divineMercySunday = addDays(easter, 7);
    const ascension = addDays(easter, 42); // 7º domingo da Páscoa no Brasil
    const pentecost = addDays(easter, 49);
    const trinity = addDays(easter, 56);
    const corpusChristi = addDays(easter, 60); // Quinta-feira
    const sacredHeart = addDays(easter, 68);

    const adventStart = getAdventStart(y);
    const xmas = new Date(y, 11, 25);
    const epiphany = getEpiphanySunday(y);
    const baptism = addDays(epiphany, 7);

    // 1. Tríduo Pascal & Semana Santa (Precedência máxima)
    if (isSameDay(date, easter)) {
      return buildInfo(date, 'Domingo da Páscoa na Ressurreição do Senhor', 'branco', 'Solenidade', 'Páscoa', 'Tríduo Pascal');
    }
    if (isSameDay(date, holySaturday)) {
      return buildInfo(date, 'Sábado Santo — Vigília Pascal na Noite Santa', 'branco', 'Solenidade', 'Páscoa', 'Tríduo Pascal');
    }
    if (isSameDay(date, goodFriday)) {
      return buildInfo(date, 'Sexta-feira Santa da Paixão do Senhor', 'vermelho', 'Solenidade', 'Quaresma', 'Semana Santa');
    }
    if (isSameDay(date, holyThursday)) {
      return buildInfo(date, 'Quinta-feira Santa — Missa da Ceia do Senhor', 'branco', 'Solenidade', 'Quaresma', 'Semana Santa');
    }
    if (isSameDay(date, palmSunday)) {
      return buildInfo(date, 'Domingo de Ramos e da Paixão do Senhor', 'vermelho', 'Solenidade', 'Quaresma', 'Semana Santa');
    }
    if (date > palmSunday && date < holyThursday) {
      return buildInfo(date, `${getWeekdayName(dow)}-feira da Semana Santa`, 'roxo', 'Féria Maior', 'Quaresma', 'Semana Santa');
    }

    // 2. Solenidades Móveis
    if (isSameDay(date, pentecost)) {
      return buildInfo(date, 'Domingo de Pentecostes', 'vermelho', 'Solenidade', 'Pentecostes', 'Páscoa');
    }
    if (isSameDay(date, corpusChristi)) {
      return buildInfo(date, 'Solenidade do Santíssimo Corpo e Sangue de Cristo (Corpus Christi)', 'branco', 'Solenidade', 'Tempo Comum', 'Solenidade');
    }
    if (isSameDay(date, trinity)) {
      return buildInfo(date, 'Solenidade da Santíssima Trindade', 'branco', 'Solenidade', 'Tempo Comum', 'Solenidade');
    }
    if (isSameDay(date, sacredHeart)) {
      return buildInfo(date, 'Solenidade do Sagrado Coração de Jesus', 'branco', 'Solenidade', 'Tempo Comum', 'Solenidade');
    }
    if (isSameDay(date, ashWednesday)) {
      return buildInfo(date, 'Quarta-feira de Cinzas (Início da Quaresma)', 'roxo', 'Solenidade Litúrgica', 'Quaresma', 'Quaresma');
    }

    // 3. Cristo Rei (34º Domingo do Tempo Comum, domingo anterior ao Advento)
    const christTheKing = addDays(adventStart, -7);
    if (isSameDay(date, christTheKing)) {
      return buildInfo(date, 'Solenidade de Nosso Senhor Jesus Cristo, Rei do Universo', 'branco', 'Solenidade', 'Tempo Comum', '34ª Semana');
    }

    // 3b. Solenidades Fixas (Imaculada Conceição, São José, Anunciação, etc.) têm precedência sobre férias do Advento/Quaresma
    const earlyFeastKey = `${m + 1}-${d}`;
    const earlyFixed = FIXED_FEASTS[earlyFeastKey];
    if (earlyFixed && earlyFixed.rank === 'Solenidade' && dow !== 0 && !isSameDay(date, xmas) && date >= baptism) {
      const feastSeason = (date >= adventStart && date < xmas) ? 'Advento' : (date > ashWednesday && date < palmSunday) ? 'Quaresma' : 'Tempo Comum';
      return buildInfo(date, earlyFixed.title, earlyFixed.color, earlyFixed.rank, feastSeason, earlyFixed.rank);
    }

    // 4. Advento
    if (date >= adventStart && date < xmas) {
      const diffDays = Math.floor((date - adventStart) / 86400000);
      const advWeek = Math.floor(diffDays / 7) + 1;
      if (dow === 0) {
        const isGaudete = advWeek === 3;
        return buildInfo(date, `${advWeek}º Domingo do Advento${isGaudete ? ' (Domingo Gaudete)' : ''}`, isGaudete ? 'rosa' : 'roxo', 'Domingo', 'Advento', `${advWeek}ª Semana`);
      }
      return buildInfo(date, `${getWeekdayName(dow)}-feira da ${advWeek}ª Semana do Advento`, 'roxo', 'Féria', 'Advento', `${advWeek}ª Semana`);
    }

    // 5. Natal e Oitavário + Tempo do Natal (até o Batismo do Senhor)
    if (isSameDay(date, xmas)) {
      return buildInfo(date, 'Solenidade do Natal do Senhor', 'branco', 'Solenidade', 'Natal', 'Oitava');
    }
    if (date > xmas && date <= new Date(y, 11, 31)) {
      const xmasDow = xmas.getDay();
      const isHolyFamily = xmasDow === 0 ? isSameDay(date, new Date(y, 11, 30)) : dow === 0;
      if (isHolyFamily) {
        return buildInfo(date, 'Festa da Sagrada Família de Jesus, Maria e José', 'branco', 'Festa', 'Natal', 'Oitava');
      }
      const decFeast = FIXED_FEASTS[`${m + 1}-${d}`];
      if (decFeast) {
        return buildInfo(date, decFeast.title, decFeast.color, decFeast.rank, 'Natal', 'Oitava');
      }
      return buildInfo(date, `Dia na Oitava do Natal (${d} de Dezembro)`, 'branco', 'Festa', 'Natal', 'Oitava');
    }
    if (date < baptism) {
      if (m === 0 && d === 1) {
        return buildInfo(date, 'Solenidade de Santa Maria, Mãe de Deus', 'branco', 'Solenidade', 'Natal', 'Oitava');
      }
      if (isSameDay(date, epiphany)) {
        return buildInfo(date, 'Solenidade da Epifania do Senhor', 'branco', 'Solenidade', 'Natal', 'Tempo do Natal');
      }
      const janFeast = FIXED_FEASTS[`${m + 1}-${d}`];
      if (janFeast && dow !== 0) {
        return buildInfo(date, janFeast.title, janFeast.color, janFeast.rank, 'Natal', 'Tempo do Natal');
      }
      if (dow === 0) {
        return buildInfo(date, '2º Domingo depois do Natal', 'branco', 'Domingo', 'Natal', 'Tempo do Natal');
      }
      return buildInfo(date, `${getWeekdayName(dow)}-feira do Tempo do Natal`, 'branco', 'Féria', 'Natal', 'Tempo do Natal');
    }
    if (isSameDay(date, baptism)) {
      return buildInfo(date, 'Festa do Batismo do Senhor', 'branco', 'Festa', 'Natal', 'Tempo do Natal');
    }

    // 6. Quaresma
    if (date > ashWednesday && date < palmSunday) {
      const daysSinceAsh = Math.floor((date - ashWednesday) / 86400000);
      const lentWeek = Math.floor((daysSinceAsh - 4) / 7) + 1;
      if (dow === 0) {
        const isLaetare = lentWeek === 4;
        return buildInfo(date, `${lentWeek}º Domingo da Quaresma${isLaetare ? ' (Domingo Laetare)' : ''}`, isLaetare ? 'rosa' : 'roxo', 'Domingo', 'Quaresma', `${lentWeek}ª Semana`);
      }
      return buildInfo(date, `${getWeekdayName(dow)}-feira da ${Math.max(1, lentWeek)}ª Semana da Quaresma`, 'roxo', 'Féria', 'Quaresma', `${lentWeek}ª Semana`);
    }

    // 7. Tempo Pascal
    if (date > easter && date < pentecost) {
      const easterDiff = Math.floor((date - easter) / 86400000);
      const easterWeek = Math.floor(easterDiff / 7) + 1;
      if (easterDiff < 7) {
        return buildInfo(date, `${getWeekdayName(dow)}-feira na Oitava da Páscoa`, 'branco', 'Festa', 'Páscoa', 'Oitava Pascal');
      }
      if (dow === 0) {
        if (easterWeek === 2) {
          return buildInfo(date, '2º Domingo da Páscoa (Domingo da Divina Misericórdia)', 'branco', 'Solenidade', 'Páscoa', '2ª Semana');
        }
        if (isSameDay(date, ascension)) {
          return buildInfo(date, 'Solenidade da Ascensão do Senhor (7º Domingo da Páscoa)', 'branco', 'Solenidade', 'Páscoa', '7ª Semana');
        }
        return buildInfo(date, `${easterWeek}º Domingo da Páscoa`, 'branco', 'Domingo', 'Páscoa', `${easterWeek}ª Semana`);
      }
      return buildInfo(date, `${getWeekdayName(dow)}-feira da ${easterWeek}ª Semana do Tempo Pascal`, 'branco', 'Féria', 'Páscoa', `${easterWeek}ª Semana`);
    }

    // 8. Solenidades / Festas / Memórias Fixas do Santoral
    const feastKey = `${m + 1}-${d}`;
    const fixedFeast = FIXED_FEASTS[feastKey];
    if (fixedFeast && dow !== 0) {
      return buildInfo(date, fixedFeast.title, fixedFeast.color, fixedFeast.rank, 'Tempo Comum', fixedFeast.rank);
    }
    // No Brasil, Solenidade de Todos os Santos e N. Sra Aparecida têm precedência
    if (fixedFeast && fixedFeast.rank === 'Solenidade') {
      return buildInfo(date, fixedFeast.title, fixedFeast.color, fixedFeast.rank, 'Tempo Comum', fixedFeast.rank);
    }

    // 9. Tempo Comum padrão (Domingos e Férias)
    const ordinaryWeek = calculateOrdinaryWeek(date, baptism, ashWednesday, pentecost, christTheKing);
    if (dow === 0) {
      return buildInfo(date, `${ordinaryWeek}º Domingo do Tempo Comum`, 'verde', 'Domingo', 'Tempo Comum', `${ordinaryWeek}ª Semana`);
    }
    return buildInfo(date, `${getWeekdayName(dow)}-feira da ${ordinaryWeek}ª Semana do Tempo Comum`, 'verde', 'Féria', 'Tempo Comum', `${ordinaryWeek}ª Semana`);
  }

  function getEpiphanySunday(year) {
    // Primeiro domingo após 1 de janeiro (entre 2 e 8 de janeiro)
    for (let d = 2; d <= 8; d++) {
      const dt = new Date(year, 0, d);
      if (dt.getDay() === 0) return dt;
    }
    return new Date(year, 0, 6);
  }

  function getWeekdayName(dow) {
    const names = ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'];
    return names[dow] || '';
  }

  function calculateOrdinaryWeek(date, baptism, ash, pentecost, christTheKing) {
    if (date < ash) {
      const diff = Math.floor((date - baptism) / 86400000);
      return Math.max(1, Math.floor(diff / 7) + 1);
    }
    // Segunda parte do Tempo Comum (Cristo Rei = 34º Domingo; seg-sáb após Cristo Rei = 34ª Semana)
    const daysAfterChristKing = Math.floor((date - christTheKing) / 86400000);
    return Math.max(1, Math.min(34, 34 + Math.floor(daysAfterChristKing / 7)));
  }

  /**
   * Constrói o objeto consolidado com leituras e cantos recomendados
   */
  function buildInfo(date, title, color, rank, season, weekOrNote) {
    const colorNames = { verde: 'Verde', branco: 'Branco', vermelho: 'Vermelho', roxo: 'Roxo', rosa: 'Rosa' };
    const readings = getDailyReadings(date, title, season, rank);
    const suggestions = getSongSuggestions(date, title, color, season, rank, readings);

    const isSolenidade = rank === 'Solenidade' || rank === 'Solenidade Litúrgica';
    const isFesta = rank === 'Festa' || rank === 'Festa no Brasil';
    const isMemoria = rank === 'Memória' || rank === 'Memória no Brasil' || rank === 'Memória Facultativa';
    const isDomingo = date.getDay() === 0;
    const isFeria = !isSolenidade && !isFesta && !isMemoria && !isDomingo;

    let rankLabel = rank;
    let rankPillClass = 'pill-feria';
    let rankRuleHtml = '';

    if (isSolenidade) {
      rankLabel = 'Solenidade';
      rankPillClass = 'pill-solenidade';
      rankRuleHtml = `
        <div class="cal-liturgical-rule-box rule-solenidade">
          <div class="rule-icon">${SC.ICONS.sparkle}</div>
          <div class="rule-text">
            <strong>Norma Litúrgica de Solenidade:</strong>
            Grau supremo do Ano Litúrgico. Missa solene com Hino de Louvor (Glória), três leituras bíblicas completas (1ª Leitura, 2ª Leitura e Evangelho) e Profissão de Fé (Credo). O repertório musical deve expressar júbilo e solenidade festiva.
          </div>
        </div>
      `;
    } else if (isFesta) {
      rankLabel = 'Festa';
      rankPillClass = 'pill-festa';
      rankRuleHtml = `
        <div class="cal-liturgical-rule-box rule-festa">
          <div class="rule-icon">${SC.ICONS.star}</div>
          <div class="rule-text">
            <strong>Norma Litúrgica de Festa:</strong>
            Celebração festiva com Hino de Louvor (Glória), duas leituras bíblicas (1ª Leitura e Evangelho) e <u>sem Credo</u>.
          </div>
        </div>
      `;
    } else if (isMemoria) {
      const isFac = rank === 'Memória Facultativa';
      rankLabel = isFac ? 'Memória Facultativa' : 'Memória de Santo';
      rankPillClass = isFac ? 'pill-memoria-fac' : 'pill-memoria';
      rankRuleHtml = `
        <div class="cal-liturgical-rule-box rule-memoria">
          <div class="rule-icon">${SC.ICONS.cross}</div>
          <div class="rule-text">
            <strong>Distinção Litúrgica — Memória de Santo:</strong>
            Nem toda memória é Solenidade! Conforme a Instrução Geral do Missal Romano (IGMR 53 e 68), na Memória de Santo a liturgia preserva a sobriedade ferial: <u>NÃO se canta o Glória nem se reza o Credo</u> (salvo se for padroeiro principal local), havendo apenas uma leitura antes do Evangelho. Os cantos devem sintonizar com as virtudes, o serviço fraterno ou o martírio do santo.
          </div>
        </div>
      `;
    } else if (isDomingo) {
      rankLabel = 'Domingo do Senhor';
      rankPillClass = 'pill-domingo';
      rankRuleHtml = `
        <div class="cal-liturgical-rule-box rule-feria">
          <div class="rule-icon">${SC.ICONS.sun}</div>
          <div class="rule-text">
            <strong>Domingo do Senhor:</strong>
            Dia do Senhor e Páscoa semanal dos cristãos. Missa com Glória (exceto no Advento e Quaresma), três leituras completas e Credo.
          </div>
        </div>
      `;
    } else {
      rankLabel = 'Dia Ferial';
      rankPillClass = 'pill-feria';
      rankRuleHtml = `
        <div class="cal-liturgical-rule-box rule-feria">
          <div class="rule-icon">${SC.ICONS.leaf}</div>
          <div class="rule-text">
            <strong>Dia Ferial do Tempo Litúrgico:</strong>
            Missa cotidiana da assembleia sem Glória e sem Credo, focada na meditação contínua da Palavra de Deus.
          </div>
        </div>
      `;
    }

    return {
      date,
      dayNumber: date.getDate(),
      month: date.getMonth(),
      year: date.getFullYear(),
      weekday: date.getDay(),
      celebration: title,
      color,
      colorName: colorNames[color] || 'Verde',
      colorMeaning: COLOR_MEANINGS[color] || COLOR_MEANINGS.verde,
      rank,
      isSolenidade,
      isFesta,
      isMemoria,
      isDomingo,
      isFeria,
      rankLabel,
      rankPillClass,
      rankRuleHtml,
      season,
      cycle: getLiturgicalCycle(date),
      weekOrNote,
      readings,
      suggestions
    };
  }

  /**
   * Base de Leituras Bíblicas para o dia
   */
  function getDailyReadings(date, title, season, rank) {
    const m = date.getMonth() + 1;
    const d = date.getDate();
    const dow = date.getDay();

    // São Martinho de Tours (11 de Novembro) - Citado expressamente pelo usuário!
    if (m === 11 && d === 11) {
      return {
        firstReading: { ref: 'Tt 2, 1-8.11-14', theme: 'Vivamos neste mundo com justiça, sobriedade e piedade, aguardando a bendita esperança.' },
        psalm: { ref: 'Sl 36 (37)', refrain: 'A salvação dos justos vem de Deus, ele é o refúgio na tribulação!' },
        gospel: { ref: 'Lc 17, 7-10', theme: '“Somos servos inúteis; fizemos com alegria somente o que devíamos fazer.”' }
      };
    }

    // Santa Cecília (22 de Novembro) - Padroeira dos Músicos!
    if (m === 11 && d === 22) {
      return {
        firstReading: { ref: 'Os 2, 16b.17b.21-22', theme: 'Eu te desposarei para sempre na fidelidade e na misericórdia.' },
        psalm: { ref: 'Sl 44 (45)', refrain: 'Escutai, minha filha, olhai, ouvi isto: o Rei se encantou com vossa beleza!' },
        gospel: { ref: 'Mt 25, 1-13', theme: 'As virgens prudentes saem ao encontro do Noivo divino com lâmpadas acesas.' }
      };
    }

    // Nossa Senhora Aparecida (12 de Outubro)
    if (m === 10 && d === 12) {
      return {
        firstReading: { ref: 'Est 5, 1b-2; 7, 2b-3', theme: 'Ester suplica pelo seu povo diante do rei.' },
        psalm: { ref: 'Sl 44 (45)', refrain: 'Escutai, minha filha, olhai: o Rei se encantou com vossa formosura!' },
        secondReading: { ref: 'Ap 12, 1.5.13a.15-16a', theme: 'Uma Mulher vestida de sol, tendo a lua debaixo dos pés.' },
        gospel: { ref: 'Jo 2, 1-11', theme: 'As Bodas de Caná: “Fazei tudo o que Ele vos disser!”' }
      };
    }

    // Todos os Santos (1 de Novembro)
    if (m === 11 && d === 1) {
      return {
        firstReading: { ref: 'Ap 7, 2-4.9-14', theme: 'Uma multidão imensa de pé diante do Cordeiro, vestidos com vestes brancas.' },
        psalm: { ref: 'Sl 23 (24)', refrain: 'É assim a geração dos que procuram o Senhor!' },
        secondReading: { ref: '1Jo 3, 1-3', theme: 'Vede que grande presente de amor o Pai nos deu: sermos chamados filhos de Deus.' },
        gospel: { ref: 'Mt 5, 1-12a', theme: 'O Sermão da Montanha: As Bem-Aventuranças do Reino dos Céus.' }
      };
    }

    // Finados (2 de Novembro)
    if (m === 11 && d === 2) {
      return {
        firstReading: { ref: 'Jó 19, 1.23-27a', theme: '“Eu sei que o meu Redentor vive e que no último dia ressurgirei da terra.”' },
        psalm: { ref: 'Sl 22 (23)', refrain: 'O Senhor é o meu pastor, nada me faltará!' },
        secondReading: { ref: 'Rm 5, 5-11', theme: 'A esperança não engana: fomos reconciliados por meio da morte do Seu Filho.' },
        gospel: { ref: 'Jo 6, 37-40', theme: '“Quem crê no Filho tem a vida eterna, e Eu o ressuscitarei no último dia.”' }
      };
    }

    // Leituras típicas de Domingo ou Féria de acordo com a época
    if (season === 'Quaresma') {
      return {
        firstReading: { ref: 'Is 58, 1-9a', theme: 'O verdadeiro jejum é abrir as prisões injustas e saciar o faminto.' },
        psalm: { ref: 'Sl 50 (51)', refrain: 'Misericórdia, ó Senhor, pois pecamos e necessitamos do Teu perdão!' },
        gospel: { ref: 'Lc 15, 11-32', theme: 'A Parábola do Filho Pródigo e o abraço do Pai misericordioso.' }
      };
    }

    if (season === 'Páscoa') {
      return {
        firstReading: { ref: 'At 2, 42-47', theme: 'A primeira comunidade cristã era unida na fração do pão e na oração.' },
        psalm: { ref: 'Sl 117 (118)', refrain: 'Este é o dia que o Senhor fez: alegremo-nos e nele exultemos!' },
        gospel: { ref: 'Jo 20, 19-31', theme: 'Jesus aparece aos discípulos e doa a Sua Paz e o Espírito Santo.' }
      };
    }

    if (season === 'Advento') {
      return {
        firstReading: { ref: 'Is 2, 1-5', theme: 'O Senhor reunirá todas as nações no monte santo de Sua casa.' },
        psalm: { ref: 'Sl 121 (122)', refrain: 'Que alegria quando me disseram: “Vamos à casa do Senhor!”' },
        gospel: { ref: 'Mt 24, 37-44', theme: '“Ficai atentos e vigilantes, pois não sabeis a que hora virá o Senhor.”' }
      };
    }

    // Tempo Comum padrão
    return {
      firstReading: { ref: 'Fl 4, 10-19', theme: 'Tudo posso Naquele que me fortalece na fé e no amor fraterno.' },
      psalm: { ref: 'Sl 111 (112)', refrain: 'Feliz o homem que teme o Senhor e põe o seu amor em Seus mandamentos!' },
      gospel: { ref: 'Lc 14, 1.7-11', theme: '“Quem se eleva será humilhado, e quem se humilha será elevado.”' }
    };
  }

  /**
   * Curadoria Inteligente de Cantos para o dia
   */
  function getSongSuggestions(date, title, color, season, rank, readings) {
    const y = date.getFullYear();
    const dayOfYear = Math.floor((date - new Date(y, 0, 0)) / 86400000);
    const daySeed = y * 366 + dayOfYear;
    const isLent = season === 'Quaresma' || season === 'Semana Santa';
    const isEaster = season === 'Páscoa';
    const isAdvent = season === 'Advento';
    const isChristmas = season === 'Natal';
    const titleLower = (title || '').toLowerCase();
    const isMarian = /(nossa senhora|maria|imaculada|assunção|aparecida|fátima|guadalupe)/i.test(titleLower);

    const allLiturgical = Array.isArray(SC.state && SC.state.songs)
      ? SC.state.songs.filter(s => s && s.repertoireType !== 'popular')
      : [];

    const SLOT_DEFS = [
      {
        moment: 'Entrada',
        match: m => m === 'Entrada' || m === 'Entrada / Acolhida' || m === 'Entrada / Vocacional' || m === 'Entrada / Missões' || m === 'Entrada / Advento' || m === 'Entrada / Natal' || m === 'Natal / Entrada' || m === 'Entrada / Final' || m === 'Entrada / Campanha da Fraternidade',
        whyDefault: 'Canto processional de abertura que congrega a assembleia para a celebração.'
      },
      {
        moment: 'Salmo',
        match: m => m === 'Salmo' || m === 'Salmo / Meditação',
        whyDefault: 'Salmo Responsorial meditativo que responde à Palavra proclamada.'
      },
      {
        moment: 'Aclamação',
        match: m => m === 'Aclamação' || m === 'Aclamação ao Evangelho' || m === 'Aclamação / Comunhão',
        whyDefault: isLent
          ? 'Aclamação quaresmal ao Evangelho sem Aleluia, conforme determina a IGMR (n. 62).'
          : 'Aclamação festiva para acolher a proclamação do Santo Evangelho.'
      },
      {
        moment: 'Ofertório',
        match: m => m === 'Ofertório' || m === 'Oferendas' || m === 'Ofertório / Comunhão',
        whyDefault: 'Canto de preparação das oferendas (pão e vinho) levadas ao altar.'
      },
      {
        moment: 'Comunhão',
        match: m => m === 'Comunhão' || m === 'Comunhão / Ação de Graças' || m === 'Comunhão / Semana Santa' || m === 'Comunhão / Lava-Pés' || m === 'Comunhão / Matrimônio' || m === 'Comunhão / Quaresma' || m === 'Acolhida / Comunhão' || m === 'Família / Comunhão' || m === 'Comunhão / Batismo' || m === 'Comunhão / Vocacional' || m === 'Comunhão / Emaús' || m === 'Vocacional / Comunhão' || m === 'Matrimônio / Comunhão' || m === 'Comunhão / Adoração' || m === 'Comunhão / Meditação',
        whyDefault: 'Canto eucarístico que acompanha a procissão e partilha do Corpo e Sangue de Cristo.'
      },
      {
        moment: 'Final',
        match: m => m === 'Final' || m === 'Final / Envio' || m === 'Final e Envio' || m === 'Final e Envio / Mariano' || m === 'Ação de Graças',
        whyDefault: 'Canto de envio missionário que conclui a celebração com louvor.'
      }
    ];

    const SEASON_LOCKED_RE = /(quaresma|semana santa|cinzas|paixão|páscoa|pascal|advento|natal|epifania|pentecostes|corpus christi|cristo rei|finados|todos os santos|ramos|lava-pés)/i;

    function hasAleluia(song) {
      const hay = ((song.id || '') + ' ' + (song.title || '') + ' ' + (song.cifra || '')).toLowerCase();
      return /aleluia|alleluia/.test(hay);
    }

    function pickForSlot(slot, slotIdx) {
      if (!allLiturgical.length) return null;
      let pool = allLiturgical.filter(s => slot.match(s.liturgicalMoment || ''));
      if (!pool.length) return null;

      // IGMR 62: Nunca sugerir Aleluia na Quaresma / Semana Santa
      if (isLent) {
        const noAleluia = pool.filter(s => !hasAleluia(s));
        if (noAleluia.length) pool = noAleluia;
      }

      // Filtragem / priorização por Tempo Litúrgico
      const seasonTag = s => ((s.liturgicalSeason || '') + ' ' + (s.specialDay || '') + ' ' + (s.title || '') + ' ' + (s.liturgicalMoment || '')).toLowerCase();
      let preferred = [];

      const notSequence = s => !/sequência|lauda sion|victimae paschali|veni sancte spiritus/i.test((s.title || '') + ' ' + (s.id || ''));

      if (isLent) {
        preferred = pool.filter(s => notSequence(s) && /(quaresma|cinzas|semana santa|paixão|attende domine|louvor e glória|conversão|deserto|salmo 50|salmo 21|salmo 30)/i.test(seasonTag(s)) && !/(natal|páscoa|pentecostes|corpus christi)/i.test(seasonTag(s)));
      } else if (isEaster) {
        preferred = pool.filter(s => notSequence(s) && /(páscoa|pascal|ressusc|exsultet|este é o dia)/i.test(seasonTag(s)) && !/(quaresma|cinzas|natal|advento|finados)/i.test(seasonTag(s)));
      } else if (isAdvent) {
        preferred = pool.filter(s => notSequence(s) && /(advento|maranatha|da cepa brotou|vigília|vigiai|eis que vem|prepara)/i.test(seasonTag(s)) && !/(pentecostes|corpus christi|páscoa|quaresma)/i.test(seasonTag(s)));
      } else if (isChristmas) {
        preferred = pool.filter(s => notSequence(s) && /(natal|epifania|menino|belém|adeste|noite feliz|hoje nasceu)/i.test(seasonTag(s)) && !/(corpus christi|pentecostes|páscoa|quaresma)/i.test(seasonTag(s)));
      } else if (isMarian) {
        preferred = pool.filter(s => notSequence(s) && /(maria|nossa senhora|mariano|aparecida|magnificat|serva)/i.test(seasonTag(s)));
      }

      // Em Tempo Comum padrão, evitar cantos presos a outros tempos fortes (Natal, Quaresma, Páscoa, Advento, Finados)
      if (!preferred.length) {
        const neutral = pool.filter(s => {
          const ls = (s.liturgicalSeason || 'Qualquer');
          if (ls === 'Qualquer' || ls === 'Tempo Comum' || ls === 'Todas') {
            return !SEASON_LOCKED_RE.test((s.title || '') + ' ' + (s.specialDay || '')) && notSequence(s);
          }
          return false;
        });
        preferred = neutral.length ? neutral : pool;
      }

      const sorted = preferred.slice().sort((a, b) => (a.id < b.id ? -1 : a.id > b.id ? 1 : 0));
      const idx = Math.abs(daySeed * 7 + slotIdx * 37) % sorted.length;
      const chosen = sorted[idx];

      return {
        moment: slot.moment,
        songId: chosen.id,
        title: chosen.title,
        composer: chosen.composer || 'Repertório Litúrgico',
        why: chosen.liturgicalAnalysis && chosen.liturgicalAnalysis.length < 180
          ? chosen.liturgicalAnalysis
          : slot.whyDefault
      };
    }

    const dynamicSuggestions = SLOT_DEFS.map((slot, idx) => pickForSlot(slot, idx)).filter(Boolean);
    if (dynamicSuggestions.length >= 4) {
      return dynamicSuggestions;
    }

    if (isLent) {
      return [
        { moment: 'Entrada', songId: 'eis-o-tempo-de-conversao', title: 'Eis o Tempo de Conversão', composer: 'Pe. José Weber / CNBB', why: 'Abertura sóbria própria do caminho quaresmal.' },
        { moment: 'Salmo', songId: 'salmo-50-piedade-o-senhor-tende-piedade-quaresma', title: 'Piedade, Ó Senhor, Tende Piedade (Salmo 50)', composer: 'Pe. José Weber / CNBB', why: 'Salmo penitencial de confiança na misericórdia divina.' },
        { moment: 'Aclamação', songId: 'louvor-e-gloria-a-ti-senhor-quaresma', title: 'Louvor e Glória a Ti, Senhor', composer: 'Lecionário Romano / CNBB', why: 'Aclamação quaresmal sem Aleluia (IGMR 62).' },
        { moment: 'Ofertório', songId: 'sabes-senhor-o-que-temos', title: 'Sabes, Senhor, o que Temos É Tão Pouco pra Dar', composer: 'Pe. Lindberg Pires', why: 'Oferta humilde da vida junto ao pão e ao vinho.' },
        { moment: 'Comunhão', songId: 'pelos-prados-e-campinas-verdejantes', title: 'Pelos Prados e Campinas Verdejantes', composer: 'Frei Fabreti / Salmo 23', why: 'Comunhão serena e meditativa.' },
        { moment: 'Final', songId: 'vitoria-tu-reinaras-o-cruz-tu-nos-salvaras', title: 'Vitória, Tu Reinarás! Ó Cruz, Tu Nos Salvarás!', composer: 'Hinário Litúrgico CNBB', why: 'Envio na esperança da Cruz redentora.' }
      ];
    }

    return [
      { moment: 'Entrada', songId: 'toda-a-terra-te-exalta', title: 'Toda a Terra Te Adore, ó Senhor do Universo', composer: 'Hinário Litúrgico CNBB', why: 'Canto processional de abertura da celebração.' },
      { moment: 'Salmo', songId: 'salmo-22-o-senhor-e-o-pastor-que-me-conduz-pe-jose-weber', title: 'O Senhor É o Pastor Que Me Conduz (Salmo 22)', composer: 'Pe. José Weber, svd', why: 'Salmo responsorial de confiança no Bom Pastor.' },
      { moment: 'Aclamação', songId: 'aleluia-como-o-pai-me-amou', title: 'Aleluia, Como o Pai Me Amou', composer: 'Pe. Zezinho / Hinário Litúrgico', why: 'Aclamação festiva ao Santo Evangelho.' },
      { moment: 'Ofertório', songId: 'sabes-senhor-o-que-temos', title: 'Sabes, Senhor, o que Temos É Tão Pouco pra Dar', composer: 'Pe. Lindberg Pires', why: 'Apresentação das oferendas do pão e do vinho.' },
      { moment: 'Comunhão', songId: 'pelos-prados-e-campinas-verdejantes', title: 'Pelos Prados e Campinas Verdejantes', composer: 'Frei Fabreti / Salmo 23', why: 'Canto eucarístico da mesa do Senhor.' },
      { moment: 'Final', songId: 'o-povo-de-deus-no-deserto-andava', title: 'O Povo de Deus no Deserto Andava', composer: 'Pe. Zezinho / CNBB', why: 'Canto de envio da assembleia em missão.' }
    ];
  }

  // Expõe a função para consultas externas e testes
  SC.getLiturgicalDayInfo = getLiturgicalDayInfo;

  // ========================================================
  // RENDERIZAÇÃO DA INTERFACE DO CALENDÁRIO
  // ========================================================

  const MONTH_NAMES = [
    'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
    'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
  ];

  /**
   * Renderiza a visualização principal do calendário
   */
  SC.renderCalendarView = function renderCalendarView() {
    const { dom } = SC;
    if (!dom || !dom.calDaysGrid) return;

    const y = calState.viewYear;
    const m = calState.viewMonth;

    // Atualiza título do mês e ano
    if (dom.calCurrentMonthLabel) {
      dom.calCurrentMonthLabel.textContent = `${MONTH_NAMES[m]} ${y}`;
    }

    // Atualiza subtítulo do tempo litúrgico
    if (dom.calendarSeasonLabel) {
      const midMonthDay = new Date(y, m, 15);
      const midInfo = getLiturgicalDayInfo(midMonthDay);
      dom.calendarSeasonLabel.innerHTML = `
        <span class="lit-dot dot-${midInfo.color}"></span>
        ${SC.esc(midInfo.cycle)} • ${SC.esc(midInfo.season)} • ${SC.esc(midInfo.weekOrNote || '')}
      `;
    }

    // Constrói a grade do mês
    dom.calDaysGrid.innerHTML = '';

    const firstDayIndex = new Date(y, m, 1).getDay(); // 0-6 (Dom a Sáb)
    const daysInMonth = new Date(y, m + 1, 0).getDate();
    const daysInPrevMonth = new Date(y, m, 0).getDate();

    const today = new Date();

    // Dias do mês anterior (preenchimento para alinhar com o dia da semana)
    for (let i = firstDayIndex - 1; i >= 0; i--) {
      const prevDayNum = daysInPrevMonth - i;
      const prevDate = new Date(y, m - 1, prevDayNum);
      const info = getLiturgicalDayInfo(prevDate);
      const cell = createDayCell(prevDate, info, true, false, false);
      dom.calDaysGrid.appendChild(cell);
    }

    // Dias do mês atual
    for (let d = 1; d <= daysInMonth; d++) {
      const curDate = new Date(y, m, d);
      const info = getLiturgicalDayInfo(curDate);
      const isToday = isSameDay(curDate, today);
      const isSelected = isSameDay(curDate, calState.selectedDate);

      const cell = createDayCell(curDate, info, false, isToday, isSelected);
      dom.calDaysGrid.appendChild(cell);
    }

    // Dias do próximo mês para completar as semanas (múltiplo de 7)
    const totalRendered = firstDayIndex + daysInMonth;
    const nextPadding = totalRendered % 7 === 0 ? 0 : 7 - (totalRendered % 7);
    for (let d = 1; d <= nextPadding; d++) {
      const nextDate = new Date(y, m + 1, d);
      const info = getLiturgicalDayInfo(nextDate);
      const cell = createDayCell(nextDate, info, true, false, false);
      dom.calDaysGrid.appendChild(cell);
    }

    // Renderiza os detalhes do dia selecionado
    SC.renderSelectedDayDetail();
  };

  /**
   * Cria uma célula de dia para o grid com separação visual de Solenidades vs Memórias
   */
  function createDayCell(date, info, isPadding, isToday, isSelected) {
    const btn = document.createElement('button');
    btn.type = 'button';

    let rankClass = 'rank-feria';
    if (info.isSolenidade) rankClass = 'rank-solenidade';
    else if (info.isFesta) rankClass = 'rank-festa';
    else if (info.isMemoria) rankClass = 'rank-memoria';

    let isFilteredOut = false;
    if (!isPadding) {
      if (calState.filter === 'solenidades' && !info.isSolenidade) isFilteredOut = true;
      if (calState.filter === 'memorias' && !info.isMemoria) isFilteredOut = true;
      if (calState.filter === 'domingos' && !info.isDomingo) isFilteredOut = true;
    }

    btn.className = `cal-day-cell ${isPadding ? 'empty-day' : ''} ${isToday ? 'is-today' : ''} ${isSelected ? 'is-selected' : ''} ${date.getDay() === 0 ? 'is-sunday' : ''} ${rankClass} ${isFilteredOut ? 'cell-filtered-out' : ''}`;
    btn.setAttribute('aria-label', `${date.getDate()} de ${MONTH_NAMES[date.getMonth()]} de ${date.getFullYear()}: ${info.celebration} (${info.colorName} • ${info.rank})`);

    let rankIcon = '';
    if (info.isSolenidade) {
      rankIcon = '<span class="cal-rank-icon icon-solenidade" title="Solenidade">' + SC.ICONS.sparkle + '</span>';
    } else if (info.isFesta) {
      rankIcon = '<span class="cal-rank-icon icon-festa" title="Festa">' + SC.ICONS.star + '</span>';
    } else if (info.isMemoria) {
      rankIcon = '<span class="cal-rank-icon icon-memoria" title="Memória de Santo">' + SC.ICONS.cross + '</span>';
    }

    btn.innerHTML = `
      <div class="cal-day-top-bar">
        <span class="cal-day-num">${date.getDate()}</span>
        ${rankIcon}
      </div>
      <div class="cal-day-dots">
        <span class="lit-dot dot-${info.color} ${info.isSolenidade ? 'dot-solenidade' : ''}" title="${SC.esc(info.colorName)}: ${SC.esc(info.celebration)} (${SC.esc(info.rank)})"></span>
      </div>
    `;

    btn.addEventListener('click', () => {
      calState.selectedDate = date;
      // Se clicou em um dia de outro mês, navega para aquele mês
      if (date.getMonth() !== calState.viewMonth) {
        calState.viewYear = date.getFullYear();
        calState.viewMonth = date.getMonth();
      }
      SC.renderCalendarView();
    });

    return btn;
  }

  /**
   * Renderiza o painel de detalhes e músicas do dia selecionado
   */
  SC.renderSelectedDayDetail = function renderSelectedDayDetail() {
    const { dom } = SC;
    if (!dom || !dom.calDayDetailPanel) return;

    const info = getLiturgicalDayInfo(calState.selectedDate);
    const dateFormatted = calState.selectedDate.toLocaleDateString('pt-BR', {
      weekday: 'long',
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });

    // Moment icons
    const momentIcons = {
      'Entrada': SC.ICONS.door,
      'Salmo': SC.ICONS.book,
      'Aclamação': SC.ICONS.voice,
      'Ofertório': SC.ICONS.chalice,
      'Comunhão': SC.ICONS.host,
      'Final': SC.ICONS.send
    };

    let readingsHtml = '';
    if (info.readings) {
      const r = info.readings;
      readingsHtml = `
        <div class="cal-day-card">
          <h3 class="cal-section-subtitle">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/></svg>
            Leituras da Palavra de Deus
          </h3>
          <div class="cal-readings-list">
            ${r.firstReading ? `
              <div class="cal-reading-item">
                <div class="cal-reading-label">Primeira Leitura</div>
                <div class="cal-reading-ref">${SC.esc(r.firstReading.ref)}</div>
                <p class="cal-reading-theme">${SC.esc(r.firstReading.theme)}</p>
              </div>
            ` : ''}

            ${r.psalm ? `
              <div class="cal-reading-item">
                <div class="cal-reading-label">Salmo Responsorial</div>
                <div class="cal-reading-ref">${SC.esc(r.psalm.ref)}</div>
                <p class="cal-reading-theme"><strong>Refrão:</strong> ${SC.esc(r.psalm.refrain)}</p>
              </div>
            ` : ''}

            ${r.secondReading ? `
              <div class="cal-reading-item">
                <div class="cal-reading-label">Segunda Leitura</div>
                <div class="cal-reading-ref">${SC.esc(r.secondReading.ref)}</div>
                <p class="cal-reading-theme">${SC.esc(r.secondReading.theme)}</p>
              </div>
            ` : ''}

            ${r.gospel ? `
              <div class="cal-reading-item">
                <div class="cal-reading-label">Evangelho</div>
                <div class="cal-reading-ref">${SC.esc(r.gospel.ref)}</div>
                <p class="cal-reading-theme">${SC.esc(r.gospel.theme)}</p>
              </div>
            ` : ''}
          </div>
        </div>
      `;
    }

    let songsHtml = '';
    if (info.suggestions && info.suggestions.length > 0) {
      songsHtml = `
        <div class="cal-day-card">
          <h3 class="cal-section-subtitle">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 18V5l12-2v13"/><circle cx="6" cy="18" r="3"/><circle cx="18" cy="16" r="3"/></svg>
            Repertório Sugerido para a Santa Missa
          </h3>
          <p style="font-size: 0.86rem; color: var(--text-muted); margin: 0 0 16px 0;">
            Cantos selecionados segundo a liturgia do dia. Toque em qualquer música para abrir a cifra completa afinada com transporte e rolagem.
          </p>
          <div class="cal-songs-container">
            ${info.suggestions.map(s => {
              const icon = momentIcons[s.moment] || SC.ICONS.note;
              return `
                <div class="cal-song-item" data-song-id="${SC.esc(s.songId)}" role="button" tabindex="0" title="Abrir cifra de ${SC.esc(s.title)}">
                  <div class="cal-song-top">
                    <div>
                      <span class="cal-song-moment-tag">${icon} ${SC.esc(s.moment)}</span>
                      <h4 class="cal-song-title">${SC.esc(s.title)}</h4>
                      <p class="cal-song-composer">${SC.esc(s.composer)}</p>
                    </div>
                    <div class="cal-song-action-btn">
                      <span>Ver Cifra</span>
                      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 18l6-6-6-6"/></svg>
                    </div>
                  </div>
                  <p class="cal-song-why">
                    <strong>Por que cantar hoje:</strong> ${SC.esc(s.why)}
                  </p>
                </div>
              `;
            }).join('')}
          </div>
        </div>
      `;
    }

    dom.calDayDetailPanel.innerHTML = `
      <div class="cal-day-card cal-day-card-header">
        <div class="cal-day-badge-row">
          <span class="cal-color-pill">
            <span class="lit-dot dot-${info.color}"></span>
            Cor ${SC.esc(info.colorName)}
          </span>
          <span class="cal-rank-pill ${info.rankPillClass}">${SC.esc(info.rankLabel)}</span>
          <span class="cal-cycle-pill">${SC.esc(info.cycle)}</span>
        </div>
        <p class="cal-date-title">${SC.esc(dateFormatted)}</p>
        <h2 class="cal-celebration-title">${SC.esc(info.celebration)}</h2>
        <p class="cal-color-explanation">${SC.esc(info.colorMeaning)}</p>
        ${info.rankRuleHtml}
      </div>

      ${readingsHtml}
      ${songsHtml}
    `;

    // Vincula o clique nos cards de música para abrir a cifra no Santa Cifra
    const songCards = dom.calDayDetailPanel.querySelectorAll('.cal-song-item');
    songCards.forEach(card => {
      const songId = card.getAttribute('data-song-id');
      const openSong = () => {
        if (SC.openSongView) {
          SC.openSongView(songId, { history: 'push' });
        }
      };
      card.addEventListener('click', openSong);
      card.addEventListener('keydown', (e) => {
        if (e.key === 'Enter' || e.key === ' ') {
          e.preventDefault();
          openSong();
        }
      });
    });
  };

  /**
   * Vincula eventos de navegação e filtros do calendário
   */
  SC.bindCalendarEvents = function bindCalendarEvents() {
    const { dom } = SC;
    if (!dom) return;

    // Filtros por grau litúrgico
    const filterBtns = document.querySelectorAll('[data-cal-filter]');
    filterBtns.forEach(btn => {
      btn.addEventListener('click', () => {
        calState.filter = btn.getAttribute('data-cal-filter') || 'all';
        filterBtns.forEach(b => b.classList.toggle('active', b === btn));
        SC.renderCalendarView();
      });
    });

    if (dom.calPrevMonthBtn) {
      dom.calPrevMonthBtn.addEventListener('click', () => {
        calState.viewMonth -= 1;
        if (calState.viewMonth < 0) {
          calState.viewMonth = 11;
          calState.viewYear -= 1;
        }
        SC.renderCalendarView();
      });
    }

    if (dom.calNextMonthBtn) {
      dom.calNextMonthBtn.addEventListener('click', () => {
        calState.viewMonth += 1;
        if (calState.viewMonth > 11) {
          calState.viewMonth = 0;
          calState.viewYear += 1;
        }
        SC.renderCalendarView();
      });
    }

    if (dom.calTodayBtn) {
      dom.calTodayBtn.addEventListener('click', () => {
        const today = new Date();
        calState.viewYear = today.getFullYear();
        calState.viewMonth = today.getMonth();
        calState.selectedDate = today;
        SC.renderCalendarView();
      });
    }

    if (dom.tabCalendarBtn) {
      dom.tabCalendarBtn.addEventListener('click', () => {
        SC.state.activeQueuePlaylistId = null;
        SC.switchTab('calendar');
        window.scrollTo({ top: 0, behavior: 'smooth' });
      });
    }
  };

  /**
   * Inicializa o módulo do calendário
   */
  SC.initCalendar = function initCalendar() {
    SC.bindCalendarEvents();
  };

})();
