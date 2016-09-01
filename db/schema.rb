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

ActiveRecord::Schema.define(version: 20160901155600) do

  create_table "share_resources", force: :cascade do |t|
    t.string   "resource_uri",             null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "share_count",  default: 0
    t.string   "resource_id"
  end

  create_table "shares", force: :cascade do |t|
    t.integer  "variant_id"
    t.string   "parent_uuid"
    t.string   "uuid"
    t.string   "referrer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["parent_uuid"], name: "index_shares_on_parent_uuid"
    t.index ["uuid"], name: "index_shares_on_uuid"
    t.index ["variant_id"], name: "index_shares_on_variant_id"
  end

  create_table "variants", force: :cascade do |t|
    t.integer  "share_resource_id"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["share_resource_id"], name: "index_variants_on_share_resource_id"
  end

end
