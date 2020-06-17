# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

Review.destroy_all
Dog.destroy_all
User.destroy_all
Booking.destroy_all


User.create!(
    email: "blabla@gmail.com",            
    password: "123456"
)


Dog.create!(
    name: "Gaspar",
    race: "Pitbull",
    location: "Rue Massena",
    user_id: User.first.id,
    age: 19,
    price: 13.5,
    description: "Cherche a se reproduire"
)

Booking.create!(
    user_id: User.first.id,
    dog_id: Dog.first.id,
    booking_date: Date.today
)

Review.create!(
    comment: "Sympa",
    rating: 4,
    booking_id: Booking.first.id
)
