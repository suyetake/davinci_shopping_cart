Rails.application.routes.draw do
  resources :carts
  resources :products
  resources :line_items, only: [:create]

  root 'store#index'
end
