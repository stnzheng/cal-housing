Rails.application.routes.draw do
  resources :listings
  root to: "visitors#index"

  devise_for :users, path: 'user'
  devise_for :subletters, path: 'subletter'
  resources :users
  resources :subletters

  get "/app/views/signup/index.html", to: "signups#index"

  get "/subletter/:id", to: "subletters#show", as: "subletter_show"

  get "/user/:id", to: "users#show", as: "user_show"

  get "/browse", to: "listings#browse", as: "browse"
  get "/browse/subletters", to: "subletters#index", as: "browse_subletters"


end
