require 'json'


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
Review.create!(
    comment: "Sympa",
    rating: 4,
    booking: booking
)