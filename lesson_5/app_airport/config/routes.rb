Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  default_url_options :host => "localhost:3000"
  devise_for :users

  resources :cities, only: [:index]do
    resources :planes, shallow: true, only: [:show, :index, :new, :create] do
      resources :flights do
        resources :tickets, shallow: true
      end
    end
  end

  root 'cities#index'
end
