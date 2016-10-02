class Recipe < ActiveRecord::Base
  has_many :recipeingredients, dependent: :destroy
  has_many :ingredients, through: :recipeingredients
  has_many :instructions, dependent: :destroy
  belongs_to :user
end
