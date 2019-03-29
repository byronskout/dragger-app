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

ActiveRecord::Schema.define(version: 2019_03_29_124644) do

  create_table "fans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
  end

  create_table "queen_stats", force: :cascade do |t|
    t.integer "queen_id"
    t.integer "episode"
    t.integer "win_mini_challenge", null: false
    t.integer "win_maxi_challenge", null: false
    t.integer "safe_or_survives", null: false
    t.integer "placed_in_top", null: false
    t.integer "placed_in_bottom", null: false
    t.integer "wins_lipsync", null: false
    t.integer "loses_lipsync"
    t.integer "eliminated", null: false
    t.integer "takes_the_crown", null: false
  end

  create_table "queens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.string "quote"
  end

  create_table "queenstats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_queens", force: :cascade do |t|
    t.integer "team_id"
    t.integer "queen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "fan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
