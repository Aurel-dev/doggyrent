require 'json'

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
    location: "Lille",
    user_id: User.first.id,
    age: 19,
    price: 13,
    description: "Cherche a se reproduire"
)

Dog.create!(
    name: "Covid",
    race: "Malinois",
    location: "Paris",
    user_id: User.second.id,
    age: 7,
    price: 24,
    description: "Aime les personnes fragiles"
)

Dog.create!(
    name: "Kronenbourg",
    race: "Fox terrier",
    location: "Lille",
    user_id: User.second.id,
    age: 3,
    price: 6,
    description: "A souvent soif"
)

Dog.create!(
    name: "Hot",
    race: "Chihuahua",
    location: "Lille",
    user_id: User.second.id,
    age: 6,
    price: 32,
    description: "Dog de première qualité"
)

Dog.create!(
    name: "Bernard",
    race: "Saint-Bernard",
    location: "Paris",
    user_id: User.second.id,
    age: 11,
    price: 29,
    description: "Prend peu de place"
)

Dog.create!(
    name: "Moscou",
    race: "Husky",
    location: "Lille",
    user_id: User.second.id,
    age: 7,
    price: 24,
    description: "A horreur du froid"
)

Dog.create!(
    name: "Brian",
    race: "Caniche",
    location: "New York",
    user_id: User.second.id,
    age: 10,
    price: 12,
    description: "Sympa mais collant"
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
# Review.create!(
#     comment: "Sympa",
#     rating: 4,
#     # booking: booking,
# )