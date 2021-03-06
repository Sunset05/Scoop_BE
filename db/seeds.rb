puts "destroying seeds"
Ingredient.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all
Department.destroy_all

puts "creating seeds"
#department
produce = Department.create(section: "Produce")
meats = Department.create(section: "Meats")
bakery = Department.create(section:"Bakery")
grocery = Department.create(section:"Grocery")
dairy = Department.create(section:"Dairy")


#produce
celery = Ingredient.create(name: "Celery", department: produce)
tomato = Ingredient.create(name: "Tomato", department: produce)
lettuce = Ingredient.create(name: "Lettuce", department: produce)
bell_pepper = Ingredient.create(name: "Bell Pepper", department: produce)
apple = Ingredient.create(name: "apple", department: produce)
onion = Ingredient.create(name: "onion", department: produce)
cilantro = Ingredient.create(name:"cilantro", department: produce)
avocado = Ingredient.create(name:"avocado", department:produce)
black_beans = Ingredient.create(name:"black beans", department:produce)

#meats
chicken_breast = Ingredient.create(name: "chicken breast", department: meats)
bacon = Ingredient.create(name: "bacon", department: meats)
pork_ribs = Ingredient.create(name: "pork ribs", department: meats)
chicken_thigh = Ingredient.create(name: "chicken thighs" , department: meats)

#dairy
eggs = Ingredient.create(name: "eggs", department: dairy)
muenster_cheese = Ingredient.create(name: "muenster cheese", department: dairy)
butter = Ingredient.create(name: "butter", department: dairy)
european_butter = Ingredient.create(name: "european butter", department: dairy)


#bakery
bread = Ingredient.create(name: "bread", department: bakery)

#Grocery
flour = Ingredient.create(name: "flour", department: grocery)
rice = Ingredient.create(name: "rice", department: grocery)
dashi = Ingredient.create(name: "dashi", department: grocery)
pork_spices = Ingredient.create(name: "pork spices", department: grocery)
brown_sugar = Ingredient.create(name: "brown sugar", department: grocery)
honey = Ingredient.create(name: "honey", department:grocery)
olive_oil = Ingredient.create(name:"olive oil", department: grocery)
vegetable_oil = Ingredient.create(name:"vegetable oil", department: grocery)
corn_tortillas = Ingredient.create(name:"corn tortillas", department: grocery)
bread_crumbs = Ingredient.create(name:"bread_crumbs", department: grocery)




#recipe instances
oyakodon = Recipe.create(meal: "Oyakodon", image_url:"https://www.seriouseats.com/thmb/RTxE60ABc7yW7RTo8jSITVJlfqY=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2016__08__20160802-oyakodon-4-a3b75ad6fb36491b9618372db8cf54d2.jpg")
bacon_grilled_cheese = Recipe.create(meal:"Bacon Grilled Cheese", image_url:"https://www.spendwithpennies.com/wp-content/uploads/2019/04/Bacon-Grilled-Cheese-SpendWithPennies-3.jpg")
smoked_ribs = Recipe.create(meal:"Smoked Ribs", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1X3mwujBBWlt5Lej90XU0pHWCK1P35tw79w&usqp=CAU")
chrispy_tacos = Recipe.create(meal: "Chrispy Tacos", image_url:"https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/10/Huevos-Rancheros-5.jpg")
# fried_chicken = Recipe.create(meal: "Fried Chicken", image_url: "data:image/jpeg;base64,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")


# RecipeIngredient.create(ingredient: ingrdient, recipe: recipe)
#fried_chicken
# RecipeIngredient.create(ingredient: eggs, recipe: fried_chicken)
# RecipeIngredient.create(ingredient: flour, recipe: fried_chicken)
# RecipeIngredient.create(ingredient: chicken_thigh, recipe: fried_chicken)
# RecipeIngredient.create(ingredient: vegetable_oil , recipe:fried_chicken)
# RecipeIngredient.create(ingredient: bread_crumbs , recipe:fried_chicken)

#oyakodon
RecipeIngredient.create(ingredient: eggs, recipe: oyakodon)
RecipeIngredient.create(ingredient: onion, recipe: oyakodon)
RecipeIngredient.create(ingredient: chicken_breast, recipe: oyakodon)
RecipeIngredient.create(ingredient: rice, recipe: oyakodon)
RecipeIngredient.create(ingredient: dashi, recipe: oyakodon)


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