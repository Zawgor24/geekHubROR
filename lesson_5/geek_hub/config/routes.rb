Rails.application.routes.draw do
  resources :courses do
    resources :students
  end
  
  root 'courses#index'
end
