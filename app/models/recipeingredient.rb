class Recipeingredient < ActiveRecord::Base
  belongs_to :recipe, inverse_of: :recipeingredients
  belongs_to :ingredient, inverse_of: :recipeingredients
end
