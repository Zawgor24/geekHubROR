Rails.application.routes.draw do

  devise_for :users
  
  resources :courses, shallow: true do
    resources :students do
      resources :projects
    end
    resources :homeworks
  end
  
  root 'courses#index'
end
