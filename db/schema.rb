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

ActiveRecord::Schema.define(version: 20181026075214) do

  create_table "rooms", force: :cascade do |t|
    t.string   "room_name",   limit: 255,                 null: false
    t.string   "price",       limit: 10000,               null: false
    t.string   "adress",      limit: 255,                 null: false
    t.integer  "built_years", limit: 4,                   null: false
    t.text     "feature",     limit: 255,   default: " "
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "station_name",    limit: 255, null: false
    t.string   "line_to_station", limit: 50,  null: false
    t.string   "minutes_on_foot", limit: 3,   null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "room_id"
    t.index ["room_id"], name: "index_stations_on_room_id"
  end

end
