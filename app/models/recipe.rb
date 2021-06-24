class Recipe  < ActiveRecord::Base
    has_many :recipe_ingredients, dependent: :destroy
    has_many :ingredients, through: :recipe_ingredients

    def self.recipes_and_ingredients
        array_of_recipes_and_ingredients = []
        all.map do |recipe|
            array_of_recipes_and_ingredients << {recipe.meal => [recipe, recipe.ingredients]}
            end
    end
end