Rails.application.routes.draw do
  # Landing Page
  root 'home#index'

  get 'favorite_films', to: 'home#favorite_films'

  # Film Page
  resources :films, only: [:show]
end
