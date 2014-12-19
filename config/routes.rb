Rails.application.routes.draw do
  devise_for :users
  resources :topics

  resources :users

  root 'home#index'
end
