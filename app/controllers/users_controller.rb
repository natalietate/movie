class UsersController < ApplicationController
  def index
    @users = User.all
    @movielist = Movie.all
    @user = current_user
    @groups = Group.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
