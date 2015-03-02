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

ActiveRecord::Schema.define(:version => 20150224145940) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone"
    t.date     "dob"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.string   "password_digest"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "devs", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "title"
    t.string   "picture"
    t.string   "genre"
    t.integer  "rating"
    t.integer  "dev_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.decimal  "price"
  end

  create_table "posts", :force => true do |t|
    t.text     "content"
    t.integer  "customer_id"
    t.integer  "game_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rentals", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "game_id"
    t.date     "date_rented"
    t.date     "date_due"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.decimal  "game_price"
  end

end
