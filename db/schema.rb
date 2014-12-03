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

ActiveRecord::Schema.define(version: 20141203173105) do

  create_table "media", force: true do |t|
    t.integer  "trip_id"
    t.boolean  "photo"
    t.datetime "time_taken"
    t.string   "thumbnail_url"
    t.string   "standard_url"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.float    "lat"
    t.float    "lng"
    t.string   "hashtag"
    t.integer  "zoom_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.integer  "ig_id"
    t.string   "ig_profile_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
