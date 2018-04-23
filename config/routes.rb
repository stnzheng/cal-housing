Rails.application.routes.draw do
  devise_for :subletters, path: 'subletter'
  root to: 'visitors#index'
  devise_for :users, path: 'user'
  resources :users

  get "/browse", to: "listings#index", as: "browse"


end
