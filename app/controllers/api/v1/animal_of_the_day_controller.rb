class Api::V1::AnimalOfTheDayController < ApplicationController
  def index
    animal_of_the_day = AnimalOfTheDay.get_animal_of_the_day
    render json: AnimalOfTheDaySerializer.format_animal(animal_of_the_day)
  end
end
