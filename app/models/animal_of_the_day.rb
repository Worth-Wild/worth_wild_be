class AnimalOfTheDay < ApplicationRecord
  validates :common_name, presence: true
  validates :element_code, presence: true
  validates :scientific_name, presence: true
  validates :date, presence: true

  def self.get_animal_of_the_day
    animal = AnimalOfTheDay.where(date: Date.today).first

    if !animal.present?
      animal = SearchAnimal.all.sample
      AnimalOfTheDay.create(
        element_code: animal.element_code,
        common_name: animal.common_name,
        scientific_name: animal.scientific_name,
        date: Date.today
      )
    end
    AnimalOfTheDay.last
  end
end
