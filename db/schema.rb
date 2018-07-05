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

ActiveRecord::Schema.define(version: 2018_07_05_212442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meal_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 10, scale: 2
    t.string "image"
    t.boolean "available"
    t.bigint "meal_categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_categories_id"], name: "index_meals_on_meal_categories_id"
  end

  create_table "order_meals", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "orders_id"
    t.bigint "meals_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meals_id"], name: "index_order_meals_on_meals_id"
    t.index ["orders_id"], name: "index_order_meals_on_orders_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "price", precision: 10, scale: 2
    t.bigint "users_id"
    t.bigint "situations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["situations_id"], name: "index_orders_on_situations_id"
    t.index ["users_id"], name: "index_orders_on_users_id"
  end

  create_table "situations", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "meals", "meal_categories", column: "meal_categories_id"
  add_foreign_key "order_meals", "meals", column: "meals_id"
  add_foreign_key "order_meals", "orders", column: "orders_id"
  add_foreign_key "orders", "situations", column: "situations_id"
  add_foreign_key "orders", "users", column: "users_id"
end
