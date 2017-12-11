Rails.application.routes.draw do
  # get '/auth/:provider/callback', to: 'omniauth#create'

  # resources :users do
  #   resources :messages
  # end

  # root 'welcome#index'

   get 'index_route', controller: 'welcome', action: 'index'
   get 'index_route', to: 'welcome#index', as: 'ok'
   get 'index/:some_param', to: 'welcome#index'

   resources :users do
     resource :profile
   end

   resources :tickets, except: [:index, :show] # only: %[index]
   
   resources :cards, only: [:index] do
    get 'some'

    get 'some', on: :member

    member do
      get 'card_member'
      get 'hello_member'
    end

    get 'some', on: :collection

    collection do
      get 'all_collection'
      get 'another_collection'
    end
   end

   namespace :admin do
     resources :users, only: :index
   end

   scope :admin do
     resources :welcome, only: :index
   end
end
