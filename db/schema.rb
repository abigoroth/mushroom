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

ActiveRecord::Schema.define(version: 20151201024923) do

  create_table "houses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productions", force: true do |t|
    t.date     "production_date"
    t.float    "a_am",            limit: 24, default: 0.0
    t.float    "b_am",            limit: 24, default: 0.0
    t.float    "c_am",            limit: 24, default: 0.0
    t.float    "d_am",            limit: 24, default: 0.0
    t.float    "pa_am",           limit: 24, default: 0.0
    t.float    "pb_am",           limit: 24, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "a_pm",            limit: 24, default: 0.0
    t.float    "b_pm",            limit: 24, default: 0.0
    t.float    "c_pm",            limit: 24, default: 0.0
    t.float    "d_pm",            limit: 24, default: 0.0
    t.float    "pa_pm",           limit: 24, default: 0.0
    t.float    "pb_pm",           limit: 24, default: 0.0
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
