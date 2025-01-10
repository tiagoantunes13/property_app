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

ActiveRecord::Schema[7.2].define(version: 2025_01_10_001951) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price"
    t.string "address"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "square_feet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location"
    t.integer "interior_quality"
    t.integer "materials"
    t.integer "air_conditioning"
    t.integer "heating"
    t.integer "top_floor"
    t.integer "duplex"
    t.integer "area"
    t.integer "common_areas"
    t.integer "year"
    t.integer "parking"
    t.integer "garage"
    t.integer "outdoor_areas"
    t.integer "condominium"
    t.integer "noise"
    t.integer "energy_efficiency"
    t.integer "view"
    t.integer "modern_exterior"
    t.integer "modern_interior"
    t.integer "size"
    t.integer "balconies"
    t.integer "units_in_building"
    t.integer "floor_plan"
    t.integer "bedroom_layout"
    t.integer "new_construction"
    t.integer "central_vacuum"
    t.integer "ethernet"
    t.integer "modern_electrical"
    t.integer "heated_towel_rails"
    t.integer "master_bedroom"
    t.integer "kitchen_island"
    t.integer "exterior_finish"
    t.integer "humidity"
    t.integer "home_automation"
    t.integer "built_in_appliances"
    t.integer "led_lighting"
    t.integer "curtain_rails"
    t.integer "surveillance"
    t.integer "security_door"
    t.integer "electric_blinds"
    t.decimal "total_score", precision: 5, scale: 2
  end
end
