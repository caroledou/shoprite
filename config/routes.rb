Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :recipes, only: [:index, :show]
  resources :orders, only: [:create, :show] do
    resources :payments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
