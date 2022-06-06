Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    # resources :things
    # resources :tacos
    # resources :cars

    get '/items', to: 'items#index'
    post '/items', to: 'items#create'

    get '/items/:id', to: "items#show"
    put '/items/:id', to: "items#update"

    delete '/items/:id', to:'items#destroy'

    get '/things', to:'things#index'
    get '/things/:id', to:'things#show'
    post '/things', to:'things#create'
    put 'things/:id', to:'things#update'
    delete 'things/:id', to:'things#destroy'

    # custom route
    get 'taco/:trucky/:yo', to:'things#frank'
  end
end
