const fs = require('fs');
const path = require('path');

const indexPath = path.join(__dirname, '../santa-cifra/index.html');
let html = fs.readFileSync(indexPath, 'utf8');

// 1. Remover seção heroShowcase
const heroRegex = /<div class="hero-showcase" id="heroShowcase">[\s\S]*?<\/div>\s*<\/div>\s*(?=<div class="catalog-controls">)/;
if (heroRegex.test(html)) {
  html = html.replace(heroRegex, '');
  console.log('OK: heroShowcase removido');
} else {
  console.log('WARN: heroShowcase regex não bateu');
}

// 2. Renomear Repertório para Cancioneiro Litúrgico & Devocional
html = html.replace(
  '<h2 class="section-heading">Repertório</h2>',
  '<h2 class="section-heading">Cancioneiro Litúrgico &amp; Devocional</h2>'
);

// 3. Renomear catalogResultsTitle
html = html.replace(
  '<div class="filter-group-title" id="catalogResultsTitle" aria-live="polite">Repertório</div>',
  '<div class="filter-group-title" id="catalogResultsTitle" aria-live="polite">Cancioneiro Católico</div>'
);

// 4. Remover priest-login-help-box da tela pública de login
const priestBoxRegex = /<div class="priest-login-help-box">[\s\S]*?<\/div>\s*(?=<div class="auth-footer-prompt">)/;
if (priestBoxRegex.test(html)) {
  html = html.replace(priestBoxRegex, '');
  console.log('OK: priest-login-help-box removido da tela de login');
} else {
  console.log('WARN: priest-login-help-box regex não bateu');
}

fs.writeFileSync(indexPath, html, 'utf8');
console.log('Sucesso ao atualizar index.html');
