class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    id = params[:id]
    @restaurant = Restaurant.find(id)
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
end

private

def set_restaurant
  id = params[:id]
  @restaurant = Restaurant.find(id)
end

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end
