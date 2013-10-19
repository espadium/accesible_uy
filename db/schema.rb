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

ActiveRecord::Schema.define(version: 20131019155645) do

  create_table "accessibilities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accessibilities_events", force: true do |t|
    t.integer "event_id"
    t.integer "accessibility_id"
  end

  add_index "accessibilities_events", ["accessibility_id"], name: "index_accessibilities_events_on_accessibility_id"
  add_index "accessibilities_events", ["event_id"], name: "index_accessibilities_events_on_event_id"

  create_table "accessibilities_facilities", force: true do |t|
    t.integer "accesibility_id"
    t.integer "facility_id"
  end

  add_index "accessibilities_facilities", ["accesibility_id"], name: "index_accessibilities_facilities_on_accesibility_id"
  add_index "accessibilities_facilities", ["facility_id"], name: "index_accessibilities_facilities_on_facility_id"

  create_table "accessibilities_institutions", force: true do |t|
    t.integer "institution_id"
    t.integer "accessibility_id"
  end

  add_index "accessibilities_institutions", ["accessibility_id"], name: "index_accessibilities_institutions_on_accessibility_id"
  add_index "accessibilities_institutions", ["institution_id"], name: "index_accessibilities_institutions_on_institution_id"

  create_table "accessibilities_places", force: true do |t|
    t.integer "place_id"
    t.integer "accessibility_id"
  end

  add_index "accessibilities_places", ["accessibility_id"], name: "index_accessibilities_places_on_accessibility_id"
  add_index "accessibilities_places", ["place_id"], name: "index_accessibilities_places_on_place_id"

  create_table "accessibilities_subscriptions", force: true do |t|
    t.integer "subscription_id"
    t.integer "accessibility_id"
  end

  add_index "accessibilities_subscriptions", ["accessibility_id"], name: "index_accessibilities_subscriptions_on_accessibility_id"
  add_index "accessibilities_subscriptions", ["subscription_id"], name: "index_accessibilities_subscriptions_on_subscription_id"

  create_table "addresses", force: true do |t|
    t.string   "literal"
    t.string   "street_name"
    t.float    "lat"
    t.float    "long"
    t.string   "street_intersection"
    t.string   "street_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "address_id"
    t.string   "name"
    t.text     "description"
    t.datetime "date"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["address_id"], name: "index_events_on_address_id"

  create_table "facilities", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facilities", ["address_id"], name: "index_facilities_on_address_id"

  create_table "insteresting_links", force: true do |t|
    t.string   "url"
    t.string   "label"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions", force: true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.string   "email"
    t.string   "web"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institutions", ["address_id"], name: "index_institutions_on_address_id"

  create_table "places", force: true do |t|
    t.integer  "address_id"
    t.string   "name"
    t.string   "description"
    t.string   "link"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["address_id"], name: "index_places_on_address_id"

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "subscriptions", force: true do |t|
    t.string   "subscriptor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
