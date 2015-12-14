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
    t.string   "name"
    t.string   "your_title"
    t.string   "to_others"
    t.integer  "password"
    t.string   "name_eng"
    t.string   "phone"
    t.string   "email"
    t.text     "profile_img"
    t.text     "about_you"
    t.text     "details"
    t.text     "main_img"
    t.string   "main_title"
    t.string   "make_date"
    t.string   "date_time_start"
    t.string   "date_time_end"
    t.string   "date_time_start2"
    t.string   "date_time_end2"
    t.string   "typee"
    t.integer  "how_many_read"
    t.string   "title"
    t.string   "title2"
    t.string   "title3"
    t.string   "title4"
    t.string   "title5"
    t.string   "subtitle1"
    t.string   "subtitle2"
    t.string   "subtitle3"
    t.string   "subtitle4"
    t.string   "subtitle5"
    t.string   "subtitle6"
    t.string   "subtitle7"
    t.string   "subtitle8"
    t.string   "subtitle9"
    t.string   "subtitle10"
    t.string   "subtitle11"
    t.string   "subtitle12"
    t.string   "subtitle13"
    t.string   "subtitle14"
    t.string   "subtitle15"
    t.string   "subtitle16"
    t.string   "subtitle17"
    t.string   "subtitle18"
    t.string   "subtitle19"
    t.string   "subtitle20"
    t.text     "content1"
    t.text     "content2"
    t.text     "content3"
    t.text     "content4"
    t.text     "content5"
    t.text     "content6"
    t.text     "content7"
    t.text     "content8"
    t.text     "content9"
    t.text     "content10"
    t.text     "content11"
    t.text     "content12"
    t.text     "content13"
    t.text     "content14"
    t.text     "content15"
    t.text     "content16"
    t.text     "content17"
    t.text     "content18"
    t.text     "content19"
    t.text     "content20"
    t.text     "img1"
    t.text     "img2"
    t.text     "img3"
    t.text     "img4"
    t.text     "img5"
    t.text     "img6"
    t.text     "img7"
    t.text     "img8"
    t.text     "img9"
    t.text     "img10"
    t.integer  "ect_integer1"
    t.integer  "ect_integer2"
    t.integer  "ect_integer3"
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
