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

ActiveRecord::Schema.define(version: 20150518192935) do

  create_table "products", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "stock"
    t.string   "permalink"
    t.text     "description"
    t.string   "company"
    t.string   "brand"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products_specs", id: false, force: true do |t|
    t.integer "product_id"
    t.integer "spec_id"
  end

  add_index "products_specs", ["product_id"], name: "index_products_specs_on_product_id"
  add_index "products_specs", ["spec_id"], name: "index_products_specs_on_spec_id"

  create_table "specs", force: true do |t|
    t.string   "key"
    t.string   "value"
    t.float    "value_f"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
