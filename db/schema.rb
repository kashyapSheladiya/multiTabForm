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

ActiveRecord::Schema.define(version: 2020_04_14_134448) do

  create_table "admissions", force: :cascade do |t|
    t.string "name"
    t.date "dob"
    t.string "gender"
    t.string "email"
    t.string "country"
    t.string "address"
    t.string "dadname"
    t.string "momname"
    t.string "dadoccupation"
    t.string "momoccupation"
    t.float "secmarks"
    t.float "highsecmarks"
    t.string "media_1_file_name"
    t.string "media_1_content_type"
    t.integer "media_1_file_size"
    t.datetime "media_1_updated_at"
    t.string "media_2_file_name"
    t.string "media_2_content_type"
    t.integer "media_2_file_size"
    t.datetime "media_2_updated_at"
    t.string "media_3_file_name"
    t.string "media_3_content_type"
    t.integer "media_3_file_size"
    t.datetime "media_3_updated_at"
    t.integer "user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "shipping_name"
    t.integer "billing_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string "country"
    t.string "address"
    t.string "name"
    t.date "dob"
    t.text "bio"
    t.string "fb"
    t.string "twitter"
    t.string "Insta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
