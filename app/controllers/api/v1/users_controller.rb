class Api::V1::UsersController < ApplicationController
  def index
  end

  def create
    user = User.create(user_params)
    render json: UserSerializer.new(user), status: 201
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :username)
  end
end
