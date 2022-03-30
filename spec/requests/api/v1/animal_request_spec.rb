require 'rails_helper'
require 'csv'
CSV.foreach('spec/fixtures/animals.csv', :headers => true) do |row|
  SearchAnimal.create!(row.to_hash)
end


RSpec.describe 'Animal Request' do
  describe 'GET /animals' do
    it 'returns all animals' do
      get '/api/v1/animals'
      animals = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(animals[:data][0][:attributes][:common_name]).to eq 'Wyoming Toad'
      expect(animals[:data][5][:attributes][:common_name]).to eq 'Dixie Valley Toad'
    end
  end

  describe 'GET /animals/:id' do
    it "returns a single animal's information" do
      get '/api/v1/animal/:id'
      animal = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
    end
  end 
end
