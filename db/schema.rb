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

ActiveRecord::Schema.define(version: 2019_03_28_100441) do

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
    t.integer "win_mini_challenge"
    t.integer "win_maxi_challenge"
    t.integer "safe_or_survives"
    t.integer "placed_in_top"
    t.integer "placed_in_bottom"
    t.integer "wins_lipsync"
    t.integer "loses_lipsync"
    t.integer "eliminated"
    t.integer "takes_the_crown"
    t.integer "total_score"
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
