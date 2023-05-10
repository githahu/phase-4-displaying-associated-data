class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc).limit 3
    render json: reviews, include: :dog_house
  end

end
