class Animal < ApplicationRecord
  has_many :user_animals

  validates :common_name, presence: true
  validates :scientific_name, presence: true
  validates :kingdom, presence: true
  validates :phylum, presence: true
  validates :taxclass, presence: true
  validates :taxorder, presence: true
  validates :family, presence: true
  validates :genus, presence: true
  validates :states, presence: true, allow_nil: true
  validates :habitats, presence: true, allow_nil: true
  validates :habitat_comments, presence: true, allow_nil: true
  validates :threat_impact_comments, presence: true, allow_nil: true
  validates :short_term_trend, presence: true, allow_nil: true
  validates :pop_size, presence: true, allow_nil: true
  validates :image, presence: true, allow_nil: true
end
