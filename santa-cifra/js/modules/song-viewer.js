/**
 * SANTA CIFRA — Leitor de Cifra, Transposição, Diagramas, Rolagem e Metrônomo
 */
window.SantaCifra = window.SantaCifra || {};

window.SantaCifra.openSongView = function openSongView(songOrId) {
  const { state, dom } = window.SantaCifra;
  const song = typeof songOrId === 'string'
    ? state.songs.find(s => s.id === songOrId)
    : songOrId;
  if (!song) return;
  state.currentSong = song;
  state.currentSemitones = 0;
  state.simplifyChords = false;
  dom.btnToggleSimplify.classList.remove('active');

  window.SantaCifra.switchTab('song');
  window.scrollTo({ top: 0, behavior: 'smooth' });

  if (state.activeQueuePlaylistId) {
    const folder = state.playlists.find(p => p.id === state.activeQueuePlaylistId);
    if (folder) {
      const validSongs = folder.songIds.map(id => state.songs.find(s => s.id === id)).filter(Boolean);
      dom.playlistQueueBar.classList.add('active');
      dom.queueFolderName.textContent = folder.name;
      dom.queuePositionText.textContent = `${state.activeQueueIndex + 1} / ${validSongs.length}`;
      dom.btnQueuePrev.disabled = state.activeQueueIndex <= 0;
      dom.btnQueueNext.disabled = state.activeQueueIndex >= validSongs.length - 1;
    }
  } else {
    dom.playlistQueueBar.classList.remove('active');
  }

  dom.songTitle.textContent = song.title;
  dom.songComposer.textContent = song.composer;
  dom.songMomentBadge.textContent = song.liturgicalMoment;
  dom.songSeasonBadge.textContent = song.liturgicalSeason;

  const repType = song.repertoireType || 'liturgica';
  if (dom.songRepertoireTypeBadge) {
    dom.songRepertoireTypeBadge.classList.remove('meta-pill-liturgica', 'meta-pill-popular');
    if (repType === 'liturgica') {
      dom.songRepertoireTypeBadge.textContent = 'Litúrgica · Santa Missa';
      dom.songRepertoireTypeBadge.classList.add('meta-pill-liturgica');
    } else {
      dom.songRepertoireTypeBadge.textContent = 'Popular · Fora da Missa';
      dom.songRepertoireTypeBadge.classList.add('meta-pill-popular');
    }
  }

  if (dom.songSpecialDayBadge) {
    const specDay = song.specialDay || 'Missa Dominical (Tempo Comum)';
    dom.songSpecialDayBadge.textContent = specDay;
  }

  if (dom.songNormCallout) {
    dom.songNormCallout.classList.remove('callout-liturgica', 'callout-popular');
    dom.songNormCallout.classList.add(repType === 'liturgica' ? 'callout-liturgica' : 'callout-popular');
    const analysis = song.liturgicalAnalysis || {};
    const igmrRef = analysis.igmrReference ? ` (${analysis.igmrReference})` : '';
    const bibRef = analysis.biblicalReference ? ` • Ref. Bíblica: ${analysis.biblicalReference}` : '';
    const normNote = song.liturgicalNormNote || analysis.normExplanation || '';
    dom.songNormCallout.innerHTML = `<strong>Orientação Litúrgica:</strong> ${normNote}${igmrRef}${bibRef}`;
  }

  dom.bpmDisplay.textContent = `${song.bpm || 80}`;
  dom.rhythmName.textContent = song.rhythmName || 'Balada';
  dom.rhythmArrows.textContent = song.rhythmPattern || '↓ ↓ ↑ ↑ ↓ ↑';
  dom.youtubeLink.href = song.youtubeUrl || `https://www.youtube.com/results?search_query=${encodeURIComponent(song.title + ' ' + song.composer)}`;

  window.SantaCifra.updateFavoriteButtonState();
  window.SantaCifra.renderCifraAndChords();
};

window.SantaCifra.updateFavoriteButtonState = function updateFavoriteButtonState() {
  const { state, dom, ICONS } = window.SantaCifra;
  if (!state.currentSong) return;
  const fav = window.SantaCifra.isSongFavorited(state.currentSong.id);
  dom.btnFavoriteCurrentSong.innerHTML = fav ? ICONS.heartFilled : ICONS.heartOutline;
  dom.btnFavoriteCurrentSong.classList.toggle('active', fav);
};

