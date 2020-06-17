class Review < ApplicationRecord

    belongs_to :booking

    validates :booking, presence: true
    validates :comment, presence: true
    validates :rating, presence: true

  belongs_to :booking

end
