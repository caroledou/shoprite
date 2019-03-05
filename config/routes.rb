Rails.application.routes.draw do
  get 'deliveries/new'
  get 'deliveries/create'
  get 'deliveries/show'
  devise_for :users
  root to: 'pages#home'
  resources :recipes, only: [:index, :show]
  resources :orders, only: [:create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
