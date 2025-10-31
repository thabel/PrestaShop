{**
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *}
{$headerTopName = 'header-top'}
{$headerBottomName = 'header-bottom'}

{block name='header_banner'}
  <div class="header__banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="{$headerTopName}">
    <div class="container-md">
      <div class="{$headerTopName}-desktop d-none d-md-flex row">
        <div class="{$headerTopName}__left col-md-5">
          {hook h='displayNav1'}
        </div>

        <div class="{$headerTopName}__right col-md-7">
          {hook h='displayNav2'}
        </div>
      </div>
    </div>
  </nav>
{/block}

{block name='header_bottom'}
  <div class="{$headerBottomName}" >
    <div class="container-md {$headerBottomName}__container">
      <div class="row gx-2 align-items-stretch {$headerBottomName}__row">
        <div class="d-flex align-items-center  logo order-xl-1 ms-lg-0 ms-2 me-lg-0 me-auto line">
          {if $shop.logo_details}
            {if $page.page_name == 'index'}<h1 class="{$headerBottomName}__h1 mb-0" id="logo_h1">{/if}
              {renderLogo}
            {if $page.page_name == 'index'}</h1>{/if}
          {/if}
                        {hook h='displaySearch'}


                        <div class="search__mobile d-md-none d-flex col-auto">

          <div class="header-block d-flex align-items-center">
            <a class="header-block__action-btn" href="#" role="button" data-bs-toggle="offcanvas" data-bs-target="#searchCanvas" aria-controls="searchCanvas" aria-label="{l s='Show search bar' d='Shop.Theme.Global'}">
              <span class="material-icons header-block__icon">search</span>
            </a>
          </div>

        

 <div id="_mobile_user_info" class="d-md-none d-flex col-auto">
          
          {* JUST PLACEHOLDER FOR RESPONSIVE COMPONENT TO LOAD REAL ONE *}
          <div class="header-block">
            <span class="header-block__action-btn">
              <i class="material-icons header-block__icon" aria-hidden="true">&#xE7FD;</i>
              <span class="d-none d-md-inline header-block__title">{l s='Sign in' d='Shop.Theme.Actions'}</span>
            </span>
          </div>
          {* JUST PLACEHOLDER FOR RESPONSIVE COMPONENT TO LOAD REAL ONE *}
        </div>

        <div id="_mobile_cart" class="d-md-none col-auto d-flex">
          {* JUST PLACEHOLDER FOR RESPONSIVE COMPONENT TO LOAD REAL ONE *}
          <div class="header-block d-flex align-items-center">
            <span class="header-block__action-btn">
              <i class="material-icons header-block__icon" aria-hidden="true">shopping_cart</i>
              <span class="header-block__badge">{$cart.products_count}</span>
            </span>
          </div>
          {* JUST PLACEHOLDER FOR RESPONSIVE COMPONENT TO LOAD REAL ONE *}
        </div>

        </div>

        </div>

        

<div class="d-flex align-items-center  logo order-xl-1 ms-lg-0 ms-2 me-lg-0 me-auto line">
    <div class="  h-auto show width-full search_mobile" data-bs-backdrop="false" data-bs-scroll="true" tabindex="-1" id="searchCanvas" aria-labelledby="offcanvasTopLabel">
            <div class="offcanvas-header">
              <div id="_mobile_search" class="search__container"></div>
            </div>
          </div>
</div>      
      

       
      </div>
      <div class="mainmenu">
 {hook h='displayTop'}
      </div>
                        

    </div>
  </div>

  {hook h='displayNavFullWidth'}

  <style>
.mainmenu{
  border-top: var(--header-bottom-border-bottom);
}
    
@media (min-width: 768px) {
 
h1#logo_h1 img.logo.img-fluid{
        width: 70%;
    }
 

  #search_widget form input,
.search-widget form input[type=text] {
	color: #949292;
	border:none;
	height: 50px;
	font-weight: 200;
	letter-spacing: 0.72px;
	padding:0;
	background-color: transparent;
	min-width: 477px;
	padding: 0 45px 0 20px;
	border:1px solid rgba(0,0,0,.1);
}
}
.search-widget form input[type=text]{
  	height: 50px;

}

.header-bottom {
     
      padding: 1rem 0;
    }
 .line {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
 
   #logo_h1 img.logo.img-fluid{
        width: 80px;
    }
    .width-full {
        width: 100%;
    }
    .search_mobile{
      margin-top: 1rem;
      
    }
    



  </style>
{/block}
