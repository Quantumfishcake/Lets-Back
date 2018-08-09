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

ActiveRecord::Schema.define(version: 2018_08_09_045246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "status"
    t.boolean "waitinglist"
    t.integer "user_id"
    t.integer "event_id"
    t.boolean "admin"
    t.boolean "moderator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.text "image"
    t.text "location"
    t.string "time"
    t.string "date"
    t.text "photos"
    t.integer "capacity"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.text "image"
    t.text "location"
    t.text "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_interests", id: false, force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "interest_id", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests_users", id: false, force: :cascade do |t|
    t.bigint "interest_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.boolean "admin", default: false
    t.boolean "moderator", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.boolean "admin", default: false
    t.text "image"
    t.text "bio"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
