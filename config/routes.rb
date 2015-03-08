Rails.application.routes.draw do
  root 'key_locations#index'

  resources :key_location, only: [:create, :destroy]
end
