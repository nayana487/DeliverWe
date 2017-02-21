class RestaurantsController < ApplicationController

  def index
    @orders = Order.all
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new_order
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end

  def create_order
    @restaurant = Restaurant.find(params[:id])
    @order = Order.create!(order_params)

    redirect_to "/"
  end

  def join_order
    @order = Order.find(params[:id])
    @patron = Patron.new
  end

  def create_patron
    @order = Order.find(params[:id])
    @patron = Patron.create!(patron_params)

    redirect_to "/"
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :logo_url, :menu_link, :delivery_fee)
  end

  def order_params
    params.require(:order).permit(:head_patron, :total_price, :tip, :restaurant_id)
  end

  def patron_params
    params.require(:patron).permit(:name, :personal_order, :personal_price, :order_id)
  end

end