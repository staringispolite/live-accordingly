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

ActiveRecord::Schema.define(version: 20150607005415) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checkins", force: true do |t|
    t.integer  "habit_id"
    t.datetime "time"
    t.integer  "happiness_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comparisons", force: true do |t|
    t.integer  "winning_habit_id"
    t.integer  "habit_id_1"
    t.integer  "habit_id_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_happinesses", force: true do |t|
    t.datetime "time"
    t.string   "happiness_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: true do |t|
    t.string   "name"
    t.text     "meaning"
    t.integer  "progress_percent"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "habits", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.integer  "weekly_frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
