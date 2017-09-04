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

ActiveRecord::Schema.define(version: 20170904081424) do

  create_table "bays", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "province"
    t.string "city"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_bays_on_name", unique: true
  end

  create_table "cars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "license_number"
    t.string "model"
    t.float "size", limit: 24
    t.bigint "manufacturer_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_cars_on_company_id"
    t.index ["license_number", "company_id"], name: "index_cars_on_license_number_and_company_id", unique: true
    t.index ["manufacturer_id"], name: "index_cars_on_manufacturer_id"
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "registration_number"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registration_number"], name: "index_companies_on_registration_number", unique: true
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_items_on_name", unique: true
  end

  create_table "login_histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.timestamp "date"
    t.timestamp "login_time"
    t.timestamp "logout_time"
    t.bigint "car_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_login_histories_on_car_id"
    t.index ["user_id"], name: "index_login_histories_on_user_id"
  end

  create_table "logins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "car_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_logins_on_car_id"
    t.index ["user_id"], name: "index_logins_on_user_id"
  end

  create_table "manufacturers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_manufacturers_on_name", unique: true
  end

  create_table "transport_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_transport_types_on_name", unique: true
  end

  create_table "transports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.timestamp "date"
    t.timestamp "departure_time"
    t.timestamp "arrival_time"
    t.integer "departure_bay"
    t.string "departure_bay_name"
    t.integer "arrival_bay"
    t.string "arrival_bay_name"
    t.bigint "car_id"
    t.bigint "user_id"
    t.bigint "item_id"
    t.bigint "transport_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_transports_on_car_id"
    t.index ["item_id"], name: "index_transports_on_item_id"
    t.index ["transport_type_id"], name: "index_transports_on_transport_type_id"
    t.index ["user_id"], name: "index_transports_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "cellular_phone"
    t.string "password_digest"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cellular_phone"], name: "index_users_on_cellular_phone", unique: true
    t.index ["company_id"], name: "index_users_on_company_id"
  end

  add_foreign_key "cars", "companies"
  add_foreign_key "cars", "manufacturers"
  add_foreign_key "login_histories", "cars"
  add_foreign_key "login_histories", "users"
  add_foreign_key "logins", "cars"
  add_foreign_key "logins", "users"
  add_foreign_key "transports", "cars"
  add_foreign_key "transports", "items"
  add_foreign_key "transports", "transport_types"
  add_foreign_key "transports", "users"
  add_foreign_key "users", "companies"
end
