class AddHostUrlToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :host_url, :string
  end
end
