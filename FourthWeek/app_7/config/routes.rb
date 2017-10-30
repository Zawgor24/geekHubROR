Rails.application.routes.draw do
  resources :homeworks

  root 'homeworks#index'  
end
