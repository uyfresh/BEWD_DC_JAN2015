Rails.application.routes.draw do
  root "authors#index"
  resources :authors, except: [:edit, :update]
  #says create seven of these except fot edit and update
end
