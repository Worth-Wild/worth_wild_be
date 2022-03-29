require 'rails_helper'

RSpec.describe SearchAnimal, type: :model do
  describe 'relationships' do
    it { should have_many(:animals)}
    it { should have_many(:user_animals).through(:animals)}
  end

  describe 'validations' do
    it {should validate_presence_of(:element_code)}
    it {should validate_presence_of(:common_name)}
    it {should validate_presence_of(:scientific_name)}
  end

  describe 'class method' do
    describe '.find_animal' do
      before do
        SearchAnimal.destroy_all
        animal = SearchAnimal.create!(common_name: 'test', element_code: 'AA22', scientific_name: 'test')
        @animal2 = SearchAnimal.create!(common_name: 'wade', element_code: 'AB22', scientific_name: 'test')
        animal3 = SearchAnimal.create!(common_name: 'wade test', element_code: 'AC22', scientific_name: 'test')
      end

      context 'when animal is given' do
        it "returns multiple records belonging to animal" do
          expect(SearchAnimal.find_animal('wade').size).to eq(2)
        end

        it "returns record containing to the search" do
          expect(SearchAnimal.find_animal('wade').first).to eq(@animal2)
        end
      end
    end
  end
end
