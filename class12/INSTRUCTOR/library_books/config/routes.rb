Rails.application.routes.draw do

  root 'authors#index'

  resources :authors, except: [:edit, :update] do
    resources :books, except: :index
  end
  
end
