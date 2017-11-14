Rails.application.routes.draw do
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
