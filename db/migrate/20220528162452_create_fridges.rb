class CreateFridges < ActiveRecord::Migration[6.1]
  def change
    create_table :fridges do |t|
    end
    add_reference :fridges, :user, foreign_key: true
  end
end
