class RecipeingredientsController < ProtectedController
  before_action :set_recipeingredient, only: [:show, :update, :destroy]

  # GET /recipeingredients
  # GET /recipeingredients.json
  def index
    @recipeingredients = Recipeingredient.all

    render json: @recipeingredients
  end

  # GET /recipeingredients/1
  # GET /recipeingredients/1.json
  def show
    render json: @recipeingredient
  end

  # POST /recipeingredients
  # POST /recipeingredients.json
  def create
    @recipeingredient = Recipeingredient.new(recipeingredient_params)

    if @recipeingredient.save
      render json: @recipeingredient, status: :created, location: @recipeingredient
    else
      render json: @recipeingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipeingredients/1
  # PATCH/PUT /recipeingredients/1.json
  def update
    if @recipeingredient.update(recipeingredient_params)
      head :no_content
    else
      render json: @recipeingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipeingredients/1
  # DELETE /recipeingredients/1.json
  def destroy
    @recipeingredient.destroy

    head :no_content
  end

  private

  def set_recipeingredient
    @recipeingredient = Recipeingredient.find(params[:id])
  end

  def recipeingredient_params
    params.require(:recipeingredient).permit(:quantity, :recipe_id, :ingredient_id)
  end
end
