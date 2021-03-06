Rails.application.routes.draw do
  devise_for :users , path: '', path_names: {sign_in: 'login',  sign_out: 'logout', sign_up: 'register'}
  resources :portofolios, except: [:show]
  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'angular', to: 'portofolios#angular'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root 'pages#home'
end
