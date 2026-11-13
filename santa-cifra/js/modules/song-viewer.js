/**
 * SANTA CIFRA — Leitor de Cifra, Transposição, Diagramas, Rolagem e Metrônomo
 */
window.SantaCifra = window.SantaCifra || {};

window.SantaCifra.openSongView = function openSongView(songOrId, opts) {
  const { state, dom } = window.SantaCifra;
  const song = typeof songOrId === 'string'
    ? state.songs.find(s => s.id === songOrId)
    : songOrId;
  if (!song) return;
  state.currentSong = song;
  state.currentSemitones = 0;
  state.simplifyChords = false;
  dom.btnToggleSimplify.classList.remove('active');
  dom.btnToggleSimplify.setAttribute('aria-pressed', 'false');

  // Abrir uma cifra empilha no histórico; trocar de música dentro do leitor só substitui.
  const historyMode = (opts && opts.history) || (state.activeTab === 'song' ? 'replace' : 'push');
  window.SantaCifra.switchTab('song', { history: historyMode });
  window.scrollTo({ top: 0 });
  if (dom.cifraContainer) {
    dom.cifraContainer.scrollLeft = 0;
    dom.cifraContainer.scrollTop = 0;
  }

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

  if (dom.songViewerCoverImg) {
    const coverUrl = window.SantaCifra.getSongCoverUrl ? window.SantaCifra.getSongCoverUrl(song) : 'assets/artists/default-cover.jpg';
    dom.songViewerCoverImg.src = coverUrl;
  }

  dom.songTitle.textContent = song.title;
  dom.songComposer.innerHTML = window.SantaCifra.composerHtml(song);
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
    const esc = window.SantaCifra.esc;
    const docRef = analysis.documentRef || analysis.igmrReference;
    const bibRef = analysis.biblicalRef || analysis.biblicalReference;
    const normNote = song.liturgicalNormNote || analysis.normExplanation || '';
    const lines = [];
    if (normNote) lines.push(`<p>${esc(normNote)}</p>`);
    if (analysis.justification) lines.push(`<p>${esc(analysis.justification)}</p>`);
    if (docRef) lines.push(`<p><strong>Documento:</strong> ${esc(docRef)}</p>`);
    if (bibRef) lines.push(`<p><strong>Referência bíblica:</strong> ${esc(bibRef)}</p>`);
    dom.songNormCallout.innerHTML = lines.join('');
    const details = dom.songNormCallout.closest('details');
    if (details) {
      details.hidden = lines.length === 0;
      details.open = false;
    }
  }

  dom.bpmDisplay.textContent = `${song.bpm || 80}`;
  dom.rhythmName.textContent = song.rhythmName || 'Balada';
  dom.rhythmArrows.textContent = song.rhythmPattern || '↓ ↓ ↑ ↑ ↓ ↑';
  const defaultYt = `https://www.youtube.com/results?search_query=${encodeURIComponent(song.title + ' ' + song.composer)}`;
  const sanitizeUrl = (window.SantaCifra.security && window.SantaCifra.security.sanitizeUrl) || ((u) => u);
  dom.youtubeLink.href = sanitizeUrl(song.youtubeUrl || defaultYt, defaultYt);

  window.SantaCifra.updateFavoriteButtonState();
  window.SantaCifra.renderCifraAndChords();
};

window.SantaCifra.updateFavoriteButtonState = function updateFavoriteButtonState() {
  const { state, dom, ICONS } = window.SantaCifra;
  if (!state.currentSong) return;
  const fav = window.SantaCifra.isSongFavorited(state.currentSong.id);
  dom.btnFavoriteCurrentSong.innerHTML = (fav ? ICONS.heartFilled : ICONS.heartOutline) +
    `<span>${fav ? 'Favorita' : 'Favoritar'}</span>`;
  dom.btnFavoriteCurrentSong.setAttribute('aria-pressed', String(fav));
};

