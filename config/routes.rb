Rails.application.routes.draw do
  resources :welcomes
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  resources :products
  devise_for :users
  resources :phones
  #resources :messages
  resources :order_items
  resource :carts, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  match '/messages', :to => 'messages#new', :via => [:get, :post]

  resources :users, only: [:index, :show, :edit, :update]
  
end
