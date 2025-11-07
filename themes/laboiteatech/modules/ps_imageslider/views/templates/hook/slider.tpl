{**
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *}

{if $homeslider.slides}
  <section id="home-slider" class="home-slider-section">
    <div class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

      {* Carousel Indicators *}
      <div class="carousel-indicators-wrapper">
        <div class="carousel-indicators">
          {assign var="count" value=0}
          {foreach from=$homeslider.slides item=slide name='homeslider'}
            <button type="button"
                    class="carousel-indicator-btn"
                    data-bs-target="#home-slider .carousel"
                    data-bs-slide-to="{$count}"
                    aria-label="{$slide.title|escape}"
                    {if $smarty.foreach.homeslider.first} class="carousel-indicator-btn active" aria-current="true" {/if}>
            </button>
            {$count = $count + 1}
          {/foreach}
        </div>
      </div>

      {* Carousel Items *}
      <div class="carousel-inner" role="listbox" aria-label="{l s='Carousel container' d='Shop.Theme.Global'}">
        {foreach from=$homeslider.slides item=slide name='homeslider'}
          <li class="carousel-item carousel-item-slide{if $smarty.foreach.homeslider.first} active{/if}"
              role="option"
              aria-hidden="{if $smarty.foreach.homeslider.first}false{else}true{/if}">

            {if !empty($slide.url)}<a class="carousel-link" href="{$slide.url}" aria-label="{$slide.title|escape}">{/if}

              <figure class="carousel-figure">
                {* Image Container *}
                <div class="carousel-image-wrapper">
                  <img
                    src="{$slide.image_url}"
                    alt="{$slide.legend|escape}"
                    class="carousel-image"
                    {if $slide@iteration == 1}loading="eager"{else}loading="lazy"{/if}
                    {$slide.size|replace: '"':''}>

                  {* Overlay gradient for better text contrast *}
                  <div class="carousel-overlay"></div>
                </div>

                {* Caption with Title and Description *}
                {if $slide.title || $slide.description}
                  <figcaption class="carousel-caption">
                    <div class="carousel-caption-content">
                      {if $slide.title}
                        <h2 class="carousel-title">{$slide.title|escape}</h2>
                      {/if}
                      {if $slide.description}
                        <div class="carousel-description">{$slide.description nofilter}</div>
                      {/if}
                      {if !empty($slide.url)}
                        <span class="carousel-cta">Découvrir Plus →</span>
                      {/if}
                    </div>
                  </figcaption>
                {/if}
              </figure>

            {if !empty($slide.url)}</a>{/if}
          </li>
        {/foreach}
      </div>

      {* Carousel Controls - Previous *}
      <button class="carousel-control carousel-control-prev"
              type="button"
              data-bs-target="#home-slider .carousel"
              data-bs-slide="prev"
              aria-label="{l s='Previous' d='Shop.Theme.Actions'}">
        <span class="carousel-control-icon" aria-hidden="true">
          <svg class="carousel-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <polyline points="15 18 9 12 15 6"></polyline>
          </svg>
        </span>
      </button>

      {* Carousel Controls - Next *}
      <button class="carousel-control carousel-control-next"
              type="button"
              data-bs-target="#home-slider .carousel"
              data-bs-slide="next"
              aria-label="{l s='Next' d='Shop.Theme.Actions'}">
        <span class="carousel-control-icon" aria-hidden="true">
          <svg class="carousel-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <polyline points="9 18 15 12 9 6"></polyline>
          </svg>
        </span>
      </button>

    </div>
  </section>
{/if}
