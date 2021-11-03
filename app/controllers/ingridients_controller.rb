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
        redirect_to @recipe
      else
        redirect_to "/"
        flash[:alert] = "Rezept konnte nicht erstellt werden"
      end
  end