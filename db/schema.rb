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

ActiveRecord::Schema.define(version: 2019_03_05_163805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "composants", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "recipe_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ingredient"
    t.integer "price"
    t.index ["ingredient_id"], name: "index_composants_on_ingredient_id"
    t.index ["recipe_id"], name: "index_composants_on_recipe_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "order_id"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.datetime "delivery_date"
    t.index ["order_id"], name: "index_deliveries_on_order_id"
    t.index ["user_id"], name: "index_deliveries_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "price_100gr"
    t.integer "kcal_100gr"
    t.string "ingredient_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "composant_id"
    t.boolean "no", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "day"
    t.index ["composant_id"], name: "index_order_details_on_composant_id"
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "recipes"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.text "name"
    t.string "category"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.integer "cooking_time"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "name"
    t.string "address"
    t.integer "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "composants", "ingredients"
  add_foreign_key "composants", "recipes"
  add_foreign_key "deliveries", "orders"
  add_foreign_key "deliveries", "users"
  add_foreign_key "order_details", "composants"
  add_foreign_key "order_details", "orders"
  add_foreign_key "orders", "users"
end
