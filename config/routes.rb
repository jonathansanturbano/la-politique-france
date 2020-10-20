Rails.application.routes.draw do
  resources :personnalites, only: [:index, :show]
  resources :thematiques, only: [:index, :show]
  resources :partis, only: [:index, :show]
  root to: 'pages#home'
  get '/qui-sommes-nous', to: 'pages#about'
  get '/pour-aller-plus-loin', to: 'pages#info'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
