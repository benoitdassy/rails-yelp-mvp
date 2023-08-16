class ReviewsController < ApplicationController

  def index
    @review = Review.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
end
