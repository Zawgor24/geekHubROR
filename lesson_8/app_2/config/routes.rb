Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users, only: [:index, :destroy, :show, :update, :edit]
  end

  resources :users, except: [:index, :destroy, :new, :create]

  root 'welcome#index'
end
