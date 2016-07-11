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

ActiveRecord::Schema.define(version: 20160619160649) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "order"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer  "programed_course_id"
    t.integer  "student_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "enrollments", ["programed_course_id", "student_id"], name: "index_enrollments_on_programed_course_id_and_student_id", unique: true
  add_index "enrollments", ["programed_course_id"], name: "index_enrollments_on_programed_course_id"
  add_index "enrollments", ["student_id"], name: "index_enrollments_on_student_id"

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "second_last_name"
    t.string   "phone"
    t.string   "email"
    t.text     "address"
    t.boolean  "teacher"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "second_names"
    t.date     "birth_date"
  end

  create_table "programed_course_sessions", force: :cascade do |t|
    t.integer  "programed_course_id"
    t.integer  "session_number"
    t.string   "topic"
    t.date     "date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "teacher_id"
  end

  add_index "programed_course_sessions", ["programed_course_id"], name: "index_programed_course_sessions_on_programed_course_id"
  add_index "programed_course_sessions", ["teacher_id"], name: "index_programed_course_sessions_on_teacher_id"

  create_table "programed_courses", force: :cascade do |t|
    t.integer  "course_id"
    t.text     "details"
    t.date     "start_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "supervisor_id"
  end

  add_index "programed_courses", ["course_id"], name: "index_programed_courses_on_course_id"
  add_index "programed_courses", ["supervisor_id"], name: "index_programed_courses_on_supervisor_id"

end
