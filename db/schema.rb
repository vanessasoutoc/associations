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

ActiveRecord::Schema.define(version: 20140716220210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "email"
  end

  create_table "line_items", id: false, force: true do |t|
    t.integer  "order_id",                     null: false
    t.integer  "product_id",                   null: false
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "discount_percent", default: 0
  end

  create_table "orders", force: true do |t|
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.string   "description"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name",          limit: 30
    t.string   "description"
    t.decimal  "unit_price",               precision: 10, scale: 2
    t.integer  "inventory_qty"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "upc",           limit: 8
  end

  add_index "products", ["name"], name: "index_products_on_name", using: :btree
  add_index "products", ["upc"], name: "index_products_on_upc", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "persistent_session_token"
    t.boolean  "admin",                    default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["persistent_session_token"], name: "index_users_on_persistent_session_token", using: :btree

end
