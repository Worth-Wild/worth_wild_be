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
    it { should validate_presence_of(:states).allow_nil}

    it { should validate_presence_of(:habitats).allow_nil}
    # it { should allow_value(nil).for(:habitats) }

    it { should validate_presence_of(:habitat_comments).allow_nil}
    it { should validate_presence_of(:threat_impact_comments).allow_nil}
    it { should validate_presence_of(:short_term_trend).allow_nil}
    it { should validate_presence_of(:pop_size).allow_nil}
    it { should validate_presence_of(:image).allow_nil}

  end
end
