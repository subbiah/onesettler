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

ActiveRecord::Schema.define(version: 20150412142700) do

  create_table "category_masters", force: true do |t|
    t.string   "categoryname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", force: true do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_profiles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "category_id"
    t.integer  "section_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profile_question_masters", force: true do |t|
    t.integer  "section_id"
    t.string   "questionname"
    t.integer  "min_length"
    t.integer  "max_length"
    t.string   "question_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string   "section_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_type_masters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
