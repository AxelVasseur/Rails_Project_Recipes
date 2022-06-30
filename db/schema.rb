# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_29_205320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fridges", force: :cascade do |t|
    t.bigint "user_id"
    t.index ["user_id"], name: "index_fridges_on_user_id"
  end

  create_table "ingredient_in_fridges", force: :cascade do |t|
    t.bigint "fridges_id"
    t.bigint "ingredients_id"
    t.index ["fridges_id"], name: "index_ingredient_in_fridges_on_fridges_id"
    t.index ["ingredients_id"], name: "index_ingredient_in_fridges_on_ingredients_id"
  end

  create_table "ingredient_in_recipes", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "recipes_id"
    t.bigint "ingredients_id"
    t.index ["ingredients_id"], name: "index_ingredient_in_recipes_on_ingredients_id"
    t.index ["recipes_id"], name: "index_ingredient_in_recipes_on_recipes_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "rate"
    t.string "budget"
    t.string "difficulty"
    t.string "people_quantity"
    t.string "prep_time"
    t.string "cook_time"
    t.string "total_time"
    t.string "image_url"
    t.string "author_tip"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "login"
    t.string "password"
    t.string "password_digest"
  end

  add_foreign_key "fridges", "users"
  add_foreign_key "ingredient_in_fridges", "fridges", column: "fridges_id"
  add_foreign_key "ingredient_in_fridges", "ingredients", column: "ingredients_id"
  add_foreign_key "ingredient_in_recipes", "ingredients", column: "ingredients_id"
  add_foreign_key "ingredient_in_recipes", "recipes", column: "recipes_id"
end
