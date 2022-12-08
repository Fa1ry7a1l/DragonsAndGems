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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_192422) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", force: :cascade do |t|
    t.string "class", null: false
    t.integer "defend", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_characteristics", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.integer "proficiency_bonus", null: false
    t.integer "strength", null: false
    t.integer "dexterity", null: false
    t.integer "constitution", null: false
    t.integer "intelligence", null: false
    t.integer "wisdom", null: false
    t.integer "charisma", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_characteristics_on_character_id"
  end

  create_table "character_perks", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.boolean "acrobatics", null: false
    t.boolean "animal_handling", null: false
    t.boolean "arcana", null: false
    t.boolean "athletics", null: false
    t.boolean "deception", null: false
    t.boolean "history", null: false
    t.boolean "insight", null: false
    t.boolean "intimidation", null: false
    t.boolean "investigation", null: false
    t.boolean "medicine", null: false
    t.boolean "nature", null: false
    t.boolean "perception", null: false
    t.boolean "performance", null: false
    t.boolean "persuasion", null: false
    t.boolean "religion", null: false
    t.boolean "sleight_of_hand", null: false
    t.boolean "stealth", null: false
    t.boolean "survival", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_perks_on_character_id"
  end

  create_table "character_saving_throws", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.integer "strength", null: false
    t.integer "dexterity", null: false
    t.integer "constitution", null: false
    t.integer "intelligence", null: false
    t.integer "wisdom", null: false
    t.integer "charisma", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_saving_throws_on_character_id"
  end

  create_table "characters_lists", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.string "character_name", null: false
    t.string "background", null: false
    t.string "race", null: false
    t.string "alignment", null: false
    t.integer "exp", null: false
    t.boolean "inspiration", null: false
    t.integer "armor_class", null: false
    t.integer "initiative", null: false
    t.integer "speed", null: false
    t.integer "max_hp", null: false
    t.integer "current_hp", null: false
    t.integer "temporary_hp", null: false
    t.integer "money", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_characters_lists_on_player_id"
  end

  create_table "monster_skills", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.bigint "owner_id", null: false
    t.integer "min_value", null: false
    t.integer "max_value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_monster_skills_on_owner_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_monsters", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "world_monster_id", null: false
    t.integer "current_hp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_monsters_on_room_id"
    t.index ["world_monster_id"], name: "index_room_monsters_on_world_monster_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "dungeon_master_id", null: false
    t.string "room_name", null: false
    t.bigint "character_1_id"
    t.bigint "character_2_id"
    t.bigint "character_3_id"
    t.bigint "character_4_id"
    t.bigint "character_5_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_1_id"], name: "index_rooms_on_character_1_id"
    t.index ["character_2_id"], name: "index_rooms_on_character_2_id"
    t.index ["character_3_id"], name: "index_rooms_on_character_3_id"
    t.index ["character_4_id"], name: "index_rooms_on_character_4_id"
    t.index ["character_5_id"], name: "index_rooms_on_character_5_id"
    t.index ["dungeon_master_id"], name: "index_rooms_on_dungeon_master_id"
  end

  create_table "spells", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.string "name", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_spells_on_character_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "user_view_damage", null: false
    t.integer "min_damage", null: false
    t.integer "max_damage", null: false
    t.string "type_damage", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "world_inventory", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.bigint "weapon_id"
    t.bigint "armor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["armor_id"], name: "index_world_inventory_on_armor_id"
    t.index ["weapon_id"], name: "index_world_inventory_on_weapon_id"
  end

  create_table "world_monsters", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "start_hp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "character_characteristics", "characters_lists", column: "character_id"
  add_foreign_key "character_perks", "characters_lists", column: "character_id"
  add_foreign_key "character_saving_throws", "characters_lists", column: "character_id"
  add_foreign_key "characters_lists", "players"
  add_foreign_key "monster_skills", "world_monsters", column: "owner_id"
  add_foreign_key "room_monsters", "rooms"
  add_foreign_key "room_monsters", "world_monsters"
  add_foreign_key "rooms", "characters_lists", column: "character_1_id"
  add_foreign_key "rooms", "characters_lists", column: "character_2_id"
  add_foreign_key "rooms", "characters_lists", column: "character_3_id"
  add_foreign_key "rooms", "characters_lists", column: "character_4_id"
  add_foreign_key "rooms", "characters_lists", column: "character_5_id"
  add_foreign_key "rooms", "players", column: "dungeon_master_id"
  add_foreign_key "spells", "characters_lists", column: "character_id"
  add_foreign_key "world_inventory", "armors"
  add_foreign_key "world_inventory", "weapons"
end
