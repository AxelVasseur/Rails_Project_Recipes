class CreateIngredientInRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredient_in_recipes do |t|
      t.integer :quantity
    end
    add_reference :ingredient_in_recipes, :recipes, foreign_key: true
    add_reference :ingredient_in_recipes, :ingredients, foreign_key: true
  end
end
