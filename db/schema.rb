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

ActiveRecord::Schema[7.2].define(version: 2025_01_10_142325) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
