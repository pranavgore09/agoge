Rails.application.routes.draw do
  resources :topics

  resources :users

  root 'home#index'
end
