# Second Brain — Santa Cifra (Repertório e Cifras Litúrgicas Católicas)

> **Documento Consolidado de Memória Técnica, Arquitetura & Guia de Transição para o Claude**
> *Data de registro*: 12 de Novembro de 2026
> *Versão do Projeto*: **v3.9.6 (Build 25)**
> *Ambiente Online de Produção*: https://santa-cifra.surge.sh
> *Pacote Android Nativo*: `santa-cifra.apk` (v3.9.6 / VersionCode 25 / 2.820 KB assinado)
> *Acervo Total*: 521 cifras completas e auditadas (283 Litúrgicas + 238 Populares/Devocionais)
> *Repositório GitHub*: **https://github.com/Aristeu-Junior/santa-cifra** (Branch: `main`)

---

## 1. Status do Ambiente & Handoff para o Claude

O ambiente está totalmente preparado, testado e com a árvore Git perfeitamente limpa e sincronizada com a branch `main`.

* **Repositório Git**: `https://github.com/Aristeu-Junior/santa-cifra.git`
* **Branch Ativa**: `main`
* **Diretório do Projeto**: `santa-cifra/`
* **Hospedagem Web PWA**: `https://santa-cifra.surge.sh` (deploy automático via `npx surge santa-cifra santa-cifra.surge.sh --token 0fb001019fdf52cea938964d02c62712`)
* **Service Worker**: Cache ativo `santa-cifra-v30` (em `santa-cifra/sw.js`)
* **Compilação Android**: Script automatizado `python scripts/build_android_apk.py` (Android SDK 36.0.0 / JDK 17) gerando o APK assinado em `santa-cifra/santa-cifra.apk`
* **Segurança**: CSP rígido, criptografia PBKDF2 (100k iterações) com salt individual, proteção anti-IDOR por MAC de sessão, honeypots anti-bot e sanitização HTML/URL

---

## 2. Histórico de Páginas Refatoradas pelo Claude (Design System Consolidado)

Na última passagem de refatoração visual, o **Claude** estabeleceu a identidade nobre, sóbria e canônica do Santa Cifra nas seguintes telas:

### A. Cancioneiro / Catálogo Home (`#catalogSection`)
* **O que o Claude fez**:
  * Implementou o layout sóbrio com paleta litúrgica (fundo grafite profundo `#0e1013`, acentos em carmim/ouro `#c43238` e marfim `#f5f2eb`).
  * Barra de busca com debounce e botão de limpar.
  * Seleção de tipo de repertório (*Tudo*, *Para a Missa*, *Fora da Missa*) com badges semânticos e contadores.
  * Pills de momentos litúrgicos com rolagem horizontal suave.
  * Painel expansível de filtros com selects elegantes e toggle de cifras fáceis.
* **Ajustes recentes feitos pelo Gemini a pedido do usuário (v3.9.6)**:
  * Remoção da seção "Em Destaque" (*Mais tocadas* e *Mais fáceis*) do topo da página.
  * Renomeação do cabeçalho de "Repertório" para **Cancioneiro Litúrgico & Devocional** e do título de contagem para **Cancioneiro Católico (521 cânticos)**.
  * Lista corrida contínua e extensa ordenada por relevância musical católica (Pe. Zezinho, Frei Gilson, Pe. Marcelo Rossi, Pe. Fábio de Melo, Shalom, etc.), carregando em lote inicial de 60 itens com rolagem automática contínua.

### B. Página e Índice de Artistas (`#artistsSection` / `artists-view.js`)
* **O que o Claude fez**:
  * Criou a navegação por artistas católicos com avatares circulares e fotos oficiais.
  * Campo de busca de artistas com ordenação alfabética e por popularidade.
  * Página de perfil individual do artista contendo foto, biografia/origem litúrgica, distintivos e listagem de cânticos de sua autoria ou interpretação.

### C. Pastas, Repertórios e Favoritos (`#playlistsSection` / `playlists-view.js`)
* **O que o Claude fez**:
  * Aba de organização de pastas litúrgicas (ex.: Missa de Domingo, Adoração, Grupo de Oração).
  * Modal para criação e edição de pastas com contadores de músicas.
  * Modal para adicionar uma música a uma pasta existente ou nova.
  * Aba dedicada de *Favoritos* com contagem e remoção rápida.

### D. Leitor de Cifras (`#songViewSection` / `song-viewer.js`)
* **O que o Claude fez**:
  * Cabeçalho litúrgico da música com título, compositor, tempo litúrgico e tom original.
  * Barra flutuante inferior no mobile (*Bottom Bar*) com botões de Tom (- / Tom / +), Rolar, Simplificar e menu Mais.
  * Menu expansível de ferramentas: metrônomo BPM, tom original, redimensionamento de fonte (A- / A+), compartilhamento para WhatsApp e impressão.

