class OrdersController < ApplicationController

  before_action :find_order, only: [:show, :edit, :update, :destroy] # используем before_action
  # для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод

  def order
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @order.update(user_params)
      redirect_to @order
    else
      render :edit
    end
  end

  private
  def find_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:value, :price)
  end

end