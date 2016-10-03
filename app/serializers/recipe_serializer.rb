class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :instructions
  has_many :recipeingredients
end
