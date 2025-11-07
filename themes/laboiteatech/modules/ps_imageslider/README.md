# PS Image Slider - Enhanced Version for La Boîte à Tech

## 📋 Vue d'ensemble
Module de slider d'images amélioré pour PrestaShop avec un design moderne et réactif, spécialement adapté à La Boîte à Tech.

## 🎨 Améliorations implémentées

### Template (`slider.tpl`)
- ✅ Slider plus grand et plus imposant
- ✅ Carousel fade effect pour une transition douce
- ✅ Navigation par flèches SVG personnalisées
- ✅ Indicateurs de pagination animés
- ✅ Support des légendes avec titre et description
- ✅ Lien cliquable sur chaque slide
- ✅ Design responsive (mobile, tablet, desktop, 4K)
- ✅ Accessibilité ARIA améliorée
- ✅ Lazy loading des images

### Styles CSS (`custom.css`)
- ✅ Hauteurs responsives :
  - Mobile: 200px - 250px
  - Tablet: 350px
  - Desktop: 450px
  - Large Desktop: 550px
  - 4K: 550px+

- ✅ Animations :
  - Zoom lent sur les images au survol
  - Fade entre les slides
  - Animation de slide-up pour les captions
  - Effets de transition sur les contrôles

- ✅ Couleurs et branding :
  - Utilise la palette de couleurs La Boîte à Tech
  - Overlay gradient pour la lisibilité du texte
  - Indicateurs avec accent en cyan (#48d4f0)
  - Boutons de contrôle avec gradient

## 📸 Images Open Source Intégrées

Toutes les images utilisées sont open source et proviennent de **Unsplash** (https://unsplash.com):

### 1. **Ordinateurs Portables**
- **URL**: `https://images.unsplash.com/photo-1517694712202-14dd9538aa97`
- **Licence**: Unsplash License (libre d'utilisation)
- **Dimensions recommandées**: 1200x600px
- **Catégorie**: Produits

### 2. **Écrans Plats 4K**
- **URL**: `https://images.unsplash.com/photo-1559056199-641a0ac8b3f7`
- **Licence**: Unsplash License (libre d'utilisation)
- **Dimensions recommandées**: 1200x600px
- **Catégorie**: Produits

### 3. **Ordinateurs Fixes Puissants**
- **URL**: `https://images.unsplash.com/photo-1587829191301-995ec63633e0`
- **Licence**: Unsplash License (libre d'utilisation)
- **Dimensions recommandées**: 1200x600px
- **Catégorie**: Produits

### 4. **Imprimantes Multifonction**
- **URL**: `https://images.unsplash.com/photo-1544716278-ca5e3af5abd8`
- **Licence**: Unsplash License (libre d'utilisation)
- **Dimensions recommandées**: 1200x600px
- **Catégorie**: Produits

### 5. **Accessoires & Périphériques**
- **URL**: `https://images.unsplash.com/photo-1527814050087-3793815479db`
- **Licence**: Unsplash License (libre d'utilisation)
- **Dimensions recommandées**: 1200x600px
- **Catégorie**: Produits

## 🔗 Sources d'images

### Unsplash
- **Site**: https://unsplash.com
- **Licence**: Unsplash License
- **Droits d'utilisation**: Gratuit, avec ou sans attribution (recommandée)
- **Avantages**:
  - Très haute résolution
  - Sélection professionnelle
  - Aucune limitation d'utilisation
  - API disponible

### Autres sources open source recommandées
- **Pexels**: https://pexels.com (Pexels License)
- **Pixabay**: https://pixabay.com (Pixabay License)
- **Freepik**: https://freepik.com (avec conditions)

## 📁 Structure des fichiers

```
themes/laboiteatech/
└── modules/
    └── ps_imageslider/
        ├── views/
        │   └── templates/
        │       └── hook/
        │           └── slider.tpl          (Template amélioré)
        ├── data/
        │   └── slider-images.php           (Configuration des images)
        ├── README.md                        (Ce fichier)
```

## 🚀 Utilisation

### Configuration via PS Admin
1. Allez dans **Modules** → **Image Slider**
2. Cliquez sur **Configurer**
3. Ajoutez des slides avec les images de votre choix
4. Les images open source fournies peuvent être utilisées comme fallback

### Personnalisation des images
Pour ajouter ou modifier les images open source:

1. Éditez `/data/slider-images.php`
2. Trouvez une nouvelle image sur Unsplash/Pexels
3. Obtenez le lien direct avec les paramètres d'optimisation:
   - Largeur: `w=1200`
   - Hauteur: `h=600`
   - Format: `fit=crop`
   - Qualité: `q=80`

Exemple d'URL optimisée:
```
https://images.unsplash.com/photo-xxxxxxxxxxxxxxxxxxxxxxxx?w=1200&h=600&fit=crop&q=80
```

## 📱 Responsivité

Le slider s'adapte parfaitement à tous les appareils:

- **Mobile (< 480px)**: Hauteur 200px, contrôles compacts
- **Tablet (480px - 768px)**: Hauteur 250px, interface optimisée
- **Desktop (768px - 1024px)**: Hauteur 350px, expérience complète
- **Large Desktop (1024px - 1536px)**: Hauteur 450px, présentation premium
- **4K (1536px+)**: Hauteur 550px, expérience immersive

## 🎯 Optimisations SEO

- Attributs `alt` descriptifs sur toutes les images
- Lazy loading pour les images non-visibles
- Images optimisées avec compression (q=80)
- URLs stables sans expiration

## 🔒 Droits d'auteur et Licences

Toutes les images sont:
- ✅ Gratuites
- ✅ Libres d'utilisation commerciale
- ✅ Libres de modification
- ✅ Pas de restreinte d'attribution (bien que recommandée)

## 📞 Support

Pour ajouter/modifier les images:
1. Consultez la documentation Unsplash
2. Vérifiez les dimensions recommandées (1200x600px)
3. Testez sur mobile, tablet et desktop

## 📝 Notes

- Les images sont servies via CDN Unsplash (rapide et fiable)
- Les URLs sont directes et permanentes
- Pas besoin de télécharger les images localement
- Compression automatique par Unsplash
