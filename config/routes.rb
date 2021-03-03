Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :restaurants
  # get "restaurants", to: "restaurants#index" # All

  # get "restaurants/:id", to: "restaurants#show", as: :restaurant # One

  # get "restaurants/new", to: "restaurants#new" # new
  # post "restaurants", to: "restaurants#create" # create


    resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
  # get "reviews", to: "reviews#new" # new
  # post "reviews", to: "reviews#create" # create
end
