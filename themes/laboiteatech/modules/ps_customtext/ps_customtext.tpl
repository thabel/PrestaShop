<div id="custom-text">
  <div class="container">
    <div class="content-wrapper">
      <div class="text-content">
        <h2>La Boîte à Tech</h2>
        <div class="description">
          <p class="lead"><strong class="dark">Votre boutique e-commerce de matériel informatique et digital</strong></p>
          <p>
            La Boîte à Tech est votre boutique en ligne de confiance pour tout ce qui touche à l'informatique et au matériel numérique. 
            Que vous recherchiez un ordinateur performant, une imprimante fiable, un écran ultra-net ou des accessoires innovants, 
            nous avons ce qu'il vous faut.
          </p>
          <p>
            Découvrez une large sélection de produits rigoureusement choisis pour leur qualité, leur performance et leur fiabilité. 
            Simplifiez vos achats tech avec une expérience fluide, des marques reconnues et un service client à votre écoute.
          </p>
        </div>
        <div class="cta-container">
          <a href="/nouveaux-produits" class="btn-link">
            <button class="btn btn-primary" type="button">
              Voir nos produits
            </button> 
          </a>
        </div>
      </div>
      <div class="image-container">
        <div class="tech-icon">
          <svg viewBox="0 0 24 24" width="80" height="80" fill="currentColor">
            <path d="M4 6H20V16H4z" opacity="0.3"/>
            <path d="M20 18H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2h16c1.1 0 2 .9 2 2v10c0 1.1-.9 2-2 2zM4 6v10h16V6H4z"/>
            <path d="M0 0h24v24H0z" fill="none"/>
          </svg>
        </div>
        <div class="tech-icon">
          <svg viewBox="0 0 24 24" width="80" height="80" fill="currentColor">
            <path d="M0 0h24v24H0z" fill="none"/>
            <path d="M21 5c-1.11-.35-2.33-.5-3.5-.5-1.95 0-4.05.4-5.5 1.5-1.45-1.1-3.55-1.5-5.5-1.5S2.45 4.9 1 6v14.65c0 .25.25.5.5.5.1 0 .15-.05.25-.05C3.1 20.45 5.05 20 6.5 20c1.95 0 4.05.4 5.5 1.5 1.35-.85 3.8-1.5 5.5-1.5 1.65 0 3.35.3 4.75 1.05.1.05.15.05.25.05.25 0 .5-.25.5-.5V6c-.6-.45-1.25-.75-2-1zm0 13.5c-1.1-.35-2.3-.5-3.5-.5-1.7 0-4.15.65-5.5 1.5V8c1.35-.85 3.8-1.5 5.5-1.5 1.2 0 2.4.15 3.5.5v11.5z"/>
          </svg>
        </div>
      </div>
    </div>
  </div>
</div>

<style>
  #custom-text {
    background-color: transparent;
    padding: 3em 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
    text-align: left;
    margin-top: 2rem;
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
    background-color: #4299e1;
    color: white;
  }
  
  .btn-primary:hover {
    background-color: #3182ce;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.15);
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
    
    .cta-container {
      text-align: center;
    }
  }
</style>