/**
 * Metrônomo Interativo com Web Audio API
 * Cifra Litúrgica
 */

class LiturgicalMetronome {
  constructor() {
    this.audioCtx = null;
    this.bpm = 80;
    this.isPlaying = false;
    this.currentBeat = 0;
    this.beatsPerBar = 4;
    this.timerId = null;
    this.onBeatCallback = null;
  }

  initAudio() {
    if (!this.audioCtx) {
      const AudioContext = window.AudioContext || window.webkitAudioContext;
      this.audioCtx = new AudioContext();
    }
    if (this.audioCtx.state === 'suspended') {
      this.audioCtx.resume();
    }
  }

  playClick(isFirstBeat) {
    if (!this.audioCtx) return;
    const osc = this.audioCtx.createOscillator();
    const gain = this.audioCtx.createGain();

    osc.type = 'sine';
    osc.frequency.value = isFirstBeat ? 1000 : 750; // Pitch agudo no tempo 1

    gain.gain.setValueAtTime(0.8, this.audioCtx.currentTime);
    gain.gain.exponentialRampToValueAtTime(0.001, this.audioCtx.currentTime + 0.05);

    osc.connect(gain);
    gain.connect(this.audioCtx.destination);

    osc.start(this.audioCtx.currentTime);
    osc.stop(this.audioCtx.currentTime + 0.05);
  }

  start(bpm, beatsPerBar = 4, onBeat = null) {
    this.initAudio();
    this.bpm = bpm || this.bpm;
    this.beatsPerBar = beatsPerBar || 4;
    this.onBeatCallback = onBeat;
    this.isPlaying = true;
    this.currentBeat = 0;

    const intervalMs = (60 / this.bpm) * 1000;
    this.tick();
    this.timerId = setInterval(() => this.tick(), intervalMs);
  }

  tick() {
    if (!this.isPlaying) return;
    const isFirstBeat = (this.currentBeat % this.beatsPerBar) === 0;
    this.playClick(isFirstBeat);

    if (this.onBeatCallback) {
      this.onBeatCallback(this.currentBeat % this.beatsPerBar, this.beatsPerBar);
    }
    this.currentBeat++;
  }

  stop() {
    this.isPlaying = false;
    if (this.timerId) {
      clearInterval(this.timerId);
      this.timerId = null;
    }
    this.currentBeat = 0;
  }

  setBpm(bpm) {
    this.bpm = bpm;
    if (this.isPlaying) {
      this.stop();
      this.start(this.bpm, this.beatsPerBar, this.onBeatCallback);
    }
  }
}

window.LiturgicalMetronome = new LiturgicalMetronome();
