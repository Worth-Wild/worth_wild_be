class Api::V1::DashboardController < ApplicationController
  def show
    user = User.find_by(username: params[:username])
    if user == nil
      render json: {error: 'Invalid User'}, status: 400
    else
      render json: UserSerializer.new(user), status: 200
    end
  end
end
