class ItemsController < ApplicationController

  before_action :get_item, only: [:edit, :destroy, :update]
  before_action :check_auth, only: [:edit, :destroy, :update]

  def get_item
    @item = Item.find(params[:id])
  end

  def check_auth
    if session[user_id] != @item.user_id
      flash[:notice] = 'Извините, но вы не можете редактировать товары'
      redirect_to items_path
    end
  end

  def index
    render text: "Item index"
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    render text: "Item new"
  end


  def create
    render text: "Item create"
  end

  def edit
  end

  def update
  end

  def destroy
  end
end