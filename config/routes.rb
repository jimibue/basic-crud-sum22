Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    # resources :items
    # resources :tacos
    # resources :cars

    get '/items', to: 'items#index'
    get '/items/:id', to: "items#show"
  end
end
