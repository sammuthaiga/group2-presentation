Rails.application.routes.draw do

  # get 'users/index'
  # get 'users/show'
  get "/sessions", to: "sessions#index"
  post "/login",to: "sessions#create"
  get "/me", to: "user#show"
  delete "/logout", to: "sessions#destroy"


  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
