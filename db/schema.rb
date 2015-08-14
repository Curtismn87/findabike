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

ActiveRecord::Schema.define(version: 20150814132151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.integer "user_id"
    t.string  "model"
    t.string  "color"
    t.integer "year"
    t.string  "bike_type"
    t.integer "serial_number"
    t.date    "purchase_date"
    t.integer "purchase_price"
    t.string  "receipt_document"
    t.string  "receipt_photo_url"
  end

  add_index "bikes", ["user_id"], name: "index_bikes_on_user_id", using: :btree

  create_table "incidents", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bike_id"
    t.string   "incident_address"
    t.datetime "incident_start_time"
    t.datetime "incident_end_time"
    t.string   "location_type"
    t.text     "description"
    t.string   "gps_location"
  end

  add_index "incidents", ["bike_id"], name: "index_incidents_on_bike_id", using: :btree
  add_index "incidents", ["user_id"], name: "index_incidents_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string  "username"
    t.string  "firstname"
    t.string  "lastname"
    t.string  "address"
    t.string  "phone"
    t.string  "race"
    t.string  "ethnicity"
    t.string  "sex"
    t.date    "DOB"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bikes", "users"
  add_foreign_key "incidents", "bikes"
  add_foreign_key "incidents", "users"
  add_foreign_key "profiles", "users"
end
