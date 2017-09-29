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

ActiveRecord::Schema.define(version: 20170929102715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "wedding_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wedding_id"], name: "index_gifts_on_wedding_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.bigint "wedding_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wedding_id"], name: "index_users_on_wedding_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "street_address"
    t.string "postal_code"
    t.string "city"
    t.string "name"
    t.string "type"
    t.bigint "wedding_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wedding_id"], name: "index_venues_on_wedding_id"
  end

  create_table "weddings", force: :cascade do |t|
    t.datetime "date"
    t.text "couple_story"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "gifts", "weddings"
  add_foreign_key "users", "weddings"
  add_foreign_key "venues", "weddings"
end
