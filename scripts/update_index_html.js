const fs = require('fs');

const path = 'santa-cifra/index.html';
let content = fs.readFileSync(path, 'utf8');

// 1. Substituir chordDialog
const oldDialogStart = '<dialog class="app-dialog" id="chordDialog"';
const oldDialogEnd = '</dialog>';
const startIdx = content.indexOf(oldDialogStart);
if (startIdx !== -1) {
  const endIdx = content.indexOf(oldDialogEnd, startIdx) + oldDialogEnd.length;
  
  const newDialog = `<dialog class="app-dialog chord-dialog-single" id="chordDialog" closedby="any" aria-labelledby="modalChordName">
    <div class="dialog-header">
      <div class="chord-dialog-header-info">
        <h2 id="modalChordName" class="modal-chord-title">C</h2>
        <span id="modalInstrumentBadge" class="modal-inst-badge">Violão</span>
      </div>
      <form method="dialog">
        <button class="btn-close-dialog" value="close" aria-label="Fechar">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"><path d="M18 6 6 18M6 6l12 12"/></svg>
        </button>
      </form>
    </div>

    <div class="chord-modal-inst-tabs" role="tablist" aria-label="Instrumento do acorde">
      <button type="button" class="chord-inst-tab-btn active" data-inst="guitar" role="tab" aria-selected="true">Violão</button>
      <button type="button" class="chord-inst-tab-btn" data-inst="keyboard" role="tab" aria-selected="false">Teclado</button>
      <button type="button" class="chord-inst-tab-btn" data-inst="ukulele" role="tab" aria-selected="false">Ukulele</button>
      <button type="button" class="chord-inst-tab-btn" data-inst="cavaquinho" role="tab" aria-selected="false">Cavaquinho</button>
    </div>

    <div class="chord-modal-single-content" tabindex="-1" autofocus>
      <div id="modalActiveChordSvg" class="modal-active-chord-svg"></div>

      <!-- Navegação de Variações de Acorde (setinhas < e >) -->
      <div class="chord-var-nav-bar" role="toolbar" aria-label="Variações do acorde">
        <button type="button" class="btn-chord-var-step" id="btnPrevChordVar" aria-label="Variação anterior" title="Variação anterior (<)">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="m15 18-6-6 6-6"/></svg>
        </button>
        <div class="chord-var-status-wrap">
          <strong id="modalChordVarTitle" class="chord-var-title">Posição 1 de 3</strong>
          <span id="modalChordVarDesc" class="chord-var-desc">Forma aberta</span>
        </div>
        <button type="button" class="btn-chord-var-step" id="btnNextChordVar" aria-label="Próxima variação" title="Próxima variação (>)">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
        </button>
      </div>
    </div>
  </dialog>`;

  content = content.slice(0, startIdx) + newDialog + content.slice(endIdx);
  console.log('Successfully replaced chordDialog in index.html');
}

// 2. Adicionar checkbox Manter-me conectado em #formAuthLogin
if (!content.includes('chkRememberMe')) {
  const target = '<div class="dialog-actions">\r\n        <button type="submit" class="btn-primary-solid btn-block" id="btnSubmitLogin">';
  const fallbackTarget = '<div class="dialog-actions">\n        <button type="submit" class="btn-primary-solid btn-block" id="btnSubmitLogin">';
  const chkMarkup = `      <div class="form-checkbox-field" style="display:flex;align-items:center;gap:8px;margin:4px 0 14px;font-size:0.88rem;color:var(--text-secondary);">
        <input type="checkbox" id="chkRememberMe" name="remember" checked style="accent-color:var(--accent);width:16px;height:16px;cursor:pointer;">
        <label for="chkRememberMe" style="cursor:pointer;user-select:none;">Permanecer conectado neste aparelho</label>
      </div>\n`;

  if (content.includes(target)) {
    content = content.replace(target, chkMarkup + '      ' + target);
    console.log('Added chkRememberMe with CRLF');
  } else if (content.includes(fallbackTarget)) {
    content = content.replace(fallbackTarget, chkMarkup + '      ' + fallbackTarget);
    console.log('Added chkRememberMe with LF');
  }
}

// 3. Atualizar versões de assets para v=29
content = content.replace(/\?v=28/g, '?v=29');
content = content.replace(/manifest\.webmanifest\?v=\d+/g, 'manifest.webmanifest?v=24');

fs.writeFileSync(path, content, 'utf8');
console.log('Finished updating santa-cifra/index.html');
