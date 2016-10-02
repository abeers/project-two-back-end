class Ingredient < ActiveRecord::Base
  has_many :recipeingredients, dependent: :destroy
  has_many :recipes, through: :recipeingredients

  validates_uniqueness_of :name
end
