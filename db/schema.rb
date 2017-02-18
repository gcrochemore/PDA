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

ActiveRecord::Schema.define(version: 20170218174917) do

  create_table "account_lines", force: :cascade do |t|
    t.string   "name"
    t.integer  "account_id"
    t.integer  "target_account_id"
    t.integer  "source_account_id"
    t.datetime "transaction_date"
    t.datetime "debit_date"
    t.integer  "third_party_id"
    t.float    "amount"
    t.integer  "label_id"
    t.boolean  "activated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "account_lines_labels", force: :cascade do |t|
    t.integer  "account_line_id"
    t.integer  "label_id"
    t.boolean  "activated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "bank_id"
    t.float    "initial_amount"
    t.boolean  "activated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "announcements", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "publisher"
    t.datetime "date"
    t.float    "price"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "import_lines", force: :cascade do |t|
    t.string   "name"
    t.integer  "import_id"
    t.string   "data"
    t.integer  "account_line_id"
    t.boolean  "activated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imports", force: :cascade do |t|
    t.string   "name"
    t.integer  "account_id"
    t.binary   "file"
    t.boolean  "activated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", force: :cascade do |t|
    t.string   "name"
    t.integer  "interactions_type_id"
    t.datetime "date"
    t.string   "comments"
    t.integer  "property_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "interactions_types", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_label_id"
    t.boolean  "activated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.string   "house_number"
    t.string   "street"
    t.string   "city"
    t.string   "postal_code"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "property_picture_id"
  end

  create_table "property_pictures", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "third_parties", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "parent_id"
    t.integer  "label_id"
    t.boolean  "activated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicle_kilometric_statements", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.datetime "date"
    t.float    "mileage"
    t.float    "use_duration"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "vehicle_kilometric_statements", ["vehicle_id"], name: "index_vehicle_kilometric_statements_on_vehicle_id"

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
