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

ActiveRecord::Schema.define(version: 2020_02_09_171405) do

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "address"
    t.string "ems_number"
    t.string "ems_level"
    t.string "emergency_contact_name"
    t.string "emergency_contact_number"
    t.string "email"
    t.string "hire_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_employees_on_email", unique: true
  end

  create_table "runs", force: :cascade do |t|
    t.string "run_number"
    t.string "date"
    t.string "station"
    t.string "time_of_call"
    t.string "onscene"
    t.string "inservice"
    t.string "number"
    t.string "street1"
    t.string "street2"
    t.string "category1"
    t.string "category2"
    t.string "info"
    t.string "shift"
    t.string "name"
    t.string "a2591"
    t.string "a2592"
    t.string "a2551"
    t.string "a2552"
    t.string "a2553"
    t.string "a2571"
    t.string "a2572"
    t.string "a2501"
    t.string "a2502"
    t.string "a2503"
    t.string "a2504"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
