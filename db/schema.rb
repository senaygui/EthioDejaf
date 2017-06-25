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

ActiveRecord::Schema.define(version: 20170625130428) do

  create_table "businesses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "business_name",        null: false
    t.string   "business_address",     null: false
    t.string   "business_catagory",    null: false
    t.string   "mobile_number"
    t.string   "business_email"
    t.text     "business_description", null: false
    t.string   "business_photo"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "business_id"
    t.integer  "ratting"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["business_id"], name: "index_reviews_on_business_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "username",               null: false
    t.string   "sex"
    t.text     "bio",        limit: 140
    t.integer  "age"
    t.string   "avatar"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccancies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "business_id"
    t.string   "vaccancy_description", limit: 200, null: false
    t.string   "number_of_people"
    t.string   "availability_status"
    t.integer  "salary"
    t.datetime "come_in_date",                     null: false
    t.string   "vaccancy_photo"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["business_id"], name: "index_vaccancies_on_business_id"
    t.index ["user_id"], name: "index_vaccancies_on_user_id"
  end

end
