require 'json'

<<<<<<< HEAD
Review.destroy_all
Dog.destroy_all
User.destroy_all
Booking.destroy_all


User.create!(
    email: "blabla@gmail.com",            
    password: "123456"
)

User.create!(
    email: "tututu@gmail.com",            
    password: "1234567"
)

Dog.create!(
    name: "Gaspar",
    race: "Pitbull",
    location: "La Plage, 122 rue Solférino - Lille",
    user_id: User.first.id,
    age: 19,
    price: 13,
    description: "Cherche a se reproduire"
)

Dog.create!(
    name: "Covid",
    race: "Malinois",
    location: "57 Rue de Varenne, 75007 Paris",
    user_id: User.second.id,
    age: 7,
    price: 24,
    description: "Aime les personnes fragiles"
)

Booking.create!(
    user_id: User.first.id,
    dog_id: Dog.first.id,
    booking_date: Date.today
)

Booking.create!(
    user_id: User.second.id,
    dog_id: Dog.second.id,
    booking_date: Date.today
)

Review.create!(
    comment: "Belle bête",
    rating: 5,
    booking_id: Booking.first.id
)

Review.create!(
    comment: "N'aime pas rester confiné",
    rating: 2,
    booking_id: Booking.second.id
)
=======

require 'open-uri'
Review.destroy_all
Dog.destroy_all
User.destroy_all
Booking.destroy_all
user = User.create!(
    email: "bonjour@gmail.com",
    password: "azerty"
)
dog = Dog.create!(
    name: "Gaspar",
    race: "Pitbull",
    location: "Rue Massena",
    user: user,
    age: 19,
    price: 13.5,
    description: "Fou à lier"
)
booking = Booking.create!(
    user: user,
    dog: dog,
    check_in_date: Date.today
)
>>>>>>> b1d3846b51e552cde1b32228b20ecdadef5dec7b
Review.create!(
    comment: "Sympa",
    rating: 4,
    booking: booking
)