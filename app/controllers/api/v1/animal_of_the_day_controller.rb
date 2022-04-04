class Api::V1::AnimalOfTheDayController < ApplicationController
  def index
    animal_of_the_day = AnimalOfTheDay.get_animal_of_the_day
    photo = PhotoFacade.animal_photo(animal_of_the_day.common_name)
    full_animal_data = AnimalFacade.get_animal(animal_of_the_day.element_code)
    render json: AnimalSerializer.format_animal(full_animal_data, photo)
  end
end
