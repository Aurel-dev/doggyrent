Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/bookings", to: "bookings#create"
  post "/bookings/:id/review", to: "reviews#create"
  get "/bookings/:id/edit", to:"bookings#edit"
  delete "/bookings/:id", to: "bookings#destroy"

  get "/dogs", to: "dogs#index"
  get "/dogs/:id", to: "dogs#show"
  get "/dogs/:id/edit", to: "dogs#edit"
  get "/dogs/new", to: "dogs#new"
  post "/dogs", to: "dogs#create"
  delete "/dogs/:id", to: "dogs#destroy"
  patch "/dogs/id:", to: "dogs#update"


end
