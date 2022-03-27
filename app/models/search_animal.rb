class SearchAnimal < ApplicationRecord
  has_many :animals
  has_many :user_animals, through: :animals

  validates :element_code, presence: true
  validates :common_name, presence: true
end