window.SantaCifra.renderCifraAndChords = function renderCifraAndChords() {
  const { state, dom } = window.SantaCifra;
  if (!state.currentSong) return;

  const T = window.Transposition || window.TranspositionEngine;
  const isChordTok = (tok) => (T.isLikelyChord ? T.isLikelyChord(tok) : T.isValidChord(tok));
  const renderDiag = (chord, inst) => (window.ChordsData.renderInstrumentSVG || window.ChordsData.getChordSVG)(chord, inst);

  let currentKey = T.transposeChord(state.currentSong.originalKey, state.currentSemitones);
  if (state.simplifyChords) {
    currentKey = T.simplifyChord(currentKey);
  }
  dom.currentKeyDisplay.textContent = currentKey;

  const processedText = T.processCifraText(
    state.currentSong.cifra,
    state.currentSemitones,
    state.simplifyChords
  );

  const uniqueChords = T.extractUniqueChords(processedText);

  const lines = processedText.split('\n');
  const htmlLines = lines.map(line => {
    if (/^\s*\[[^\]]+\]\s*$/.test(line)) {
      return line.replace(/\[([^\]]+)\]/g, '<span class="section-label">[$1]</span>');
    }

    if (T.isChordLine(line)) {
      return line.replace(/(\[[^\]]+\]|\S+)/g, (token) => {
        if (token.startsWith('[') && token.endsWith(']')) {
          return `<span class="section-label">${token}</span>`;
        }
        const clean = token.replace(/[(),]/g, '');
        if (isChordTok(clean)) {
          return `<span class="chord-token" data-chord="${clean}">${token}</span>`;
        }
        return token;
      });
    }
    return line;
  });

  dom.cifraPre.innerHTML = htmlLines.join('\n');
  dom.cifraPre.style.fontSize = `${state.fontSize}px`;

  dom.chordsTopBar.innerHTML = '';
  uniqueChords.forEach(chordName => {
    const box = document.createElement('div');
    box.className = 'chord-mini-box';
    box.innerHTML = `
      <div class="chord-mini-title">${chordName}</div>
      <div>${renderDiag(chordName, state.selectedInstrument)}</div>
    `;
    box.addEventListener('click', () => window.SantaCifra.openChordModal(chordName));
    dom.chordsTopBar.appendChild(box);
  });
};

window.SantaCifra.openChordModal = function openChordModal(chordName) {
  const { dom } = window.SantaCifra;
  const renderDiag = (chord, inst) => (window.ChordsData.renderInstrumentSVG || window.ChordsData.getChordSVG)(chord, inst);
  dom.modalChordName.textContent = chordName;
  dom.modalGuitarSvg.innerHTML = renderDiag(chordName, 'guitar');
  dom.modalKeyboardSvg.innerHTML = renderDiag(chordName, 'keyboard');
  dom.modalUkuleleSvg.innerHTML = renderDiag(chordName, 'ukulele');
  dom.modalCavacoSvg.innerHTML = renderDiag(chordName, 'cavaquinho');
  dom.chordDialog.showModal();
};

window.SantaCifra.startAutoScroll = function startAutoScroll() {
  const { state, dom, ICONS } = window.SantaCifra;
  if (state.scrollIntervalId) clearInterval(state.scrollIntervalId);
  state.isScrolling = true;
  dom.btnAutoScroll.classList.add('active');
  dom.scrollFloatingController.style.display = 'inline-flex';
  dom.btnFloatingPlay.innerHTML = ICONS.pause;

  const intervalMs = Math.max(18, Math.round(55 / state.scrollSpeed));
  state.scrollIntervalId = setInterval(() => {
    window.scrollBy(0, 1);
  }, intervalMs);
};

window.SantaCifra.stopAutoScroll = function stopAutoScroll() {
  const { state, dom, ICONS } = window.SantaCifra;
  if (state.scrollIntervalId) {
    clearInterval(state.scrollIntervalId);
    state.scrollIntervalId = null;
  }
  state.isScrolling = false;
  dom.btnAutoScroll.classList.remove('active');
  dom.btnFloatingPlay.innerHTML = ICONS.play;
};

window.SantaCifra.stopMetronome = function stopMetronome() {
  const { state, dom } = window.SantaCifra;
  if (window.LiturgicalMetronome) window.LiturgicalMetronome.stop();
  state.isMetronomeActive = false;
  dom.btnMetronome.classList.remove('active');
  const dots = dom.metronomeBeatDots.querySelectorAll('span');
  dots.forEach(d => { d.style.opacity = '0.25'; d.style.transform = 'scale(1)'; });
};

