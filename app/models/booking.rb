class Booking < ApplicationRecord
    has_many: reviews
    has_many: dogs
end
