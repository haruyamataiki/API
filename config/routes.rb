Rails.application.routes.draw do
  get 'shops/index'
  get 'users/index'
  devise_for :users
  # get 'home/index'
  root to: "home#index"
  resources :shops
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
