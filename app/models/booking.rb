class Booking < ApplicationRecord
  has_many: dogs
  has_one: users
  belongs_to :review
end
