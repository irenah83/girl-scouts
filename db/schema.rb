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

ActiveRecord::Schema.define(version: 20140110145248) do

  create_table "cats", force: true do |t|
    t.string   "name"
    t.integer  "birth_date"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string "name"
    t.string "password"
    t.string "experience"
    t.string "email"
  end

  create_table "goals", force: true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "holders", force: true do |t|
    t.string  "name"
    t.integer "age"
    t.string  "city"
    t.string  "country"
  end

  create_table "records", force: true do |t|
    t.datetime "date"
  end

  create_table "scouts", force: true do |t|
    t.string   "name"
    t.integer  "birth_date"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end