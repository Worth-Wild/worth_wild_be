class SearchAnimal < ApplicationRecord
  has_many :animals
  has_many :user_animals, through: :animals

  validates :element_code, presence: true
  validates :common_name, presence: true

  def self.find_animal(search)
    where("common_name ILIKE ?", "%#{search}%")
  end
end
