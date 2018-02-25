Rails.application.routes.draw do
  devise_for :players
  resources :players
  resources :leagues
  resources :memberships
  resources :matches
  root 'leagues#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
