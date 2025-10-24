{function name="desktopMenu" nodes=[] depth=0 parent=null}
  {if $nodes|count}
    <ul
      {if $depth === 0}id="top-menu"{/if}
      class="{if $depth === 0}main-menu__tree h-100{elseif $depth === 1}row row-cols-4 gy-3{else}submenu{/if}"
      data-depth="{$depth}"
    >
    
    {* Début: Ajout du bouton "Tous nos produits" au niveau 0 (Desktop) *}
    {if $depth === 0}
      {* J'ajoute les classes 'dropdown-toggle' et 'js-sub-menu' pour simuler l'ouverture du menu au survol *}
      <li class="all-categories-item js-menu-item-lvl-0 main-menu__tree__item d-flex align-items-center h-100" id="link_all_categories_desktop">
        <a
          class="main-menu__tree__link dropdown-toggle"
          href="{$all_categories_url|default:'#'}"
          data-depth="0"
        >
          <i class="material-icons" style="margin-right: 5px;">apps</i> {* Utilisation d'une icône Material Design standard *}
          {$label_all_categories|default:'Tous nos produits'}
        </a>
        
        {* Conteneur pour l'arborescence qui s'affichera au survol (hover) *}
        <div class="menu-container shadow-sm js-sub-menu" id="all_categories_mega_menu_content">
          <div class="container">
            {* Ici, vous devez insérer la logique Smarty pour afficher l'arborescence détaillée (ex: appel à une autre fonction ou contenu statique).
               Par exemple, si vous avez une variable $all_categories_tree : *}
            
            {* Exemple de structure de base pour simuler le contenu du méga-menu complet *}
            <div class="row">
                <div class="col-12">
                    

                    <ul class="vertical-menu list-unstyled m-0 p-0">
  {foreach from=$nodes item=node}
    <li class="menu-item position-relative" id="{$node.page_identifier}">
      <a href="{$node.url}" class="menu-link d-flex align-items-center px-3 py-2" {if $node.open_in_new_window}target="_blank"{/if}>
        {$node.label}
        {if $node.children|count}
          <span class="ms-auto">&rsaquo;</span>
        {/if}
      </a>

      {if $node.children|count}
        <div class="submenu shadow-sm">
          <div class="submenu-inner p-3">
            {foreach from=$node.children item=sub}
              <div class="submenu-section mb-3">
                <h6 class="fw-bold text-dark mb-2">{$sub.label}</h6>
                {if $sub.children|count}
                  <ul class="list-unstyled ps-3">
                    {foreach from=$sub.children item=child}
                      <li>
                        <a href="{$child.url}" class="text-muted text-decoration-none d-block py-1">
                          {$child.label}
                        </a>
                      </li>
                    {/foreach}
                  </ul>
                {/if}
              </div>
            {/foreach}
          </div>
        </div>
      {/if}
    </li>
  {/foreach}
</ul>



                </div>
            </div>
          </div>
        </div>
      </li>
    {/if}
    {* Fin: Ajout du bouton "Tous nos produits" *}
    
    {foreach from=$nodes item=node}
      <li
        class="{$node.type}{if $node.current} current{/if}{if $depth === 0} js-menu-item-lvl-0 main-menu__tree__item d-flex align-items-center h-100{/if}"
        id="{$node.page_identifier}"
      >
        {if $depth > 1 && $node.children|count}
          <div class="dropdown dropend">
        {/if}
          <a
            class="main-menu__tree__link{if $node.children|count} dropdown-toggle{/if}{if $depth > 0} dropdown-item{/if}"
            href="{$node.url}"
            data-depth="{$depth}"
            {if $node.open_in_new_window}target="_blank"{/if}
            {if $depth > 1 && $node.children|count}
              data-bs-toggle="dropdown"
              {if $depth === 2}data-bs-offset="0,-1"{else}data-bs-display="static"{/if}
            {/if}
          >
            {$node.label}
          </a>
          {if $node.children|count}
            {if $depth !== 1}
              <div class="{if $depth === 0}menu-container shadow-sm js-sub-menu{/if}{if $depth > 1 && $node.children|count}dropdown-menu{/if}">
            {/if}
              {if $depth === 0}
                <div class="container">
              {/if}
                {desktopMenu nodes=$node.children depth=$node.depth parent=$node}
              {if $depth === 0}
                </div>
              {/if}
            {if $depth !== 1}
              </div>
            {/if}
          {/if}
        {if $depth > 1 && $node.children|count}
          </div>
        {/if}
      </li>
    {/foreach}
    </ul>
  {/if}
{/function}

{function name="mobileMenu" nodes=[] depth=0 parent=null}
  {$children = []}
  {if $nodes|count}
    <nav
      class="menu menu--mobile{if $depth === 0} menu--current js-menu-current{else} menu--child js-menu-child{/if}"
      {if $depth === 0}id="menu-mobile"{else}data-parent-title="{$parent.label}"{/if}
      {if $depth > 1}data-back-title="{$backTitle}" data-id="{$expandId}"{/if}
      data-depth="{$depth}"
    >
      <ul class="menu__list">
        
        {* Début: Ajout du bouton "Tous nos produits" au niveau 0 (Mobile) *}
        {if $depth === 0}
          {* Ce lien dans le menu mobile n'ouvre pas de mega-menu au survol, il navigue ou agit comme un lien normal. *}
          <li class="all-categories-item menu--childrens" id="link_all_categories_mobile">
            <a
              class="menu__link"
              href="{$all_categories_url|default:'#'}"
              data-depth="0"
            >
              <i class="material-icons" style="margin-right: 5px;">apps</i> {* Utilisation d'une icône Material Design standard *}
              {$label_all_categories|default:'Tous nos produits'}
            </a>
            {* Si vous voulez qu'il ouvre une sous-page mobile, ajoutez la logique ci-dessous, sinon laissez-la vide ou supprimez-la. *}
            {*
            <span class="main-menu__toggle-child js-menu-open-child" data-target="999999">
              <span data-target="#top_sub_menu_999999">
                <i class="material-icons rtl-flip">chevron_right</i>
              </span>
            </span>
            *}
          </li>
        {/if}
        {* Fin: Ajout du bouton "Tous nos produits" *}

        {if $depth >= 1}
          <li class="main-menu__title h5">{$parent.label}</li>
        {/if}
        {foreach from=$nodes item=node}
          <li
            class="{$node.type}{if $node.current} current{/if}{if $node.children|count} menu--childrens{/if}"
            id="{$node.page_identifier}"
          >
            <a
              class="{if $depth>= 0}menu__link{/if}"
              href="{$node.url}"
              data-depth="{$depth}"
              {if $node.open_in_new_window}target="_blank"{/if}
            >
            {$node.label}
            </a>
            {if $node.children|count}
              {* Cannot use page identifier as we can have the same page several times *}
              {assign var=_expand_id value=10|mt_rand:100000}
              <span class="main-menu__toggle-child js-menu-open-child" data-target="{$_expand_id}">
                <span data-target="#top_sub_menu_{$_expand_id}">
                  <i class="material-icons rtl-flip">chevron_right</i>
                </span>
              </span>
            {/if}
          </li>
          {if $node.children|count}
            {$node.parent = $node}
            {$node.expandId = $_expand_id}
            {$children[] = $node}
          {/if}
        {/foreach}
      </ul>
    </nav>
    {foreach from=$children item=child}
      {mobileMenu
        nodes=$child.children
        depth=$child.children[0].depth
        parent=$child backTitle=$child.parent.label
        expandId=$child.expandId
      }
    {/foreach}
  {/if}
{/function}

<div class="main-menu col-xl col-auto d-flex align-items-center">
  <div class="d-none d-xl-block position-static js-menu-desktop">
    {desktopMenu nodes=$menu.children}
  </div>

  <div class="header-block d-xl-none">
    <a
      class="header-block__action-btn"
      href="#"
      role="button"
      data-bs-toggle="offcanvas"
      data-bs-target="#mobileMenu"
      aria-controls="mobileMenu"
    >
      <span class="material-icons header-block__icon">menu</span>
    </a>
  </div>
</div>

<div
  class="main-menu__offcanvas offcanvas offcanvas-start js-menu-canvas"
  tabindex="-1"
  id="mobileMenu"
  aria-labelledby="mobileMenuLabel"
>
  <div class="offcanvas-header">
    <div class="main-menu__back-button">
      <button class="btn btn-unstyle d-none js-back-button" type="button">
        <span class="material-icons rtl-flip">chevron_left</span>
        <span class="js-menu-back-title">{l s='All' d='Shop.Theme.Global'}</span>
      </button>
    </div>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>

  <div class="main-menu__mobile">
    {mobileMenu nodes=$menu.children}
  </div>

  <div class="main-menu__additionnals offcanvas-body">
    <div class="main-menu__selects row">
      <div id="_mobile_currency_selector" class="col-auto"></div>
      <div id="_mobile_language_selector" class="col-auto"></div>
    </div>
    <div id="_mobile_contact_link"></div>
  </div>
</div>