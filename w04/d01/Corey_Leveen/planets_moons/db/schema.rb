
ActiveRecord::Schema.define(version: 20140512213831) do

  enable_extension "plpgsql"

  create_table "moons", force: true do |t|
    t.string   "name"
    t.integer  "planet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planets", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "diameter"
    t.integer  "mass"
    t.boolean  "life"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
