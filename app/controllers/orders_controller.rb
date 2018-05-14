class OrdersController < ApplicationController

  before_filter :find_order, only: [:show, :edit, :update, :destroy] # используем before_filter
# для замены повторяющего метода и вынесения переменной экземпляра класса в одтельный метод
# find_order

  def index
    @orders = Orders.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.create(params[:order])
  end

  def update
    @order = Order.update_attributes(params[:order])
  end

  def destroy
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end

end