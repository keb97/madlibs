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

ActiveRecord::Schema.define(version: 20130909213157) do

  create_table "games", force: true do |t|
    t.string   "word1"
    t.string   "word2"
    t.string   "word3"
    t.string   "word4"
    t.string   "word5"
    t.string   "word6"
    t.string   "word7"
    t.string   "word8"
    t.string   "word9"
    t.string   "word10"
    t.string   "word11"
    t.string   "word12"
    t.string   "word13"
    t.string   "word14"
    t.string   "word15"
    t.string   "word16"
    t.string   "word17"
    t.string   "word18"
    t.string   "word19"
    t.string   "word20"
    t.string   "word21"
    t.string   "word22"
    t.string   "word23"
    t.string   "word24"
    t.string   "word25"
    t.string   "word26"
    t.string   "word27"
    t.string   "word28"
    t.string   "word29"
    t.string   "word30"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "made_game_instances", force: true do |t|
    t.string   "new_word1"
    t.string   "new_word2"
    t.string   "new_word3"
    t.string   "new_word4"
    t.string   "new_word5"
    t.string   "new_word6"
    t.string   "new_word7"
    t.string   "new_word8"
    t.integer  "made_game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "made_games", force: true do |t|
    t.string   "text1"
    t.string   "word1"
    t.string   "text2"
    t.string   "word2"
    t.string   "text3"
    t.string   "word3"
    t.string   "text4"
    t.string   "word4"
    t.string   "text5"
    t.string   "word5"
    t.string   "text6"
    t.string   "word6"
    t.string   "text7"
    t.string   "word7"
    t.string   "text8"
    t.string   "word8"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
