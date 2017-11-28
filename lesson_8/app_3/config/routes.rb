Rails.application.routes.draw do
  devise_for :users

  namespace :admin do 
    resources :users
  end

  resources :users, only: [:show, :edit, :update] do
    resources :players, only: [:show, :new, :create, :destroy]
  end

  resources :players, only: [:index]
  
  root 'players#index'
end
