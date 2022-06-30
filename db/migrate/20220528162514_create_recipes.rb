class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :author
      t.string :rate
      t.string :budget
      t.string :difficulty
      t.string :people_quantity
      t.string :prep_time
      t.string :cook_time
      t.string :total_time
      t.string :image_url
      t.string :author_tip
    end
  end
end
