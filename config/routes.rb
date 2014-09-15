Rails.application.routes.draw do
  resources :listings

  resources :homes

  resources :cities
end