window.SantaCifra.renderCifraAndChords = function renderCifraAndChords() {
  const { state, dom, esc } = window.SantaCifra;
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
      return esc(line).replace(/\[([^\]]+)\]/g, '<span class="section-label">[$1]</span>');
    }

    if (T.isChordLine(line)) {
      return line.replace(/(\[[^\]]+\]|\S+)/g, (token) => {
        if (token.startsWith('[') && token.endsWith(']')) {
          return `<span class="section-label">${esc(token)}</span>`;
        }
        const clean = token.replace(/[(),]/g, '');
        if (isChordTok(clean)) {
          return `<span class="chord-token" data-chord="${esc(clean)}">${esc(token)}</span>`;
        }
        return esc(token);
      });
    }
    return esc(line);
  });

  dom.cifraPre.innerHTML = htmlLines.join('\n');
  
  // Auto-ajuste fino de fonte para celular caso haja linhas compridas
  const maxLineLen = Math.max(...lines.map(l => l.length), 0);
  let savedFont = null;
  try { savedFont = localStorage.getItem('santa_cifra_font_size'); } catch (_) {}
  if (!savedFont && window.innerWidth <= 420 && maxLineLen > 44) {
    const targetSize = Math.max(11, Math.min(13, Math.floor((window.innerWidth - 24) / (maxLineLen * 0.62))));
    state.fontSize = targetSize;
  }
  dom.cifraPre.style.fontSize = `${state.fontSize}px`;
  if (dom.fontSizeLabelDisplay) {
    dom.fontSizeLabelDisplay.textContent = `${state.fontSize}px`;
  }

  if (dom.cifraContainer) {
    dom.cifraContainer.scrollLeft = 0;
  }
  requestAnimationFrame(() => {
    if (dom.cifraContainer) dom.cifraContainer.scrollLeft = 0;
  });

  dom.chordsTopBar.innerHTML = '';
  uniqueChords.forEach(chordName => {
    const box = document.createElement('div');
    box.className = 'chord-mini-box';
    box.setAttribute('role', 'button');
    box.tabIndex = 0;
    box.setAttribute('aria-label', `Ver acorde ${chordName}`);
    box.innerHTML = `
      <div class="chord-mini-title">${esc(chordName)}</div>
      <div>${renderDiag(chordName, state.selectedInstrument)}</div>
    `;
    box.addEventListener('keydown', (e) => {
      if (e.key === 'Enter' || e.key === ' ') {
        e.preventDefault();
        window.SantaCifra.openChordModal(chordName);
      }
    });
    box.addEventListener('click', () => window.SantaCifra.openChordModal(chordName));
    dom.chordsTopBar.appendChild(box);
  });
};

let currentModalChord = 'C';
let currentModalInstrument = 'guitar';
let currentModalVarIndex = 0;

function updateModalChordView() {
  const { dom } = window.SantaCifra;
  const variations = window.ChordsData.getChordVariations(currentModalChord, currentModalInstrument);
  const totalVars = Math.max(1, variations.length);
  currentModalVarIndex = Math.max(0, Math.min(currentModalVarIndex, totalVars - 1));
  const currentVar = variations[currentModalVarIndex] || variations[0];

  if (dom.modalChordName) dom.modalChordName.textContent = currentModalChord;
  
  const instNames = {
    guitar: 'Violão',
    keyboard: 'Teclado',
    ukulele: 'Ukulele',
    cavaquinho: 'Cavaquinho'
  };
  const badgeEl = document.getElementById('modalInstrumentBadge');
  if (badgeEl) badgeEl.textContent = instNames[currentModalInstrument] || 'Violão';

  // Abas de instrumento no modal
  document.querySelectorAll('.chord-inst-tab-btn').forEach(tab => {
    const isAct = tab.getAttribute('data-inst') === currentModalInstrument;
    tab.classList.toggle('active', isAct);
    tab.setAttribute('aria-selected', String(isAct));
  });

  // Renderizar apenas o SVG do instrumento e variação selecionados
  const container = document.getElementById('modalActiveChordSvg');
  if (container) {
    container.innerHTML = window.ChordsData.getChordSVG(currentModalChord, currentModalInstrument, currentModalVarIndex);
  }

  // Atualizar contador e legenda da variação
  const titleEl = document.getElementById('modalChordVarTitle');
  const descEl = document.getElementById('modalChordVarDesc');
  const btnPrev = document.getElementById('btnPrevChordVar');
  const btnNext = document.getElementById('btnNextChordVar');

  if (titleEl) {
    titleEl.textContent = totalVars > 1 ? `Posição ${currentModalVarIndex + 1} de ${totalVars}` : 'Posição Canônica';
  }
  if (descEl) {
    const baseFret = currentVar.baseFret || (currentVar.barre > 1 ? currentVar.barre : 1);
    let varDesc = currentVar.name || currentVar.desc || '';
    if (currentModalInstrument !== 'keyboard' && !/casa/i.test(varDesc)) {
      const casaLabel = baseFret > 1 ? `${baseFret}ª casa` : '1ª casa (região aberta)';
      varDesc = varDesc ? `${varDesc} • ${casaLabel}` : casaLabel;
    }
    descEl.textContent = varDesc;
  }
  if (btnPrev) {
    btnPrev.disabled = currentModalVarIndex === 0;
  }
  if (btnNext) {
    btnNext.disabled = currentModalVarIndex >= totalVars - 1;
  }
}

