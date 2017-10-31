Rails.application.routes.draw do
  resources :smartphones

  root 'smartphones#index'
end
