class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def show
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
      render :new, status: :unprocessable_entity
    end
  end
  # def edit
  # end

  # def update
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   @restaurant.destroy
  #   redirect_to restaurants_path, status: :see_other
  # end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
