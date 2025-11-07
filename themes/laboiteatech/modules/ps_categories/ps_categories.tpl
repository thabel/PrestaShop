{**
 * Categories display module template
 *}

<section class="categories-section" id="categories-section">
  <div class="categories-container">
    <div class="categories-grid">
      {foreach from=$categories item="category"}
        <div class="category-card">
          <div class="category-card-content">
            <div class="category-icon">
              <i class="{$category.icon}"></i>
            </div>
            <h3 class="category-name">{$category.name}</h3>
            <p class="category-description">{$category.description}</p>
            <a href="{$category.link}" class="category-link">
              {l s='Voir la catégorie' d='Shop.Theme'}
              <span class="arrow">→</span>
            </a>
          </div>
        </div>
      {/foreach}
    </div>
  </div>
</section>
