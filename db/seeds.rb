puts "destroying seeds"
Ingredient.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all

puts "creating seeds"
#produce
celery = Ingredient.create(name: "Celery", department: "Produce")
tomatoe = Ingredient.create(name: "Tomatoe", department: "Produce")
lettuce = Ingredient.create(name: "Lettuce", department: "Produce")
bell_pepper = Ingredient.create(name: "Bell Pepper", department: "Produce")
apple = Ingredient.create(name: "apple", department: "Produce")
onion = Ingredient.create(name: "onion", department: "Produce")
cilantro = Ingredient.create(name:"cilantro", department: "Produce")
avocado = Ingredient.create(name:"avocado", department:"Produce")
black_beans = Ingredient.create(name:"black beans", department:"Produce")

#meats
chicken_breast = Ingredient.create(name: "chicken breast", department: "Meats")
bacon = Ingredient.create(name: "bacon", department: "Meats")
pork_ribs = Ingredient.create(name: "pork ribs", department: "Meats")

#dairy
eggs = Ingredient.create(name: "eggs", department: "Dairy")
muenster_cheese = Ingredient.create(name: "muenster cheese", department:"Dairy")
butter = Ingredient.create(name: "butter", department:"Dairy")
european_butter = Ingredient.create(name: "european butter", department:"Dairy")


#bakery
bread = Ingredient.create(name: "bread", department: "Bakery")

#Grocery
rice = Ingredient.create(name: "rice", department: "Grocery")
dashi = Ingredient.create(name: "dashi", department: "Grocery")
pork_spices = Ingredient.create(name: "pork spices", department: "Grocery")
brown_sugar = Ingredient.create(name: "brown sugar", department: "Grocery")
honey = Ingredient.create(name: "honey", department:"Grocery")
olive_oil = Ingredient.create(name:"olive oil", department: "Grocery")
corn_tortillas = Ingredient.create(name:"corn tortillas", department: "Grocery")




#recipe instances
oyakudon = Recipe.create(meal: "oyakudon", image_url:"https://www.seriouseats.com/thmb/RTxE60ABc7yW7RTo8jSITVJlfqY=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2016__08__20160802-oyakodon-4-a3b75ad6fb36491b9618372db8cf54d2.jpg")
bacon_grilled_cheese = Recipe.create(meal:"bacon grilled cheese", image_url:"https://www.spendwithpennies.com/wp-content/uploads/2019/04/Bacon-Grilled-Cheese-SpendWithPennies-3.jpg")
smoked_ribs = Recipe.create(meal:"smoked ribs", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1X3mwujBBWlt5Lej90XU0pHWCK1P35tw79w&usqp=CAU")
chrispy_tacos = Recipe.create(meal: "chrispy tacos", image_url:"https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/10/Huevos-Rancheros-5.jpg")



# RecipeIngredient.create(ingredient: ingrdient, recipe: recipe)
#oyakudon
RecipeIngredient.create(ingredient: eggs, recipe: oyakudon)
RecipeIngredient.create(ingredient: onion, recipe: oyakudon)
RecipeIngredient.create(ingredient: chicken_breast, recipe: oyakudon)
RecipeIngredient.create(ingredient: rice, recipe: oyakudon)
RecipeIngredient.create(ingredient: dashi, recipe: oyakudon)


#bacon_grilled-cheese
RecipeIngredient.create(ingredient: bread, recipe:bacon_grilled_cheese)
RecipeIngredient.create(ingredient: muenster_cheese, recipe:bacon_grilled_cheese)
RecipeIngredient.create(ingredient: bacon, recipe:bacon_grilled_cheese)

#ribs
RecipeIngredient.create(ingredient: pork_ribs, recipe: smoked_ribs)
RecipeIngredient.create(ingredient: pork_spices , recipe: smoked_ribs)
RecipeIngredient.create(ingredient: brown_sugar , recipe: smoked_ribs)
RecipeIngredient.create(ingredient: european_butter , recipe: smoked_ribs)
RecipeIngredient.create(ingredient: honey , recipe: smoked_ribs)

#chrispy_taco
RecipeIngredient.create(ingredient: olive_oil, recipe:chrispy_tacos)
RecipeIngredient.create(ingredient: eggs, recipe:chrispy_tacos)
RecipeIngredient.create(ingredient: corn_tortillas, recipe:chrispy_tacos)
RecipeIngredient.create(ingredient: black_beans, recipe:chrispy_tacos)
RecipeIngredient.create(ingredient: cilantro, recipe:chrispy_tacos)
RecipeIngredient.create(ingredient: avocado, recipe:chrispy_tacos)




puts "Completed!"