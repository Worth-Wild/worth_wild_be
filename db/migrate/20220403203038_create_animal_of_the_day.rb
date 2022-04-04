class CreateAnimalOfTheDay < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_of_the_days do |t|
      t.string :element_code
      t.string :common_name
      t.string :scientific_name

      t.timestamps
    end
  end
end
