Rails.application.routes.draw do
  resources :users
  resources :tags

  post "/oauth", to: "oauth#oauth"

  root "users#index"
end
