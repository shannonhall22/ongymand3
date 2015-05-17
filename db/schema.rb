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

ActiveRecord::Schema.define(version: 20150517004713) do

  create_table "gyms", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.string   "rate"
    t.string   "image_url"
    t.boolean  "weights"
    t.boolean  "cardio"
    t.boolean  "studios"
    t.boolean  "classes"
    t.boolean  "pool"
    t.boolean  "hot_tub"
    t.boolean  "basketball"
    t.boolean  "raquetball"
    t.boolean  "trainer"
    t.boolean  "sauna"
    t.integer  "search_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "zip"
    t.boolean  "weights"
    t.boolean  "cardio"
    t.boolean  "studios"
    t.boolean  "classes"
    t.boolean  "pool"
    t.boolean  "hot_tub"
    t.boolean  "basketball"
    t.boolean  "raquetball"
    t.boolean  "trainer"
    t.boolean  "sauna"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
