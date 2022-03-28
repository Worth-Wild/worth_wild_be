require 'rails_helper'

RSpec.describe UserAnimal, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:animal) }
  end
end
