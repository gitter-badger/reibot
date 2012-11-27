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

ActiveRecord::Schema.define(:version => 20121026030251) do

  create_table "lines", :force => true do |t|
    t.integer "profile_id"
    t.string  "data",       :limit => 510
  end

  create_table "notes", :force => true do |t|
    t.datetime "timeset"
    t.string   "sender"
    t.string   "recipient"
    t.string   "text"
  end

  create_table "owners", :force => true do |t|
    t.string "name",       :limit => 100
    t.string "netmasks",   :limit => 100
    t.string "password",   :limit => 100
    t.string "privileges", :limit => 100
  end

  create_table "profiles", :force => true do |t|
    t.string   "title",   :limit => 100
    t.integer  "owner_id"
    t.datetime "timeset"
    t.string   "whoset"
  end

end
