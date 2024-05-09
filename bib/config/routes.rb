Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'



  # Routes pour Adhérents
  resources :adherents

  # Routes pour Documents
  resources :documents

  # Routes pour Matériels
  resources :materiels

  # Routes pour Emprunts
  resources :emprunts

  # Si vous avez une page d'accueil ou un contrôleur spécifique pour gérer la racine de l'application
  root 'home#index'  # Assurez-vous d'avoir un HomeController avec une action index
end
