require 'rails_helper'

RSpec.describe SearchAnimal, type: :model do
  describe 'relationships' do
    it { should have_many(:animals)}
    it { should have_many(:user_animals).through(:animals)}
  end

  describe 'validations' do
    it {should validate_presence_of(:element_code)}
    it {should validate_presence_of(:common_name)}
  end
end
