Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/reviews", to: "reviews#new"
  post "/reviews", to: "reviews#new"


  get "/reviews", to: "reviews#new"
  post "/reviews", to: "reviews#new"


  get "/bookings", to: "bookings#index", as: :bookings
  get "/dogs/annonces", to: "dogs#annonces", as: :new
  post "/bookings", to: "bookings#create", as: :create
  post "/bookings/:id/review", to: "reviews#create", as: :booking_reviews
  get "/bookings/:booking_id/reviews/new", to: "reviews#new" , as: :new_review
  get "/bookings/:booking_id/edit", to: "bookings#edit" , as: :edit_booking
  delete "/bookings/:booking_id/delete", to: "bookings#destroy",  as: :delete_booking
  resources :dogs do 
     resources :bookings, only: [:new, :create]
  end
end
