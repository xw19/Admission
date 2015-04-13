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

ActiveRecord::Schema.define(version: 20150413125302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "candidate_streams", force: :cascade do |t|
    t.integer  "stream_id"
    t.integer  "candidate_id"
    t.boolean  "requirements"
    t.boolean  "verified"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "candidate_streams", ["candidate_id"], name: "index_candidate_streams_on_candidate_id", using: :btree
  add_index "candidate_streams", ["stream_id"], name: "index_candidate_streams_on_stream_id", using: :btree

  create_table "candidate_subjects", force: :cascade do |t|
    t.integer  "required_subject_id"
    t.integer  "candidate_id"
    t.integer  "candidate_stream_id"
    t.integer  "marks"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "candidate_subjects", ["candidate_id"], name: "index_candidate_subjects_on_candidate_id", using: :btree
  add_index "candidate_subjects", ["candidate_stream_id"], name: "index_candidate_subjects_on_candidate_stream_id", using: :btree
  add_index "candidate_subjects", ["required_subject_id"], name: "index_candidate_subjects_on_required_subject_id", using: :btree

  create_table "candidates", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "candidates", ["email"], name: "index_candidates_on_email", unique: true, using: :btree
  add_index "candidates", ["reset_password_token"], name: "index_candidates_on_reset_password_token", unique: true, using: :btree

  create_table "castewise_marks", force: :cascade do |t|
    t.integer  "caste_mark_id"
    t.string   "caste_mark_type"
    t.integer  "gen"
    t.integer  "sc"
    t.integer  "st"
    t.integer  "obca"
    t.integer  "obcb"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "castewise_marks", ["caste_mark_type", "caste_mark_id"], name: "index_castewise_marks_on_caste_mark_type_and_caste_mark_id", using: :btree

  create_table "personals", force: :cascade do |t|
    t.integer  "candidate_id"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "fathers_name"
    t.string   "mothers_name"
    t.string   "gender"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "personals", ["candidate_id"], name: "index_personals_on_candidate_id", using: :btree

  create_table "required_subjects", force: :cascade do |t|
    t.string   "subject_name"
    t.integer  "stream_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "required_subjects", ["stream_id"], name: "index_required_subjects_on_stream_id", using: :btree

  create_table "streams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "candidate_streams", "candidates"
  add_foreign_key "candidate_streams", "streams"
  add_foreign_key "candidate_subjects", "candidate_streams"
  add_foreign_key "candidate_subjects", "candidates"
  add_foreign_key "candidate_subjects", "required_subjects"
  add_foreign_key "personals", "candidates"
  add_foreign_key "required_subjects", "streams"
end
