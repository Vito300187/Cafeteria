# Контроллер должен показывать
# - Страницу пользователя
# - Создавать пользователя
# - Педактировать свою страницу

class UsersController < ApplicationController

 # before_action :find_user, only: [:show, :edit, :update, :destroy] # используем before_filter
  # для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод

  def index
    @users = User.all
  end

  def show
    @user = User.all
  end

  def new
    @users = User.new
  end

  def edit
    @users = User.create
  end
  #
  # def create
  #   @users = User.create(user_params)
  # end
  #
  # def update
  #   @users = User.update_attributes(user_params)
  # end
  #
  # def destroy
  #   @users = User.destroy
  # end
  #
  #
  # private
  # def find_user
  #   @user = User.find(params[:id])
  # end
  #
  # def user_params
  #   params.require(:item).permit(:email, :name)
  # end

end