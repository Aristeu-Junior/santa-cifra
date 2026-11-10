/**
 * Santa Cifra — Agregador Modular do Catálogo (Músicas Litúrgicas + Populares/Devocionais)
 * Une os 4 módulos de js/catalog/*.js em window.SongsCatalog.
 */
(function () {
  'use strict';
  window.SongsCatalog = [].concat(
    window.SongsCatalogOrdinario || [],
    window.SongsCatalogEntradaFinal || [],
    window.SongsCatalogOfertorioComunhao || [],
    window.SongsCatalogAdoracaoComunidades || []
  );
})();
