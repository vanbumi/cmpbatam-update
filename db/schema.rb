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

ActiveRecord::Schema.define(version: 20160405123311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.integer  "attachinariable_id"
    t.string   "attachinariable_type"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachinary_files", ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree

  create_table "banners", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "banner1"
    t.string   "banner2"
    t.string   "banner3"
    t.string   "banner4"
    t.string   "banner5"
    t.string   "banner6"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "nohp"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cprofiles", force: :cascade do |t|
    t.string   "company_name"
    t.string   "company_phone"
    t.string   "company_mail"
    t.text     "company_address"
    t.string   "company_owner"
    t.string   "company_web"
    t.text     "company_description"
    t.string   "company_logo"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "status"
    t.string   "property_type"
    t.integer  "bedroom"
    t.integer  "bathroom"
    t.decimal  "price"
    t.string   "area"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "images"
    t.string   "slug"
    t.boolean  "banner",             default: false
    t.string   "image_url"
    t.string   "image_url2"
    t.string   "image_url3"
    t.string   "image_url4"
    t.string   "image_url5"
    t.string   "image_url6"
    t.string   "image_description"
    t.string   "image_description2"
    t.string   "image_description3"
    t.string   "image_description4"
    t.string   "image_description5"
    t.string   "image_description6"
    t.string   "active"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
