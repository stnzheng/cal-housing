Rails.application.routes.draw do
  resources :listings
  devise_for :subletters, path: 'subletter'
  root to: 'visitors#index'
  devise_for :users, path: 'user'
  resources :users
end