window.SantaCifra.bindSongViewerEvents = function bindSongViewerEvents() {
  const { state, dom } = window.SantaCifra;

  dom.btnFavoriteCurrentSong.addEventListener('click', () => {
    if (state.currentSong) window.SantaCifra.toggleFavoriteSong(state.currentSong.id);
  });

  dom.btnAddCurrentToFolder.addEventListener('click', () => {
    if (state.currentSong) window.SantaCifra.openAddToFolderDialog(state.currentSong);
  });

  dom.btnQueuePrev.addEventListener('click', () => {
    if (!state.activeQueuePlaylistId) return;
    const folder = state.playlists.find(p => p.id === state.activeQueuePlaylistId);
    if (!folder) return;
    const validSongs = folder.songIds.map(id => state.songs.find(s => s.id === id)).filter(Boolean);
    if (state.activeQueueIndex > 0) {
      state.activeQueueIndex--;
      window.SantaCifra.openSongView(validSongs[state.activeQueueIndex]);
    }
  });

  dom.btnQueueNext.addEventListener('click', () => {
    if (!state.activeQueuePlaylistId) return;
    const folder = state.playlists.find(p => p.id === state.activeQueuePlaylistId);
    if (!folder) return;
    const validSongs = folder.songIds.map(id => state.songs.find(s => s.id === id)).filter(Boolean);
    if (state.activeQueueIndex < validSongs.length - 1) {
      state.activeQueueIndex++;
      window.SantaCifra.openSongView(validSongs[state.activeQueueIndex]);
    }
  });

  dom.cifraPre.addEventListener('click', (e) => {
    const chordEl = e.target.closest('.chord-token');
    if (chordEl) {
      window.SantaCifra.openChordModal(chordEl.getAttribute('data-chord'));
    }
  });

  dom.btnToggleSimplify.addEventListener('click', () => {
    state.simplifyChords = !state.simplifyChords;
    dom.btnToggleSimplify.classList.toggle('active', state.simplifyChords);
    window.SantaCifra.renderCifraAndChords();
  });

  dom.btnTransposeDown.addEventListener('click', () => {
    state.currentSemitones -= 1;
    window.SantaCifra.renderCifraAndChords();
  });

  dom.btnTransposeUp.addEventListener('click', () => {
    state.currentSemitones += 1;
    window.SantaCifra.renderCifraAndChords();
  });

  dom.btnTransposeReset.addEventListener('click', () => {
    state.currentSemitones = 0;
    window.SantaCifra.renderCifraAndChords();
  });

  dom.instrumentSelect.addEventListener('change', (e) => {
    state.selectedInstrument = e.target.value;
    window.SantaCifra.renderCifraAndChords();
  });

  dom.btnFontDec.addEventListener('click', () => {
    if (state.fontSize > 11) {
      state.fontSize -= 1;
      dom.cifraPre.style.fontSize = `${state.fontSize}px`;
    }
  });

  dom.btnFontInc.addEventListener('click', () => {
    if (state.fontSize < 26) {
      state.fontSize += 1;
      dom.cifraPre.style.fontSize = `${state.fontSize}px`;
    }
  });

  dom.btnPrint.addEventListener('click', () => window.print());

  dom.btnBack.addEventListener('click', () => {
    if (state.activeQueuePlaylistId) {
      state.activeQueuePlaylistId = null;
      window.SantaCifra.switchTab('playlists');
    } else {
      window.SantaCifra.switchTab('home');
    }
  });

  dom.btnAutoScroll.addEventListener('click', () => {
    if (state.isScrolling) {
      window.SantaCifra.stopAutoScroll();
      dom.scrollFloatingController.style.display = 'none';
    } else {
      window.SantaCifra.startAutoScroll();
    }
  });

  dom.btnFloatingPlay.addEventListener('click', () => {
    if (state.isScrolling) window.SantaCifra.stopAutoScroll();
    else window.SantaCifra.startAutoScroll();
  });

  dom.btnFloatingSpeed.addEventListener('click', () => {
    const speeds = [0.5, 1, 1.5, 2, 3];
    const nextIdx = (speeds.indexOf(state.scrollSpeed) + 1) % speeds.length;
    state.scrollSpeed = speeds[nextIdx];
    dom.btnFloatingSpeed.textContent = `${state.scrollSpeed}x`;
    if (state.isScrolling) window.SantaCifra.startAutoScroll();
  });

  dom.btnFloatingClose.addEventListener('click', () => {
    window.SantaCifra.stopAutoScroll();
    dom.scrollFloatingController.style.display = 'none';
  });

  dom.btnMetronome.addEventListener('click', () => {
    if (!state.currentSong || !window.LiturgicalMetronome) return;
    const active = window.LiturgicalMetronome.toggle(state.currentSong.bpm || 80, (beatIdx) => {
      const dots = dom.metronomeBeatDots.querySelectorAll('span');
      dots.forEach((d, idx) => {
        if (idx === (beatIdx % dots.length)) {
          d.style.opacity = '1';
          d.style.transform = 'scale(1.35)';
        } else {
          d.style.opacity = '0.25';
          d.style.transform = 'scale(1)';
        }
      });
    });
    state.isMetronomeActive = active;
    dom.btnMetronome.classList.toggle('active', active);
    if (!active) window.SantaCifra.stopMetronome();
  });
};
