class AddDateToAnimalOfTheDay < ActiveRecord::Migration[5.2]
  def change
    add_column :animal_of_the_days, :date, :date
  end
end
