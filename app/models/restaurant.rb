class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not a valid category" }
end



# validates_length_of :phone_number, in: 7..16, allow_blank: true
# class Pet < ApplicationRecord
#   SPECIES = ['turtle', 'cat', 'dog', 'licorn']

#   validates :name, presence: true
#   validates :species, inclusion: { in: SPECIES,
#     message: "%{value} is not a valid specie" }
# end
