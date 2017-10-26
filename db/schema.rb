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

ActiveRecord::Schema.define(version: 20171026211338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "breakfasts", force: :cascade do |t|
    t.boolean  "entrance"
    t.float    "entrance_value"
    t.boolean  "main_course"
    t.float    "main_course_value"
    t.boolean  "dessert"
    t.float    "dessert_value"
    t.boolean  "drink"
    t.float    "drink_value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "brunches", force: :cascade do |t|
    t.boolean  "entrance"
    t.float    "entrance_value"
    t.boolean  "main_course"
    t.float    "main_course_value"
    t.boolean  "dessert"
    t.float    "dessert_value"
    t.boolean  "drink"
    t.float    "drink_value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "chefs", force: :cascade do |t|
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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name"
    t.string   "image4_content_type"
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "image5_file_name"
    t.string   "image5_content_type"
    t.integer  "image5_file_size"
    t.datetime "image5_updated_at"
    t.string   "image6_file_name"
    t.string   "image6_content_type"
    t.integer  "image6_file_size"
    t.datetime "image6_updated_at"
    t.string   "image7_file_name"
    t.string   "image7_content_type"
    t.integer  "image7_file_size"
    t.datetime "image7_updated_at"
    t.string   "image8_file_name"
    t.string   "image8_content_type"
    t.integer  "image8_file_size"
    t.datetime "image8_updated_at"
    t.string   "image9_file_name"
    t.string   "image9_content_type"
    t.integer  "image9_file_size"
    t.datetime "image9_updated_at"
    t.string   "image10_file_name"
    t.string   "image10_content_type"
    t.integer  "image10_file_size"
    t.datetime "image10_updated_at"
    t.string   "cv_file_name"
    t.string   "cv_content_type"
    t.integer  "cv_file_size"
    t.datetime "cv_updated_at"
    t.string   "name"
    t.string   "last_name"
    t.boolean  "is_female",              default: false
    t.string   "phone"
    t.string   "address"
    t.integer  "zip_code"
    t.datetime "date_of_birth"
    t.text     "summary"
    t.boolean  "is_branchef",            default: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_chefs_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_chefs_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_chefs_on_reset_password_token", unique: true, using: :btree
  end

  create_table "chefs_specialties", id: false, force: :cascade do |t|
    t.integer "chef_id",      null: false
    t.integer "specialty_id", null: false
  end

  create_table "dinners", force: :cascade do |t|
    t.boolean  "entrance"
    t.float    "entrance_value"
    t.boolean  "main_course"
    t.float    "main_course_value"
    t.boolean  "dessert"
    t.float    "dessert_value"
    t.boolean  "drink"
    t.float    "drink_value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lunches", force: :cascade do |t|
    t.boolean  "entrance"
    t.float    "entrance_value"
    t.boolean  "main_course"
    t.float    "main_course_value"
    t.boolean  "dessert"
    t.float    "dessert_value"
    t.boolean  "drink"
    t.float    "drink_value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "specialty_max"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "name"
    t.integer  "months"
    t.integer  "services"
    t.integer  "clients_max"
    t.integer  "base_discount"
    t.integer  "dish_discount"
    t.integer  "dishes_max"
    t.integer  "no_dishes_max"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
