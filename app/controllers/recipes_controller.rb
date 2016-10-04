class RecipesController < ProtectedController
  before_action :set_recipe, only: [:show]
  before_action :set_user_recipe, only: [:update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def myrecipes
    @recipes = current_user.recipes
    render json: @recipes
  end

  def search
    @recipes = Recipe.where(search_params)
    render json: @recipes
  end

  def random
    @recipe = Recipe.limit(1).order('RANDOM()')
    render json: @recipe
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    render json: @recipe
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    if @recipe.update(recipe_params)
      head :no_content
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy

    head :no_content
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def set_user_recipe
    @recipe = current_user.recipes.find(params[:id])
  end

  def search_params
    params.require(:recipe).permit(:name)
  end

  def recipe_params
    params.require(:recipe).permit(:name, :time)
  end
end
