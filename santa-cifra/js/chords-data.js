/**
 * SANTA CIFRA — Dicionário Canônico e Gerador de Diagramas SVG Multi-Instrumentos (v3.9.5)
 * Suporta: Violão, Teclado/Piano, Ukulele e Cavaquinho.
 * 
 * Melhorias implementadas:
 * 1. Pestana realista em barra sólida contínua arredondada ("dedo deitado") no Violão, Ukulele e Cavaquinho.
 * 2. Eliminação de círculos duplicados na casa da pestana.
 * 3. Indicação clara de pestana alta (ex: 3ª, 5ª casa) na lateral do braço do instrumento.
 * 4. Teclado com digitação humana real: 3 a 4 teclas ativas em registro único (sem duplicatas em 2 oitavas / 6 dedos).
 * 5. Múltiplas variações e posições (aberto, pestanas alternativas, inversões de acordes) com suporte a navegação por setas (< e >).
 */

(function () {
  'use strict';

  // =========================================================================
  // VARIAÇÕES DE ACORDES PARA VIOLÃO (6 CORDAS: E A D G B E)
  // Formato: frets [6ª à 1ª corda], fingers [6ª à 1ª], barre: casa da pestana, baseFret: casa inicial exibida
  // =========================================================================
  const GUITAR_CHORDS = {
    'C': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 3, 2, 0, 1, 0], fingers: [0, 3, 2, 0, 1, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 3ª casa)', frets: [-1, 3, 5, 5, 5, 3], fingers: [0, 1, 2, 3, 4, 1], barre: 3, baseFret: 3 },
      { name: 'Posição 3 (Pestana 8ª casa)', frets: [8, 10, 10, 9, 8, 8], fingers: [1, 3, 4, 2, 1, 1], barre: 8, baseFret: 8 }
    ],
    'C7': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 3, 2, 3, 1, 0], fingers: [0, 3, 2, 4, 1, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 3ª casa)', frets: [-1, 3, 5, 3, 5, 3], fingers: [0, 1, 3, 1, 4, 1], barre: 3, baseFret: 3 },
      { name: 'Posição 3 (Pestana 8ª casa)', frets: [8, 10, 8, 9, 8, 8], fingers: [1, 3, 1, 2, 1, 1], barre: 8, baseFret: 8 }
    ],
    'C7+': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 3, 2, 0, 0, 0], fingers: [0, 3, 2, 0, 0, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 3ª casa)', frets: [-1, 3, 5, 4, 5, 3], fingers: [0, 1, 3, 2, 4, 1], barre: 3, baseFret: 3 }
    ],
    'C9': [
      { name: 'Posição 1 (Com 9ª)', frets: [-1, 3, 2, 0, 3, 3], fingers: [0, 2, 1, 0, 3, 4], baseFret: 1 },
      { name: 'Posição 2 (Aberto simples)', frets: [-1, 3, 2, 0, 3, 0], fingers: [0, 2, 1, 0, 3, 0], baseFret: 1 }
    ],
    'Cm': [
      { name: 'Posição 1 (Pestana 3ª casa)', frets: [-1, 3, 5, 5, 4, 3], fingers: [0, 1, 3, 4, 2, 1], barre: 3, baseFret: 3 },
      { name: 'Posição 2 (Pestana 8ª casa)', frets: [8, 10, 10, 8, 8, 8], fingers: [1, 3, 4, 1, 1, 1], barre: 8, baseFret: 8 }
    ],
    'Cm7': [
      { name: 'Posição 1 (Pestana 3ª casa)', frets: [-1, 3, 5, 3, 4, 3], fingers: [0, 1, 3, 1, 2, 1], barre: 3, baseFret: 3 },
      { name: 'Posição 2 (Pestana 8ª casa)', frets: [8, 10, 8, 8, 8, 8], fingers: [1, 3, 1, 1, 1, 1], barre: 8, baseFret: 8 }
    ],

    'D': [
      { name: 'Posição 1 (Aberto)', frets: [-1, -1, 0, 2, 3, 2], fingers: [0, 0, 0, 1, 3, 2], baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [-1, 5, 7, 7, 7, 5], fingers: [0, 1, 2, 3, 4, 1], barre: 5, baseFret: 5 },
      { name: 'Posição 3 (Pestana 10ª casa)', frets: [10, 12, 12, 11, 10, 10], fingers: [1, 3, 4, 2, 1, 1], barre: 10, baseFret: 10 }
    ],
    'D7': [
      { name: 'Posição 1 (Aberto)', frets: [-1, -1, 0, 2, 1, 2], fingers: [0, 0, 0, 2, 1, 3], baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [-1, 5, 7, 5, 7, 5], fingers: [0, 1, 3, 1, 4, 1], barre: 5, baseFret: 5 }
    ],
    'D7+': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [-1, -1, 0, 2, 2, 2], fingers: [0, 0, 0, 1, 1, 1], barre: 2, baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [-1, 5, 7, 6, 7, 5], fingers: [0, 1, 3, 2, 4, 1], barre: 5, baseFret: 5 }
    ],
    'D9': [
      { name: 'Posição 1 (Aberto)', frets: [-1, -1, 0, 2, 3, 0], fingers: [0, 0, 0, 1, 2, 0], baseFret: 1 }
    ],
    'Dm': [
      { name: 'Posição 1 (Aberto)', frets: [-1, -1, 0, 2, 3, 1], fingers: [0, 0, 0, 2, 3, 1], baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [-1, 5, 7, 7, 6, 5], fingers: [0, 1, 3, 4, 2, 1], barre: 5, baseFret: 5 },
      { name: 'Posição 3 (Pestana 10ª casa)', frets: [10, 12, 12, 10, 10, 10], fingers: [1, 3, 4, 1, 1, 1], barre: 10, baseFret: 10 }
    ],
    'Dm7': [
      { name: 'Posição 1 (Aberto com pestana)', frets: [-1, -1, 0, 2, 1, 1], fingers: [0, 0, 0, 2, 1, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [-1, 5, 7, 5, 6, 5], fingers: [0, 1, 3, 1, 2, 1], barre: 5, baseFret: 5 }
    ],
    'D/F#': [
      { name: 'Posição 1 (Baixo em F#)', frets: [2, 0, 0, 2, 3, 2], fingers: [1, 0, 0, 2, 4, 3], baseFret: 1 },
      { name: 'Posição 2 (Alternativa sem corda A)', frets: [2, -1, 0, 2, 3, 2], fingers: [1, 0, 0, 2, 4, 3], baseFret: 1 }
    ],

    'E': [
      { name: 'Posição 1 (Aberto)', frets: [0, 2, 2, 1, 0, 0], fingers: [0, 2, 3, 1, 0, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 7ª casa)', frets: [-1, 7, 9, 9, 9, 7], fingers: [0, 1, 2, 3, 4, 1], barre: 7, baseFret: 7 }
    ],
    'E7': [
      { name: 'Posição 1 (Aberto)', frets: [0, 2, 0, 1, 0, 0], fingers: [0, 2, 0, 1, 0, 0], baseFret: 1 },
      { name: 'Posição 2 (Com 4 dedos)', frets: [0, 2, 2, 1, 3, 0], fingers: [0, 2, 3, 1, 4, 0], baseFret: 1 },
      { name: 'Posição 3 (Pestana 7ª casa)', frets: [-1, 7, 9, 7, 9, 7], fingers: [0, 1, 3, 1, 4, 1], barre: 7, baseFret: 7 }
    ],
    'E7+': [
      { name: 'Posição 1 (Aberto)', frets: [0, 2, 1, 1, 0, 0], fingers: [0, 3, 1, 2, 0, 0], baseFret: 1 }
    ],
    'E9': [
      { name: 'Posição 1 (Aberto)', frets: [0, 2, 2, 1, 0, 2], fingers: [0, 2, 3, 1, 0, 4], baseFret: 1 }
    ],
    'Em': [
      { name: 'Posição 1 (Aberto)', frets: [0, 2, 2, 0, 0, 0], fingers: [0, 1, 2, 0, 0, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 7ª casa)', frets: [-1, 7, 9, 9, 8, 7], fingers: [0, 1, 3, 4, 2, 1], barre: 7, baseFret: 7 }
    ],
    'Em7': [
      { name: 'Posição 1 (Aberto)', frets: [0, 2, 0, 0, 0, 0], fingers: [0, 1, 0, 0, 0, 0], baseFret: 1 },
      { name: 'Posição 2 (Com D e G soltos)', frets: [0, 2, 2, 0, 3, 3], fingers: [0, 1, 2, 0, 3, 4], baseFret: 1 },
      { name: 'Posição 3 (Pestana 7ª casa)', frets: [-1, 7, 9, 7, 8, 7], fingers: [0, 1, 3, 1, 2, 1], barre: 7, baseFret: 7 }
    ],

    'F': [
      { name: 'Posição 1 (Pestana 1ª casa)', frets: [1, 3, 3, 2, 1, 1], fingers: [1, 3, 4, 2, 1, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 2 (Pequena pestana)', frets: [-1, -1, 3, 2, 1, 1], fingers: [0, 0, 3, 2, 1, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 3 (Pestana 8ª casa)', frets: [-1, 8, 10, 10, 10, 8], fingers: [0, 1, 2, 3, 4, 1], barre: 8, baseFret: 8 }
    ],
    'F7': [
      { name: 'Posição 1 (Pestana 1ª casa)', frets: [1, 3, 1, 2, 1, 1], fingers: [1, 3, 1, 2, 1, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 2 (Pestana 8ª casa)', frets: [-1, 8, 10, 8, 10, 8], fingers: [0, 1, 3, 1, 4, 1], barre: 8, baseFret: 8 }
    ],
    'F7+': [
      { name: 'Posição 1 (Aberto)', frets: [-1, -1, 3, 2, 1, 0], fingers: [0, 0, 3, 2, 1, 0], baseFret: 1 },
      { name: 'Posição 2 (Com baixo em F)', frets: [1, 3, 3, 2, 1, 0], fingers: [1, 3, 4, 2, 1, 0], barre: 1, baseFret: 1 }
    ],
    'F#': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [2, 4, 4, 3, 2, 2], fingers: [1, 3, 4, 2, 1, 1], barre: 2, baseFret: 2 },
      { name: 'Posição 2 (Pestana 9ª casa)', frets: [-1, 9, 11, 11, 11, 9], fingers: [0, 1, 2, 3, 4, 1], barre: 9, baseFret: 9 }
    ],
    'F#7': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [2, 4, 2, 3, 2, 2], fingers: [1, 3, 1, 2, 1, 1], barre: 2, baseFret: 2 }
    ],
    'F#m': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [2, 4, 4, 2, 2, 2], fingers: [1, 3, 4, 1, 1, 1], barre: 2, baseFret: 2 },
      { name: 'Posição 2 (Pestana 9ª casa)', frets: [-1, 9, 11, 11, 10, 9], fingers: [0, 1, 3, 4, 2, 1], barre: 9, baseFret: 9 }
    ],
    'F#m7': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [2, 4, 2, 2, 2, 2], fingers: [1, 3, 1, 1, 1, 1], barre: 2, baseFret: 2 }
    ],

    'G': [
      { name: 'Posição 1 (Aberto clássico)', frets: [3, 2, 0, 0, 0, 3], fingers: [2, 1, 0, 0, 0, 3], baseFret: 1 },
      { name: 'Posição 2 (Com Ré na 2ª corda)', frets: [3, 2, 0, 0, 3, 3], fingers: [2, 1, 0, 0, 3, 4], baseFret: 1 },
      { name: 'Posição 3 (Pestana 3ª casa)', frets: [3, 5, 5, 4, 3, 3], fingers: [1, 3, 4, 2, 1, 1], barre: 3, baseFret: 3 },
      { name: 'Posição 4 (Pestana 10ª casa)', frets: [-1, 10, 12, 12, 12, 10], fingers: [0, 1, 2, 3, 4, 1], barre: 10, baseFret: 10 }
    ],
    'G7': [
      { name: 'Posição 1 (Aberto)', frets: [3, 2, 0, 0, 0, 1], fingers: [3, 2, 0, 0, 0, 1], baseFret: 1 },
      { name: 'Posição 2 (Pestana 3ª casa)', frets: [3, 5, 3, 4, 3, 3], fingers: [1, 3, 1, 2, 1, 1], barre: 3, baseFret: 3 }
    ],
    'G7+': [
      { name: 'Posição 1 (Aberto)', frets: [3, -1, 0, 0, 0, 2], fingers: [2, 0, 0, 0, 0, 1], baseFret: 1 },
      { name: 'Posição 2 (Com pestana 3ª)', frets: [3, 5, 4, 4, 3, 3], fingers: [1, 4, 2, 3, 1, 1], barre: 3, baseFret: 3 }
    ],
    'Gm': [
      { name: 'Posição 1 (Pestana 3ª casa)', frets: [3, 5, 5, 3, 3, 3], fingers: [1, 3, 4, 1, 1, 1], barre: 3, baseFret: 3 },
      { name: 'Posição 2 (Pestana 10ª casa)', frets: [-1, 10, 12, 12, 11, 10], fingers: [0, 1, 3, 4, 2, 1], barre: 10, baseFret: 10 }
    ],
    'Gm7': [
      { name: 'Posição 1 (Pestana 3ª casa)', frets: [3, 5, 3, 3, 3, 3], fingers: [1, 3, 1, 1, 1, 1], barre: 3, baseFret: 3 }
    ],
    'G/B': [
      { name: 'Posição 1 (Baixo em Si)', frets: [-1, 2, 0, 0, 3, 3], fingers: [0, 1, 0, 0, 3, 4], baseFret: 1 },
      { name: 'Posição 2 (Aberto simples)', frets: [-1, 2, 0, 0, 0, 3], fingers: [0, 1, 0, 0, 0, 2], baseFret: 1 }
    ],

    'A': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 0, 2, 2, 2, 0], fingers: [0, 0, 1, 2, 3, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [5, 7, 7, 6, 5, 5], fingers: [1, 3, 4, 2, 1, 1], barre: 5, baseFret: 5 }
    ],
    'A7': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 0, 2, 0, 2, 0], fingers: [0, 0, 1, 0, 2, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [5, 7, 5, 6, 5, 5], fingers: [1, 3, 1, 2, 1, 1], barre: 5, baseFret: 5 }
    ],
    'A7+': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 0, 2, 1, 2, 0], fingers: [0, 0, 2, 1, 3, 0], baseFret: 1 }
    ],
    'A9': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 0, 2, 2, 0, 0], fingers: [0, 0, 1, 2, 0, 0], baseFret: 1 }
    ],
    'Am': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 0, 2, 2, 1, 0], fingers: [0, 0, 2, 3, 1, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [5, 7, 7, 5, 5, 5], fingers: [1, 3, 4, 1, 1, 1], barre: 5, baseFret: 5 }
    ],
    'Am7': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 0, 2, 0, 1, 0], fingers: [0, 0, 2, 0, 1, 0], baseFret: 1 },
      { name: 'Posição 2 (Pestana 5ª casa)', frets: [5, 7, 5, 5, 5, 5], fingers: [1, 3, 1, 1, 1, 1], barre: 5, baseFret: 5 }
    ],
    'A/C#': [
      { name: 'Posição 1 (Baixo em C#)', frets: [-1, 4, 2, 2, 2, -1], fingers: [0, 3, 1, 1, 1, 0], barre: 2, baseFret: 1 }
    ],

    'B': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [-1, 2, 4, 4, 4, 2], fingers: [0, 1, 2, 3, 4, 1], barre: 2, baseFret: 2 },
      { name: 'Posição 2 (Pestana 7ª casa)', frets: [7, 9, 9, 8, 7, 7], fingers: [1, 3, 4, 2, 1, 1], barre: 7, baseFret: 7 }
    ],
    'B7': [
      { name: 'Posição 1 (Aberto)', frets: [-1, 2, 1, 2, 0, 2], fingers: [0, 2, 1, 3, 0, 4], baseFret: 1 },
      { name: 'Posição 2 (Pestana 2ª casa)', frets: [-1, 2, 4, 2, 4, 2], fingers: [0, 1, 3, 1, 4, 1], barre: 2, baseFret: 2 },
      { name: 'Posição 3 (Pestana 7ª casa)', frets: [7, 9, 7, 8, 7, 7], fingers: [1, 3, 1, 2, 1, 1], barre: 7, baseFret: 7 }
    ],
    'Bm': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [-1, 2, 4, 4, 3, 2], fingers: [0, 1, 3, 4, 2, 1], barre: 2, baseFret: 2 },
      { name: 'Posição 2 (Pestana 7ª casa)', frets: [7, 9, 9, 7, 7, 7], fingers: [1, 3, 4, 1, 1, 1], barre: 7, baseFret: 7 }
    ],
    'Bm7': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [-1, 2, 4, 2, 3, 2], fingers: [0, 1, 3, 1, 2, 1], barre: 2, baseFret: 2 },
      { name: 'Posição 2 (Pestana 7ª casa)', frets: [7, 9, 7, 7, 7, 7], fingers: [1, 3, 1, 1, 1, 1], barre: 7, baseFret: 7 }
    ],

    'Bb': [
      { name: 'Posição 1 (Pestana 1ª casa)', frets: [-1, 1, 3, 3, 3, 1], fingers: [0, 1, 2, 3, 4, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 2 (Pestana 6ª casa)', frets: [6, 8, 8, 7, 6, 6], fingers: [1, 3, 4, 2, 1, 1], barre: 6, baseFret: 6 }
    ],
    'Bb7': [
      { name: 'Posição 1 (Pestana 1ª casa)', frets: [-1, 1, 3, 1, 3, 1], fingers: [0, 1, 3, 1, 4, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 2 (Pestana 6ª casa)', frets: [6, 8, 6, 7, 6, 6], fingers: [1, 3, 1, 2, 1, 1], barre: 6, baseFret: 6 }
    ],
    'Bbm': [
      { name: 'Posição 1 (Pestana 1ª casa)', frets: [-1, 1, 3, 3, 2, 1], fingers: [0, 1, 3, 4, 2, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 2 (Pestana 6ª casa)', frets: [6, 8, 8, 6, 6, 6], fingers: [1, 3, 4, 1, 1, 1], barre: 6, baseFret: 6 }
    ],
    'Eb': [
      { name: 'Posição 1 (Pestana 6ª casa)', frets: [-1, 6, 8, 8, 8, 6], fingers: [0, 1, 2, 3, 4, 1], barre: 6, baseFret: 6 }
    ],
    'Ab': [
      { name: 'Posição 1 (Pestana 4ª casa)', frets: [4, 6, 6, 5, 4, 4], fingers: [1, 3, 4, 2, 1, 1], barre: 4, baseFret: 4 }
    ],
    'C#m': [
      { name: 'Posição 1 (Pestana 4ª casa)', frets: [-1, 4, 6, 6, 5, 4], fingers: [0, 1, 3, 4, 2, 1], barre: 4, baseFret: 4 }
    ],
    'G#m': [
      { name: 'Posição 1 (Pestana 4ª casa)', frets: [4, 6, 6, 4, 4, 4], fingers: [1, 3, 4, 1, 1, 1], barre: 4, baseFret: 4 },
      { name: 'Posição 2 (Sem bordão, 4ª casa)', frets: [-1, -1, 6, 4, 4, 4], fingers: [0, 0, 3, 1, 1, 1], barre: 4, baseFret: 4 }
    ],
    'G#m7': [
      { name: 'Posição 1 (Pestana 4ª casa)', frets: [4, 6, 4, 4, 4, 4], fingers: [1, 3, 1, 1, 1, 1], barre: 4, baseFret: 4 },
      { name: 'Posição 2 (4ª casa)', frets: [4, -1, 4, 4, 4, -1], fingers: [1, 0, 2, 3, 4, 0], baseFret: 4 }
    ],
    'C#m7': [
      { name: 'Posição 1 (Pestana 4ª casa)', frets: [-1, 4, 6, 4, 5, 4], fingers: [0, 1, 3, 1, 2, 1], barre: 4, baseFret: 4 }
    ],
    'C#': [
      { name: 'Posição 1 (Pestana 4ª casa)', frets: [-1, 4, 6, 6, 6, 4], fingers: [0, 1, 2, 3, 4, 1], barre: 4, baseFret: 4 },
      { name: 'Posição 2 (Pestana 9ª casa)', frets: [9, 11, 11, 10, 9, 9], fingers: [1, 3, 4, 2, 1, 1], barre: 9, baseFret: 9 }
    ],
    'G#': [
      { name: 'Posição 1 (Pestana 4ª casa)', frets: [4, 6, 6, 5, 4, 4], fingers: [1, 3, 4, 2, 1, 1], barre: 4, baseFret: 4 }
    ],
    'Abm': [
      { name: 'Posição 1 (Pestana 4ª casa)', frets: [4, 6, 6, 4, 4, 4], fingers: [1, 3, 4, 1, 1, 1], barre: 4, baseFret: 4 }
    ],
    'Ebm': [
      { name: 'Posição 1 (Pestana 6ª casa)', frets: [-1, 6, 8, 8, 7, 6], fingers: [0, 1, 3, 4, 2, 1], barre: 6, baseFret: 6 }
    ],
    'Eb7': [
      { name: 'Posição 1 (Pestana 6ª casa)', frets: [-1, 6, 8, 6, 8, 6], fingers: [0, 1, 3, 1, 4, 1], barre: 6, baseFret: 6 }
    ],
    'Gb': [
      { name: 'Posição 1 (Pestana 2ª casa)', frets: [2, 4, 4, 3, 2, 2], fingers: [1, 3, 4, 2, 1, 1], barre: 2, baseFret: 2 }
    ],
    'Fm': [
      { name: 'Posição 1 (Pestana 1ª casa)', frets: [1, 3, 3, 1, 1, 1], fingers: [1, 3, 4, 1, 1, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 2 (Pestana 8ª casa)', frets: [-1, 8, 10, 10, 9, 8], fingers: [0, 1, 3, 4, 2, 1], barre: 8, baseFret: 8 }
    ],
    'Fm7': [
      { name: 'Posição 1 (Pestana 1ª casa)', frets: [1, 3, 1, 1, 1, 1], fingers: [1, 3, 1, 1, 1, 1], barre: 1, baseFret: 1 },
      { name: 'Posição 2 (Pestana 8ª casa)', frets: [-1, 8, 10, 8, 9, 8], fingers: [0, 1, 3, 1, 2, 1], barre: 8, baseFret: 8 }
    ],
    'Fm6': [
      { name: 'Posição 1 (1ª casa)', frets: [1, -1, 0, 1, 1, 1], fingers: [1, 0, 0, 2, 3, 4], baseFret: 1 }
    ],
    'Fm7+': [
      { name: 'Posição 1 (Pestana 1ª casa)', frets: [1, 3, 2, 1, 1, 1], fingers: [1, 4, 2, 1, 1, 1], barre: 1, baseFret: 1 }
    ],
    'C/E': [{ name: 'Posição 1 (Baixo em E)', frets: [0, 3, 2, 0, 1, 0], fingers: [0, 3, 2, 0, 1, 0], baseFret: 1 }],
    'C/G': [{ name: 'Posição 1 (Baixo em G)', frets: [3, 3, 2, 0, 1, 0], fingers: [3, 4, 2, 0, 1, 0], baseFret: 1 }],
    'C/B': [{ name: 'Posição 1 (Baixo em B)', frets: [-1, 2, 2, 0, 1, 0], fingers: [0, 2, 3, 0, 1, 0], baseFret: 1 }],
    'C/Bb': [{ name: 'Posição 1 (Baixo em Bb)', frets: [-1, 1, 2, 0, 1, 0], fingers: [0, 1, 3, 0, 2, 0], baseFret: 1 }],
    'Am/G': [{ name: 'Posição 1 (Baixo em G)', frets: [3, 0, 2, 2, 1, 0], fingers: [3, 0, 2, 4, 1, 0], baseFret: 1 }],
    'Am/C': [{ name: 'Posição 1 (Baixo em C)', frets: [-1, 3, 2, 2, 1, 0], fingers: [0, 4, 2, 3, 1, 0], baseFret: 1 }],
    'Am/E': [{ name: 'Posição 1 (Baixo em E)', frets: [0, 0, 2, 2, 1, 0], fingers: [0, 0, 2, 3, 1, 0], baseFret: 1 }],
    'Am/F#': [{ name: 'Posição 1 (Baixo em F#)', frets: [2, 0, 2, 2, 1, 0], fingers: [2, 0, 3, 4, 1, 0], baseFret: 1 }],
    'Am/F': [{ name: 'Posição 1 (Baixo em F)', frets: [1, 0, 2, 2, 1, 0], fingers: [1, 0, 3, 4, 2, 0], baseFret: 1 }],
    'Em/D': [{ name: 'Posição 1 (Baixo em D)', frets: [-1, -1, 0, 0, 0, 0], fingers: [0, 0, 0, 0, 0, 0], baseFret: 1 }],
    'Em/B': [{ name: 'Posição 1 (Baixo em B)', frets: [-1, 2, 2, 0, 0, 0], fingers: [0, 1, 2, 0, 0, 0], baseFret: 1 }],
    'Em/G': [{ name: 'Posição 1 (Baixo em G)', frets: [3, 2, 2, 0, 0, 0], fingers: [3, 1, 2, 0, 0, 0], baseFret: 1 }],
    'D/A': [{ name: 'Posição 1 (Baixo em A)', frets: [-1, 0, 0, 2, 3, 2], fingers: [0, 0, 0, 1, 3, 2], baseFret: 1 }],
    'D/C': [{ name: 'Posição 1 (Baixo em C)', frets: [-1, 3, 0, 2, 3, 2], fingers: [0, 2, 0, 1, 4, 3], baseFret: 1 }],
    'D/C#': [{ name: 'Posição 1 (Baixo em C#)', frets: [-1, 4, 0, 2, 3, 2], fingers: [0, 4, 0, 1, 3, 2], baseFret: 1 }],
    'Dm/C': [{ name: 'Posição 1 (Baixo em C)', frets: [-1, 3, 0, 2, 3, 1], fingers: [0, 3, 0, 2, 4, 1], baseFret: 1 }],
    'Dm/A': [{ name: 'Posição 1 (Baixo em A)', frets: [-1, 0, 0, 2, 3, 1], fingers: [0, 0, 0, 2, 3, 1], baseFret: 1 }],
    'Dm/F': [{ name: 'Posição 1 (Baixo em F)', frets: [1, -1, 0, 2, 3, 1], fingers: [1, 0, 0, 3, 4, 2], baseFret: 1 }],
    'E/G#': [{ name: 'Posição 1 (Baixo em G#)', frets: [4, 2, 2, 1, 0, 0], fingers: [4, 2, 3, 1, 0, 0], baseFret: 1 }],
    'E/B': [{ name: 'Posição 1 (Baixo em B)', frets: [-1, 2, 2, 1, 0, 0], fingers: [0, 2, 3, 1, 0, 0], baseFret: 1 }],
    'F/A': [{ name: 'Posição 1 (Baixo em A)', frets: [-1, 0, 3, 2, 1, 1], fingers: [0, 0, 4, 3, 1, 1], barre: 1, baseFret: 1 }],
    'F/C': [{ name: 'Posição 1 (Baixo em C)', frets: [-1, 3, 3, 2, 1, 1], fingers: [0, 3, 4, 2, 1, 1], barre: 1, baseFret: 1 }],
    'F/G': [{ name: 'Posição 1 (Baixo em G)', frets: [3, 3, 3, 2, 1, 1], fingers: [3, 4, 4, 2, 1, 1], barre: 1, baseFret: 1 }],
    'G/D': [{ name: 'Posição 1 (Baixo em D)', frets: [-1, -1, 0, 0, 0, 3], fingers: [0, 0, 0, 0, 0, 3], baseFret: 1 }],
    'G/F#': [{ name: 'Posição 1 (Baixo em F#)', frets: [2, 2, 0, 0, 0, 3], fingers: [1, 2, 0, 0, 0, 4], baseFret: 1 }],
    'G/E': [{ name: 'Posição 1 (Baixo em E)', frets: [0, 2, 0, 0, 0, 3], fingers: [0, 1, 0, 0, 0, 3], baseFret: 1 }],
    'Bm/A': [{ name: 'Posição 1 (Baixo em A)', frets: [-1, 0, 4, 4, 3, 2], fingers: [0, 0, 3, 4, 2, 1], baseFret: 1 }],
    'F#m/E': [{ name: 'Posição 1 (Baixo em E)', frets: [0, 4, 4, 2, 2, 2], fingers: [0, 3, 4, 1, 1, 1], barre: 2, baseFret: 1 }],
    'C#m/B': [{ name: 'Posição 1 (Baixo em B, 2ª casa)', frets: [-1, 2, 6, 6, 5, 4], fingers: [0, 1, 3, 4, 2, 1], baseFret: 2 }],
    'G#m/F#': [{ name: 'Posição 1 (Baixo em F#, 2ª casa)', frets: [2, 6, 6, 4, 4, 4], fingers: [1, 3, 4, 1, 1, 1], baseFret: 2 }],
    'Bb/D': [{ name: 'Posição 1 (Baixo em D, 3ª casa)', frets: [-1, 5, 3, 3, 3, -1], fingers: [0, 4, 1, 1, 1, 0], barre: 3, baseFret: 3 }],
    'Eb/G': [{ name: 'Posição 1 (Baixo em G)', frets: [3, -1, 1, 3, 4, 3], fingers: [2, 0, 1, 3, 4, 3], baseFret: 1 }]
  };

  // =========================================================================
  // VARIAÇÕES DE ACORDES PARA TECLADO / PIANO
  // Cada acorde especifica EXATAMENTE 3 (tríade) ou 4 (tétrade) teclas reais da mão.
  // Sem duplicar notas em múltiplas oitavas (sem acorde de 6 dedos!).
  // Teclas brancas: C3, D3, E3, F3, G3, A3, B3, C4, D4, E4, F4, G4, A4, B4
  // Teclas pretas: C#3, D#3, F#3, G#3, A#3 (ou Bb3), C#4, D#4, F#4, G#4, A#4 (ou Bb4)
  // =========================================================================
  const KEYBOARD_CHORDS = {
    'C': [
      { name: 'Posição Fundamental', keys: ['C4', 'E4', 'G4'], desc: 'Dó • Mi • Sol' },
      { name: '1ª Inversão', keys: ['E3', 'G3', 'C4'], desc: 'Mi • Sol • Dó' },
      { name: '2ª Inversão', keys: ['G3', 'C4', 'E4'], desc: 'Sol • Dó • Mi' }
    ],
    'C7': [
      { name: 'Posição Fundamental', keys: ['C4', 'E4', 'G4', 'Bb4'], desc: 'Dó • Mi • Sol • Si♭' },
      { name: '1ª Inversão', keys: ['E3', 'G3', 'Bb3', 'C4'], desc: 'Mi • Sol • Si♭ • Dó' }
    ],
    'C7+': [
      { name: 'Posição Fundamental', keys: ['C4', 'E4', 'G4', 'B4'], desc: 'Dó • Mi • Sol • Si' }
    ],
    'C9': [
      { name: 'Com Nona', keys: ['C4', 'D4', 'E4', 'G4'], desc: 'Dó • Ré • Mi • Sol' }
    ],
    'Cm': [
      { name: 'Posição Fundamental', keys: ['C4', 'D#4', 'G4'], desc: 'Dó • Mi♭ • Sol' },
      { name: '1ª Inversão', keys: ['D#3', 'G3', 'C4'], desc: 'Mi♭ • Sol • Dó' },
      { name: '2ª Inversão', keys: ['G3', 'C4', 'D#4'], desc: 'Sol • Dó • Mi♭' }
    ],
    'Cm7': [
      { name: 'Posição Fundamental', keys: ['C4', 'D#4', 'G4', 'Bb4'], desc: 'Dó • Mi♭ • Sol • Si♭' }
    ],

    'D': [
      { name: 'Posição Fundamental', keys: ['D4', 'F#4', 'A4'], desc: 'Ré • Fá# • Lá' },
      { name: '1ª Inversão', keys: ['F#3', 'A3', 'D4'], desc: 'Fá# • Lá • Ré' },
      { name: '2ª Inversão', keys: ['A3', 'D4', 'F#4'], desc: 'Lá • Ré • Fá#' }
    ],
    'D7': [
      { name: 'Posição Fundamental', keys: ['D4', 'F#4', 'A4', 'C4'], desc: 'Ré • Fá# • Lá • Dó' },
      { name: 'Inversão', keys: ['F#3', 'A3', 'C4', 'D4'], desc: 'Fá# • Lá • Dó • Ré' }
    ],
    'D7+': [
      { name: 'Posição Fundamental', keys: ['D4', 'F#4', 'A4', 'C#4'], desc: 'Ré • Fá# • Lá • Dó#' }
    ],
    'D9': [
      { name: 'Com Nona', keys: ['D4', 'E4', 'F#4', 'A4'], desc: 'Ré • Mi • Fá# • Lá' }
    ],
    'Dm': [
      { name: 'Posição Fundamental', keys: ['D4', 'F4', 'A4'], desc: 'Ré • Fá • Lá' },
      { name: '1ª Inversão', keys: ['F3', 'A3', 'D4'], desc: 'Fá • Lá • Ré' },
      { name: '2ª Inversão', keys: ['A3', 'D4', 'F4'], desc: 'Lá • Ré • Fá' }
    ],
    'Dm7': [
      { name: 'Posição Fundamental', keys: ['D4', 'F4', 'A4', 'C4'], desc: 'Ré • Fá • Lá • Dó' }
    ],
    'D/F#': [
      { name: '1ª Inversão (Baixo F#)', keys: ['F#3', 'A3', 'D4'], desc: 'Fá# • Lá • Ré' }
    ],

    'E': [
      { name: 'Posição Fundamental', keys: ['E3', 'G#3', 'B3'], desc: 'Mi • Sol# • Si' },
      { name: '1ª Inversão', keys: ['G#3', 'B3', 'E4'], desc: 'Sol# • Si • Mi' },
      { name: '2ª Inversão', keys: ['B3', 'E4', 'G#4'], desc: 'Si • Mi • Sol#' }
    ],
    'E7': [
      { name: 'Posição Fundamental', keys: ['E3', 'G#3', 'B3', 'D4'], desc: 'Mi • Sol# • Si • Ré' }
    ],
    'Em': [
      { name: 'Posição Fundamental', keys: ['E3', 'G3', 'B3'], desc: 'Mi • Sol • Si' },
      { name: '1ª Inversão', keys: ['G3', 'B3', 'E4'], desc: 'Sol • Si • Mi' },
      { name: '2ª Inversão', keys: ['B3', 'E4', 'G4'], desc: 'Si • Mi • Sol' }
    ],
    'Em7': [
      { name: 'Posição Fundamental', keys: ['E3', 'G3', 'B3', 'D4'], desc: 'Mi • Sol • Si • Ré' }
    ],

    'F': [
      { name: 'Posição Fundamental', keys: ['F3', 'A3', 'C4'], desc: 'Fá • Lá • Dó' },
      { name: '1ª Inversão', keys: ['A3', 'C4', 'F4'], desc: 'Lá • Dó • Fá' },
      { name: '2ª Inversão', keys: ['C4', 'F4', 'A4'], desc: 'Dó • Fá • Lá' }
    ],
    'F7': [
      { name: 'Posição Fundamental', keys: ['F3', 'A3', 'C4', 'D#4'], desc: 'Fá • Lá • Dó • Mi♭' }
    ],
    'F7+': [
      { name: 'Posição Fundamental', keys: ['F3', 'A3', 'C4', 'E4'], desc: 'Fá • Lá • Dó • Mi' }
    ],
    'F#': [
      { name: 'Posição Fundamental', keys: ['F#3', 'A#3', 'C#4'], desc: 'Fá# • Lá# • Dó#' }
    ],
    'F#m': [
      { name: 'Posição Fundamental', keys: ['F#3', 'A3', 'C#4'], desc: 'Fá# • Lá • Dó#' },
      { name: '1ª Inversão', keys: ['A3', 'C#4', 'F#4'], desc: 'Lá • Dó# • Fá#' }
    ],
    'F#m7': [
      { name: 'Posição Fundamental', keys: ['F#3', 'A3', 'C#4', 'E4'], desc: 'Fá# • Lá • Dó# • Mi' }
    ],

    'G': [
      { name: 'Posição Fundamental', keys: ['G3', 'B3', 'D4'], desc: 'Sol • Si • Ré' },
      { name: '1ª Inversão', keys: ['B3', 'D4', 'G4'], desc: 'Si • Ré • Sol' },
      { name: '2ª Inversão', keys: ['D4', 'G4', 'B4'], desc: 'Ré • Sol • Si' }
    ],
    'G7': [
      { name: 'Posição Fundamental', keys: ['G3', 'B3', 'D4', 'F4'], desc: 'Sol • Si • Ré • Fá' }
    ],
    'G7+': [
      { name: 'Posição Fundamental', keys: ['G3', 'B3', 'D4', 'F#4'], desc: 'Sol • Si • Ré • Fá#' }
    ],
    'Gm': [
      { name: 'Posição Fundamental', keys: ['G3', 'Bb3', 'D4'], desc: 'Sol • Si♭ • Ré' },
      { name: '1ª Inversão', keys: ['Bb3', 'D4', 'G4'], desc: 'Si♭ • Ré • Sol' },
      { name: '2ª Inversão', keys: ['D4', 'G4', 'Bb4'], desc: 'Ré • Sol • Si♭' }
    ],
    'Gm7': [
      { name: 'Posição Fundamental', keys: ['G3', 'Bb3', 'D4', 'F4'], desc: 'Sol • Si♭ • Ré • Fá' }
    ],
    'G/B': [
      { name: '1ª Inversão (Baixo Si)', keys: ['B3', 'D4', 'G4'], desc: 'Si • Ré • Sol' }
    ],

    'A': [
      { name: 'Posição Fundamental', keys: ['A3', 'C#4', 'E4'], desc: 'Lá • Dó# • Mi' },
      { name: '1ª Inversão', keys: ['C#4', 'E4', 'A4'], desc: 'Dó# • Mi • Lá' },
      { name: '2ª Inversão', keys: ['E3', 'A3', 'C#4'], desc: 'Mi • Lá • Dó#' }
    ],
    'A7': [
      { name: 'Posição Fundamental', keys: ['A3', 'C#4', 'E4', 'G4'], desc: 'Lá • Dó# • Mi • Sol' }
    ],
    'A7+': [
      { name: 'Posição Fundamental', keys: ['A3', 'C#4', 'E4', 'G#4'], desc: 'Lá • Dó# • Mi • Sol#' }
    ],
    'A9': [
      { name: 'Com Nona', keys: ['A3', 'B3', 'C#4', 'E4'], desc: 'Lá • Si • Dó# • Mi' }
    ],
    'Am': [
      { name: 'Posição Fundamental', keys: ['A3', 'C4', 'E4'], desc: 'Lá • Dó • Mi' },
      { name: '1ª Inversão', keys: ['C4', 'E4', 'A4'], desc: 'Dó • Mi • Lá' },
      { name: '2ª Inversão', keys: ['E3', 'A3', 'C4'], desc: 'Mi • Lá • Dó' }
    ],
    'Am7': [
      { name: 'Posição Fundamental', keys: ['A3', 'C4', 'E4', 'G4'], desc: 'Lá • Dó • Mi • Sol' }
    ],
    'A/C#': [
      { name: '1ª Inversão (Baixo Dó#)', keys: ['C#4', 'E4', 'A4'], desc: 'Dó# • Mi • Lá' }
    ],

    'B': [
      { name: 'Posição Fundamental', keys: ['B3', 'D#4', 'F#4'], desc: 'Si • Ré# • Fá#' }
    ],
    'B7': [
      { name: 'Posição Fundamental', keys: ['B3', 'D#4', 'F#4', 'A4'], desc: 'Si • Ré# • Fá# • Lá' }
    ],
    'Bm': [
      { name: 'Posição Fundamental', keys: ['B3', 'D4', 'F#4'], desc: 'Si • Ré • Fá#' },
      { name: '1ª Inversão', keys: ['D4', 'F#4', 'B4'], desc: 'Ré • Fá# • Si' }
    ],
    'Bm7': [
      { name: 'Posição Fundamental', keys: ['B3', 'D4', 'F#4', 'A4'], desc: 'Si • Ré • Fá# • Lá' }
    ],

    'Bb': [
      { name: 'Posição Fundamental', keys: ['Bb3', 'D4', 'F4'], desc: 'Si♭ • Ré • Fá' },
      { name: '1ª Inversão', keys: ['D4', 'F4', 'Bb4'], desc: 'Ré • Fá • Si♭' }
    ],
    'Bb7': [
      { name: 'Posição Fundamental', keys: ['Bb3', 'D4', 'F4', 'G#4'], desc: 'Si♭ • Ré • Fá • Lá♭' }
    ],
    'Bbm': [
      { name: 'Posição Fundamental', keys: ['Bb3', 'C#4', 'F4'], desc: 'Si♭ • Ré♭ • Fá' }
    ]
  };

  // =========================================================================
  // VARIAÇÕES PARA UKULELE (4 CORDAS: G C E A)
  // =========================================================================
  const UKULELE_CHORDS = {
    'C':   [{ name: 'Posição 1 (Aberto)', frets: [0, 0, 0, 3], fingers: [0, 0, 0, 3], baseFret: 1 }],
    'C7':  [{ name: 'Posição 1', frets: [0, 0, 0, 1], fingers: [0, 0, 0, 1], baseFret: 1 }],
    'Cm':  [{ name: 'Posição 1 (Pestana)', frets: [0, 3, 3, 3], fingers: [0, 1, 1, 1], barre: 3, baseFret: 1 }],
    'D':   [{ name: 'Posição 1', frets: [2, 2, 2, 0], fingers: [1, 2, 3, 0], baseFret: 1 }],
    'D7':  [{ name: 'Posição 1', frets: [2, 0, 2, 0], fingers: [1, 0, 2, 0], baseFret: 1 }],
    'Dm':  [{ name: 'Posição 1', frets: [2, 2, 1, 0], fingers: [2, 3, 1, 0], baseFret: 1 }],
    'E':   [{ name: 'Posição 1', frets: [4, 4, 4, 2], fingers: [2, 3, 4, 1], baseFret: 1 }],
    'E7':  [{ name: 'Posição 1', frets: [1, 2, 0, 2], fingers: [1, 2, 0, 3], baseFret: 1 }],
    'Em':  [{ name: 'Posição 1', frets: [0, 4, 3, 2], fingers: [0, 3, 2, 1], baseFret: 1 }],
    'F':   [{ name: 'Posição 1', frets: [2, 0, 1, 0], fingers: [2, 0, 1, 0], baseFret: 1 }],
    'F#m': [{ name: 'Posição 1', frets: [2, 1, 2, 0], fingers: [2, 1, 3, 0], baseFret: 1 }],
    'G':   [{ name: 'Posição 1', frets: [0, 2, 3, 2], fingers: [0, 1, 3, 2], baseFret: 1 }],
    'G7':  [{ name: 'Posição 1', frets: [0, 2, 1, 2], fingers: [0, 2, 1, 3], baseFret: 1 }],
    'Gm':  [{ name: 'Posição 1', frets: [0, 2, 3, 1], fingers: [0, 2, 3, 1], baseFret: 1 }],
    'A':   [{ name: 'Posição 1', frets: [2, 1, 0, 0], fingers: [2, 1, 0, 0], baseFret: 1 }],
    'A7':  [{ name: 'Posição 1', frets: [0, 1, 0, 0], fingers: [0, 1, 0, 0], baseFret: 1 }],
    'Am':  [{ name: 'Posição 1', frets: [2, 0, 0, 0], fingers: [2, 0, 0, 0], baseFret: 1 }],
    'B':   [{ name: 'Posição 1 (Pestana 2ª)', frets: [4, 3, 2, 2], fingers: [3, 2, 1, 1], barre: 2, baseFret: 1 }],
    'B7':  [{ name: 'Posição 1 (Pestana 2ª)', frets: [2, 3, 2, 2], fingers: [1, 2, 1, 1], barre: 2, baseFret: 1 }],
    'Bm':  [{ name: 'Posição 1 (Pestana 2ª)', frets: [4, 2, 2, 2], fingers: [3, 1, 1, 1], barre: 2, baseFret: 1 }],
    'Bb':  [{ name: 'Posição 1 (Pestana 1ª)', frets: [3, 2, 1, 1], fingers: [3, 2, 1, 1], barre: 1, baseFret: 1 }]
  };

  // =========================================================================
  // VARIAÇÕES PARA CAVAQUINHO (4 CORDAS: D G B D)
  // =========================================================================
  const CAVAQUINHO_CHORDS = {
    'C':   [{ name: 'Posição 1', frets: [2, 0, 1, 2], fingers: [2, 0, 1, 3], baseFret: 1 }],
    'C7':  [{ name: 'Posição 1', frets: [2, 3, 1, 2], fingers: [2, 4, 1, 3], baseFret: 1 }],
    'Cm':  [{ name: 'Posição 1', frets: [1, 0, 1, 1], fingers: [1, 0, 1, 1], barre: 1, baseFret: 1 }],
    'D':   [{ name: 'Posição 1 (Aberto)', frets: [0, 2, 3, 0], fingers: [0, 1, 2, 0], baseFret: 1 }],
    'D7':  [{ name: 'Posição 1', frets: [0, 2, 1, 0], fingers: [0, 2, 1, 0], baseFret: 1 }],
    'Dm':  [{ name: 'Posição 1', frets: [0, 2, 3, 3], fingers: [0, 1, 2, 3], baseFret: 1 }],
    'E':   [{ name: 'Posição 1', frets: [2, 1, 0, 2], fingers: [2, 1, 0, 3], baseFret: 1 }],
    'E7':  [{ name: 'Posição 1', frets: [2, 1, 3, 2], fingers: [2, 1, 4, 3], baseFret: 1 }],
    'Em':  [{ name: 'Posição 1', frets: [2, 0, 0, 2], fingers: [1, 0, 0, 2], baseFret: 1 }],
    'F':   [{ name: 'Posição 1', frets: [3, 2, 1, 3], fingers: [3, 2, 1, 4], baseFret: 1 }],
    'F#m': [{ name: 'Posição 1 (Pestana 2ª)', frets: [4, 2, 2, 4], fingers: [3, 1, 1, 4], barre: 2, baseFret: 1 }],
    'G':   [{ name: 'Posição 1 (Solto)', frets: [0, 0, 0, 0], fingers: [0, 0, 0, 0], baseFret: 1 }],
    'G7':  [{ name: 'Posição 1', frets: [0, 0, 0, 3], fingers: [0, 0, 0, 3], baseFret: 1 }],
    'Gm':  [{ name: 'Posição 1', frets: [0, 3, 3, 0], fingers: [0, 2, 3, 0], baseFret: 1 }],
    'A':   [{ name: 'Posição 1 (Pestana 2ª)', frets: [2, 2, 2, 2], fingers: [1, 1, 1, 1], barre: 2, baseFret: 1 }],
    'A7':  [{ name: 'Posição 1', frets: [2, 0, 2, 2], fingers: [1, 0, 2, 3], baseFret: 1 }],
    'Am':  [{ name: 'Posição 1', frets: [2, 2, 1, 2], fingers: [2, 3, 1, 4], baseFret: 1 }],
    'B':   [{ name: 'Posição 1 (Pestana 4ª)', frets: [4, 4, 4, 4], fingers: [1, 1, 1, 1], barre: 4, baseFret: 1 }],
    'B7':  [{ name: 'Posição 1', frets: [1, 2, 0, 1], fingers: [1, 2, 0, 1], barre: 1, baseFret: 1 }],
    'Bm':  [{ name: 'Posição 1', frets: [0, 4, 3, 0], fingers: [0, 2, 1, 0], baseFret: 1 }],
    'Bb':  [{ name: 'Posição 1 (Pestana 3ª)', frets: [3, 3, 3, 3], fingers: [1, 1, 1, 1], barre: 3, baseFret: 1 }]
  };

  /**
   * Retorna a lista de variações cadastradas de um acorde para um instrumento
   */
  const NOTE_PC = {
    'C': 0, 'B#': 0, 'C#': 1, 'Db': 1, 'D': 2, 'D#': 3, 'Eb': 3,
    'E': 4, 'Fb': 4, 'F': 5, 'E#': 5, 'F#': 6, 'Gb': 6,
    'G': 7, 'G#': 8, 'Ab': 8, 'A': 9, 'A#': 10, 'Bb': 10,
    'B': 11, 'Cb': 11
  };
  const PC_TO_SHARP = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B'];

  const QUAL_INTERVALS = {
    maj: [0, 4, 7],
    m: [0, 3, 7],
    '7': [0, 4, 7, 10],
    '7M': [0, 4, 7, 11],
    m7: [0, 3, 7, 10],
    m7M: [0, 3, 7, 11],
    sus4: [0, 5, 7],
    '7sus4': [0, 5, 7, 10],
    sus2: [0, 2, 7],
    '6': [0, 4, 7, 9],
    m6: [0, 3, 7, 9],
    '9': [0, 4, 7, 10, 2],
    add9: [0, 4, 7, 2],
    m9: [0, 3, 7, 10, 2],
    '7M9': [0, 4, 7, 11, 2],
    dim: [0, 3, 6, 9],
    m7b5: [0, 3, 6, 10],
    aug: [0, 4, 8],
    '5': [0, 7],
    '11': [0, 4, 7, 10, 2, 5],
    m11: [0, 3, 7, 10, 2, 5]
  };

  function normalizeQuality(rawQual) {
    let q = (rawQual || '').trim();
    if (!q) return 'maj';
    // Normalizações comuns de cifras brasileiras e internacionais
    q = q.replace(/\(([^)]+)\)/g, '$1');
    if (/^(maj7|M7|7\+|7M)$/.test(q)) return '7M';
    if (/^(m7\+|m7M|m\(7M\)|mMaj7)$/.test(q)) return 'm7M';
    if (/^(7\+9|7M9|7M\(9\)|maj9)$/.test(q)) return '7M9';
    if (/^(add9|2|sus2)$/i.test(q)) return q === 'add9' ? 'add9' : 'sus2';
    if (/^(4|sus|sus4)$/i.test(q)) return 'sus4';
    if (/^(7\/4|7sus4|74|4\/7)$/i.test(q)) return '7sus4';
    if (/^(°|º|dim|dim7|7dim)$/i.test(q)) return 'dim';
    if (/^(m7b5|m7-5|ø|m7\(b5\))$/i.test(q)) return 'm7b5';
    if (/^(5\+|aug|\+|7\+5|m5\+)$/i.test(q)) return q.startsWith('m') ? 'm' : 'aug';
    if (/^(5)$/i.test(q)) return '5';
    if (/^(m11)$/i.test(q)) return 'm11';
    if (/^(11|11\+)$/i.test(q)) return '11';
    if (/^(m9|m79)$/i.test(q)) return 'm9';
    if (/^(9|9\+|79)$/i.test(q)) return '9';
    if (/^(m6)$/i.test(q)) return 'm6';
    if (/^(6)$/i.test(q)) return '6';
    if (/^(m7)$/i.test(q)) return 'm7';
    if (/^(7)$/i.test(q)) return '7';
    if (/^(m)$/i.test(q)) return 'm';
    if (/^m/i.test(q)) {
      if (/9/.test(q)) return 'm9';
      if (/11/.test(q)) return 'm11';
      if (/6/.test(q)) return 'm6';
      if (/7\+|7M/.test(q)) return 'm7M';
      if (/7/.test(q)) return 'm7';
      return 'm';
    }
    if (/7\+|7M|maj/i.test(q)) return '7M';
    if (/9/.test(q)) return '9';
    if (/6/.test(q)) return '6';
    if (/4|sus/i.test(q)) return 'sus4';
    if (/7/.test(q)) return '7';
    return 'maj';
  }

  function parseChordSymbol(chordName) {
    const clean = (chordName || '').replace(/[(),]/g, '').trim();
    const parts = clean.split('/');
    const main = parts[0] || '';
    const bassRaw = parts[1] || '';
    const m = /^([A-G][#b]?)(.*)$/.exec(main);
    if (!m) return null;
    const rootName = m[1];
    const rootPc = NOTE_PC[rootName];
    if (rootPc === undefined) return null;
    const quality = normalizeQuality(m[2]);
    let bassPc = null;
    let bassName = '';
    if (bassRaw) {
      const bm = /^([A-G][#b]?)/.exec(bassRaw);
      if (bm && NOTE_PC[bm[1]] !== undefined) {
        bassPc = NOTE_PC[bm[1]];
        bassName = bm[1];
      }
    }
    return { clean, main, rootName, rootPc, quality, bassPc, bassName };
  }

  // Templates móveis verificados (violão): 6ª corda (E=4) e 5ª corda (A=9)
  const GUITAR_E_TEMPLATES = {
    maj:     { frets: [0, 2, 2, 1, 0, 0], fingers: [1, 3, 4, 2, 1, 1], barre: 0, rootAt: 0 },
    m:       { frets: [0, 2, 2, 0, 0, 0], fingers: [1, 3, 4, 1, 1, 1], barre: 0, rootAt: 0 },
    '7':     { frets: [0, 2, 0, 1, 0, 0], fingers: [1, 3, 1, 2, 1, 1], barre: 0, rootAt: 0 },
    '7M':    { frets: [0, -1, 1, 1, 0, -1], fingers: [1, 0, 3, 4, 2, 0], barre: null, rootAt: 0 },
    m7:      { frets: [0, 2, 0, 0, 0, 0], fingers: [1, 3, 1, 1, 1, 1], barre: 0, rootAt: 0 },
    m7M:     { frets: [0, 2, 1, 0, 0, 0], fingers: [1, 4, 2, 1, 1, 1], barre: 0, rootAt: 0 },
    sus4:    { frets: [0, 2, 2, 2, 0, 0], fingers: [1, 2, 3, 4, 1, 1], barre: 0, rootAt: 0 },
    '7sus4': { frets: [0, 2, 0, 2, 0, 0], fingers: [1, 3, 1, 4, 1, 1], barre: 0, rootAt: 0 },
    '6':     { frets: [0, -1, -1, 1, 2, 0], fingers: [1, 0, 0, 2, 3, 1], barre: null, rootAt: 0 },
    m6:      { frets: [0, -1, -1, 0, 2, 0], fingers: [1, 0, 0, 1, 3, 1], barre: null, rootAt: 0 },
    dim:     { frets: [0, 1, 2, 0, -1, -1], fingers: [1, 2, 3, 1, 0, 0], barre: 0, rootAt: 0 },
    m7b5:    { frets: [1, -1, 1, 1, 0, -1], fingers: [2, 0, 3, 4, 1, 0], barre: null, rootAt: 1 },
    '5':     { frets: [0, 2, 2, -1, -1, -1], fingers: [1, 3, 4, 0, 0, 0], barre: null, rootAt: 0 },
    m11:     { frets: [0, 0, 0, 0, 0, -1], fingers: [1, 1, 1, 1, 1, 0], barre: 0, rootAt: 0 }
  };

  const GUITAR_A_TEMPLATES = {
    maj:     { frets: [-1, 0, 2, 2, 2, 0], fingers: [0, 1, 2, 3, 4, 1], barre: 0, rootAt: 0 },
    m:       { frets: [-1, 0, 2, 2, 1, 0], fingers: [0, 1, 3, 4, 2, 1], barre: 0, rootAt: 0 },
    '7':     { frets: [-1, 0, 2, 0, 2, 0], fingers: [0, 1, 3, 1, 4, 1], barre: 0, rootAt: 0 },
    '7M':    { frets: [-1, 0, 2, 1, 2, 0], fingers: [0, 1, 3, 2, 4, 1], barre: 0, rootAt: 0 },
    m7:      { frets: [-1, 0, 2, 0, 1, 0], fingers: [0, 1, 3, 1, 2, 1], barre: 0, rootAt: 0 },
    m7M:     { frets: [-1, 0, 2, 1, 1, 0], fingers: [0, 1, 3, 2, 1, 1], barre: 0, rootAt: 0 },
    sus4:    { frets: [-1, 0, 2, 2, 3, 0], fingers: [0, 1, 2, 3, 4, 1], barre: 0, rootAt: 0 },
    '7sus4': { frets: [-1, 0, 2, 0, 3, 0], fingers: [0, 1, 2, 1, 4, 1], barre: 0, rootAt: 0 },
    sus2:    { frets: [-1, 0, 2, 2, 0, 0], fingers: [0, 1, 3, 4, 1, 1], barre: 0, rootAt: 0 },
    '6':     { frets: [-1, 0, 2, 2, 2, 2], fingers: [0, 1, 2, 2, 2, 2], barre: 0, rootAt: 0 },
    m6:      { frets: [-1, 0, 2, 2, 1, 2], fingers: [0, 1, 3, 3, 2, 4], barre: null, rootAt: 0 },
    '9':     { frets: [-1, 1, 0, 1, 1, -1], fingers: [0, 2, 1, 3, 4, 0], barre: null, rootAt: 1 },
    add9:    { frets: [-1, 0, 2, 4, 2, 0], fingers: [0, 1, 2, 4, 3, 1], barre: 0, rootAt: 0 },
    m9:      { frets: [-1, 2, 0, 2, 2, -1], fingers: [0, 2, 1, 3, 4, 0], barre: null, rootAt: 2 },
    '7M9':   { frets: [-1, 1, 0, 2, 1, -1], fingers: [0, 2, 1, 4, 3, 0], barre: null, rootAt: 1 },
    dim:     { frets: [-1, 0, 1, 2, 1, -1], fingers: [0, 1, 2, 4, 3, 0], barre: null, rootAt: 0 },
    m7b5:    { frets: [-1, 0, 1, 0, 1, -1], fingers: [0, 1, 2, 1, 3, 0], barre: null, rootAt: 0 },
    aug:     { frets: [-1, 2, 1, 0, 0, -1], fingers: [0, 3, 2, 1, 1, 0], barre: 0, rootAt: 2 },
    '5':     { frets: [-1, 0, 2, 2, -1, -1], fingers: [0, 1, 3, 4, 0, 0], barre: null, rootAt: 0 },
    '11':    { frets: [-1, 0, 0, 0, 0, 0], fingers: [0, 1, 1, 1, 1, 1], barre: 0, rootAt: 0 }
  };

  function instantiateGuitarTemplate(tmpl, targetRootPc, openRootPc, label) {
    let shift = (targetRootPc - openRootPc - tmpl.rootAt + 12) % 12;
    const minTemplateFret = Math.min(...tmpl.frets.filter(f => f >= 0));
    if (shift + minTemplateFret === 0 && tmpl.barre !== null) {
      // Se coincidir com casa 0 mas é molde de pestana móvel, usar oitava (12ª) somente se precisar, senão manter 1ª casa para aberta
      if (minTemplateFret === 0 && shift === 0) shift = 0;
    }
    const frets = tmpl.frets.map(f => (f === -1 ? -1 : f + shift));
    const posFrets = frets.filter(f => f > 0);
    const minPos = posFrets.length ? Math.min(...posFrets) : 1;
    const maxPos = posFrets.length ? Math.max(...posFrets) : 1;
    const baseFret = maxPos <= 4 ? 1 : minPos;
    const barre = (tmpl.barre !== null && shift > 0) ? (tmpl.barre + shift) : null;
    const isOpen = shift === 0 && frets.some(f => f === 0);
    const fingers = isOpen
      ? frets.map((f, idx) => (f === 0 ? 0 : tmpl.fingers[idx]))
      : tmpl.fingers.slice();
    const displayCasa = barre || baseFret;
    const name = displayCasa > 1
      ? `Pestana ${displayCasa}ª casa (${label})`
      : `${label} (1ª casa)`;
    return {
      name,
      frets,
      fingers,
      ...(barre ? { barre } : {}),
      baseFret
    };
  }

  function buildGuitarVariations(parsed) {
    const out = [];
    const eTmpl = GUITAR_E_TEMPLATES[parsed.quality];
    const aTmpl = GUITAR_A_TEMPLATES[parsed.quality];
    if (eTmpl) out.push(instantiateGuitarTemplate(eTmpl, parsed.rootPc, 4, 'Modelo E'));
    if (aTmpl) out.push(instantiateGuitarTemplate(aTmpl, parsed.rootPc, 9, 'Modelo A'));
    if (!out.length) {
      out.push(instantiateGuitarTemplate(GUITAR_E_TEMPLATES.maj, parsed.rootPc, 4, 'Modelo E'));
    }
    out.sort((a, b) => a.baseFret - b.baseFret);
    if (parsed.bassPc !== null && parsed.bassName) {
      out.forEach(v => {
        v.name = `${v.name} • Baixo ${parsed.bassName}`;
      });
    }
    return out;
  }

  // Templates móveis verificados (4 cordas): Ukulele (Bb=10) e Cavaquinho (A=9 / D=2)
  const UKU_TEMPLATES = {
    maj:     { root: 10, frets: [3, 2, 1, 1], fingers: [3, 2, 1, 1], barre: 1 },
    m:       { root: 10, frets: [3, 1, 1, 1], fingers: [3, 1, 1, 1], barre: 1 },
    '7':     { root: 10, frets: [1, 2, 1, 1], fingers: [1, 2, 1, 1], barre: 1 },
    '7M':    { root: 10, frets: [2, 2, 1, 1], fingers: [2, 3, 1, 1], barre: 1 },
    m7:      { root: 10, frets: [1, 1, 1, 1], fingers: [1, 1, 1, 1], barre: 1 },
    m7M:     { root: 10, frets: [2, 1, 1, 1], fingers: [2, 1, 1, 1], barre: 1 },
    sus4:    { root: 10, frets: [3, 3, 1, 1], fingers: [3, 4, 1, 1], barre: 1 },
    '7sus4': { root: 10, frets: [1, 3, 1, 1], fingers: [1, 3, 1, 1], barre: 1 },
    sus2:    { root: 10, frets: [3, 0, 1, 1], fingers: [3, 0, 1, 1], barre: null },
    '6':     { root: 10, frets: [0, 2, 1, 1], fingers: [0, 3, 1, 2], barre: null },
    m6:      { root: 10, frets: [0, 1, 1, 1], fingers: [0, 1, 2, 3], barre: null },
    '9':     { root: 10, frets: [1, 2, 1, 3], fingers: [1, 2, 1, 4], barre: 1 },
    add9:    { root: 10, frets: [3, 2, 1, 3], fingers: [3, 2, 1, 4], barre: 1 },
    m9:      { root: 10, frets: [1, 1, 1, 3], fingers: [1, 1, 1, 3], barre: 1 },
    '7M9':   { root: 10, frets: [2, 2, 1, 3], fingers: [2, 3, 1, 4], barre: 1 },
    dim:     { root: 10, frets: [0, 1, 0, 1], fingers: [0, 1, 0, 2], barre: null },
    m7b5:    { root: 10, frets: [1, 1, 0, 1], fingers: [1, 2, 0, 3], barre: null },
    aug:     { root: 10, frets: [3, 2, 2, 1], fingers: [4, 2, 3, 1], barre: null },
    '5':     { root: 10, frets: [3, -1, 1, 1], fingers: [3, 0, 1, 1], barre: 1 },
    '11':    { root: 10, frets: [1, 3, 1, 3], fingers: [1, 3, 1, 4], barre: 1 },
    m11:     { root: 10, frets: [1, 1, 1, 3], fingers: [1, 1, 1, 3], barre: 1 }
  };

  const CAV_TEMPLATES = {
    maj:     { root: 9, frets: [2, 2, 2, 2], fingers: [1, 1, 1, 1], barre: 2 },
    m:       { root: 9, frets: [2, 2, 1, 2], fingers: [2, 3, 1, 4], barre: null },
    '7':     { root: 9, frets: [2, 0, 2, 2], fingers: [1, 0, 2, 3], barre: null },
    '7M':    { root: 9, frets: [2, 1, 2, 2], fingers: [2, 1, 3, 4], barre: null },
    m7:      { root: 2, frets: [0, 2, 1, 3], fingers: [0, 2, 1, 4], barre: null },
    m7M:     { root: 2, frets: [0, 2, 2, 3], fingers: [0, 1, 2, 4], barre: null },
    sus4:    { root: 9, frets: [2, 2, 3, 2], fingers: [1, 1, 2, 1], barre: 2 },
    '7sus4': { root: 2, frets: [0, 0, 1, 0], fingers: [0, 0, 1, 0], barre: null },
    sus2:    { root: 9, frets: [2, 2, 0, 2], fingers: [1, 2, 0, 3], barre: null },
    '6':     { root: 9, frets: [4, 2, 2, 2], fingers: [4, 1, 1, 1], barre: 2 },
    m6:      { root: 9, frets: [4, 2, 1, 2], fingers: [4, 2, 1, 3], barre: null },
    '9':     { root: 2, frets: [0, 2, 1, 2], fingers: [0, 2, 1, 3], barre: null },
    add9:    { root: 2, frets: [0, 2, 3, 2], fingers: [0, 1, 3, 2], barre: null },
    m9:      { root: 2, frets: [2, 2, 1, 3], fingers: [2, 3, 1, 4], barre: null },
    '7M9':   { root: 2, frets: [2, 2, 2, 4], fingers: [1, 1, 1, 4], barre: 2 },
    dim:     { root: 9, frets: [1, 2, 1, 1], fingers: [1, 2, 1, 1], barre: 1 },
    m7b5:    { root: 2, frets: [0, 1, 1, 3], fingers: [0, 1, 2, 4], barre: null },
    aug:     { root: 9, frets: [3, 2, 2, 3], fingers: [3, 1, 1, 4], barre: null },
    '5':     { root: 9, frets: [2, 2, -1, 2], fingers: [1, 1, 0, 1], barre: 2 },
    '11':    { root: 2, frets: [0, 0, 1, 0], fingers: [0, 0, 1, 0], barre: null },
    m11:     { root: 2, frets: [2, 2, 1, 3], fingers: [2, 3, 1, 4], barre: null }
  };

  function build4StringVariations(instrument, parsed) {
    const table = instrument === 'ukulele' ? UKU_TEMPLATES : CAV_TEMPLATES;
    const tmpl = table[parsed.quality] || table.maj;
    const shift = (parsed.rootPc - tmpl.root + 12) % 12;
    const frets = tmpl.frets.map(f => (f === -1 ? -1 : f + shift));
    const posFrets = frets.filter(f => f > 0);
    const minPos = posFrets.length ? Math.min(...posFrets) : 1;
    const maxPos = posFrets.length ? Math.max(...posFrets) : 1;
    const baseFret = maxPos <= 4 ? 1 : minPos;
    const barre = (tmpl.barre !== null && shift >= 0) ? (tmpl.barre + shift) : null;
    const effective = barre || baseFret;
    const name = effective > 1 ? `Posição ${effective}ª casa` : 'Posição 1ª casa';
    return [{
      name,
      frets,
      fingers: tmpl.fingers.slice(),
      ...(barre && barre >= 1 ? { barre } : {}),
      baseFret
    }];
  }

  function buildKeyboardVariations(parsed) {
    const intervals = (QUAL_INTERVALS[parsed.quality] || QUAL_INTERVALS.maj).slice(0, 4);
    const baseMidi = 48 + parsed.rootPc; // C3..B3
    const toKey = (midi) => {
      const oct = Math.floor(midi / 12) - 1;
      return `${PC_TO_SHARP[((midi % 12) + 12) % 12]}${oct}`;
    };
    const rootPos = intervals.map(iv => toKey(baseMidi + iv));
    // 1ª inversão (ou mantendo tudo dentro de C3..B4 = 48..71)
    const invNotes = intervals.map((iv, idx) => baseMidi + iv + (idx === 0 ? 12 : 0));
    const invSorted = invNotes.sort((a, b) => a - b).map(m => toKey(m <= 71 ? m : m - 12));
    return [
      { name: 'Posição Fundamental', keys: rootPos },
      { name: '1ª Inversão', keys: invSorted }
    ];
  }

  function lookupExplicit(dict, candidate) {
    if (dict[candidate] && dict[candidate].length > 0) return dict[candidate];
    const parsed = parseChordSymbol(candidate);
    if (!parsed) return null;
    // Tentar equivalência enarmônica exata no dicionário
    for (const [note, pc] of Object.entries(NOTE_PC)) {
      if (pc === parsed.rootPc && note !== parsed.rootName) {
        const alt = candidate.replace(parsed.rootName, note);
        if (dict[alt] && dict[alt].length > 0) return dict[alt];
      }
    }
    return null;
  }

  function getChordVariations(chordName, instrument = 'guitar') {
    if (!chordName) return [];
    const clean = chordName.replace(/[(),]/g, '').trim();

    let dict = GUITAR_CHORDS;
    if (instrument === 'keyboard') dict = KEYBOARD_CHORDS;
    else if (instrument === 'ukulele') dict = UKULELE_CHORDS;
    else if (instrument === 'cavaquinho') dict = CAVAQUINHO_CHORDS;

    // 1. Busca exata (e enarmônica exata) no dicionário canônico
    const exact = lookupExplicit(dict, clean);
    if (exact) return exact;

    // 2. Motor cromático universal para todas as 12 raízes, qualidades e instrumentos
    const parsed = parseChordSymbol(clean);
    if (parsed) {
      // Para violão: se for acorde com baixo (ex: Am7/G) não catalogado, mas a base (Am7) tem formato aberto, incluir também
      if (instrument === 'keyboard') return buildKeyboardVariations(parsed);
      if (instrument === 'ukulele' || instrument === 'cavaquinho') return build4StringVariations(instrument, parsed);

      const baseExplicit = parsed.bassPc === null ? null : lookupExplicit(dict, parsed.main);
      const generated = buildGuitarVariations(parsed);
      if (baseExplicit && baseExplicit.length > 0) {
        return baseExplicit.map(v => ({ ...v, name: `${v.name} • Baixo ${parsed.bassName}` }));
      }
      return generated;
    }

    // Fallback final somente se entrada não for acorde válido
    if (instrument === 'keyboard') {
      return [{ name: 'Forma Fundamental', keys: ['C4', 'E4', 'G4'], desc: clean }];
    } else if (instrument === 'ukulele' || instrument === 'cavaquinho') {
      return [{ name: 'Forma 1', frets: [0, 0, 0, 0], fingers: [0, 0, 0, 0], baseFret: 1 }];
    } else {
      return [{ name: 'Forma 1', frets: [-1, 0, 0, 0, 0, 0], fingers: [0, 0, 0, 0, 0, 0], baseFret: 1 }];
    }
  }

  /**
   * Renderiza o diagrama SVG de Violão com Pestana em Barra Sólida ("dedo deitado")
   */
  function renderGuitarSVG(chordName, varIndex = 0) {
    const variations = getChordVariations(chordName, 'guitar');
    const safeIdx = Math.max(0, Math.min(varIndex, variations.length - 1));
    const info = variations[safeIdx] || variations[0];
    const baseFret = info.baseFret || 1;
    const effectiveFret = baseFret > 1 ? baseFret : (info.barre && info.barre > 1 ? info.barre : 1);

    const width = 136;
    const height = 168;
    const topMargin = 34;
    const sideMargin = 28;
    const stringSpacing = (width - 2 * sideMargin) / 5;
    const fretSpacing = (height - topMargin - 30) / 5;

    let svg = `<svg width="${width}" height="${height}" viewBox="0 0 ${width} ${height}" class="chord-svg guitar-svg" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Acorde ${chordName}">`;

    // Nome do acorde em destaque
    svg += `<text x="${width/2}" y="18" text-anchor="middle" font-family="'Fira Code', ui-monospace, monospace" font-size="15" font-weight="700" fill="var(--chord-color, #ECD3B5)">${chordName}</text>`;

    // Nut (pestana do headstock) ou indicador lateral de casa alta
    if (baseFret === 1) {
      svg += `<rect x="${sideMargin}" y="${topMargin - 2}" width="${width - 2 * sideMargin}" height="4" rx="1.5" fill="var(--text-main, #333)" />`;
    } else {
      svg += `<line x1="${sideMargin}" y1="${topMargin}" x2="${width - sideMargin}" y2="${topMargin}" stroke="var(--border-color, #666)" stroke-width="1.6" />`;
      svg += `<text x="${sideMargin - 6}" y="${topMargin + fretSpacing * 0.68}" text-anchor="end" font-family="'Fira Code', monospace" font-size="11.5" font-weight="800" fill="var(--chord-color, #ECD3B5)">${baseFret}ª</text>`;
    }

    // Linhas verticais (6 cordas)
    for (let i = 0; i < 6; i++) {
      const x = sideMargin + i * stringSpacing;
      svg += `<line x1="${x}" y1="${topMargin}" x2="${x}" y2="${topMargin + 5 * fretSpacing}" stroke="var(--text-muted, #777)" stroke-width="${i >= 3 ? '1.1' : '1.5'}" opacity="0.75" />`;
    }

    // Linhas horizontais (trastes)
    for (let i = 1; i <= 5; i++) {
      const y = topMargin + i * fretSpacing;
      svg += `<line x1="${sideMargin}" y1="${y}" x2="${width - sideMargin}" y2="${y}" stroke="var(--border-color, #999)" stroke-width="1" />`;
    }

    // PESTANA REALISTA ("DEDO DEITADO"): desenha UMA barra sólida contínua arredondada
    if (info.barre) {
      const relBarre = info.barre - baseFret + 1;
      if (relBarre >= 1 && relBarre <= 5) {
        const yBarre = topMargin + (relBarre - 0.5) * fretSpacing;
        let fromStr = -1;
        let toStr = -1;
        info.frets.forEach((f, idx) => {
          if (f >= info.barre && f !== -1) {
            if (fromStr === -1) fromStr = idx;
            toStr = idx;
          }
        });
        if (fromStr === -1) fromStr = 0;
        if (toStr === -1 || toStr <= fromStr) toStr = 5;

        const xFrom = sideMargin + fromStr * stringSpacing;
        const xTo = sideMargin + toStr * stringSpacing;
        const barW = (xTo - xFrom) + 14;
        const barH = 13;

        // Barra sólida contínua da pestana ("dedo deitado")
        svg += `<rect x="${xFrom - 7}" y="${yBarre - barH / 2}" width="${barW}" height="${barH}" rx="${barH / 2}" ry="${barH / 2}" fill="var(--chord-color, #ECD3B5)" />`;
        // Indicador do dedo indicador (1) na pestana
        svg += `<text x="${xFrom}" y="${yBarre + 3.8}" text-anchor="middle" font-family="'Fira Code', monospace" font-size="9.5" font-weight="700" fill="var(--on-accent, #000)">1</text>`;
      }
    }

    // Marcadores individuais das cordas
    info.frets.forEach((fret, i) => {
      const x = sideMargin + i * stringSpacing;
      if (fret === -1) {
        svg += `<text x="${x}" y="${topMargin - 6}" text-anchor="middle" font-family="system-ui, sans-serif" font-size="12" font-weight="700" fill="var(--text-muted, #888)">×</text>`;
      } else if (fret === 0) {
        svg += `<circle cx="${x}" cy="${topMargin - 9}" r="3.5" fill="none" stroke="var(--text-secondary, #666)" stroke-width="1.3" />`;
      } else if (fret > 0) {
        // Se a corda coincide com a pestana e não é pressionada mais acima por outro dedo:
        if (info.barre && fret === info.barre) {
          return; // Já coberta pela barra sólida ("dedo deitado")
        }
        const relFret = fret - baseFret + 1;
        if (relFret >= 1 && relFret <= 5) {
          const y = topMargin + (relFret - 0.5) * fretSpacing;
          const finger = (info.fingers && info.fingers[i]) ? info.fingers[i] : '';
          svg += `<circle cx="${x}" cy="${y}" r="6.5" fill="var(--chord-color, #ECD3B5)" stroke="var(--bg-surface, #000)" stroke-width="0.8" />`;
          if (finger) {
            svg += `<text x="${x}" y="${y + 3.8}" text-anchor="middle" font-family="'Fira Code', monospace" font-size="9.5" font-weight="700" fill="var(--on-accent, #000)">${finger}</text>`;
          }
        }
      }
    });

    const fretColor = effectiveFret > 1 ? 'var(--chord-color, #ECD3B5)' : 'var(--text-secondary, #888)';
    const fretWeight = effectiveFret > 1 ? '700' : '600';
    svg += `<text x="${width / 2}" y="${height - 6}" text-anchor="middle" font-family="'Inter', sans-serif" font-size="10.5" font-weight="${fretWeight}" fill="${fretColor}">${effectiveFret}ª casa</text>`;

    svg += `</svg>`;
    return svg;
  }

  /**
   * Renderiza o diagrama SVG de Teclado/Piano com DIGITAÇÃO HUMANA REAL (3 a 4 teclas)
   */
  function renderKeyboardSVG(chordName, varIndex = 0) {
    const variations = getChordVariations(chordName, 'keyboard');
    const safeIdx = Math.max(0, Math.min(varIndex, variations.length - 1));
    const info = variations[safeIdx] || variations[0];
    const activeKeys = info.keys || ['C4', 'E4', 'G4'];

    const width = 168;
    const height = 96;
    const whiteKeys = ['C3', 'D3', 'E3', 'F3', 'G3', 'A3', 'B3', 'C4', 'D4', 'E4', 'F4', 'G4', 'A4', 'B4'];
    const whiteCount = whiteKeys.length;
    const whiteKeyW = width / whiteCount;
    const whiteKeyH = 68;
    const blackKeyW = whiteKeyW * 0.65;
    const blackKeyH = 42;
    const topOffset = 22;

    let svg = `<svg width="${width}" height="${height}" viewBox="0 0 ${width} ${height}" class="chord-svg keyboard-svg" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Acorde ${chordName} no Teclado">`;
    
    // Título e variação
    svg += `<text x="${width/2}" y="15" text-anchor="middle" font-family="'Fira Code', monospace" font-size="12" font-weight="700" fill="var(--chord-color, #ECD3B5)">${chordName} (Teclado)</text>`;

    // Teclas Brancas
    whiteKeys.forEach((noteId, i) => {
      const x = i * whiteKeyW;
      const isPlayed = activeKeys.includes(noteId);
      const fill = isPlayed ? '#ECD3B5' : '#E9E9E9';

      svg += `<rect x="${x}" y="${topOffset}" width="${whiteKeyW}" height="${whiteKeyH}" fill="${fill}" stroke="#000000" stroke-width="0.8" rx="1.5" />`;
      if (isPlayed) {
        svg += `<circle cx="${x + whiteKeyW / 2}" cy="${topOffset + whiteKeyH - 12}" r="3.8" fill="var(--chord-color, #ECD3B5)" />`;
      }
    });

    // Teclas Pretas
    const blackKeysDef = [
      { id: 'C#3', alt: 'Db3', pos: 0 }, { id: 'D#3', alt: 'Eb3', pos: 1 },
      { id: 'F#3', alt: 'Gb3', pos: 3 }, { id: 'G#3', alt: 'Ab3', pos: 4 }, { id: 'A#3', alt: 'Bb3', pos: 5 },
      { id: 'C#4', alt: 'Db4', pos: 7 }, { id: 'D#4', alt: 'Eb4', pos: 8 },
      { id: 'F#4', alt: 'Gb4', pos: 10 }, { id: 'G#4', alt: 'Ab4', pos: 11 }, { id: 'A#4', alt: 'Bb4', pos: 12 }
    ];

    blackKeysDef.forEach(({ id, alt, pos }) => {
      const x = (pos + 1) * whiteKeyW - (blackKeyW / 2);
      const isPlayed = activeKeys.includes(id) || (alt && activeKeys.includes(alt));
      const fill = isPlayed ? 'var(--chord-color, #ECD3B5)' : '#000000';

      svg += `<rect x="${x}" y="${topOffset}" width="${blackKeyW}" height="${blackKeyH}" fill="${fill}" stroke="#111" stroke-width="0.8" rx="1" />`;
      if (isPlayed) {
        svg += `<circle cx="${x + blackKeyW / 2}" cy="${topOffset + blackKeyH - 9}" r="3" fill="var(--on-accent, #000)" />`;
      }
    });

    svg += `</svg>`;
    return svg;
  }

  /**
   * Renderiza instrumento de 4 cordas (Ukulele ou Cavaquinho) com suporte a pestana
   */
  function render4StringSVG(chordName, instrument = 'ukulele', varIndex = 0) {
    const variations = getChordVariations(chordName, instrument);
    const safeIdx = Math.max(0, Math.min(varIndex, variations.length - 1));
    const info = variations[safeIdx] || variations[0];
    const baseFret = info.baseFret || 1;
    const effectiveFret = baseFret > 1 ? baseFret : (info.barre && info.barre > 1 ? info.barre : 1);

    const width = 116;
    const height = 150;
    const topMargin = 30;
    const sideMargin = 24;
    const stringSpacing = (width - 2 * sideMargin) / 3;
    const fretSpacing = (height - topMargin - 28) / 4;

    let svg = `<svg width="${width}" height="${height}" viewBox="0 0 ${width} ${height}" class="chord-svg ${instrument}-svg" xmlns="http://www.w3.org/2000/svg" role="img">`;
    svg += `<text x="${width/2}" y="16" text-anchor="middle" font-family="'Fira Code', monospace" font-size="13" font-weight="700" fill="var(--chord-color, #ECD3B5)">${chordName}</text>`;

    if (baseFret === 1) {
      svg += `<rect x="${sideMargin}" y="${topMargin - 2}" width="${width - 2 * sideMargin}" height="3.5" rx="1" fill="var(--text-main, #333)" />`;
    } else {
      svg += `<line x1="${sideMargin}" y1="${topMargin}" x2="${width - sideMargin}" y2="${topMargin}" stroke="var(--border-color, #666)" stroke-width="1.5" />`;
      svg += `<text x="${sideMargin - 5}" y="${topMargin + fretSpacing * 0.68}" text-anchor="end" font-family="'Fira Code', monospace" font-size="11" font-weight="800" fill="var(--chord-color, #ECD3B5)">${baseFret}ª</text>`;
    }

    // 4 cordas
    for (let i = 0; i < 4; i++) {
      const x = sideMargin + i * stringSpacing;
      svg += `<line x1="${x}" y1="${topMargin}" x2="${x}" y2="${topMargin + 4 * fretSpacing}" stroke="var(--text-muted, #777)" stroke-width="1.2" opacity="0.8" />`;
    }

    // 4 trastes
    for (let i = 1; i <= 4; i++) {
      const y = topMargin + i * fretSpacing;
      svg += `<line x1="${sideMargin}" y1="${y}" x2="${width - sideMargin}" y2="${y}" stroke="var(--border-color, #999)" stroke-width="1" />`;
    }

    // Pestana sólida
    if (info.barre) {
      const relBarre = info.barre - baseFret + 1;
      if (relBarre >= 1 && relBarre <= 4) {
        const yBarre = topMargin + (relBarre - 0.5) * fretSpacing;
        let fromStr = -1;
        let toStr = -1;
        info.frets.forEach((f, idx) => {
          if (f >= info.barre && f !== -1) {
            if (fromStr === -1) fromStr = idx;
            toStr = idx;
          }
        });
        if (fromStr === -1) fromStr = 0;
        if (toStr === -1 || toStr <= fromStr) toStr = 3;

        const xFrom = sideMargin + fromStr * stringSpacing;
        const xTo = sideMargin + toStr * stringSpacing;
        const barW = (xTo - xFrom) + 12;
        const barH = 12;

        svg += `<rect x="${xFrom - 6}" y="${yBarre - barH / 2}" width="${barW}" height="${barH}" rx="${barH / 2}" ry="${barH / 2}" fill="var(--chord-color, #ECD3B5)" />`;
        svg += `<text x="${xFrom}" y="${yBarre + 3.5}" text-anchor="middle" font-family="'Fira Code', monospace" font-size="8.5" font-weight="700" fill="var(--on-accent, #000)">1</text>`;
      }
    }

    // Pontos individuais
    info.frets.forEach((fret, i) => {
      const x = sideMargin + i * stringSpacing;
      if (fret === -1) {
        svg += `<text x="${x}" y="${topMargin - 5}" text-anchor="middle" font-family="system-ui, sans-serif" font-size="11" font-weight="700" fill="var(--text-muted, #888)">×</text>`;
      } else if (fret === 0) {
        svg += `<circle cx="${x}" cy="${topMargin - 8}" r="3" fill="none" stroke="var(--text-secondary, #666)" stroke-width="1.2" />`;
      } else if (fret > 0) {
        if (info.barre && fret === info.barre) return;
        const relFret = fret - baseFret + 1;
        if (relFret >= 1 && relFret <= 4) {
          const y = topMargin + (relFret - 0.5) * fretSpacing;
          const finger = (info.fingers && info.fingers[i]) ? info.fingers[i] : '';
          svg += `<circle cx="${x}" cy="${y}" r="5.5" fill="var(--chord-color, #ECD3B5)" stroke="var(--bg-surface, #000)" stroke-width="0.8" />`;
          if (finger) {
            svg += `<text x="${x}" y="${y + 3.5}" text-anchor="middle" font-family="'Fira Code', monospace" font-size="8.5" font-weight="700" fill="var(--on-accent, #000)">${finger}</text>`;
          }
        }
      }
    });

    const fretColor = effectiveFret > 1 ? 'var(--chord-color, #ECD3B5)' : 'var(--text-secondary, #888)';
    const fretWeight = effectiveFret > 1 ? '700' : '600';
    svg += `<text x="${width / 2}" y="${height - 5}" text-anchor="middle" font-family="'Inter', sans-serif" font-size="10" font-weight="${fretWeight}" fill="${fretColor}">${effectiveFret}ª casa</text>`;

    svg += `</svg>`;
    return svg;
  }

  /**
   * Função unificada para gerar o SVG de um acorde no instrumento e variação selecionados
   */
  function getChordSVG(chordName, instrument = 'guitar', varIndex = 0) {
    if (instrument === 'keyboard') {
      return renderKeyboardSVG(chordName, varIndex);
    } else if (instrument === 'ukulele' || instrument === 'cavaquinho') {
      return render4StringSVG(chordName, instrument, varIndex);
    } else {
      return renderGuitarSVG(chordName, varIndex);
    }
  }

  // Compatibilidade com código legado e exports
  const legacyChordMap = {
    guitar: {},
    ukulele: {},
    cavaquinho: {},
    keyboard: {}
  };
  Object.keys(GUITAR_CHORDS).forEach(k => { legacyChordMap.guitar[k] = GUITAR_CHORDS[k][0]; });
  Object.keys(UKULELE_CHORDS).forEach(k => { legacyChordMap.ukulele[k] = UKULELE_CHORDS[k][0]; });
  Object.keys(CAVAQUINHO_CHORDS).forEach(k => { legacyChordMap.cavaquinho[k] = CAVAQUINHO_CHORDS[k][0]; });
  Object.keys(KEYBOARD_CHORDS).forEach(k => {
    legacyChordMap.keyboard[k] = KEYBOARD_CHORDS[k][0].keys.map(key => key.replace(/\d+/, ''));
  });

  const ChordsData = {
    CHORD_DIAGRAMS: legacyChordMap,
    GUITAR_CHORDS,
    KEYBOARD_CHORDS,
    UKULELE_CHORDS,
    CAVAQUINHO_CHORDS,
    getChordVariations,
    getChordSVG,
    renderInstrumentSVG: getChordSVG,
    renderGuitarSVG,
    renderKeyboardSVG,
    render4StringSVG
  };

  if (typeof window !== 'undefined') {
    window.CHORD_DIAGRAMS = legacyChordMap;
    window.ChordsData = ChordsData;
  }

  if (typeof module !== 'undefined' && module.exports) {
    module.exports = ChordsData;
  }
})();
