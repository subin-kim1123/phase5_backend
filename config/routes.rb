Rails.application.routes.draw do
  resources :my_articles
  resources :articles
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
