require 'rails_helper'

RSpec.describe 'Animal of the Day Endpoint' do
  describe 'GET /animal_of_the_day' do
    it 'returns a random animal as the animal of the day' do
      get '/api/v1/animal_of_the_day'

      data = JSON.parse(response.body, symbolize_names: true)
      expect(data).to be_a Hash
      expect(data[:data]).to have_key(:attributes)
      expect(data[:data][:attributes]).to be_a Hash

      expect(data[:data][:attributes]).to have_key(:common_name)
      expect(data[:data][:attributes][:common_name]).to be_a String

      expect(data[:data][:attributes]).to have_key(:element_code)
      expect(data[:data][:attributes][:element_code]).to be_a String

      expect(data[:data][:attributes]).to have_key(:scientific_name)
      expect(data[:data][:attributes][:scientific_name]).to be_a String

      expect(data[:data][:attributes]).to have_key(:imageUrl)
      expect(data[:data][:attributes][:imageUrl]).to be_a String

    end
  end
end
