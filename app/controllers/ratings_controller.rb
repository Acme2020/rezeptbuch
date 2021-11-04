class RatingsController < ApplicationController
    def new
        @rating = Rating.new
    end

    def create
        @rating = Rating.new
        @rating.recipe_id = params[:id]
        @rating.save
    end

end