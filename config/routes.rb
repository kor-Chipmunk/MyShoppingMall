Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :posts
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"
end
