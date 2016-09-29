class RecipeingredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :recipe
  has_one :ingredient
end
