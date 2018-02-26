Rails.application.routes.draw do
  devise_for :players
  resources :players, only: [:show, :index, :edit, :update, :delete]
  resources :leagues, only: [:show, :index, :edit, :update, :delete]
  resources :memberships, only: [:show, :index, :edit, :update, :delete]
  resources :matches, only: [:show, :index, :edit, :update, :delete]
  root 'leagues#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
