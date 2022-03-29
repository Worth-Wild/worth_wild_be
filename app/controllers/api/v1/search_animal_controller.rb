class Api::V1::SearchAnimalController < ApplicationController

  def index
    search = params[:search]
    if params[:search] == "" || SearchAnimal.find_animal(search).empty?
      render json: {error: "Bad Request"}, status: 404
    elsif params[:search]
      animal_result = SearchAnimal.find_animal(search)
      render json: SearchAnimalSerializer.new(animal_result)
    end
  end

end
