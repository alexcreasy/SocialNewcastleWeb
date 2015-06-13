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

ActiveRecord::Schema.define(version: 20150613100010) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "category"
    t.string   "postcode"
    t.string   "housename"
    t.string   "street"
    t.string   "town"
    t.boolean  "disabled_access"
    t.string   "email"
    t.string   "info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jsons", force: true do |t|
    t.string   "type"
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: true do |t|
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.datetime "time"
    t.string   "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: true do |t|
    t.integer  "user_id"
    t.integer  "rating"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "facebook_id"
    t.string   "facebook_avatar"
    t.boolean  "registered"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
