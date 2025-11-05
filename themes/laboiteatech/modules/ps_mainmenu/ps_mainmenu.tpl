{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
  {if $nodes|count}
    <ul class="menu-level" data-depth="{$depth}">
      {foreach from=$nodes item=node}
        <li class="menu-item" id="{$node.page_identifier}">
          <div class="menu-link-wrapper">
            <a href="{$node.url}"
               class="menu-link"
               {if $node.open_in_new_window}target="_blank"{/if}>
              <span class="menu-label">{$node.label}</span>
            </a>
            {if $node.children|count}
              <button class="menu-chevron-btn" type="button" aria-label="Open submenu for {$node.label}">
                <i class="material-icons menu-chevron">chevron_right</i>
              </button>
            {/if}
          </div>
          {if $node.children|count}
            <div class="menu-children" hidden>
              <div class="menu-header">
                <button class="menu-back">
                  <i class="material-icons">arrow_back</i>
                  <span class="menu-back-text">Back</span>
                </button>
                <span class="menu-current-title">{$node.label}</span>
              </div>
              {menu nodes=$node.children depth=$node.depth parent=$node}
            </div>
          {/if}
        </li>
      {/foreach}
    </ul>
  {/if}
{/function}

<div id="_desktop_top_menu" class="menu-side-bar" hidden>
  <div class="menu-overlay"></div>
  <div class="menu-panel">
    <div class="menu-header">
       <span>Menu</span>
      <button class="menu-close"><i class="material-icons">close</i></button>
    </div>
    {menu nodes=$menu.children}
  </div>
</div>

<style>

  /* --- MOBILE ADAPTATION --- */
@media (max-width: 768px) {
  .menu-side-bar {
    width: 100vw; /* Full width for mobile */
    transform: translateX(-100%);
    font-size: 16px;
  }

  .menu-side-bar.active {
    transform: translateX(0);
  }

  .menu-header {
    padding: 1rem;
    font-size: 18px;
  }

  .menu-link {
    padding: 1.2rem;
    font-size: 16px;
  }

  .menu-chevron-btn {
    padding: 1.2rem;
  }

  .menu-chevron {
    font-size: 24px;
  }

  .menu-back {
    font-size: 16px;
  }

  .menu-overlay {
    display: block;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.3s ease;
  }

  .menu-side-bar.active + .menu-overlay {
    opacity: 1;
    pointer-events: all;
  }

  /* Improve tap area for icons */
  .menu-close i,
  .menu-back i {
    font-size: 26px;
  }

  /* Fix nested submenu layout for smaller viewports */
  .menu-children {
    left: 100%;
    width: 100%;
    height: 100%;
    background: var(--brand-color-primary);
    overflow-y: auto;
  }
}

/* --- SMALLER MOBILE (under 480px) --- */
@media (max-width: 480px) {
  .menu-link {
    font-size: 15px;
    padding: 1rem 0.8rem;
  }
  .menu-header span {
    font-size: 16px;
  }
  .menu-close i {
    font-size: 24px;
  }
}

.mobile-menu-btn {
  display: none;
  background: transparent;
  border: none;
  cursor: pointer;
  padding: 8px;
}

.mobile-menu-btn i {
  font-size: 28px;
  color: var(--color-text);
}

@media (max-width: 768px) {
  .mobile-menu-btn {
    display: flex;
    align-items: center;
    justify-content: center;
  }
}



.menu-side-bar {
  position: fixed;
  top: 0;
  left: 0;
  width: 320px;
  height: 100%;
  background: var(--brand-color-primary);
  color: var(--color-text);
  box-shadow: 2px 0 8px rgba(0, 0, 0, 0.2);
  transform: translateX(-100%);
  transition: transform 0.3s ease;
  z-index: 9999;
  overflow: hidden;
}

.menu-side-bar.active {
  transform: translateX(0);
}

.menu-panel {
  position: relative;
  width: 100%;
  height: 100%;
  overflow-y: auto;
  padding: 0;
}

.menu-overlay {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.4);
  z-index: 9998;
}

.menu-side-bar.active + .menu-overlay {
  display: block;
}

/* Header with logo + close button */
.menu-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0.5rem;
  padding-left: 1rem;
  background: var(--brand-color-primary-light);
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

#_desktop_top_menu .logo {
  max-width: 150px;
  height: 36px;
}

#_desktop_top_menu img {
  height: 36px;
  width: auto;
  object-fit: contain;
}

.menu-close {
  background: transparent;
  border: none;
  cursor: pointer;
  padding: 4px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
}

.menu-close i {
  font-size: 22px;
  color: var(--color-text);
  font-weight: 300;
  transition: all 0.2s ease;
}

