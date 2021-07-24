Rails.application.routes.draw do
  post '/login', to: "users#login"
  get '/me', to: "users#me"
  post '/users', to: "users#create"
  post '/my_articles', to: "my_articles#create"
  get '/categories', to: "categories#index"
  get '/categories/:id', to: "categories#show"
  get '/articles', to: "articles#index"
  get '/articles/:id', to: "articles#show"
  get '/my_articles', to: "my_articles#index"
  delete "/users/:id", to: "users#destroy"
  delete '/my_articles/:id', to: "my_articles#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
