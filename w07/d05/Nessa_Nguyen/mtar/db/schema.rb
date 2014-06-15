ActiveRecord::Schema.define(version: 20140601210423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lines", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lines_stations", force: true do |t|
    t.integer "station_id"
    t.integer "line_id"
  end

  create_table "stations", force: true do |t|
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
