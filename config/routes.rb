Rails.application.routes.draw do
  get 'avis_sous_thematiques/show'
  get 'avis_thematiques/show'
  get 'sous_thematiques/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :personnalites, only: [:index, :show]
  resources :partis, only: [:index, :show]
  resources :thematiques, only: [:index, :show] do
    resources :sous_thematiques, only: [:index, :show]
  end
  resources :avis_thematiques, only: [:show]
  resources :avis_sous_thematiques, only: [:show]
  root to: 'pages#home'
  get '/qui-sommes-nous', to: 'pages#about'
  get '/pour-aller-plus-loin', to: 'pages#info'
  get '/recherche', to: 'pages#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
