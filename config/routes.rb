Rails.application.routes.draw do
  resources :listings
  root to: 'visitors#index'

  devise_for :users, path: 'user'
  devise_for :subletters, path: 'subletter'
  resources :users
  resources :subletters

  get '/app/views/signup/index.html', to: 'signups#index'
  # get '/subletter/new', to: new_subletter_registration_path
  # devise_for :students, path: 's', controllers: { sessions: "students/sessions" }

  get "/browse", to: "listings#index", as: "browse"


end
