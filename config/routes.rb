Rails.application.routes.draw do
  resources :finances

  get "articles/new", to: "articles#new", as: "articles_new"
  get "users/signin", to: "users#signin"
  get "users/index", to: "users#index"
end
