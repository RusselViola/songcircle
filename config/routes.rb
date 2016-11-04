Rails.application.routes.draw do
  root "users#show"
  devise_for :users
  resources :users, only: [:show] do
    resources :circles, only: [:index, :new, :create]
  end

  resources :songs

  get "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
