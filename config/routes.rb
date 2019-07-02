Rails.application.routes.draw do
  # Landing Page
  root 'home#index'

  # Film Page
  resources :films, only: [:show]
end
