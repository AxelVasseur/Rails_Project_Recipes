class CreateIngredientInFridge < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredient_in_fridges do |t|
    end
    add_reference :ingredient_in_fridges, :fridges, foreign_key: true
    add_reference :ingredient_in_fridges, :ingredients, foreign_key: true
  end
end
