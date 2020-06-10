class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    raise
    @review.restaurant_id = @restaurant.id
  end

  private

  def reviews_params
    params.require(:reviews).permit(:content, :rating, :restaurant_id)
  end
end
