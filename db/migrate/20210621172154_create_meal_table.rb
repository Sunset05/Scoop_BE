class CreateMealTable < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.references :ingredient
      t.references :recipe
    end
  end
end
