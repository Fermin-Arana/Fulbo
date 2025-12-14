# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2025_12_14_154600) do
  create_table "booking_courts", force: :cascade do |t|
    t.integer "booking_id", null: false
    t.integer "court_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_courts_on_booking_id"
    t.index ["court_id"], name: "index_booking_courts_on_court_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "date_booking"
    t.integer "payment_method_id"
    t.integer "person_id", null: false
    t.time "time_booking"
    t.datetime "updated_at", null: false
    t.index ["payment_method_id"], name: "index_bookings_on_payment_method_id"
    t.index ["person_id"], name: "index_bookings_on_person_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "courts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.integer "dueno_id", null: false
    t.integer "max_players"
    t.datetime "updated_at", null: false
    t.index ["dueno_id"], name: "index_courts_on_dueno_id"
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.decimal "discount"
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "dni"
    t.string "email"
    t.date "fecha_nacimiento"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "booking_courts", "bookings"
  add_foreign_key "booking_courts", "courts"
  add_foreign_key "bookings", "payment_methods"
  add_foreign_key "bookings", "people"
  add_foreign_key "comments", "people", column: "user_id"
  add_foreign_key "courts", "people", column: "dueno_id"
end
