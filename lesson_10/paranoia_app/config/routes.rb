Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :laptops, only: [:index, :new, :create]
  resources :wares, only: [:index]

  root 'welcome#index'
end
