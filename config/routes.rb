Rails.application.routes.draw do
  
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolios_show'

  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'
  get 'tech-news', to:'pages#tech_news'
  get 'tech-news/:_search', to:'pages#tech_news'

  # get 'pages/contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  mount ActionCable.server => '/cable'

  root to: 'pages#home'
end
