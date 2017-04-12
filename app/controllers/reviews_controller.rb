class ReviewsController < ApplicationController

  def index

  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
  end


  def content
  end

  def rating
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
