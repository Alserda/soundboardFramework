# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160303180004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "audio_buttons", force: :cascade do |t|
    t.string   "title",                  default: "Title"
    t.string   "url"
    t.hstore   "iphone4positioning"
    t.hstore   "iphone5positioning"
    t.hstore   "iphone6positioning"
    t.hstore   "iphone6pluspositioning"
    t.integer  "soundboard_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.integer  "soundboard_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "button_styles", force: :cascade do |t|
    t.integer  "cornerRadius",               default: 0
    t.string   "backgroundColor",            default: "#FFFFFF"
    t.string   "backgroundColorHighlighted", default: "#666666"
    t.string   "bottomBorderColor",          default: "#666666"
    t.hstore   "font"
    t.integer  "soundboard_id"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "soundboards", force: :cascade do |t|
    t.string   "title"
    t.string   "backgroundColor"
    t.string   "backButtonColor"
    t.string   "statusBarStyle"
    t.string   "backgroundImageURL"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
