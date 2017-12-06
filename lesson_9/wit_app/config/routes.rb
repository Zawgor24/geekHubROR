Rails.application.routes.draw do
  resources :pages

  post 'answer', to: 'pages#answer'
  get 'get_text', to: 'pages#get_text'
  root 'pages#get_text'
end
