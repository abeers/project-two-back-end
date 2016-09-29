class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :units, :recipes
end
