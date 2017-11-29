Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users, except: [:new, :create]
  end

  resources :users, except: [:destroy, :new, :create, :index]

  root 'welcome#index'
end
