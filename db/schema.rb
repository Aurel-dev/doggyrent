# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_13_104427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "check_in_date"
    t.integer "check_out_date"
    t.integer "price_per_day"
    t.integer "site_fees"
    t.integer "amount_paid"
    t.integer "is_refund"
    t.date "canceled_date"
    t.integer "refund_paid"
    t.date "booking_date"
    t.integer "dog_id"
    t.string "status"
    t.integer "check_out_session"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "race"
    t.string "location"
    t.integer "owner_id"
    t.string "name"
    t.integer "age"
    t.integer "price"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "booking_id"
    t.string "user_type"
    t.string "review_by_user"
    t.string "comment"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_type"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.date "birthdate"
    t.string "review"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
