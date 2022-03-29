require 'rails_helper'

RSpec.describe 'User Path' do
  describe 'POST /users' do
    it 'creates a new user' do
      post '/api/v1/users', params: {first_name: 'Billy', last_name: 'Bob', username: 'billybob', email: 'billybob@example.com'}
      data = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(data).to be_a Hash
      expect(data[:data][:attributes][:first_name]).to eq 'Billy'
      expect(data[:data][:attributes][:last_name]).to eq 'Bob'
      expect(data[:data][:attributes][:username]).to eq 'billybob'
      expect(data[:data][:attributes][:email]).to eq 'billybob@example.com'
    end
  end

  describe 'GET /dashboard' do
    it "users dashboard" do
      user_1 = User.create(first_name: 'Billy', last_name: 'Bob', username: 'billybob', email: 'billybob@example.com')
      bear = Animal.create('common_name': 'american black bear',
      'scientific_name': 'Ursus americanus',
      'kingdom': 'Animalia',
      'phylum': 'Craniata',
      'taxclass': 'Mammalia',
      'taxorder': 'Carnivora',
      'family': 'Ursidae',
      'genus': 'Ursus',
      'biome': 'Terrestrial',
      'states': ['Alaska', 'Oregon', 'Washington', 'Manitoba'],
      'habitats': ['Woodland - Conifer', 'Woodland - Hardwood'],
      'habitat_comments': 'Black bears inhabit forests and nearby openings, including forested wetlands.',
      'threat_impact_comments': 'Locally threatened by habitat loss and interference by humans.',
      'short_term_trend': 'Populations have increased recently in the northeastern U.S.',
      'pop_size': '10,000 to >1,000,000 individuals',
      'image': 'example.com/black%20bear')
      user_animal = UserAnimal.create(user_id: user_1.id, animal_id: bear.id)
      get '/api/v1/dashboard', params: {username: 'billybob'}
      user = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(user[:data][:attributes][:first_name]).to eq 'Billy'
      expect(user[:data][:attributes][:last_name]).to eq 'Bob'
      expect(user[:data][:attributes][:animals][0][:common_name]).to eq 'american black bear'
    end

    describe 'Sad Paths' do
      it 'returns status code 400 if the email does not match a user' do
        get '/api/v1/dashboard', params: {email: 'billybob@example.com'}
        user = JSON.parse(response.body, symbolize_names: true)

        expect(response).to_not be_successful
        expect(response.status).to eq 400
      end
    end
  end
end
