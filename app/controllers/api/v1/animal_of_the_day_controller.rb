class Api::V1::AnimalOfTheDayController < ApplicationController
  def index
    animal_of_the_day = AnimalOfTheDay.get_animal_of_the_day
    photo = PhotoFacade.animal_photo(animal_of_the_day.common_name)
    render json: AnimalOfTheDaySerializer.format_animal(photo, animal_of_the_day)
  end
end
