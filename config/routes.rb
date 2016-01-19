Rails.application.routes.draw do
  resources :users
  resources :tags

  root "users#index"
end
