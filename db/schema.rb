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

ActiveRecord::Schema[7.0].define(version: 2023_07_22_194601) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cells", force: :cascade do |t|
    t.text "content"
    t.bigint "song_attribute_id", null: false
    t.bigint "song_id", null: false
    t.string "ancestry", null: false, collation: "C"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ancestry"], name: "index_cells_on_ancestry"
    t.index ["song_attribute_id"], name: "index_cells_on_song_attribute_id"
    t.index ["song_id"], name: "index_cells_on_song_id"
  end

  create_table "show_users", force: :cascade do |t|
    t.bigint "show_id", null: false
    t.bigint "user_id", null: false
    t.string "roles", default: [], array: true
    t.string "displayed_columns", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["show_id"], name: "index_show_users_on_show_id"
    t.index ["user_id"], name: "index_show_users_on_user_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.integer "year"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shows_on_user_id"
  end

  create_table "song_attributes", force: :cascade do |t|
    t.bigint "show_id", null: false
    t.string "title"
    t.integer "position"
    t.string "ancestry", null: false, collation: "C"
    t.boolean "default", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ancestry"], name: "index_song_attributes_on_ancestry"
    t.index ["show_id"], name: "index_song_attributes_on_show_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.integer "position"
    t.string "ancestry", null: false, collation: "C"
    t.bigint "show_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ancestry"], name: "index_songs_on_ancestry"
    t.index ["show_id"], name: "index_songs_on_show_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cells", "song_attributes"
  add_foreign_key "cells", "songs"
  add_foreign_key "show_users", "shows"
  add_foreign_key "show_users", "users"
  add_foreign_key "shows", "users"
  add_foreign_key "song_attributes", "shows"
  add_foreign_key "songs", "shows"
end
