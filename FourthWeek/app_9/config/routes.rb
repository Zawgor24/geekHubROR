Rails.application.routes.draw do
  resources :directories

  root 'directories#index'
end
