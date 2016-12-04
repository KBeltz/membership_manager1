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

ActiveRecord::Schema.define(version: 20161204052551) do

  create_table "account_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendances", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "type"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attendances", ["student_id"], name: "index_attendances_on_student_id"

  create_table "belt_levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "belts", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "belt_level_id"
    t.date     "start_date"
    t.boolean  "is_active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "belts", ["belt_level_id"], name: "index_belts_on_belt_level_id"
  add_index "belts", ["student_id"], name: "index_belts_on_student_id"

  create_table "courses", force: :cascade do |t|
    t.string   "day"
    t.time     "start_time"
    t.integer  "duration"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guardians", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "guardians", ["student_id"], name: "index_guardians_on_student_id"

  create_table "login_attempts", force: :cascade do |t|
    t.string   "ip_address"
    t.boolean  "is_successful"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "login_attempts", ["user_id"], name: "index_login_attempts_on_user_id"

  create_table "membership_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "membership_type_id"
    t.date     "start_date"
    t.integer  "term"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "memberships", ["membership_type_id"], name: "index_memberships_on_membership_type_id"
  add_index "memberships", ["student_id"], name: "index_memberships_on_student_id"

  create_table "students", force: :cascade do |t|
    t.integer  "student_number"
    t.integer  "account_type_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.date     "birthdate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "students", ["account_type_id"], name: "index_students_on_account_type_id"

  create_table "upgrades", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "type"
    t.date     "start_date"
    t.integer  "term"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "upgrades", ["student_id"], name: "index_upgrades_on_student_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
