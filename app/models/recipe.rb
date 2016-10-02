class Recipe < ActiveRecord::Base
  has_many :recipeingredients, dependent: :destroy
  has_many :ingredients, through: :recipeingredients
  belongs_to :user
end
