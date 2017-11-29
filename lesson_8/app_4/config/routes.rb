Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users, except: [:create, :new]
  end

  resources :users, only: [:show, :update, :edit]

  root 'welcome#index'
end
