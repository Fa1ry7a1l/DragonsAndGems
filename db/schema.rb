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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_112812) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", primary_key: "armor_id", force: :cascade do |t|
    t.string "class", null: false
    t.decimal "defend", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters_lists", primary_key: "character_id", force: :cascade do |t|
    t.bigint "players_id", null: false
    t.string "character_name", null: false
    t.string "background", null: false
    t.string "race", null: false
    t.string "alignment", null: false
    t.decimal "exp", null: false
    t.boolean "inspiration", null: false
    t.decimal "armor_class", null: false
    t.decimal "initiative", null: false
    t.decimal "speed", null: false
    t.decimal "max_hp", null: false
    t.decimal "current_hp", null: false
    t.decimal "temporary_hp", null: false
    t.decimal "money", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["players_id"], name: "index_characters_lists_on_players_id"
  end

  create_table "players", primary_key: "player_id", force: :cascade do |t|
    t.string "player_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", primary_key: "weapon_id", force: :cascade do |t|
    t.string "user_view_damage", null: false
    t.decimal "min_damage", null: false
    t.decimal "max_damage", null: false
    t.string "type_damage", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "world_inventory", primary_key: "item_id", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.bigint "weapons_id", null: false
    t.bigint "armors_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["armors_id"], name: "index_world_inventory_on_armors_id"
    t.index ["weapons_id"], name: "index_world_inventory_on_weapons_id"
  end

end
