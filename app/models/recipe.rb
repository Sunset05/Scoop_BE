class Recipe  < ActiveRecord::Base
    has_many :meals, dependent: :destroy
    has_many :ingredients, through: :meals
end