puts "destroying seeds"
Ingredient.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all

puts "creating seeds"
#produce
celery = Ingredient.create(name: "Celery", department: "Produce")
tomatoe = Ingredient.create(name: "Tomatoe", department: "Produce")
lettuce = Ingredient.create(name: "Lettuce", department: "Produce")
bellPepper = Ingredient.create(name: "Bell Pepper", department: "Produce")
apple = Ingredient.create(name: "apple", department: "Produce")
onion = Ingredient.create(name: "onion", department: "Produce")



#meats
chickenBreast = Ingredient.create(name: "chicken breast", department: "Meats")

#dairy
eggs = Ingredient.create(name: "eggs", department: "dairy")

#Grocery
rice = Ingredient.create(name: "rice", department: "Grocery")
dashi = Ingredient.create(name: "dashi", department: "Grocery")


oyakudon = Recipe.create(meal: "oyakudon", image_url:"https://www.seriouseats.com/thmb/RTxE60ABc7yW7RTo8jSITVJlfqY=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2016__08__20160802-oyakodon-4-a3b75ad6fb36491b9618372db8cf54d2.jpg")

# RecipeIngredient.create(ingredient: ingrdient, recipe: recipe)
#oyakudon
RecipeIngredient.create(ingredient: eggs, recipe: oyakudon)
RecipeIngredient.create(ingredient: onion, recipe: oyakudon)
RecipeIngredient.create(ingredient: chickenBreast, recipe: oyakudon)
RecipeIngredient.create(ingredient: rice, recipe: oyakudon)
RecipeIngredient.create(ingredient: dashi, recipe: oyakudon)

puts "Completed!"