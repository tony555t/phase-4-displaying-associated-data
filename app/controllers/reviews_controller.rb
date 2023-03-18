class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc)
    render json: dog_house, include: :reviews
  end

end
