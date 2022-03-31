require 'rails_helper'

RSpec.describe Animal, type: :model do
  describe 'relationships' do
    it {should have_many(:user_animals)}
  end

  describe 'validations' do
    it { should validate_presence_of(:common_name)}
    it { should validate_presence_of(:scientific_name)}
    it { should validate_presence_of(:kingdom)}
    it { should validate_presence_of(:phylum)}
    it { should validate_presence_of(:taxclass)}
    it { should validate_presence_of(:taxorder)}
    it { should validate_presence_of(:family)}
    it { should validate_presence_of(:states)}
    it { should validate_presence_of(:habitats)}
    it { should validate_presence_of(:habitat_comments)}
    it { should validate_presence_of(:threat_impact_comments)}
    it { should validate_presence_of(:short_term_trend)}
    it { should validate_presence_of(:pop_size)}
    it { should validate_presence_of(:image)}

  end
end
