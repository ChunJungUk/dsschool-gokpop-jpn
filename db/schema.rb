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

ActiveRecord::Schema.define(version: 20181001002214) do

  create_table "survey_texts", force: :cascade do |t|
    t.integer "question_id"
    t.string "question_text"
    t.string "answer1_text"
    t.string "answer2_text"
    t.string "answer3_text"
    t.string "answer4_text"
    t.string "answer5_text"
    t.string "answer6_text"
    t.string "answer7_text"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.boolean "answer1_selected"
    t.boolean "answer2_selected"
    t.boolean "answer3_selected"
    t.boolean "answer4_selected"
    t.boolean "answer5_selected"
    t.boolean "answer6_selected"
    t.boolean "answer7_selected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "mixpanel_id"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
