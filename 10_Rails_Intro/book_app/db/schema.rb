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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150901025007) do
=======
ActiveRecord::Schema.define(version: 20150901042455) do
>>>>>>> e79a01cdc7abe9dc890e4f3a29c983909175c85e

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "year_published"
    t.string   "genre"
    t.boolean  "available"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

<<<<<<< HEAD
=======
  create_table "whatevers", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.boolean  "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> e79a01cdc7abe9dc890e4f3a29c983909175c85e
end
