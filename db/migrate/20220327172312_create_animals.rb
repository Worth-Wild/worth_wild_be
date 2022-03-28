class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.references :search_animal, foreign_key: true
      t.string :common_name
      t.string :scientific_name
      t.string :kingdom
      t.string :phylum
      t.string :taxclass
      t.string :taxorder
      t.string :family
      t.string :genus
      t.string :biome
      t.string :states
      t.string :habitats
      t.string :habitat_comments
      t.string :threat_impact_comments
      t.string :short_term_trend
      t.string :pop_size
      t.string :image

      t.timestamps
    end
  end
end
