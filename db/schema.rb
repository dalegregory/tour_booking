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

ActiveRecord::Schema.define(version: 20151005183211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tour_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "tours", force: :cascade do |t|
    t.integer "tour_type_id"
    t.string  "requester_first_name"
    t.string  "requester_last_name"
    t.string  "requester_email"
    t.string  "requester_phone"
    t.string  "booking_date"
    t.string  "referrer"
  end

  add_index "tours", ["tour_type_id"], name: "index_tours_on_tour_type_id", using: :btree

  add_foreign_key "tours", "tour_types"
end