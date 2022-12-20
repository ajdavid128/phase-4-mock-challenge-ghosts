Rails.application.routes.draw do

  resources :hauntings, only: [:create]
  # resources :haunted_houses, only: [:index] 
  resources :ghosts, only: [:index, :show, :destroy]

  get '/haunted-houses', to: 'haunted_houses#index'
  post '/haunted-houses', to: 'haunted_houses#create'

end
