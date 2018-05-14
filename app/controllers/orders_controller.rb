class OrdersController < ApplicationController

  def index
    @orders = Orders.all
  end
  #
  # def show
  #   @order = User.find(params[:id])
  # end
  #
  # def new
  #   @order = Order.new
  # end
  #
  # def edit
  #   @order =
  # end
  #
  def create
    @order = Order.create(params[:order])
  end
  #
  # def update
  #   @order = User.update_attributes(params[:order])
  # end
  #
  # def destroy
  #   @order = Order.destroy
  # end
end