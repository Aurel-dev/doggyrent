Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/bookings", to: "bookings#create"
  delete "/bookings/:id", to: "bookings#destroy", as: :delete
  post "/bookings/:id/review", to: "reviews#create"
  get "/bookings/:id/edit", to:"bookings#edit", as: :edit
  get "/bookings", to: "bookings#index"

  get "/dogs", to: "dogs#index"
  get "/dogs/:id", to:"dogs#show", as: :show
  get "/dogs/:id/edit", to:"dogs#edit", as: :edit
  get "/dogs/new", to: "dogs#new"
  post "/dogs", to: "dogs#create"
  delete "/dogs/:id", to: "dogs#destroy", as: :delete
  patch "/dogs/id:", to: "dogs#update", as: :dogs #a verif

  post "/device", to: "//#update", as: :/ # a verif


end
