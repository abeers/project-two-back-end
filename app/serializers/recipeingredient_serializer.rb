class RecipeingredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :ingredient
  has_one :recipe
  has_one :ingredient
end
