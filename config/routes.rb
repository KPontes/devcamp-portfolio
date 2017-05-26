Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolios_show'

  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'

  # get 'pages/contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to:'pages#home'
end
