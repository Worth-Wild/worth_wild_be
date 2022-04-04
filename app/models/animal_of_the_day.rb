class AnimalOfTheDay < ApplicationRecord
  validates :common_name, presence: true
  validates :element_code, presence: true
  validates :scientific_name, presence: true

  def self.get_animal_of_the_day
    animal = AnimalOfTheDay.where(created_at: Date.today)

    if !animal.present?
      animal = SearchAnimal.all.sample
    end
    new_animal_of_the_day = AnimalOfTheDay.create(animal.attributes)
  end
end
