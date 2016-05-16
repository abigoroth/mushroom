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

ActiveRecord::Schema.define(version: 20151220150226) do

  create_table "customer_purchases", force: true do |t|
    t.integer  "customer_id"
    t.date     "date"
    t.float    "quantity",         limit: 24, default: 0.0
    t.float    "expected_payment", limit: 24, default: 0.0
    t.float    "actual_payment",   limit: 24, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "market_id"
  end

  create_table "houses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productions", force: true do |t|
    t.integer  "house_id"
    t.date     "date"
    t.float    "am",         limit: 24
    t.float    "pm",         limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_records", force: true do |t|
    t.float    "arra",       limit: 24
    t.float    "purchase",   limit: 24
    t.float    "ttl_out",    limit: 24
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shelves", force: true do |t|
    t.string   "name"
    t.string   "state"
    t.date     "open_date"
    t.date     "harvest_date"
    t.date     "close_date"
    t.date     "end_date"
    t.integer  "cycle",        default: 0
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.string   "nama"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
