document.addEventListener('DOMContentLoaded', () => {
    console.log('Custom JS loaded for sidebar menu');

  let sidebar = document.getElementById('_desktop_top_menu');
  const panel = sidebar.querySelector('.menu-panel');
  const menuButton = document.getElementById('menu-side-bar');
  const menuIcon = document.getElementById('menu-icon2');
  const closeButton = sidebar.querySelector('.menu-close');
      const mobileMenu = document.getElementById('mobile_top_menu_wrapper');

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
    console.log('Clicked in panel', panel.children);
    console.log(e.target);
    if (e.target.closest(".menu-close")) {
      mobileMenu.style.display = "none";
      document.querySelector('#wrapper').style.display = "block";
      return;
    }
    const chevronBtn = e.target.closest('.menu-chevron-btn');
    if (!chevronBtn) {
      // what's being clicked if not chevron?
      console.log('Clicked element:', e.target);
      console.log('No chevron button found');
      return;
    };
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
  },true);

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
  },true);

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
