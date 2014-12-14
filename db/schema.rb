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
# <<<<<<< HEAD
# ActiveRecord::Schema.define(version: 20141213050130) do
# =======
ActiveRecord::Schema.define(version: 20141213085723) do


  create_table "cleans", force: true do |t|
    t.integer  "user_id"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "aphoto"
    t.string   "bphoto"

    t.string   "location"
  end
=======
ActiveRecord::Schema.define(version: 20141214031123) do
>>>>>>> 8c06bd09a906f59270b457a361a3bcb0c6142045

  create_table "marks", force: true do |t|
    t.integer  "user_id"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "user_id",    limit: 5
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
