class IngredientsController < ApplicationController  
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new(ingredient_params)
      if @ingredient.save 
        redirect_to recipe_ingredient_path
      else
        redirect_to "/"
        flash[:alert] = "Zutat konnte nicht erstellt werden"
      end
  end

    private
  def ingredient_params
    params.require(:ingredient).permit(:name, :amount, :unit, :recipe_id)
  end
end