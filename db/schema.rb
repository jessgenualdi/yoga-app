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

ActiveRecord::Schema.define(version: 20170124024301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anatomies", force: :cascade do |t|
    t.string   "anatomy_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "images"
  end

  create_table "anatomy_poses", force: :cascade do |t|
    t.integer  "anatomy_id"
    t.integer  "pose_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "anatomy_users", force: :cascade do |t|
    t.integer  "anatomy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pose_sequences", force: :cascade do |t|
    t.integer  "pose_id"
    t.integer  "sequence_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "poses", force: :cascade do |t|
    t.string   "name"
    t.text     "instructions"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "sanskrit_name"
    t.string   "image"
  end

  create_table "sequences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_sequences", force: :cascade do |t|
    t.string   "user_id"
    t.string   "integer"
    t.string   "sequence_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "phone_number"
  end

end
