Rails.application.routes.draw do
  get 'singup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :planes, only: [:index]
  resources :sessions, :users,  only: [:index, :new, :create]

  resources :flights, only: [:index] do
    resources :tickets
  end

  root 'flights#index'
end
