class Dog < ApplicationRecord
    belongs_to :user
    belongs_to :booking
end


# has_many :doses, dependent: :destroy
#   has_many :ingredients, through: :doses
#   has_many :reviews, dependent: :destroy
#   validates :name, presence: true, uniqueness: true
#   mount_uploader :photo, PhotoUploader
# end