.menu-close i:focus-visible,
.menu-close:focus-visible {
  outline: none;
}

.menu-close:hover {
  background: #fff;
}

.menu-close:hover i {
  color: var(--brand-color-primary);
}

/* Menu item layout */
.menu-link-wrapper {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
}

.menu-item {
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

.menu-link {
  display: flex;
  align-items: center;
  flex-grow: 1;
  padding: 0.9rem 1rem;
  text-decoration: none;
  color: var(--color-text);
  font-size: 15px;
  transition: background 0.2s ease;
}

.menu-link:hover {
  background: var(--brand-color-primary-light);
}

.menu-chevron-btn {
  background: transparent;
  border: none;
  padding: 0.9rem 1rem;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: background 0.2s ease;
}

.menu-chevron-btn:hover {
  background: var(--brand-color-primary-light);
}

.menu-chevron {
  font-size: 20px;
  color: var(--color-text);
}

/* Submenu slide animation */
.menu-children {
  position: absolute;
  top: 0;
  left: 100%;
  width: 100%;
  height: 100%;
  background: var(--brand-color-primary);
  transition: left 0.3s ease;
  overflow-y: auto;
}

.menu-children .menu-header {
  background: var(--brand-color-primary-light);
  justify-content: flex-start;
  gap: 8px;

}

.menu-back {
  background: transparent;
  border: none;
  color: var(--color-text);
  display: flex;
  align-items: center;
  gap: 4px;
  cursor: pointer;
  font-size: 14px;
  padding: 4px 8px;
  border-radius: 4px;
  transition: background 0.2s ease;
}

.menu-back:hover {
  background: rgba(255, 255, 255, 0.1);
}

.menu-back i {
  font-size: 20px;
}

.menu-current-title {
  font-weight: 600;
  margin-left: auto;
  margin-right: auto;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', () => {
  const sidebar = document.getElementById('_desktop_top_menu');
  const panel = sidebar.querySelector('.menu-panel');
  const menuButton = document.getElementById('menu-side-bar');
  const menuIcon = document.getElementById('menu-icon2');
  const closeButton = sidebar.querySelector('.menu-close');

  let currentMenu = panel.querySelector('ul.menu-level[data-depth="0"]');

  
    // Open sidebar
  menuIcon?.addEventListener('click', () => {
    sidebar.hidden = false;
    sidebar.classList.add('active');
    // Reset to main menu when opening
    resetToMainMenu();
  });

  // Open sidebar
  menuButton?.addEventListener('click', () => {
    sidebar.hidden = false;
    sidebar.classList.add('active');
    // Reset to main menu when opening
    resetToMainMenu();
  });

  // Close sidebar
  closeButton?.addEventListener('click', () => {
    sidebar.classList.remove('active');
    setTimeout(() => (sidebar.hidden = true), 300);
  });

  // Click on chevron button → navigate to children
  panel.addEventListener('click', (e) => {
    const chevronBtn = e.target.closest('.menu-chevron-btn');
    if (!chevronBtn) return;
    e.preventDefault();
    e.stopPropagation();

    const item = chevronBtn.closest('.menu-item');
    const childMenu = item.querySelector('.menu-children');
    if (childMenu) {
      currentMenu.style.left = '-100%';
      childMenu.hidden = false;
      childMenu.style.left = '0';
      currentMenu = childMenu;
    }
  });

  // Handle "back" button
  panel.addEventListener('click', (e) => {
    if (!e.target.closest('.menu-back')) return;
    const childMenu = e.target.closest('.menu-children');
    if (!childMenu) return;

    const parentMenu = childMenu.closest('.menu-item')?.closest('ul.menu-level');
    if (parentMenu) {
      childMenu.style.left = '100%';
      parentMenu.style.left = '0';
      currentMenu = parentMenu;
      // Hide child menu after transition
      setTimeout(() => {
        childMenu.hidden = true;
      }, 300);
    } else {
      // If no parent menu found, reset to main menu
      resetToMainMenu();
    }
  });

  // Click outside closes sidebar
  document.addEventListener('click', (e) => {
    if (!sidebar.classList.contains('active')) return;
    if (sidebar.contains(e.target) || e.target === menuButton) return;
    sidebar.classList.remove('active');
    setTimeout(() => (sidebar.hidden = true), 300);
  });

  // Reset to main menu function
  function resetToMainMenu() {
    const allMenus = panel.querySelectorAll('.menu-level, .menu-children');
    allMenus.forEach(menu => {
      menu.style.left = '';
      if (menu.classList.contains('menu-level') && menu.dataset.depth === "0") {
        menu.hidden = false;
        currentMenu = menu;
      } else if (menu.classList.contains('menu-children')) {
        menu.hidden = true;
      }
    });
  }
});
</script>