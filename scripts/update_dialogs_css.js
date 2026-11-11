const fs = require('fs');

const path = 'santa-cifra/css/dialogs.css';
let content = fs.readFileSync(path, 'utf8');

const chordModalStyles = `
/* ---------- Diálogo Canônico de Acorde com Variações ---------- */
.chord-dialog-single {
  max-width: 360px;
  width: 92vw;
  padding: 16px 16px 18px;
  border-radius: var(--radius-lg);
  border: 1px solid var(--border-color);
  background: var(--bg-surface);
  box-shadow: var(--shadow-dialog);
}

.chord-dialog-header-info {
  display: flex;
  align-items: baseline;
  gap: 10px;
}

.modal-chord-title {
  font-family: var(--font-mono);
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--chord-color);
  margin: 0;
  letter-spacing: -0.02em;
}

.modal-inst-badge {
  font-size: 0.8rem;
  font-weight: 600;
  color: var(--text-muted);
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.chord-modal-inst-tabs {
  display: flex;
  gap: 4px;
  background: var(--bg-subtle);
  padding: 3px;
  border-radius: var(--radius-sm);
  margin: 12px 0 14px;
}

.chord-inst-tab-btn {
  flex: 1;
  padding: 6px 4px;
  border: none;
  background: transparent;
  color: var(--text-muted);
  font-size: 0.82rem;
  font-weight: 600;
  border-radius: calc(var(--radius-sm) - 2px);
  cursor: pointer;
  transition: all 0.15s ease;
  text-align: center;
}

.chord-inst-tab-btn:hover {
  color: var(--text-main);
}

.chord-inst-tab-btn.active {
  background: var(--bg-surface);
  color: var(--text-main);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12);
  font-weight: 700;
}

.chord-modal-single-content {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 4px 0 6px;
  outline: none;
}

.modal-active-chord-svg {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 155px;
  margin-bottom: 14px;
}

.chord-var-nav-bar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100%;
  background: var(--bg-subtle);
  border: 1px solid var(--border-subtle);
  border-radius: var(--radius-md);
  padding: 8px 12px;
  gap: 12px;
}

.btn-chord-var-step {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 36px;
  height: 36px;
  border-radius: var(--radius-sm);
  background: var(--bg-surface);
  border: 1px solid var(--border-color);
  color: var(--text-main);
  cursor: pointer;
  transition: all 0.15s ease;
  flex-shrink: 0;
}

.btn-chord-var-step:hover:not(:disabled) {
  background: var(--bg-hover);
  border-color: var(--accent);
  color: var(--accent);
}

.btn-chord-var-step:disabled {
  opacity: 0.35;
  cursor: not-allowed;
}

.chord-var-status-wrap {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  flex: 1;
  min-width: 0;
}

.chord-var-title {
  font-size: 0.9rem;
  font-weight: 700;
  color: var(--text-main);
  line-height: 1.2;
}

.chord-var-desc {
  font-size: 0.78rem;
  color: var(--text-muted);
  line-height: 1.2;
  margin-top: 2px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  max-width: 180px;
}
`;

if (!content.includes('chord-dialog-single')) {
  content = content.replace('.chord-modal-grid {', chordModalStyles + '\n.chord-modal-grid {');
  fs.writeFileSync(path, content, 'utf8');
  console.log('Appended chord modal styles to dialogs.css');
}
