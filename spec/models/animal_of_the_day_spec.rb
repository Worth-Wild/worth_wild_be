require 'rails_helper'

RSpec.describe AnimalOfTheDay, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:common_name) }
    it { should validate_presence_of(:element_code) }
    it { should validate_presence_of(:scientific_name) }
  end

  describe '::get_animal_of_the_day' do
    it 'returns the animal of the day' do
      animal_of_the_day = AnimalOfTheDay.get_animal_of_the_day

      expect(animal_of_the_day).to be_a AnimalOfTheDay
      expect(animal_of_the_day.id).to be_an Integer
      expect(animal_of_the_day.element_code).to be_a String
      expect(animal_of_the_day.common_name).to be_an String
      expect(animal_of_the_day.scientific_name).to be_a String
    end
  end
end
