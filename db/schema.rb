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
ActiveRecord::Schema.define(version: 20140504021746) do
=======
ActiveRecord::Schema.define(version: 20140503200318) do
>>>>>>> develop

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.datetime "create_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "mentees", force: true do |t|
=======
  create_table "mentors", force: true do |t|
>>>>>>> develop
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
<<<<<<< HEAD
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "interest",               array: true
  end

  add_index "mentees", ["email"], name: "index_mentees_on_email", unique: true, using: :btree
  add_index "mentees", ["reset_password_token"], name: "index_mentees_on_reset_password_token", unique: true, using: :btree
=======
    t.string   "first_name"
    t.string   "last_name"
    t.string   "photo_url"
    t.integer  "skills"
  end

  add_index "mentors", ["email"], name: "index_mentors_on_email", unique: true, using: :btree
  add_index "mentors", ["reset_password_token"], name: "index_mentors_on_reset_password_token", unique: true, using: :btree
>>>>>>> develop

  create_table "requests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
