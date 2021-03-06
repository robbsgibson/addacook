# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150304023805) do

  create_table "ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "product_id"
    t.integer "quantity"
    t.string  "measurement"
  end

  add_index "ingredients", ["product_id"], name: "index_ingredients_on_product_id"
  add_index "ingredients", ["recipe_id"], name: "index_ingredients_on_recipe_id"

  create_table "items", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "shoppinglist_id"
  end

  add_index "items", ["recipe_id"], name: "index_items_on_recipe_id"
  add_index "items", ["shoppinglist_id"], name: "index_items_on_shoppinglist_id"

  create_table "mealtypes", force: :cascade do |t|
    t.text "name"
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "products", force: :cascade do |t|
    t.text    "name"
    t.text    "alternative_name"
    t.integer "storesectioin_id"
  end

  add_index "products", ["storesectioin_id"], name: "index_products_on_storesectioin_id"

  create_table "recipes", force: :cascade do |t|
    t.integer "user_id"
    t.string  "image"
    t.text    "title"
    t.text    "description"
    t.string  "mealtype_id"
    t.text    "creation_date"
  end

  add_index "recipes", ["mealtype_id"], name: "index_recipes_on_mealtype_id"
  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "shoppinglists", force: :cascade do |t|
    t.integer "user_id"
    t.text    "creation_date"
    t.text    "name"
  end

  add_index "shoppinglists", ["user_id"], name: "index_shoppinglists_on_user_id"

  create_table "storesections", force: :cascade do |t|
    t.string "section"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
  end

end
