ActiveRecord::Schema[7.1].define(version: 2024_01_05_214742) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_currencies", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.integer "copper"
    t.integer "silver"
    t.integer "gold"
    t.integer "platinum"
    t.integer "electrum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_currencies_on_character_id"
  end

  create_table "character_features", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.string "feature_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_features_on_character_id"
  end

  create_table "character_items", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.string "item_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_items_on_character_id"
  end

  create_table "character_proficiencies", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.string "proficiency_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_proficiencies_on_character_id"
  end

  create_table "character_spells", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.string "spell_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_spells_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "char_class"
    t.string "subclass"
    t.integer "level"
    t.string "race"
    t.string "background"
    t.string "alignment"
    t.integer "experience_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_loots", force: :cascade do |t|
    t.bigint "encounter_id", null: false
    t.string "item_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encounter_id"], name: "index_encounter_loots_on_encounter_id"
  end

  create_table "encounter_monsters", force: :cascade do |t|
    t.bigint "encounter_id", null: false
    t.string "monster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encounter_id"], name: "index_encounter_monsters_on_encounter_id"
  end

  create_table "encounters", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.integer "copper"
    t.integer "silver"
    t.integer "gold"
    t.integer "platinum"
    t.integer "electrum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_encounters_on_game_id"
  end

  create_table "game_characters", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_game_characters_on_character_id"
    t.index ["game_id"], name: "index_game_characters_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "dungeon_master", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.integer "armor_class"
    t.integer "max_hit_points"
    t.integer "current_hit_points"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_stats_on_character_id"
  end

  add_foreign_key "character_currencies", "characters"
  add_foreign_key "character_features", "characters"
  add_foreign_key "character_items", "characters"
  add_foreign_key "character_proficiencies", "characters"
  add_foreign_key "character_spells", "characters"
  add_foreign_key "encounter_loots", "encounters"
  add_foreign_key "encounter_monsters", "encounters"
  add_foreign_key "encounters", "games"
  add_foreign_key "game_characters", "characters"
  add_foreign_key "game_characters", "games"
  add_foreign_key "stats", "characters"
end
