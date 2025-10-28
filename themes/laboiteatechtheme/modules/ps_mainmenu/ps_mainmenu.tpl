{* menu_categories.tpl *}
{function name="desktopMenu" nodes=[] depth=0 parent=null}

<nav role="navigation" class="primary-navigation categories-menu md-hidden ">
  <ul>
    {* All Categories as first item *}
    <li class="all-categories">
      <a href="#" class="all-categories-trigger">
        <i class="material-icons">apps</i>
        All Categories
        <i class="material-icons expand-icon">expand_more</i>
      </a>
      <ul class="dropdown all-categories-dropdown">
        {foreach $nodes as $category}
          {if $category.depth == 1}
            <li class="{if $category.children}has-submenu{/if}">
              <a href="{$category.url}">
                {$category.label}
                {if $category.children}
                  <i class="material-icons submenu-arrow">chevron_right</i>
                {/if}
              </a>
              {if $category.children}
                <ul class="submenu">
                  {foreach $category.children as $subcategory}
                    <li>
                      <a href="{$subcategory.url}">
                        {$subcategory.label}
                      </a>
                    </li>
                  {/foreach}
                </ul>
              {/if}
            </li>
          {/if}
        {/foreach}
      </ul>
    </li>

    {* Top level categories *}
    {foreach $nodes as $category}
      {if $category.depth == 1}
        <li class="top-category {if $category.children}has-dropdown{/if}">
          <a href="{$category.url}">
            {$category.label}
            {if $category.children}
              <i class="material-icons expand-icon">expand_more</i>
            {/if}
          </a>
          {if $category.children}
            <ul class="dropdown category-composition">
              {foreach $category.children as $subcategory}
                <li>
                  <a href="{$subcategory.url}">
                    {$subcategory.label}
                  </a>
                </li>
              {/foreach}
            </ul>
          {/if}
        </li>
      {/if}
    {/foreach}
  </ul>
</nav>
{/function}

{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
    {if $nodes|count}
      <ul class="top-menu  md-hidden" {if $depth == 0}id="top-menu"{/if} data-depth="{$depth}">
        {foreach from=$nodes item=node}
            <li class="{$node.type}{if $node.current} current {/if}" id="{$node.page_identifier}">
            {assign var=_counter value=$_counter+1}
              <a
                class="{if $depth >= 0}dropdown-item{/if}{if $depth === 1} dropdown-submenu{/if}"
                href="{$node.url}" data-depth="{$depth}"
                {if $node.open_in_new_window} target="_blank" {/if}
              >
                {if $node.children|count}
                  {* Cannot use page identifier as we can have the same page several times *}
                  {assign var=_expand_id value=10|mt_rand:100000}
                  <span class="float-xs-right hidden-md-up">
                    <span data-target="#top_sub_menu_{$_expand_id}" data-toggle="collapse" class="navbar-toggler collapse-icons">
                      <i class="material-icons add">&#xE313;</i>
                      <i class="material-icons remove">&#xE316;</i>
                    </span>
                  </span>
                {/if}
                {$node.label}
              </a>
              {if $node.children|count}
              <div {if $depth === 0} class="popover sub-menu js-sub-menu collapse"{else} class="collapse"{/if} id="top_sub_menu_{$_expand_id}">
                {menu nodes=$node.children depth=$node.depth parent=$node}
              </div>
              {/if}
            </li>
        {/foreach}
      </ul>
    {/if}
{/function}

<div >
   {desktopMenu nodes=$menu.children}
    <div class="menu js-top-menu position-static hidden-sm-down" id="_desktop_top_menu">
    {menu nodes=$menu.children}
    <div class="clearfix"></div>
</div>
    <div class="clearfix"></div>
