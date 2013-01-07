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

ActiveRecord::Schema.define(:version => 20130107183943) do

  create_table "itemblocks", :force => true do |t|
    t.float    "quantity"
    t.float    "cdi"
    t.float    "cdo"
    t.integer  "propose_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "itemblocks_items", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "itemblocks_labors", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "itemblocks_machines", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "itemblocks_materials", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "itemblocks_others", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "description"
    t.integer  "code"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

# Could not dump table "items_proposes" because of following StandardError
#   Unknown type 'unit' for column 'unit'

  create_table "labors", :force => true do |t|
    t.integer  "code"
    t.string   "role"
    t.integer  "performance"
    t.integer  "dailylaws"
    t.integer  "unitarycost"
    t.float    "totaldh"
    t.float    "realcost"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "machines", :force => true do |t|
    t.integer  "code"
    t.string   "location"
    t.string   "description"
    t.integer  "unit"
    t.float    "performance"
    t.integer  "unitarycost"
    t.float    "quantperunit"
    t.float    "realcost"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "materials", :force => true do |t|
    t.integer  "code"
    t.string   "description"
    t.integer  "unit"
    t.float    "loss"
    t.integer  "adqvalue"
    t.integer  "transport"
    t.integer  "unitarycost"
    t.float    "sitevalue"
    t.float    "realcost"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "others", :force => true do |t|
    t.string   "description"
    t.float    "quantity"
    t.float    "unitarycost"
    t.float    "cost"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "proposes", :force => true do |t|
    t.string   "obra"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "isadmin"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
