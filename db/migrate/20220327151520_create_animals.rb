class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :element_code
      t.string :common_name

      t.timestamps
    end
  end
end
