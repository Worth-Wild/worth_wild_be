class AddScientificNameToSearchAnimal < ActiveRecord::Migration[5.2]
  def change
    add_column :search_animals, :scientific_name, :string
  end
end
