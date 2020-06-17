# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

Booking.destroy_all
Booking.create!(
    user_id: "Maxence"
    booking_date: 18 11 2012
)

Dog.destroy_all
Dog.create(name: "Dalmatien")