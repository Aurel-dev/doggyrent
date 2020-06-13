class Review < ApplicationRecord
    belongs_to :booking
    belongs_to :user
    validates :comment, presence: true
    validates :rating, inclusion: { in: 0..5 }
end