### E. Autenticação & Perfil de Usuário (`#authDialog`, `#profileDialog` / `auth.js`)
* **O que o Claude fez**:
  * Modal de autenticação com abas fluidas: *Entrar*, *Criar Conta* e *Recuperar Senha*.
  * Modal de perfil do usuário com exibição de foto/avatar, alteração de dados e logout seguro.
  * *Ajuste recente do Gemini*: Remoção do atalho público de teste do pároco para preservar o sigilo das credenciais de login.

---

## 3. Páginas e Módulos Novos Criados pelo Gemini (Ainda Sem o Design do Claude)

As funcionalidades abaixo foram desenvolvidas funcionalmente por **Gemini/Antigravity** para atender às solicitações do usuário, mas **o Claude ainda não aplicou seu design e refinamento visual sobre elas**. O Claude deve focar sua atenção nestas telas para unificar toda a experiência visual:

### 1. Módulo do Calendário Litúrgico Católico (`#calendarSection` / `liturgical-calendar.js`)
* **Onde fica**: Quarta aba da barra de navegação inferior (`#tabCalendarBtn`) e seção `#calendarSection`.
* **Estrutura e Recursos Existentes**:
  * Seletor de mês e dia com navegação temporal.
  * Identificação canônica das 5 cores litúrgicas oficiais:
    * *Verde*: Tempo Comum.
    * *Roxo*: Quaresma, Advento e Exéquias.
    * *Branco / Dourado*: Páscoa, Natal, Solenidades do Senhor e Santos não mártires.
    * *Vermelho*: Domingo de Ramos, Sexta-feira Santa, Pentecostes e Mártires.
    * *Rosa*: Domingos *Gaudete* e *Laetare*.
  * Distinção rigorosa entre **Solenidades** (precedência canônica máxima) e **Memórias/Festas de Santos**.
  * Card com as Leituras do Dia (1ª Leitura, Salmo Responsorial com antífona, 2ª Leitura quando houver e Evangelho).
  * Lista de repertório sugerido aprovado para o dia com links de abertura direta da cifra.
* **O que o Claude deve refatorar visualmente**:
  * Harmonizar o seletor de dias do calendário e os cards de celebração com a estética litúrgica de alta costura do Santa Cifra.
  * Melhorar a hierarquia tipográfica da caixa de leituras bíblicas e antífonas.
  * Refinar as pílulas de cores litúrgicas para que sigam o acabamento sutil das demais tags do sistema.
  * Assegurar leitura fluida e responsiva sem rolagem horizontal no celular (iPhone e Android).

### 2. Módulo de Paróquia & Gestão Pastoral (`#parishSection` / `parish-manager.js` / `parish.css`)
* **Onde fica**: Quinta aba da barra de navegação inferior (`#tabParishBtn`) e seção `#parishSection`.
* **Estrutura e Recursos Existentes**:
  * **Estado Não-Filiado**: Apresentação inicial sóbria (*Comunidade Paroquial*) com botão para localizar a paróquia e link pastoral para o pároco.
  * **Visualização da Paróquia Ativa**: Card com dados da **Paróquia Santo Antônio de Pádua - Ferraz de Vasconcelos** (Pároco: Pe. Marlson Assis de Araújo, Diocese de Mogi das Cruzes, endereço e secretaria).
  * **Modal de Localizar Paróquia (`#searchParishDialog`)**:
    * Filtros por Estado (UF), Município, Diocese e Nome da Igreja.
    * Cards de resultados com botão para definir a paróquia de origem.
  * **Modal de Gestão de Ministérios de Música (`#parishMinistriesDialog`)**:
    * Listagem de ministérios paroquiais cadastrados e seus integrantes.
    * Botão para cadastrar novo ministério e gerar link de convite pastoral para outros músicos.
  * **Modal de Escala de Celebrações (`#parishScheduleDialog`)**:
    * Calendário de missas com horários (ex.: Domingo 8h, 10h, 19h).
    * Vagas abertas para ministérios se candidatarem a tocar.
  * **Modal de Cadastro de Missas (`#addMassDialog`)**:
    * Painel exclusivo do pároco para lançar novos horários e celebrações no calendário da comunidade.
  * **Modal de Edição Paroquial (`#editParishDialog`)**:
    * Formulário pastoral para o sacerdote atualizar os dados de endereço, diocese, redes sociais e história da igreja.
  * **Painel de Aprovação Pastoral**:
    * Seção exclusiva exibida apenas para o usuário com perfil de pároco (`role: 'padre'`), permitindo aprovar ou recusar filiações de ministérios pendentes.
