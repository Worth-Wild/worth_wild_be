class Api::V1::FavoritesController < ApplicationController

  def create
    animal = Animal.find_by(id: params[:animal_id])
    user = User.find_by(id: params[:user_id])
    if animal.nil? || user.nil?
      render json: {error: "Bad Request"}, status: 404
    else
      user_animal = UserAnimal.find_or_create_by(user: user, animal: animal)
      render json: UserSerializer.new(user)
    end
  end

end
