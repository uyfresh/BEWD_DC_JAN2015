Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, only: [:index, :show]
  resources :favorites, only: [:index, :create, :destroy]
end
