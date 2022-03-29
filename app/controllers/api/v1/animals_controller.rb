class Api::V1::AnimalsController < ApplicationController

  def index
    animals = SearchAnimal.all
    animal_hash = {'data': animals }
    render json: SearchAnimalSerializer.index(animal_hash), status: 200
  end

  def show

  end
end
