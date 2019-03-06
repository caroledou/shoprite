Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :recipes, only: [:index, :show]
  resources :orders, only: [:create, :show] do
    resources :deliveries, only: [:new, :create]
    resources :payments, only: [:new, :create]
  end
  resources :deliveries, only: [:show]
  get "orders/:order_id/confirmed", to: "payments#order_confirmed", as: :order_confirmed
end
