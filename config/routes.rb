Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'dashboard#index'
  put '/update_profile', to: 'dashboard#update_profile'
  resources :users, only: [:show] do
    collection do
      get 'search'
    end
  end

end
