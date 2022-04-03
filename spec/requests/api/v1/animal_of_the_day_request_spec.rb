require 'rails_helper'

RSpec.describe 'Animal of the Day Endpoint' do
  describe 'GET /animal_of_the_day' do
    it 'returns a random animal as the animal of the day' do
      get '/api/v1/animal_of_the_day'
      # require 'pry'; binding.pry
      data = JSON.parse(response.body, symbolize_names: true)

      expect(data).to be_a Hash
      expect(data).to have_key(:attributes)
      expect(data[:attributes]).to be_a Hash

      expect(data[:attributes]).to have_key(:common_name)
      expect(data[:attributes][:common_name]).to be_a String

      expect(data[:attributes]).to have_key(:scientific_name)
      expect(data[:attributes][:scientific_name]).to be_a String

      expect(data[:attributes]).to have_key(:kingdom)
      expect(data[:attributes][:kingdom]).to be_a String

      expect(data[:attributes]).to have_key(:phylum)
      expect(data[:attributes][:phylum]).to be_a String

      expect(data[:attributes]).to have_key(:taxclass)
      expect(data[:attributes][:taxclass]).to be_a String

      expect(data[:attributes]).to have_key(:family)
      expect(data[:attributes][:family]).to be_a String

      expect(data[:attributes]).to have_key(:genus)
      expect(data[:attributes][:genus]).to be_a String

      expect(data[:attributes]).to have_key(:region)
      expect(data[:attributes][:region]).to be_a Hash

      expect(data[:attributes]).to have_key(:vulnerability)
      expect(data[:attributes][:vulnerability]).to be_a Hash

      expect(data[:attributes]).to have_key(:habitats)
      expect(data[:attributes][:habitats]).to be_a String

      expect(data[:attributes]).to have_key(:habitatComments)
      expect(data[:attributes][:habitatComments]).to be_a String

      expect(data[:attributes]).to have_key(:threatImpactComments)
      expect(data[:attributes][:threatImpactComments]).to be_a String or nil

      expect(data[:attributes]).to have_key(:shortTermTrend)
      expect(data[:attributes][:shortTermTrend]).to be_a String or nil

      expect(data[:attributes]).to have_key(:popSize)
      expect(data[:attributes][:popSize]).to be_a String

      expect(data[:attributes]).to have_key(:imageUrl)
      expect(data[:attributes][:imageUrl]).to be_a String

      expect(data[:attributes]).to have_key(:hostUrl)
      expect(data[:attributes][:hostUrl]).to be_a String
    end
  end
end
