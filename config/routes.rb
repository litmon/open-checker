Rails.application.routes.draw do
  devise_for :users
  root 'key_locations#index'

  resources :key_locations, only: [:create, :update]
  resources :locations
end
