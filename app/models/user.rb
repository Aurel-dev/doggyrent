class User < ApplicationRecord
    has_many :dogs
    has_many :reviews


end
# class Dose < ApplicationRecord
#     belongs_to :cocktail
#     belongs_to :ingredient
#     validates :cocktail, uniqueness: { scope: :ingredient }
#   end