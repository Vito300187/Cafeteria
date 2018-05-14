class ItemsController < ApplicationController

  before_action :check_auth, only: [:edit, :destroy, :update]
  before_filter :find_item, only: [:show, :edit, :update, :destroy] # используем before_filter
  # для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод find_item

  def index
    @items = Items.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(params[:item])
  end

  def edit
  end
  #
  def update
    @item.update_attributes(params[:item])
  end
  #
  def destroy
  end
  #
  private

  def check_auth
    if session[user_id] != @item.user_id
      flash[:notice] = 'Извините, но вы не можете редактировать товары'
      redirect_to items_path
    end
  end

  def check_if_admin
    render text: "Access denied", status: 403 unless params[:admin]
  end

  def find_item
    @item = Item.find(params[:id])
  end
end