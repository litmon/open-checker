Rails.application.routes.draw do
  root 'key_locations#index'

  resources :key_locations, only: [:create, :update]
  resources :locations
end
