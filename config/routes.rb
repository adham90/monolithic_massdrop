Rails.application.routes.draw do
  resources :locks
  resources :drops
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :products
  root to: 'visitors#index'
end
