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

ActiveRecord::Schema.define(:version => 20130606235821) do

  create_table "bars", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state",      :limit => 2
    t.string   "street"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.integer  "number_drank"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "userbarbeers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "bar_id"
    t.integer  "beer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "userbarbeers", ["bar_id"], :name => "index_userbarbeers_on_bar_id"
  add_index "userbarbeers", ["beer_id"], :name => "index_userbarbeers_on_beer_id"
  add_index "userbarbeers", ["user_id"], :name => "index_userbarbeers_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "passowrd"
    t.text     "about"
    t.text     "type_of_beer"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
