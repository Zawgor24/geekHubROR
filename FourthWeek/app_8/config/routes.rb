Rails.application.routes.draw do
  resources :sportsmen

  root 'sportsmen#index' 
end
