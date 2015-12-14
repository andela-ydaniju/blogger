Rails.application.routes.draw do
  resources :finances

  root to: "articles#index"
  get "articles/new"
  get "users/signin"
  get "users/index"
end
