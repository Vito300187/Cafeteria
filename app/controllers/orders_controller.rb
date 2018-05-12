class OrdersController < ApplicationController

  def index
    @orders = Orders.all
  end
  #
  def show
    @order =  'Привет Вито'
  end
  #
  # def new
  #   @order = Order.new
  # end
  #
  # def edit
  #   @order = Order.create
  # end
  #
  # def create
  #   @order = Order.new
  # end
  #
  # def update
  #   @order = User.update_attributes
  # end
  #
  # def destroy
  #   @order = Order.destroy
  # end
end