class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :ingredients
end
