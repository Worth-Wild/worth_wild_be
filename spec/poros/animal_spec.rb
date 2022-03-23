require 'rails_helper'

RSpec.describe Animal do
  describe 'animal' do
    it 'exists' do
      animal = Animal.new
      expect(animal).to be_an Animal
    end
  end
end
