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

ActiveRecord::Schema.define(version: 20170516210450) do

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "short_name"
    t.text     "site"
    t.text     "description"
    t.integer  "duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "grade_subjects", force: :cascade do |t|
    t.integer  "semester"
    t.string   "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "grade_id"
    t.integer  "subject_id"
  end

  add_index "grade_subjects", ["grade_id"], name: "index_grade_subjects_on_grade_id"
  add_index "grade_subjects", ["subject_id"], name: "index_grade_subjects_on_subject_id"

  create_table "grades", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
  end

  add_index "grades", ["course_id"], name: "index_grades_on_course_id"

  create_table "mycourses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mycourses", ["course_id"], name: "index_mycourses_on_course_id"
  add_index "mycourses", ["user_id"], name: "index_mycourses_on_user_id"

  create_table "studieds", force: :cascade do |t|
    t.integer  "semester"
    t.string   "mode"
    t.decimal  "score"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "mycourse_id"
    t.integer  "subject_id"
  end

  add_index "studieds", ["mycourse_id"], name: "index_studieds_on_mycourse_id"
  add_index "studieds", ["subject_id"], name: "index_studieds_on_subject_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.text     "bibliography"
    t.integer  "credit_class"
    t.integer  "credit_work"
    t.integer  "hours"
    t.date     "activation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "nusp"
    t.date     "birth"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "comment_id"
  end

  add_index "votes", ["comment_id"], name: "index_votes_on_comment_id"
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"

end
