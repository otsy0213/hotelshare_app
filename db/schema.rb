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

ActiveRecord::Schema.define(version: 2021_05_08_113301) do

  create_table "inns", force: :cascade do |t|
    t.string "introduction"
    t.integer "price"
    t.string "location"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "inn_id"
    t.integer "people"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_price"
    t.date "start_date"
    t.date "end_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.integer "age"
    t.string "mail"
    t.string "introduction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gender"
    t.string "password_digest"
  end

end
