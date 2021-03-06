class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
end

private

def set_review
  id = params[:id]
  @review = Review.find(id)
end

def review_params
  params.require(:review).permit(:content, :rating)
end
