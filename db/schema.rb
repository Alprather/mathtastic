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

ActiveRecord::Schema.define(version: 20170212164832) do

  create_table "classroom_games", force: :cascade do |t|
    t.string   "title"
    t.string   "subject"
    t.integer  "grade"
    t.string   "description"
    t.string   "lesson_file"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "title"
    t.string   "lesson_file"
    t.string   "subject"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "title"
    t.string   "subject"
    t.integer  "grade"
    t.string   "description"
    t.string   "lesson_file"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.string   "subject"
    t.integer  "grade"
    t.string   "lesson_file"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "description"
    t.string   "lesson_file_worksheets"
    t.string   "lesson_file_scorm"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "lesson_id"
    t.integer  "game_id"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "votes", ["classroom_id"], name: "index_votes_on_classroom_id"
  add_index "votes", ["game_id"], name: "index_votes_on_game_id"
  add_index "votes", ["lesson_id"], name: "index_votes_on_lesson_id"
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"

end
