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

ActiveRecord::Schema.define(version: 20151212161321) do

  create_table "articles", force: :cascade do |t|
    t.text     "title"
    t.text     "subtitle"
    t.text     "link"
    t.string   "org"
    t.string   "img1"
    t.string   "img2"
    t.string   "date_day"
    t.integer  "password"
    t.integer  "like_it"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "atc_replies", force: :cascade do |t|
    t.integer  "atc_id"
    t.string   "name"
    t.string   "password"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countdailies", force: :cascade do |t|
    t.string   "today"
    t.integer  "aday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "counttotals", force: :cascade do |t|
    t.integer  "count_tatal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fimsgs", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "onair_replies", force: :cascade do |t|
    t.integer  "onair_id"
    t.string   "name"
    t.string   "password"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "onairs", force: :cascade do |t|
    t.string   "who_name"
    t.string   "who_status"
    t.string   "who_did"
    t.integer  "password"
    t.string   "make_date"
    t.string   "date_time_start"
    t.string   "date_time_end"
    t.string   "date_time_start2"
    t.string   "date_time_end2"
    t.string   "type"
    t.integer  "how_many_read"
    t.string   "title"
    t.string   "sub_title1"
    t.string   "sub_title2"
    t.string   "sub_title3"
    t.string   "sub_title4"
    t.string   "sub_title5"
    t.text     "content1"
    t.text     "content2"
    t.text     "content3"
    t.text     "content4"
    t.text     "content5"
    t.string   "img1"
    t.string   "img2"
    t.string   "img3"
    t.string   "img4"
    t.string   "img5"
    t.string   "img6"
    t.string   "img7"
    t.string   "img8"
    t.string   "img9"
    t.string   "img10"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "scdl_replies", force: :cascade do |t|
    t.integer  "scdl_id"
    t.string   "name"
    t.string   "password"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scdls", force: :cascade do |t|
    t.string   "title"
    t.string   "date_day"
    t.string   "date_time_start"
    t.string   "date_time_end"
    t.string   "img1"
    t.string   "img2"
    t.string   "action_type"
    t.text     "content_detail"
    t.integer  "how_many_read"
    t.integer  "how_many_with"
    t.integer  "password"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
