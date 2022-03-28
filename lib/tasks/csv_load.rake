namespace :csv_load do
  desc 'All'

  task all: [:create_search_animals] do
    ActiveRecord::Base.connection.tables.each do |t|
      ActiveRecord::Base.connection.reset_pk_sequence!(t)
    end
  end

  desc 'Create Search Animals'
  task create_search_animals: :environment do
    require 'csv'
    CSV.foreach('db/data/search_animals.csv', :headers => true) do |row|
      SearchAnimal.create!(row.to_hash)
    end
  end
end
