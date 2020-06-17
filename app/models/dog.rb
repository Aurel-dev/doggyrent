class Dog < ApplicationRecord
    belongs_to :user
    has_many :bookings, dependent: :destroy
    has_many :reviews, through: :bookings
    
    validates :race, presence :true
    validates :location, presence :true
    validates :user, presence :true
    validates :name, presence :true
    validates :age, presence :true
    validates :price, presence :true
    validates :description, presence :true

end
