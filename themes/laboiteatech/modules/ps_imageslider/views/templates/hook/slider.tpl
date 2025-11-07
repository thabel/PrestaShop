<div id="custom-text">
  <div class="container">

    <!-- Nouvelle section Catégories -->
    <div class="categories-section">
      <h2 class="section-title">Nos Catégories</h2>
      <p class="section-subtitle">Découvrez notre sélection de produits par catégorie</p>
      
      <div class="categories-grid">
        <div class="category-card">
          <div class="card-icon">
            <svg viewBox="0 0 24 24" width="48" height="48" fill="currentColor">
              <path d="M4 6h16v12H4z" opacity="0.3"/>
              <path d="M20 18H4V6h16m0-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2z"/>
              <path d="M0 0h24v24H0z" fill="none"/>
            </svg>
          </div>
          <h3 class="card-title">Ordinateurs</h3>
          <p class="card-description">Des PC de bureau performants pour tous les usages</p>
          <a href="/2-accueil" class="card-link">Découvrir</a>
        </div>
        
        <div class="category-card">
          <div class="card-icon">
            <svg viewBox="0 0 24 24" width="48" height="48" fill="currentColor">
              <path d="M0 0h24v24H0z" fill="none"/>
              <path d="M19 1H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h4l3 3 3-3h4c1.1 0 2-.9 2-2V3c0-1.1-.9-2-2-2zm-7 15.5c-2.48 0-4.5-2.02-4.5-4.5s2.02-4.5 4.5-4.5 4.5 2.02 4.5 4.5-2.02 4.5-4.5 4.5z"/>
            </svg>
          </div>
          <h3 class="card-title">PC Portables</h3>
          <p class="card-description">Laptops et ultrabooks pour la mobilité</p>
          <a href="/2-accueil" class="card-link">Découvrir</a>
        </div>
        
        <div class="category-card">
          <div class="card-icon">
            <svg viewBox="0 0 24 24" width="48" height="48" fill="currentColor">
              <path d="M0 0h24v24H0z" fill="none"/>
              <path d="M21 3H3c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H3V5h18v14zM8 15c0-1.66 1.34-3 3-3 .35 0 .69.07 1 .18V6h5v2h-3v7.03A3.003 3.003 0 0 1 11 18c-1.66 0-3-1.34-3-3z"/>
            </svg>
          </div>
          <h3 class="card-title">Écrans</h3>
          <p class="card-description">Moniteurs haute résolution pour le travail et le jeu</p>
          <a href="/2-accueil" class="card-link">Découvrir</a>
        </div>
        
        <!-- <div class="category-card">
          <div class="card-icon">
            <svg viewBox="0 0 24 24" width="48" height="48" fill="currentColor">
              <path d="M0 0h24v24H0z" fill="none"/>
              <path d="M15.5 1h-8C6.12 1 5 2.12 5 3.5v17C5 21.88 6.12 23 7.5 23h8c1.38 0 2.5-1.12 2.5-2.5v-17C18 2.12 16.88 1 15.5 1zm-4 21c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5zm4.5-4H7V4h9v14z"/>
            </svg>
          </div>
          <h3 class="card-title">Téléphones</h3>
          <p class="card-description">Smartphones et accessoires mobiles</p>
          <a href="/2-acceuil" class="card-link">Découvrir</a>
        </div> -->
      </div>
      
      <div class="cta-container">
        <a href="/2-accueil" class="btn-link">
          <button class="btn btn-primary" type="button">
            Voir tous nos produits
          </button> 
        </a>
      </div>
    </div>
  </div>
</div>

<style>
  #custom-text {
    background-color: transparent;
    padding: 3em 0;
  }
  
  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
  }
  
  .content-wrapper {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 40px;
    margin-bottom: 4rem;
  }
  
  .text-content {
    flex: 1;
  }
  
  .image-container {
    flex: 0 0 200px;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 30px;
  }
  
  .tech-icon {
    color: #4a5568;
    opacity: 0.7;
    transition: all 0.3s ease;
  }
  
  .tech-icon:hover {
    opacity: 1;
    transform: scale(1.05);
  }
  
  h2 {
    font-size: 2.5rem;
    margin-bottom: 1rem;
    color: #2d3748;
    position: relative;
    display: inline-block;
  }
  
  h2:after {
    content: '';
    position: absolute;
    bottom: -10px;
    left: 0;
    width: 60px;
    height: 3px;
    background-color: #4299e1;
  }
  
  .description {
    margin: 2.5em 0;
  }
  
  .lead {
    font-size: 1.2rem;
    margin-bottom: 1.5rem;
    color: #4a5568;
  }
  
  p {
    line-height: 1.6;
    margin-bottom: 1.2rem;
    color: #718096;
  }
  
  .cta-container {
    text-align: center;
    margin-top: 3rem;
  }
  
  .btn-link {
    text-decoration: none;
    display: inline-block;
  }
  
  .btn {
    padding: 12px 30px;
    border: none;
    border-radius: 4px;
    font-weight: 600;
    font-size: 1rem;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  }
  
  .btn-primary {
    background-color: var(--brand-color-secondary-light);
    color: white;
  }
  
  .btn-primary:hover {
    background-color: #3182ce;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.15);
  }
  
  /* Styles pour la section Catégories */
 
  .section-title {
    text-align: center;
    font-size: 2.2rem;
    margin-bottom: 1rem;
  }
  
  .section-title:after {
    left: 50%;
    transform: translateX(-50%);
  }
  
  .section-subtitle {
    text-align: center;
    font-size: 1.1rem;
    color: #718096;
    margin-bottom: 3rem;
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
  }
  
  .categories-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
    margin-bottom: 2rem;
  }
  
  .category-card {
    background: white;
    border-radius: 10px;
    padding: 2rem;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
    transition: all 0.3s ease;
    border: 1px solid #e2e8f0;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  
  .category-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
  }
  
  .card-icon {
    color:  var(--brand-color-secondary-light);
    margin-bottom: 1.5rem;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 80px;
    height: 80px;
    border-radius: 50%;
    background-color: #ebf8ff;
  }
  
  .card-title {
    font-size: 1.4rem;
    margin-bottom: 1rem;
    color: #2d3748;
  }
  
  .card-description {
    color: #718096;
    margin-bottom: 1.5rem;
    flex-grow: 1;
  }
  
  .card-link {
    display: inline-block;
    padding: 8px 20px;
    background-color: var(--brand-color-secondary-light);
    color: white;
    text-decoration: none;
    border-radius: 4px;
    font-weight: 500;
    transition: all 0.3s ease;
  }
  
  .card-link:hover {
    background-color: var(--brand-color-secondary-light);
    transform: translateY(-2px);
  }
  
  /* Responsive adjustments */
  @media (max-width: 768px) {
    .content-wrapper {
      flex-direction: column;
      text-align: center;
    }
    
    .image-container {
      flex-direction: row;
      justify-content: center;
      margin-top: 30px;
    }
    
    h2:after {
      left: 50%;
      transform: translateX(-50%);
    }
    
    .categories-grid {
      grid-template-columns: 1fr;
    }
  }
</style>