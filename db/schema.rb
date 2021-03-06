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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120417210336) do

  create_table "acts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "acts_festivals", :id => false, :force => true do |t|
    t.integer "festival_id"
    t.integer "act_id"
  end

  create_table "buckets", :force => true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries_festivals", :id => false, :force => true do |t|
    t.integer "festival_id"
    t.integer "country_id"
  end

  create_table "festivals", :force => true do |t|
    t.string   "title"
    t.string   "website"
    t.text     "desc"
    t.string   "city"
    t.date     "from"
    t.date     "to"
    t.text     "imageSrc"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", :force => true do |t|
    t.float    "price"
    t.integer  "festival_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
