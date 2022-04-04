class Api::V1::FavoritesController < ApplicationController

  def create
    animal = Animal.find_by(id: params[:animal_id])
    user = User.find_by(id: params[:user_id])
    user_animal = UserAnimal.find_or_create_by(user: user, animal: animal)
    render json: UserSerializer.new(user)
  end

end
