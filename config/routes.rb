Rails.application.routes.draw do

  get "users/signin", to: "users#signin"
  get "users/index", to: "users#index"
end
