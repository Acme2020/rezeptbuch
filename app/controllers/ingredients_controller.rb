class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(name: params[:name], amount: params[:amount], unit: params[:unit], Recipe_id: params[:recipe_id])
    if @ingredient.save
      redirect_to Recipe.find(params[:recipe_id])
    else
      redirect_to '/'
      flash[:alert] = 'Zutat konnte nicht erstellt werden'
    end
  end
end
