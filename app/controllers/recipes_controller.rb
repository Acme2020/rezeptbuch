class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients.all
  end

  def new
    @recipe = Recipe.new
    @recipe.build_author
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      redirect_to '/'
      flash[:alert] = 'Rezept konnte nicht erstellt werden'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to '/'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :image, author_attributes: [:name])
  end
end
