class IngredientsController < ProtectedController
  before_action :set_ingredient, only: [:show, :update, :destroy]

  # GET /ingredients
  # GET /ingredients.json
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  def search_for_recipe
    @ingredients = Ingredient.find_by search_params
    @recipes = @ingredients.recipes
    render json: @recipes
  end

  def find_or_create
    @ingredient = Ingredient.find_by search_params
    if @ingredient.nil?
      @ingredient = Ingredient.new(ingredient_params)
      @ingredient.save
    end
    render json: @ingredient
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
    render json: @ingredient
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient.destroy

    head :no_content
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def search_params
    params.require(:ingredient).permit(:name)
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :units)
  end
end
