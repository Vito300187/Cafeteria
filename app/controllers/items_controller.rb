class ItemsController < ApplicationController

  # before_action :find_item, only: [:show, :edit, :update, :destroy] # используем before_filter
  # # для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод find_item

  def index
  end

  def show
    @item = Item.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # private
  #
  # def check_auth
  #   if session[user_id] != @item.user_id
  #     flash[:notice] = 'Извините, но вы не можете редактировать товары'
  #     redirect_to items_path
  #   end
  # end
  #
  # def find_item
  #   @item = Item.find(params[:id])
  # end
  #
  # private
  # def item_params
  #   params.require(:item).permit(:price, :description, :item, :image)
  # end

end