require 'rails_helper'

RSpec.describe AnimalSerializer do
  it 'returns a json of animal data' do
    animal_data = File.read("spec/fixtures/animal_fixture.json").to_json
    photo_data = File.read("spec/fixtures/photo_fixture.json")
    animal_response = JSON.parse(animal_data, symbolize_names: true)
    require "pry"; binding.pry
    animal = AnimalSerializer.format_animal(animal_data[:data][:attributes], photo_data[:data][:attributes])
  end
end
