class CreateRecipeTable < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image_url
    end
  end
end
