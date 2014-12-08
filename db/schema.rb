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

ActiveRecord::Schema.define(version: 20141203222631) do

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
