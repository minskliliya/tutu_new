Rails.application.routes.draw do
  resources :railway_stations
  resources :trains
  resources :routes
  resources :tickets
  resources :users

  root 'railway_stations#index'
end
