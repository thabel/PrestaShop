# Categories Display Module

A modern categories showcase module for the laboiteatech PrestaShop theme.

## Features

- **Card-based Layout**: Displays product categories in an elegant card grid
- **Responsive Design**: Adapts seamlessly from mobile (1 column) to desktop (3 columns)
- **Background Styling**: Features a gradient background with subtle grid pattern
- **Interactive Elements**: Hover animations with smooth transitions
- **Category Links**: Direct links to category pages
- **Material Icons**: Uses Material Icons for visual appeal

## Categories Included

1. **Ordinateurs** - Computers and laptops
   - Icon: `laptop`
   - Link: `/fr/ordinateurs`

2. **Écrans** - Screens and monitors
   - Icon: `desktop_mac`
   - Link: `/fr/ecrans`

3. **Imprimantes** - Printers
   - Icon: `print`
   - Link: `/fr/imprimantes`

## Design Features

### Colors
- **Background**: Dark purple gradient with brand colors
- **Cards**: Semi-transparent gradient backgrounds
- **Buttons**: Bright cyan buttons with hover effects
- **Text**: White text for contrast

### Responsive Breakpoints
- **Mobile** (< 768px): 1 column layout
- **Tablet** (769px - 1024px): 2 column layout
- **Desktop** (> 1025px): 3 column layout

### Animations
- Smooth card lift on hover (translateY)
- Shine effect that sweeps across cards
- Arrow animation on button hover
- Color gradient reversal on hover

## File Structure

```
ps_categories/
├── ps_categories.php          # Module class and hooks
├── ps_categories.tpl          # Smarty template
├── categories-data.php        # Category configuration
└── README.md                  # This file
```

## Customization

### Adding More Categories

Edit `categories-data.php` and add new entries to the array:

```php
[
    'name' => 'Accessoires',
    'description' => 'Your description here',
    'icon' => 'material-icons device_hub',
    'link' => '/fr/accessoires',
]
```

### Updating Styles

Edit the CSS in `themes/laboiteatech/assets/css/custom.css` in the `Categories Section` area.

### Changing Icons

Any Material Icons name can be used. See [Material Icons documentation](https://fonts.google.com/icons).

## Installation

1. Place module folder in `themes/laboiteatech/modules/`
2. Install the module from PrestaShop admin panel
3. Assign to the "Display Home" hook
4. Verify categories appear on homepage

## Notes

- Requires Material Icons font to be included in the theme
- Uses CSS Grid for layout (no browser support needed for older IE)
- Background is fixed on scroll for parallax effect
