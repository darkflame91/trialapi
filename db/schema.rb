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

ActiveRecord::Schema.define(version: 20160701151749) do

  create_table "case_doctors", force: :cascade do |t|
    t.integer  "case_id"
    t.integer  "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "case_doctors", ["case_id"], name: "index_case_doctors_on_case_id"
  add_index "case_doctors", ["doctor_id"], name: "index_case_doctors_on_doctor_id"

  create_table "case_media", force: :cascade do |t|
    t.integer  "case_id"
    t.integer  "media_type_id"
    t.string   "mediacode"
    t.string   "media_file_name"
    t.string   "media_content_type"
    t.integer  "media_file_size"
    t.datetime "media_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "case_media", ["case_id"], name: "index_case_media_on_case_id"
  add_index "case_media", ["media_type_id"], name: "index_case_media_on_media_type_id"

  create_table "cases", force: :cascade do |t|
    t.string   "casecode"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cases", ["user_id"], name: "index_cases_on_user_id"

  create_table "doctors", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "specialization_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "doctors", ["specialization_id"], name: "index_doctors_on_specialization_id"
  add_index "doctors", ["user_id"], name: "index_doctors_on_user_id"

  create_table "media_types", force: :cascade do |t|
    t.string   "type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "bmi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "patients", ["user_id"], name: "index_patients_on_user_id"

  create_table "specializations", force: :cascade do |t|
    t.string   "type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "aadharno"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.date     "dob"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
