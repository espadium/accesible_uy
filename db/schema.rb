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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131018015441) do

  create_table "accessibility_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "organization_link"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "accessibility_types_institutions", :force => true do |t|
    t.integer "institution_id"
    t.integer "accessibility_type_id"
  end

  create_table "accessible_places", :force => true do |t|
    t.integer  "address_id"
    t.integer  "accessibility_type_id"
    t.string   "name"
    t.text     "extra_info"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "accessible_places", ["accessibility_type_id"], :name => "index_accessible_places_on_accessibility_type_id"
  add_index "accessible_places", ["address_id"], :name => "index_accessible_places_on_address_id"

  create_table "addresses", :force => true do |t|
    t.string   "lat"
    t.string   "lon"
    t.string   "literal"
    t.string   "street_name"
    t.string   "street_number"
    t.string   "corner_street_name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "institutions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "address_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "institutions", ["address_id"], :name => "index_institutions_on_address_id"

end
