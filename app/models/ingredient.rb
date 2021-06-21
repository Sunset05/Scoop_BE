class Ingredient < ActiveRecord::Base
    has_many :meals, dependent: :destroy
    has_many :recipes, through: :meals
end