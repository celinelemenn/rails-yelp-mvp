class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show]
  before_action :all_rest, only: [:index, :show, :new]

  def index
  end

  def show
    @reviews = Review.where(restaurant_id: @restaurant.id)
    @review = Review.new
    @restaurant = Restaurant.find(params[:id])
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

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def all_rest
    @restaurants = Restaurant.all
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
