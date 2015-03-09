Rails.application.routes.draw do
  root "movies#index"
  resources :movies, except: [:edit] do
    resources :trailers, except: :index
end
