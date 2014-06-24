# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140623131321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "Emails_Sites", id: false, force: true do |t|
    t.integer "email_id", null: false
    t.integer "site_id",  null: false
  end

  add_index "Emails_Sites", ["email_id", "site_id"], name: "index_Emails_Sites_on_email_id_and_site_id", using: :btree
  add_index "Emails_Sites", ["site_id", "email_id"], name: "index_Emails_Sites_on_site_id_and_email_id", using: :btree

  create_table "Sites", force: true do |t|
    t.string   "site"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
