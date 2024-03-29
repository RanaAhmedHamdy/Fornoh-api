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

ActiveRecord::Schema.define(version: 20161204204138) do

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "directions", force: :cascade do |t|
    t.text     "title",              limit: 65535
    t.string   "photo",              limit: 255
    t.integer  "recipe_id",          limit: 4
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
  end

  add_index "directions", ["recipe_id"], name: "index_directions_on_recipe_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string  "food",      limit: 255
    t.string  "quantity",  limit: 255
    t.integer "unit_id",   limit: 4
    t.integer "recipe_id", limit: 4
  end

  add_index "ingredients", ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree
  add_index "ingredients", ["unit_id"], name: "index_ingredients_on_unit_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "photo",              limit: 255
    t.integer  "time",               limit: 2
    t.integer  "difficulty",         limit: 1
    t.integer  "servings",           limit: 1
    t.integer  "category_id",        limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
  end

  add_index "recipes", ["category_id"], name: "index_recipes_on_category_id", using: :btree

  create_table "units", force: :cascade do |t|
    t.string "name", limit: 255
  end

  add_foreign_key "directions", "recipes"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "ingredients", "units"
  add_foreign_key "recipes", "categories"
end
