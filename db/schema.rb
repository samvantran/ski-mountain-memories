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

ActiveRecord::Schema.define(version: 20141209023724) do

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "mountains", force: true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "lng"
    t.integer  "zoom_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.string   "name"
    t.string   "hashtag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mountain_id"
  end

  create_table "trips_users", id: false, force: true do |t|
    t.integer "trip_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.integer  "ig_id"
    t.string   "ig_profile_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visuals", force: true do |t|
    t.integer  "trip_id"
    t.string   "media_type"
    t.integer  "time_taken"
    t.text     "thumbnail_url"
    t.text     "standard_url"
    t.text     "caption"
    t.float    "lat"
    t.float    "lng"
    t.string   "username"
    t.integer  "ig_id"
    t.text     "profile_pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
