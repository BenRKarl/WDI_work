
ActiveRecord::Schema.define(version: 20140512015558) do

  enable_extension "plpgsql"

  create_table "squares", force: true do |t|
    t.integer  "side_length"
    t.integer  "border_radius"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
