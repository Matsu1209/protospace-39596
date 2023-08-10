class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    @name = @user.name
    @profile = @user.profile
    @occupation = @user.occupation
    @position = @user.position
  end
end
