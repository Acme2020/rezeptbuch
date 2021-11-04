class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating: params[:rating], recipe_id: params[:recipe_id])
    @rating.save
    redirect_to Recipe.find(params[:recipe_id])
  end
end
