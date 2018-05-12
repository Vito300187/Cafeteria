class UsersController < ApplicationController

  def index
    @users = User.all
  end

  # def show
  #   @user = User.find(params[:id])
  # end
  #
  # def new
  #   @users = User.new
  # end
  #
  # def edit
  #   @users = User.create
  # end
  #
  # def create
  #   @users = User.new
  # end
  #
  # def update
  #   @users = User.update_attributes
  # end
  #
  # def destroy
  #   @users = User.destroy
  # end
end