require 'rails_helper'

RSpec.describe 'favorites Path' do
  describe 'POST /favorites' do
    it 'creates a new useranimal' do

      user_1 = User.create(first_name: 'Billy', last_name: 'Bob', username: 'billybob', email: 'billybob@example.com')
      bear = Animal.create('common_name': 'american black bear',
      'scientific_name': 'Ursus americanus',
      'kingdom': 'Animalia',
      'phylum': 'Craniata',
      'taxclass': 'Mammalia',
      'taxorder': 'Carnivora',
      'family': 'Ursidae',
      'genus': 'Ursus',
      'states': ['Alaska', 'Oregon', 'Washington', 'Manitoba'],
      'habitats': ['Woodland - Conifer', 'Woodland - Hardwood'],
      'habitat_comments': 'Black bears inhabit forests and nearby openings, including forested wetlands.',
      'threat_impact_comments': 'Locally threatened by habitat loss and interference by humans.',
      'short_term_trend': 'Populations have increased recently in the northeastern U.S.',
      'pop_size': '10,000 to >1,000,000 individuals',
      'image': 'example.com/black%20bear')
      user_animal = UserAnimal.create(user: user_1, animal: bear)


      post '/api/v1/favorites', params: {user_id: user_animal.user.id, animal_id: user_animal.animal.id}
      data = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(data).to be_a Hash
      expect(data[:data][:attributes][:first_name]).to eq 'Billy'
      expect(data[:data][:attributes][:last_name]).to eq 'Bob'
      expect(data[:data][:attributes][:username]).to eq 'billybob'
      expect(data[:data][:attributes][:email]).to eq 'billybob@example.com'

      animal = data[:data][:attributes][:animals].first

      expect(animal[:common_name]).to eq(bear.common_name)
      expect(animal[:scientific_name]).to eq(bear.scientific_name)
      expect(animal[:kingdom]).to eq(bear.kingdom)
      expect(animal[:phylum]).to eq(bear.phylum)
      expect(animal[:taxclass]).to eq(bear.taxclass)
      expect(animal[:taxorder]).to eq(bear.taxorder)
      expect(animal[:family]).to eq(bear.family)
      expect(animal[:genus]).to eq(bear.genus)
      expect(animal[:states]).to eq(bear.states)
      expect(animal[:habitats]).to eq(bear.habitats)
      expect(animal[:habitat_comments]).to eq(bear.habitat_comments)
      expect(animal[:threat_impact_comments]).to eq(bear.threat_impact_comments)
      expect(animal[:short_term_trend]).to eq(bear.short_term_trend)
      expect(animal[:pop_size]).to eq(bear.pop_size)
      expect(animal[:image]).to eq(bear.image)
    end
  end

  it "returns 404 with incorrect user id" do
    user_1 = User.create(first_name: 'Billy', last_name: 'Bob', username: 'billybob', email: 'billybob@example.com')
    bear = Animal.create('common_name': 'american black bear',
    'scientific_name': 'Ursus americanus',
    'kingdom': 'Animalia',
    'phylum': 'Craniata',
    'taxclass': 'Mammalia',
    'taxorder': 'Carnivora',
    'family': 'Ursidae',
    'genus': 'Ursus',
    'states': ['Alaska', 'Oregon', 'Washington', 'Manitoba'],
    'habitats': ['Woodland - Conifer', 'Woodland - Hardwood'],
    'habitat_comments': 'Black bears inhabit forests and nearby openings, including forested wetlands.',
    'threat_impact_comments': 'Locally threatened by habitat loss and interference by humans.',
    'short_term_trend': 'Populations have increased recently in the northeastern U.S.',
    'pop_size': '10,000 to >1,000,000 individuals',
    'image': 'example.com/black%20bear')
    user_animal = UserAnimal.create(user: user_1, animal: bear)


    post '/api/v1/favorites', params: {animal_id: user_animal.animal.id}
    animal = JSON.parse(response.body, symbolize_names: true)
    expect(response).to_not be_successful
    expect(response.status).to eq(404)
  end

  it "returns 404 with incorrect animal id" do
    user_1 = User.create(first_name: 'Billy', last_name: 'Bob', username: 'billybob', email: 'billybob@example.com')
    bear = Animal.create('common_name': 'american black bear',
    'scientific_name': 'Ursus americanus',
    'kingdom': 'Animalia',
    'phylum': 'Craniata',
    'taxclass': 'Mammalia',
    'taxorder': 'Carnivora',
    'family': 'Ursidae',
    'genus': 'Ursus',
    'states': ['Alaska', 'Oregon', 'Washington', 'Manitoba'],
    'habitats': ['Woodland - Conifer', 'Woodland - Hardwood'],
    'habitat_comments': 'Black bears inhabit forests and nearby openings, including forested wetlands.',
    'threat_impact_comments': 'Locally threatened by habitat loss and interference by humans.',
    'short_term_trend': 'Populations have increased recently in the northeastern U.S.',
    'pop_size': '10,000 to >1,000,000 individuals',
    'image': 'example.com/black%20bear')
    user_animal = UserAnimal.create(user: user_1, animal: bear)


    post '/api/v1/favorites', params: {user_id: user_animal.user.id}
    animal = JSON.parse(response.body, symbolize_names: true)
    expect(response).to_not be_successful
    expect(response.status).to eq(404)
  end
end
