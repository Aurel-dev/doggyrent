class Booking < ApplicationRecord
    has_many: dogs
    belongs_to :review
end
