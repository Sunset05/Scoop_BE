puts "destroying seeds"
Ingredient.destroy_all
Meal.destroy_all
Recipe.destroy_all

puts "creating seeds"

ingredient = Ingredient.create(name: "Celery")

recipe = Recipe.create(name: "celery soup", image_url: "future url")

Meal.create(name: "celery soup", ingredient: ingredient, recipe: recipe)


puts "Completed!"