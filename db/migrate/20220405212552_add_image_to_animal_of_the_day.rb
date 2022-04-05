class AddImageToAnimalOfTheDay < ActiveRecord::Migration[5.2]
  def change
    add_column :animal_of_the_days, :image, :string
  end
end
