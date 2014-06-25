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
ActiveRecord::Schema.define(version: 20140625190347) do
=======
ActiveRecord::Schema.define(version: 20140625181109) do
>>>>>>> 3543017f105cef324c3a77805e71f3bf8416e7a3

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "capacity"
    t.string   "description"
    t.integer  "user_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.datetime "start_time"
    t.integer  "user_id"
    t.integer  "bar_id"
    t.integer  "number_of_patrons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "bar_id"
    t.string   "content"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
<<<<<<< HEAD
=======
    t.string   "type"
>>>>>>> 3543017f105cef324c3a77805e71f3bf8416e7a3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
