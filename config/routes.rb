Rails.application.routes.draw do
  
  resources :trips do
    resources :trip_events
  end

  root 'trips#index'
end