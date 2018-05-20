class ItemsController < ApplicationController
  before_action :authenticate_user!, except: :show
  before_action :find_item, only: [:show, :edit, :update, :destroy] # используем before_action
  # для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, success: 'Товар успешно создан!'
    else
      flash.now[:danger] = 'Пользователь не создан'
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to @item
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    if @item.destroy
      redirect_to items_path
    else
      render :show
    end
  end

  private
  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:price, :item, :image)
  end
end