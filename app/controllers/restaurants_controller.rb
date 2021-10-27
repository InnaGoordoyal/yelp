class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

 def create
    @restaurants = Restaurants.new(restaurant_params)
    if @restaurant.save

      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
 end

  def new
    @restaurant = Restaurant.new
  end

 def show
    @restaurant = Restaurant.find(params[:id])
   @review = Review.new
 end

 private

  def restaurant_params
    params.require(:Restaurant).permit(:name, :address, :phone_number, :category)
  end
end
