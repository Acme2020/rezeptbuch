class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end


    def show
    @recipe = Recipe.find(params[:id])
  end


    def new
        @recipe = Recipe.new
    end

    def create

        @recipe = Recipe.new(recipe_params)

        if @recipe.save 

        else

          flash[:alert] = "Rezept konnte nicht erstellt werden." 
          render :action => 'new'

        end

    end

end