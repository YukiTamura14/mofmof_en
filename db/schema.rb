ActiveRecord::Schema.define(version: 20181024131029) do

  create_table "rooms", force: :cascade do |t|
    t.string   "room_name"
    t.string   "price"
    t.string   "adress"
    t.integer  "built_years"
    t.text     "feature"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "station_name"
    t.string   "line_to_station"
    t.string   "minutes_on_foot"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "room_id"
    t.index ["room_id"], name: "index_stations_on_room_id"
  end

end
