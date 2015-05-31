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

ActiveRecord::Schema.define(version: 0) do

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.text   "summary"
    t.string "image"
  end

  create_table "members", force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.float   "expense"
  end

  add_index "members", ["group_id"], name: "index_members_on_group_id"
  add_index "members", ["user_id"], name: "index_members_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.integer "group_id"
    t.text    "content"
  end

  add_index "messages", ["group_id"], name: "index_messages_on_group_id"

  create_table "touristsites", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "country"
    t.string "image"
    t.text   "Summary"
  end

  create_table "users", force: :cascade do |t|
    t.string  "netid"
    t.string  "name"
    t.string  "section"
    t.string  "graduation"
    t.string  "photo"
    t.string  "email"
    t.string  "password_digest"
    t.boolean "admin",           default: false
  end

  create_table "visits", force: :cascade do |t|
    t.integer "group_id"
    t.integer "touristsite_id"
  end

  add_index "visits", ["group_id"], name: "index_visits_on_group_id"
  add_index "visits", ["touristsite_id"], name: "index_visits_on_touristsite_id"

end
