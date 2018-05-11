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

ActiveRecord::Schema.define(version: 2018_05_11_143259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "professors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors_subjects", force: :cascade do |t|
    t.bigint "professor_id"
    t.bigint "subject_id"
    t.index ["professor_id", "subject_id"], name: "by_professor_and_subject", unique: true
    t.index ["professor_id"], name: "index_professors_subjects_on_professor_id"
    t.index ["subject_id"], name: "index_professors_subjects_on_subject_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "amount"
    t.bigint "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_ratings_on_professor_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
