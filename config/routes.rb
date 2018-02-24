Rails.application.routes.draw do
  root 'leagues#index'
  resources :players
  resources :leagues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
