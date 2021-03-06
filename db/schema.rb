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

ActiveRecord::Schema.define(version: 20160322143345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drop_members", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "drop_id"
    t.boolean  "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "drop_members", ["drop_id"], name: "index_drop_members_on_drop_id", using: :btree
  add_index "drop_members", ["user_id"], name: "index_drop_members_on_user_id", using: :btree

  create_table "drops", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "state"
    t.text     "description"
    t.datetime "end_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "drops", ["product_id"], name: "index_drops_on_product_id", using: :btree

  create_table "locks", force: :cascade do |t|
    t.integer "required_joins"
    t.decimal "drop_to"
    t.boolean "unlocked"
    t.integer "drop_id"
  end

  add_index "locks", ["drop_id"], name: "index_locks_on_drop_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "msrp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "profile_image_url"
    t.string   "bio"
    t.string   "address"
    t.string   "phone"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "drop_members", "drops"
  add_foreign_key "drop_members", "users"
  add_foreign_key "drops", "products"
  add_foreign_key "locks", "drops"
end
