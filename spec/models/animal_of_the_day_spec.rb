require 'rails_helper'

RSpec.describe AnimalOfTheDay, type: :model do
  describe 'validations' do
    it { should validate_uniqueness_of(:created_at) }
  end

  describe '::get_animal_of_the_day' do
    it 'returns the animal of the day' do
      animal_of_the_day = AnimalOfTheDay.get_animal_of_the_day
      require 'pry'; binding.pry
    end
  end
end