* **O que o Claude deve refatorar visualmente**:
  * Estes modais e telas foram construídos do zero recentemente e precisam do olhar de design do Claude para ficarem tão elegantes e nobres quanto o catálogo e a página de artistas.
  * Padronizar as bordas, fundos de modal, botões de ação primários/secundários, tipografia Garamond/Atkinson e espaçamentos no mobile.
  * Manter a regra absoluta: **zero emojis** em botões e títulos, utilizando apenas ícones SVG monocromáticos minimalistas.

### 3. Modal Unificado de Diagramas de Acordes (`#chordDialog` / `chords-data.js`)
* **Onde fica**: Disparado ao tocar em qualquer diagrama no topo do leitor de cifras ou em qualquer cifra interativa (`.chord-token`) no texto.
* **Estrutura e Recursos Existentes**:
  * Exibe unicamente o instrumento atualmente ativo (Violão, Teclado, Ukulele ou Cavaquinho) com abas compactas para troca rápida de instrumento.
  * Navegação entre variações do acorde com botões laterais `<` e `>` e texto explicativo (*Variação 1 de N*).
  * Renderização de pestana em estilo "dedo deitado" (barra contínua arredondada em SVG).
  * Diagrama de teclado configurado para digitação humana real de 3 ou 4 teclas (sem duplicação de oitavas).
* **O que o Claude deve refatorar visualmente**:
  * O design dos controles de paginação de acordes (`<` e `>`), o indicador central da variação e o cabeçalho do diálogo podem receber o polimento visual característico do Claude.

### 4. Controlador Flutuante de Rolagem Automática (`#scrollFloatingController`)
* **Onde fica**: Barra suspensa no rodapé da visualização de cifra quando a rolagem automática é ativada.
* **Estrutura e Recursos Existentes**:
  * Botão de voltar ao topo da folha.
  * Ajuste fino de velocidade em passos de $\pm 0.1x$ (`#btnFloatingSpeedDec` e `#btnFloatingSpeedInc`).
  * Badge central indicador da velocidade atual (`#floatingSpeedValue`, ex.: `1.0x`), que ao ser clicado alterna presets rápidos (`0.5x`, `1.0x`, `1.5x`, `2.0x`, `3.0x`).
  * Botão de Play/Pausa e botão de encerrar rolagem.
* **O que o Claude deve refatorar visualmente**:
  * A barra já possui funcionalidade a 60fps com aceleração suave, mas Claude pode aprimorar a estilização da pílula flutuante (elevação, efeito *glassmorphism* com `backdrop-filter`, contrastes e microinterações táteis).

---

## 4. Diretrizes e Regras Estritas de Design do Projeto

Ao realizar a refatoração visual, manter estrita aderência às regras do produto:

1. **Proibição de Emojis na Interface**:
   * Não usar emojis (como `🎸`, `📅`, `📍`, `✝️`, `✨`) em botões, abas, títulos ou cards.
   * Usar exclusivamente os ícones lineares SVG do módulo `window.SantaCifra.ICONS` ou SVGs inline com `stroke-width="1.8"` a `2.0`.
2. **Tipografia Sagrada e Nobre**:
   * Títulos e cabeçalhos litúrgicos: `font-family: var(--font-title)` (`Cormorant Garamond, serif`).
   * Corpo de texto e labels de botões: `font-family: var(--font-body)` (`Atkinson Hyperlegible, sans-serif`).
   * Cifras e letras musicais: `font-family: var(--font-mono)` (`ui-monospace, SFMono-Regular, monospace`).
3. **Paleta Litúrgica**:
   * Fundo profundo escuro: `--bg-body` (`#0e1013`) e superfície `--bg-surface` (`#16181d`).
   * Acento nobre: `--accent` (`#c43238`) e `--accent-hover` (`#d9383f`).
   * Ouro sacro: `--gold-primary` (`#d4af37`) e `--gold-soft` (`#f3e5ab`).
   * Texto principal: `--text-main` (`#f5f2eb`) e texto secundário `--text-secondary` (`#9aa0a6`).
4. **Mobile First & iPhone Responsiveness**:
   * Assegurar que nenhum elemento exceda 100% da largura da tela (`width: 100%; box-sizing: border-box;`).
   * Manter `overflow-x: hidden` no contêiner principal e usar `overflow-x: auto` apenas na folha interna de cifra.
   * Respeitar as áreas seguras do iOS (`env(safe-area-inset-top)` e `env(safe-area-inset-bottom)`).
