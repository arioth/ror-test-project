Rails.application.routes.draw do

  devise_for :users
  root to: 'dashboard#index'
  put '/update_profile', to: 'dashboard#update_profile'
  resources :users, only: [:show]

end