window.SantaCifra.openChordModal = function openChordModal(chordName) {
  const { state, dom } = window.SantaCifra;
  currentModalChord = (chordName || 'C').replace(/[(),]/g, '').trim();
  currentModalInstrument = state.selectedInstrument || 'guitar';
  currentModalVarIndex = 0;

  updateModalChordView();
  if (dom.chordDialog && typeof dom.chordDialog.showModal === 'function') {
    dom.chordDialog.showModal();
  }
};

window.SantaCifra.startAutoScroll = function startAutoScroll() {
  const { state, dom, ICONS } = window.SantaCifra;
  if (state.scrollIntervalId) clearInterval(state.scrollIntervalId);
  state.isScrolling = true;
  dom.btnAutoScroll.classList.add('active');
  dom.btnAutoScroll.setAttribute('aria-pressed', 'true');
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
  dom.btnAutoScroll.setAttribute('aria-pressed', 'false');
  dom.btnFloatingPlay.innerHTML = ICONS.play;
};

window.SantaCifra.stopMetronome = function stopMetronome() {
  const { state, dom } = window.SantaCifra;
  if (window.LiturgicalMetronome) window.LiturgicalMetronome.stop();
  state.isMetronomeActive = false;
  dom.btnMetronome.classList.remove('active');
  dom.btnMetronome.setAttribute('aria-pressed', 'false');
  const dots = dom.metronomeBeatDots.querySelectorAll('span');
  dots.forEach(d => { d.style.opacity = '0.25'; d.style.transform = 'scale(1)'; });
};

window.SantaCifra.closeToolbarMore = function closeToolbarMore() {
  const { dom } = window.SantaCifra;
  if (!dom || !dom.toolbarMore) return;
  dom.toolbarMore.classList.remove('open');
  dom.btnToolbarMore.setAttribute('aria-expanded', 'false');
  dom.btnToolbarMore.classList.remove('active');
};

