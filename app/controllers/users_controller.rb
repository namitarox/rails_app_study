class UsersController < ApplicationController
  def create; end

  def show
    user = User.first
    render json: user, serializer: UserSerializer
  end
end
