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

ActiveRecord::Schema.define(version: 2018_12_05_171038) do

  create_table "boroughs", force: :cascade do |t|
    t.string "name"
  end

  create_table "museums", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.float "coordinate_x"
    t.float "coordinate_y"
    t.string "url"
    t.string "zip"
    t.string "phone"
    t.integer "borough_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["borough_id"], name: "index_museums_on_borough_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "borough_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["borough_id"], name: "index_users_on_borough_id"
  end

end
