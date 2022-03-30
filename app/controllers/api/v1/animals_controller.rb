class Api::V1::AnimalsController < ApplicationController

  def index
    animals = SearchAnimal.all
    animal_hash = {'data': animals }
    render json: SearchAnimalSerializer.index(animal_hash), status: 200
  end

  def show
    incoming_animal = Animal.find_by(scientific_name: params[:scientific_name])
    if incoming_animal == nil
      animal = AnimalFacade.get_animal(params[:element_code])
      photo = PhotoFacade.animal_photo(params[:common_name])
      Animal.create(
        common_name:  animal.common_name,
        scientific_name:  animal.scientific_name,
        kingdom:  animal.kingdom,
        phylum:  animal.phylum,
        taxclass:  animal.taxclass,
        taxorder:  animal.taxorder,
        family:  animal.family,
        genus:  animal.genus,
        states:  animal.states,
        habitats:  animal.habitats,
        habitat_comments:  animal.habitat_comments,
        threat_impact_comments:  animal.threat_impact_comments,
        short_term_trend:  animal.short_term_trend,
        pop_size:  animal.pop_size,
        image:  photo.photo_url,
        host_url:  photo.host_url,
      )
      render json: AnimalSerializer.format_animal(animal, photo)
    else
      render json: incoming_animal
    end
  end
end
