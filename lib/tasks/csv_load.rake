namespace :csv_load do
  desc 'All'

  task all: [:create_animals] do
    ActiveRecord::Base.connection.tables.each do |t|
      ActiveRecord::Base.connection.reset_pk_sequence!(t)
    end
  end

  desc 'Create Animals'
  task create_animals: :environment do
    require 'csv'
    CSV.foreach('db/data/animals.csv', :headers => true) do |row|
      Animal.create!(row.to_hash)
    end
  end
end
