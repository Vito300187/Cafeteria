class UsersController < ApplicationController
 before_action :find_user, only: [:show, :edit, :update, :destroy] # используем before_action
  # для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user, notice: 'Пользователь успешно создан'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Пользователь успешно обновлен'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
      redirect_to users_path, notice: "Пользователь успешно удален"
  end

 private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit( :name, :email, :password )
  end
end

