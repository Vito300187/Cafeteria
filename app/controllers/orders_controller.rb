class OrdersController < ApplicationController

  #before_action :find_order, only: [:show, :edit, :update, :destroy] # используем before_filter
# для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод
# find_order

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  # def update
  #   @order = Order.update_attributes(order_params)
  # end

  def destroy
  end

  private

  # def find_order
  #   @order = Order.find(params[:id])
  # end

  # def order_params
  #   params.require(:item).permit(:price, :value)
  # end

end