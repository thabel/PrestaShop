{**
 * Fallback Slider Template - Uses Open Source Images
 * This template is used when ps_imageslider module has no slides configured
 * All images are from Unsplash (open source, free to use)
 *}

<section id="home-slider" class="home-slider-section">
  <div class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

    {* Carousel Indicators *}
    <div class="carousel-indicators-wrapper">
      <div class="carousel-indicators">
        <button type="button" class="carousel-indicator-btn active" data-bs-target="#home-slider .carousel" data-bs-slide-to="0" aria-label="Slide 1" aria-current="true"></button>
        <button type="button" class="carousel-indicator-btn" data-bs-target="#home-slider .carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" class="carousel-indicator-btn" data-bs-target="#home-slider .carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" class="carousel-indicator-btn" data-bs-target="#home-slider .carousel" data-bs-slide-to="3" aria-label="Slide 4"></button>
        <button type="button" class="carousel-indicator-btn" data-bs-target="#home-slider .carousel" data-bs-slide-to="4" aria-label="Slide 5"></button>
      </div>
    </div>

    {* Carousel Items with Open Source Images *}
    <div class="carousel-inner" role="listbox" aria-label="Carousel produits La Boîte à Tech">

      {* Slide 1: Ordinateurs Portables *}
      <li class="carousel-item carousel-item-slide active" role="option" aria-hidden="false">
        <a class="carousel-link" href="#laptops" aria-label="Ordinateurs Portables">
          <figure class="carousel-figure">
            <div class="carousel-image-wrapper">
              <img src="https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=1200&h=600&fit=crop&q=80" alt="Ordinateur portable moderne avec écran lumineux" class="carousel-image" loading="eager">
              <div class="carousel-overlay"></div>
            </div>
            <figcaption class="carousel-caption">
              <div class="carousel-caption-content">
                <h2 class="carousel-title">Ordinateurs Portables</h2>
                <div class="carousel-description">Découvrez notre sélection complète d'ordinateurs portables dernier cri avec les meilleures performances</div>
                <span class="carousel-cta">Découvrir Plus →</span>
              </div>
            </figcaption>
          </figure>
        </a>
      </li>

      {* Slide 2: Écrans Plats 4K *}
      <li class="carousel-item carousel-item-slide" role="option" aria-hidden="true">
        <a class="carousel-link" href="#monitors" aria-label="Écrans Plats 4K">
          <figure class="carousel-figure">
            <div class="carousel-image-wrapper">
              <img src="https://images.unsplash.com/photo-1559056199-641a0ac8b3f7?w=1200&h=600&fit=crop&q=80" alt="Écran plat 4K professionnel" class="carousel-image" loading="lazy">
              <div class="carousel-overlay"></div>
            </div>
            <figcaption class="carousel-caption">
              <div class="carousel-caption-content">
                <h2 class="carousel-title">Écrans Plats 4K</h2>
                <div class="carousel-description">Expérience visuelle exceptionnelle avec nos écrans plats haute résolution. Parfait pour le design et gaming</div>
                <span class="carousel-cta">Découvrir Plus →</span>
              </div>
            </figcaption>
          </figure>
        </a>
      </li>

      {* Slide 3: Ordinateurs Fixes *}
      <li class="carousel-item carousel-item-slide" role="option" aria-hidden="true">
        <a class="carousel-link" href="#desktop" aria-label="Ordinateurs Fixes Puissants">
          <figure class="carousel-figure">
            <div class="carousel-image-wrapper">
              <img src="https://images.unsplash.com/photo-1587829191301-995ec63633e0?w=1200&h=600&fit=crop&q=80" alt="Ordinateur de bureau avec composants haut de gamme" class="carousel-image" loading="lazy">
              <div class="carousel-overlay"></div>
            </div>
            <figcaption class="carousel-caption">
              <div class="carousel-caption-content">
                <h2 class="carousel-title">Ordinateurs Fixes Puissants</h2>
                <div class="carousel-description">Configuration haute performance pour les professionnels et gamers. Dernière génération</div>
                <span class="carousel-cta">Découvrir Plus →</span>
              </div>
            </figcaption>
          </figure>
        </a>
      </li>

      {* Slide 4: Imprimantes *}
      <li class="carousel-item carousel-item-slide" role="option" aria-hidden="true">
        <a class="carousel-link" href="#printers" aria-label="Imprimantes Multifonction">
          <figure class="carousel-figure">
            <div class="carousel-image-wrapper">
              <img src="https://images.unsplash.com/photo-1544716278-ca5e3af5abd8?w=1200&h=600&fit=crop&q=80" alt="Imprimante multifonction professionnelle" class="carousel-image" loading="lazy">
              <div class="carousel-overlay"></div>
            </div>
            <figcaption class="carousel-caption">
              <div class="carousel-caption-content">
                <h2 class="carousel-title">Imprimantes Multifonction</h2>
                <div class="carousel-description">Imprimantes professionnelles avec scanner et photocopie. Qualité professionnelle garantie</div>
                <span class="carousel-cta">Découvrir Plus →</span>
              </div>
            </figcaption>
          </figure>
        </a>
      </li>

      {* Slide 5: Accessoires *}
      <li class="carousel-item carousel-item-slide" role="option" aria-hidden="true">
        <a class="carousel-link" href="#accessories" aria-label="Accessoires & Périphériques">
          <figure class="carousel-figure">
            <div class="carousel-image-wrapper">
              <img src="https://images.unsplash.com/photo-1527814050087-3793815479db?w=1200&h=600&fit=crop&q=80" alt="Accessoires informatiques professionnels" class="carousel-image" loading="lazy">
              <div class="carousel-overlay"></div>
            </div>
            <figcaption class="carousel-caption">
              <div class="carousel-caption-content">
                <h2 class="carousel-title">Accessoires & Périphériques</h2>
                <div class="carousel-description">Souris, claviers, casques et tous les accessoires pour optimiser votre setup informatique</div>
                <span class="carousel-cta">Découvrir Plus →</span>
              </div>
            </figcaption>
          </figure>
        </a>
      </li>
    </div>

    {* Carousel Controls - Previous *}
    <button class="carousel-control carousel-control-prev" type="button" data-bs-target="#home-slider .carousel" data-bs-slide="prev" aria-label="Slide précédent">
      <span class="carousel-control-icon" aria-hidden="true">
        <svg class="carousel-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <polyline points="15 18 9 12 15 6"></polyline>
        </svg>
      </span>
    </button>

    {* Carousel Controls - Next *}
    <button class="carousel-control carousel-control-next" type="button" data-bs-target="#home-slider .carousel" data-bs-slide="next" aria-label="Slide suivant">
      <span class="carousel-control-icon" aria-hidden="true">
        <svg class="carousel-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <polyline points="9 18 15 12 9 6"></polyline>
        </svg>
      </span>
    </button>

  </div>
</section>
