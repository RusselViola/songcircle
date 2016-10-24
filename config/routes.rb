Rails.application.routes.draw do
  root "users#show"
  devise_for :users
  resources :users, only: [:show]
  resources :songs, only: [:index, :show, :new, :create]
  resources :circles, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '*path', via: [:options], to:  lambda {|_| [204, {'Content-Type' => 'text/plain'}, []]}
end
