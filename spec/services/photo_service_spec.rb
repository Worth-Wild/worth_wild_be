require 'rails_helper'

RSpec.describe PhotoService do
  describe '::get_animal_photo' do
    it 'returns the first image from search results of an animal' do
      search_term = "Moose"
      data = PhotoService.get_animal_photo(search_term)

      expect(data).to have_key(:data)
      expect(data).to be_a Hash

      expect(data[:data]).to have_key(:id)
      expect(data[:data][:id]).to be nil

      expect(data[:data]).to have_key(:type)
      expect(data[:data][:type]).to eq("photo")
      expect(data[:data][:type]).to be_a String

      expect(data[:data]).to have_key(:attributes)
      expect(data[:data][:attributes]).to be_a Hash

      expect(data[:data][:attributes]).to have_key(:photo_url)
      expect(data[:data][:attributes][:photo_url]).to be_a String

      expect(data[:data][:attributes]).to have_key(:host_url)
      expect(data[:data][:attributes][:host_url]).to be_a String
    end
  end
end
