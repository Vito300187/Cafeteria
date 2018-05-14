class UsersController < ApplicationController

  before_filter :find_user, only: [:show, :edit, :update, :destroy] # используем before_filter
  # для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод

  def index
    @users = User.all
  end

  def show
  end

  def new
    @users = User.new
  end

  def edit
    @users = User.create
  end

  def create
    @users = User.create(params[:user])
  end

  def update
    @users = User.update_attributes(params[:user])
  end

  def destroy
    @users = User.destroy
  end


  private
  def find_user
    @user = User.find(params[:id])
  end

end