class CreateRecipesIngredientsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.references :ingredient 
      t.references :recipe
    end
  end
end
