/**
 * SANTA CIFRA — Rolagem Assistida (Modo Karaokê Rítmico)
 * Sincroniza destaque progressivo das letras palavra a palavra e rolagem suave
 * conforme o andamento (BPM) e a estrutura real da cifra.
 */
window.SantaCifra = window.SantaCifra || {};

(function () {
  const SC = window.SantaCifra;

  const assistedState = {
    active: false,
    paused: false,
    rafId: null,
    baseBpm: 80,
    currentBpm: 80,
    elapsedSongMs: 0,
    lastFrameTs: 0,
    timeline: [],
    totalMs: 0,
    activeEntryIdx: -1,
    lastWordIdx: -1,
    lastScrollTargetY: -1,
    lineEls: new Map(),
    wordElsByLine: new Map()
  };

  function countPortugueseSyllables(text) {
    const clean = String(text || '')
      .toLowerCase()
      .replace(/\([0-9]+x\)/gi, '')
      .replace(/[^a-záàâãéêíóôõúüç\s]/gi, ' ')
      .trim();
    if (!clean) return 0;
    const vowelGroups = clean.match(/[aeiouáàâãéêíóôõúü]+/gi);
    return vowelGroups ? vowelGroups.length : Math.max(1, Math.ceil(clean.length / 3));
  }

  function buildTimeline(cifraText, bpm) {
    const safeBpm = Math.max(45, Math.min(180, Number(bpm) || 80));
    const beatMs = 60000 / safeBpm;
    const rawLines = String(cifraText || '').replace(/\r\n/g, '\n').split('\n');
    const T = window.Transposition || window.TranspositionEngine;

    const lineTypes = rawLines.map(line => {
      const trimmed = line.trim();
      if (!trimmed) return 'blank';
      if (/^\[[^\]]+\]$/.test(trimmed)) return 'section';
      if (T && T.isChordLine && T.isChordLine(line)) return 'chord';
      return 'lyric';
    });

    const entries = [];
    let cursorMs = 0;

    for (let i = 0; i < rawLines.length; i++) {
      const type = lineTypes[i];
      const text = rawLines[i];

      if (type === 'blank') {
        cursorMs += beatMs * 0.6;
        continue;
      }

      if (type === 'section') {
        entries.push({
          lineIndex: i,
          chordLineIndex: -1,
          type: 'section',
          startMs: cursorMs,
          endMs: cursorMs + beatMs * 0.75
        });
        cursorMs += beatMs * 0.75;
        continue;
      }

      if (type === 'chord') {
        // If next line is a lyric line, this chord line pairs with that lyric line
        if (i + 1 < rawLines.length && lineTypes[i + 1] === 'lyric') {
          continue;
        }
        // Instrumental / Intro / Solo chord line
        const chordCount = Math.max(1, (text.trim().match(/\S+/g) || []).length);
        const dur = Math.max(beatMs * 2, chordCount * beatMs * 2);
        entries.push({
          lineIndex: i,
          chordLineIndex: i,
          type: 'chord',
          startMs: cursorMs,
          endMs: cursorMs + dur
        });
        cursorMs += dur;
        continue;
      }

      // Lyric line
      const chordLineIndex = (i > 0 && lineTypes[i - 1] === 'chord') ? i - 1 : -1;
      const syllables = Math.max(3, countPortugueseSyllables(text));
      const repeatMult = /\(\s*2x\s*\)|\b2x\b/i.test(text) ? 1.85 : 1;
      const punctuationPause = /[.!?…]\s*$/.test(text.trim()) ? beatMs * 0.55 : /[,;:]\s*$/.test(text.trim()) ? beatMs * 0.25 : 0;
      const dur = Math.max(beatMs * 2.2, (syllables * beatMs * 0.43 + punctuationPause) * repeatMult);

      entries.push({
        lineIndex: i,
        chordLineIndex,
        type: 'lyric',
        startMs: cursorMs,
        endMs: cursorMs + dur
      });
      cursorMs += dur;
    }

    return { entries, totalMs: cursorMs };
  }

  function cacheDomLines() {
    const { dom } = SC;
    assistedState.lineEls.clear();
    assistedState.wordElsByLine.clear();
    if (!dom || !dom.cifraPre) return;

    const lineNodes = dom.cifraPre.querySelectorAll('[data-cifra-line]');
    lineNodes.forEach(el => {
      const idx = Number(el.getAttribute('data-cifra-line'));
      assistedState.lineEls.set(idx, el);
      const words = el.querySelectorAll('.karaoke-word');
      if (words.length) {
        assistedState.wordElsByLine.set(idx, Array.from(words));
      }
    });
  }

  function clearVisualHighlights() {
    const { dom } = SC;
    if (!dom || !dom.cifraPre) return;
    dom.cifraPre.classList.remove('assisted-scroll-active');
    dom.cifraPre.querySelectorAll('.is-active-line, .is-sung, .is-upcoming, .is-active-chord-line').forEach(el => {
      el.classList.remove('is-active-line', 'is-sung', 'is-upcoming', 'is-active-chord-line');
    });
    dom.cifraPre.querySelectorAll('.is-word-lit, .is-word-current').forEach(el => {
      el.classList.remove('is-word-lit', 'is-word-current');
    });
  }

  function updateFloatingUi() {
    const { dom, ICONS } = SC;
    if (!dom) return;
    if (dom.btnAssistedScroll) {
      dom.btnAssistedScroll.classList.toggle('active', assistedState.active);
      dom.btnAssistedScroll.setAttribute('aria-pressed', String(assistedState.active));
    }
    if (!assistedState.active) return;

    if (dom.scrollFloatingController) {
      dom.scrollFloatingController.style.display = 'inline-flex';
      dom.scrollFloatingController.classList.add('is-assisted-mode');
    }
    if (dom.floatingSpeedValue) {
      dom.floatingSpeedValue.textContent = `${assistedState.currentBpm} BPM`;
    }
    if (dom.btnFloatingPlay && ICONS) {
      dom.btnFloatingPlay.innerHTML = assistedState.paused ? ICONS.play : ICONS.pause;
    }
  }

  function applyHighlightAtTime(ms) {
    const entries = assistedState.timeline;
    if (!entries.length) return;

    let entryIdx = entries.findIndex(e => ms >= e.startMs && ms < e.endMs);
    if (entryIdx === -1) {
      entryIdx = ms >= assistedState.totalMs ? entries.length - 1 : 0;
    }
    const activeEntry = entries[entryIdx];

    if (entryIdx !== assistedState.activeEntryIdx) {
      assistedState.activeEntryIdx = entryIdx;
      assistedState.lastWordIdx = -1;

      // Update line states
      for (let i = 0; i < entries.length; i++) {
        const e = entries[i];
        const el = assistedState.lineEls.get(e.lineIndex);
        if (!el) continue;
        el.classList.remove('is-active-line', 'is-sung', 'is-upcoming');
        if (i < entryIdx) {
          el.classList.add('is-sung');
        } else if (i === entryIdx) {
          el.classList.add('is-active-line');
        } else {
          el.classList.add('is-upcoming');
        }
        if (e.chordLineIndex >= 0 && e.chordLineIndex !== e.lineIndex) {
          const chordEl = assistedState.lineEls.get(e.chordLineIndex);
          if (chordEl) {
            chordEl.classList.toggle('is-active-chord-line', i === entryIdx);
            chordEl.classList.toggle('is-sung', i < entryIdx);
            chordEl.classList.toggle('is-upcoming', i > entryIdx);
          }
        }
      }

      // Light up all words in already sung lines
      for (let i = 0; i < entryIdx; i++) {
        const words = assistedState.wordElsByLine.get(entries[i].lineIndex);
        if (words) {
          words.forEach(w => {
            w.classList.add('is-word-lit');
            w.classList.remove('is-word-current');
          });
        }
      }
      // Reset words in future lines
      for (let i = entryIdx + 1; i < entries.length; i++) {
        const words = assistedState.wordElsByLine.get(entries[i].lineIndex);
        if (words) {
          words.forEach(w => w.classList.remove('is-word-lit', 'is-word-current'));
        }
      }

      // Smoothly keep the active line at ~34% of viewport height
      const activeEl = assistedState.lineEls.get(activeEntry.lineIndex);
      if (activeEl) {
        const rect = activeEl.getBoundingClientRect();
        const targetOffset = window.innerHeight * 0.34;
        if (Math.abs(rect.top - targetOffset) > 28) {
          const targetY = Math.max(0, window.scrollY + rect.top - targetOffset);
          if (Math.abs(targetY - assistedState.lastScrollTargetY) > 12) {
            assistedState.lastScrollTargetY = targetY;
            window.scrollTo({ top: targetY, behavior: 'smooth' });
          }
        }
      }
    }

    // Word-by-word progression inside the active lyric line
    const words = assistedState.wordElsByLine.get(activeEntry.lineIndex);
    if (words && words.length) {
      const span = Math.max(1, activeEntry.endMs - activeEntry.startMs);
      const progress = Math.max(0, Math.min(1, (ms - activeEntry.startMs) / span));
      const wordIdx = Math.min(words.length - 1, Math.floor(progress * words.length));
      if (wordIdx !== assistedState.lastWordIdx) {
        assistedState.lastWordIdx = wordIdx;
        for (let w = 0; w < words.length; w++) {
          words[w].classList.toggle('is-word-lit', w <= wordIdx);
          words[w].classList.toggle('is-word-current', w === wordIdx);
        }
      }
    }
  }

  function tick(ts) {
    if (!assistedState.active) return;
    if (!assistedState.paused) {
      if (!assistedState.lastFrameTs) assistedState.lastFrameTs = ts;
      const dt = ts - assistedState.lastFrameTs;
      assistedState.lastFrameTs = ts;
      const rate = assistedState.currentBpm / assistedState.baseBpm;
      assistedState.elapsedSongMs += dt * rate;

      if (assistedState.elapsedSongMs >= assistedState.totalMs) {
        assistedState.elapsedSongMs = assistedState.totalMs;
        applyHighlightAtTime(assistedState.elapsedSongMs);
        assistedState.paused = true;
        updateFloatingUi();
        return;
      }
      applyHighlightAtTime(assistedState.elapsedSongMs);
    } else {
      assistedState.lastFrameTs = ts;
    }
    assistedState.rafId = requestAnimationFrame(tick);
  }

  SC.AssistedScroll = {
    isActive() {
      return assistedState.active;
    },
    isPaused() {
      return assistedState.paused;
    },
    start() {
      const { state, dom } = SC;
      if (!state.currentSong || !dom.cifraPre) return;

      // Stop regular continuous scroll if active
      if (state.isScrolling && SC.stopAutoScroll) {
        SC.stopAutoScroll();
      }

      const T = window.Transposition || window.TranspositionEngine;
      const processedText = T && T.processCifraText
        ? T.processCifraText(state.currentSong.cifra, state.currentSemitones, state.simplifyChords)
        : state.currentSong.cifra;

      assistedState.baseBpm = Math.max(45, Math.min(180, Number(state.currentSong.bpm) || 80));
      assistedState.currentBpm = assistedState.baseBpm;
      const built = buildTimeline(processedText, assistedState.baseBpm);
      assistedState.timeline = built.entries;
      assistedState.totalMs = built.totalMs;
      assistedState.elapsedSongMs = 0;
      assistedState.lastFrameTs = 0;
      assistedState.activeEntryIdx = -1;
      assistedState.lastWordIdx = -1;
      assistedState.lastScrollTargetY = -1;
      assistedState.active = true;
      assistedState.paused = false;

      cacheDomLines();
      dom.cifraPre.classList.add('assisted-scroll-active');
      updateFloatingUi();
      applyHighlightAtTime(0);

      if (assistedState.rafId) cancelAnimationFrame(assistedState.rafId);
      assistedState.rafId = requestAnimationFrame(tick);
    },
    stop() {
      const { dom } = SC;
      if (assistedState.rafId) {
        cancelAnimationFrame(assistedState.rafId);
        assistedState.rafId = null;
      }
      assistedState.active = false;
      assistedState.paused = false;
      assistedState.activeEntryIdx = -1;
      clearVisualHighlights();
      if (dom && dom.btnAssistedScroll) {
        dom.btnAssistedScroll.classList.remove('active');
        dom.btnAssistedScroll.setAttribute('aria-pressed', 'false');
      }
      if (dom && dom.scrollFloatingController) {
        dom.scrollFloatingController.classList.remove('is-assisted-mode');
        if (!SC.state.isScrolling) {
          dom.scrollFloatingController.style.display = 'none';
        }
      }
    },
    togglePause() {
      if (!assistedState.active) return;
      assistedState.paused = !assistedState.paused;
      assistedState.lastFrameTs = 0;
      updateFloatingUi();
      if (!assistedState.paused) {
        if (assistedState.elapsedSongMs >= assistedState.totalMs) {
          assistedState.elapsedSongMs = 0;
          assistedState.activeEntryIdx = -1;
        }
        if (assistedState.rafId) cancelAnimationFrame(assistedState.rafId);
        assistedState.rafId = requestAnimationFrame(tick);
      }
    },
    adjustBpm(delta) {
      if (!assistedState.active) return;
      assistedState.currentBpm = Math.max(45, Math.min(180, assistedState.currentBpm + delta));
      updateFloatingUi();
    },
    restart() {
      if (!assistedState.active) return;
      assistedState.elapsedSongMs = 0;
      assistedState.activeEntryIdx = -1;
      assistedState.lastWordIdx = -1;
      assistedState.lastFrameTs = 0;
      assistedState.paused = false;
      updateFloatingUi();
      applyHighlightAtTime(0);
      window.scrollTo({ top: 0, behavior: 'smooth' });
      if (assistedState.rafId) cancelAnimationFrame(assistedState.rafId);
      assistedState.rafId = requestAnimationFrame(tick);
    },
    seekToLine(lineIdx) {
      if (!assistedState.active) return;
      const entry = assistedState.timeline.find(e => e.lineIndex === lineIdx || e.chordLineIndex === lineIdx);
      if (!entry) return;
      assistedState.elapsedSongMs = entry.startMs + 10;
      assistedState.activeEntryIdx = -1;
      assistedState.lastWordIdx = -1;
      assistedState.lastFrameTs = 0;
      applyHighlightAtTime(assistedState.elapsedSongMs);
    }
  };
})();
