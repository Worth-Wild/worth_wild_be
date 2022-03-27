class CreateSearchAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :search_animals do |t|
      t.string :element_code
      t.string :common_name

      t.timestamps
    end
  end
end
