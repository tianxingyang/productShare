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

ActiveRecord::Schema.define(version: 20141213131003) do

  create_table "products", force: true do |t|
    t.string   "productName"
    t.string   "productLink"
    t.string   "productDescription"
    t.integer  "productLikedNumber"
    t.string   "productDate"
    t.integer  "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["users_id"], name: "index_products_on_users_id"

  create_table "user_products", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_products", ["product_id"], name: "index_user_products_on_product_id"
  add_index "user_products", ["user_id"], name: "index_user_products_on_user_id"

  create_table "users", force: true do |t|
    t.string   "userName"
    t.string   "userPassword"
    t.string   "userDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
