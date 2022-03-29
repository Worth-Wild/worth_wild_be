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

ActiveRecord::Schema.define(version: 2022_03_28_210425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.bigint "search_animal_id"
    t.string "common_name"
    t.string "scientific_name"
    t.string "kingdom"
    t.string "phylum"
    t.string "taxclass"
    t.string "taxorder"
    t.string "family"
    t.string "genus"
    t.string "biome"
    t.string "states"
    t.string "habitats"
    t.string "habitat_comments"
    t.string "threat_impact_comments"
    t.string "short_term_trend"
    t.string "pop_size"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["search_animal_id"], name: "index_animals_on_search_animal_id"
  end

  create_table "search_animals", force: :cascade do |t|
    t.string "element_code"
    t.string "common_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "scientific_name"
  end

  create_table "user_animals", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_user_animals_on_animal_id"
    t.index ["user_id"], name: "index_user_animals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "animals", "search_animals"
  add_foreign_key "user_animals", "animals"
  add_foreign_key "user_animals", "users"
end
