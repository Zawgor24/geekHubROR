Rails.application.routes.draw do

  devise_for :users
  
  resources :courses, shallow: true do
    resources :students do
      resources :projects
    end
    resources :homeworks
  end

  get '/admin' => 'admin/welcome#index'
  namespace :admin do
    resources :users
    resources :students
  end 
  
  root 'courses#index'
end
