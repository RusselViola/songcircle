Rails.application.routes.draw do
  root "users#show"
  devise_for :users
  resources :users, only: [:show]
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