window.SantaCifra.bindSongViewerEvents = function bindSongViewerEvents() {
  const { state, dom } = window.SantaCifra;

  // Painel "Mais" da barra inferior no celular
  dom.btnToolbarMore.addEventListener('click', (e) => {
    e.stopPropagation();
    const open = dom.toolbarMore.classList.toggle('open');
    dom.btnToolbarMore.setAttribute('aria-expanded', String(open));
    dom.btnToolbarMore.classList.toggle('active', open);
  });
  document.addEventListener('click', (e) => {
    if (!dom.toolbarMore.classList.contains('open')) return;
    if (e.target.closest('#toolbarMore')) return;
    window.SantaCifra.closeToolbarMore();
  });
  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') window.SantaCifra.closeToolbarMore();
  });

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
    dom.btnToggleSimplify.setAttribute('aria-pressed', String(state.simplifyChords));
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

  function updateFontSize(delta) {
    const newSize = Math.max(10, Math.min(26, state.fontSize + delta));
    state.fontSize = newSize;
    if (dom.cifraPre) dom.cifraPre.style.fontSize = `${newSize}px`;
    if (dom.fontSizeLabelDisplay) dom.fontSizeLabelDisplay.textContent = `${newSize}px`;
    try {
      localStorage.setItem('santa_cifra_font_size', String(newSize));
    } catch (_) {}
  }

  dom.btnFontDec.addEventListener('click', () => updateFontSize(-1));
  dom.btnFontInc.addEventListener('click', () => updateFontSize(1));

  // Navegação de variações de acordes com setas (< e >)
  const btnPrevVar = document.getElementById('btnPrevChordVar');
  if (btnPrevVar) {
    btnPrevVar.addEventListener('click', () => {
      if (currentModalVarIndex > 0) {
        currentModalVarIndex--;
        updateModalChordView();
      }
    });
  }

  const btnNextVar = document.getElementById('btnNextChordVar');
  if (btnNextVar) {
    btnNextVar.addEventListener('click', () => {
      const vars = window.ChordsData.getChordVariations(currentModalChord, currentModalInstrument);
      if (currentModalVarIndex < vars.length - 1) {
        currentModalVarIndex++;
        updateModalChordView();
      }
    });
  }

  // Abas de instrumento no modal de acordes
  document.querySelectorAll('.chord-inst-tab-btn').forEach(btn => {
    btn.addEventListener('click', () => {
      const inst = btn.getAttribute('data-inst');
      if (inst) {
        currentModalInstrument = inst;
        currentModalVarIndex = 0;
        updateModalChordView();
      }
    });
  });

  if (dom.chordDialog) {
    dom.chordDialog.addEventListener('keydown', (e) => {
      if (e.key === 'ArrowLeft') {
        e.preventDefault();
        if (currentModalVarIndex > 0) {
          currentModalVarIndex--;
          updateModalChordView();
        }
      } else if (e.key === 'ArrowRight') {
        e.preventDefault();
        const vars = window.ChordsData.getChordVariations(currentModalChord, currentModalInstrument);
        if (currentModalVarIndex < vars.length - 1) {
          currentModalVarIndex++;
          updateModalChordView();
        }
      }
    });
  }

  dom.btnPrint.addEventListener('click', () => window.print());

  dom.btnBack.addEventListener('click', () => {
    window.SantaCifra.goBack(state.activeQueuePlaylistId ? 'playlists' : 'home');
  });

  if (dom.btnAutoScroll) {
    dom.btnAutoScroll.addEventListener('click', () => {
      if (state.isScrolling || (dom.scrollFloatingController && dom.scrollFloatingController.style.display !== 'none')) {
        window.SantaCifra.stopAutoScroll();
        if (dom.scrollFloatingController) dom.scrollFloatingController.style.display = 'none';
      } else {
        window.SantaCifra.startAutoScroll();
      }
    });
  }

  const updateSpeedDisplay = () => {
    const formatted = `${state.scrollSpeed.toFixed(1)}x`;
    if (dom.floatingSpeedValue) dom.floatingSpeedValue.textContent = formatted;
    if (dom.btnFloatingSpeed) dom.btnFloatingSpeed.textContent = formatted;
  };

  if (dom.btnFloatingTop) {
    dom.btnFloatingTop.addEventListener('click', () => {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });
  }

  if (dom.btnFloatingSpeedDec) {
    dom.btnFloatingSpeedDec.addEventListener('click', () => {
      state.scrollSpeed = Math.max(0.3, +(state.scrollSpeed - 0.1).toFixed(1));
      updateSpeedDisplay();
      if (state.isScrolling) window.SantaCifra.startAutoScroll();
    });
  }

  if (dom.btnFloatingSpeedInc) {
    dom.btnFloatingSpeedInc.addEventListener('click', () => {
      state.scrollSpeed = Math.min(4.0, +(state.scrollSpeed + 0.1).toFixed(1));
      updateSpeedDisplay();
      if (state.isScrolling) window.SantaCifra.startAutoScroll();
    });
  }

  if (dom.floatingSpeedBadge) {
    dom.floatingSpeedBadge.addEventListener('click', () => {
      const speeds = [0.5, 1.0, 1.5, 2.0, 3.0];
      const cur = Math.round(state.scrollSpeed * 10) / 10;
      const idx = speeds.indexOf(cur);
      state.scrollSpeed = idx >= 0 ? speeds[(idx + 1) % speeds.length] : 1.0;
      updateSpeedDisplay();
      if (state.isScrolling) window.SantaCifra.startAutoScroll();
    });
  }

  if (dom.btnFloatingSpeed) {
    dom.btnFloatingSpeed.addEventListener('click', () => {
      const speeds = [0.5, 1, 1.5, 2, 3];
      const nextIdx = (speeds.indexOf(state.scrollSpeed) + 1) % speeds.length;
      state.scrollSpeed = speeds[nextIdx];
      updateSpeedDisplay();
      if (state.isScrolling) window.SantaCifra.startAutoScroll();
    });
  }

  if (dom.btnFloatingPlay) {
    dom.btnFloatingPlay.addEventListener('click', () => {
      if (state.isScrolling) window.SantaCifra.stopAutoScroll();
      else window.SantaCifra.startAutoScroll();
    });
  }

  if (dom.btnFloatingClose) {
    dom.btnFloatingClose.addEventListener('click', () => {
      window.SantaCifra.stopAutoScroll();
      if (dom.scrollFloatingController) dom.scrollFloatingController.style.display = 'none';
    });
  }

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
    dom.btnMetronome.setAttribute('aria-pressed', String(active));
    if (!active) window.SantaCifra.stopMetronome();
  });
};
