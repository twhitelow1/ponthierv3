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

ActiveRecord::Schema.define(version: 2022_08_25_043854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "offered_services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "picked_services", force: :cascade do |t|
    t.integer "offered_service_id"
    t.integer "quote_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "status"
    t.integer "price"
    t.string "client_name"
    t.string "email"
    t.string "phone"
    t.string "project_type"
    t.string "floors"
    t.integer "building_sqft"
    t.boolean "garage"
    t.string "roof_material"
    t.string "pitch_of_roof"
    t.string "gutter_sqft"
    t.string "ext_material"
    t.boolean "screen_removal"
    t.string "door_material"
    t.integer "flt_surface_sqft"
    t.string "driveway_size"
    t.string "comments"
    t.boolean "roof_services"
    t.boolean "gutter_cleaning"
    t.boolean "building_wash"
    t.boolean "flat_surfaces"
    t.boolean "rust_removal"
    t.boolean "driveway"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "body"
    t.string "header"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
