Rails.application.routes.draw do
  get 'trips/index'
  get 'trips/new'

  resources :trips

  root 'trips#index'
end
