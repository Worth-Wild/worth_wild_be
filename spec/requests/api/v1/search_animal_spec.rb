require 'rails_helper'
require 'csv'
CSV.foreach('spec/fixtures/animals.csv', :headers => true) do |row|
  SearchAnimal.create!(row.to_hash)
end
RSpec.describe 'Search Animal' do

  # before do
  #   SearchAnimal.destroy_all
  #   animal = SearchAnimal.create!(common_name: 'test', element_code: 'AA22', scientific_name: 'test')
  #   @animal2 = SearchAnimal.create!(common_name: 'wade', element_code: 'AB22', scientific_name: 'test')
  #   animal3 = SearchAnimal.create!(common_name: 'wade test', element_code: 'AC22', scientific_name: 'test')
  # end

  it 'returns json' do
    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    get '/api/v1/search_animal', headers: headers, params: { search: "toad" }
    animal = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(animal).to be_a Hash

    one_animal = animal[:data].first

    expect(one_animal).to have_key(:id)
    expect(one_animal[:attributes]).to have_key(:common_name)
    expect(one_animal[:attributes]).to have_key(:element_code)
    expect(one_animal[:attributes]).to have_key(:scientific_name)

  end
  it "returns 404 with empty search field" do
    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    get '/api/v1/search_animal', headers: headers, params: { search: "" }
    animal = JSON.parse(response.body, symbolize_names: true)
    expect(response).to_not be_successful
    expect(response.status).to eq(404)
  end

  it "returns 404 with no results" do
    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    get '/api/v1/search_animal', headers: headers, params: { search: "bob" }
    animal = JSON.parse(response.body, symbolize_names: true)

    expect(response).to_not be_successful
    expect(response.status).to eq(404)
  end
end
