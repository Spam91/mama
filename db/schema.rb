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

ActiveRecord::Schema.define(:version => 20140117170018) do

  create_table "bloods", :force => true do |t|
    t.integer  "woman_id"
    t.integer  "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "fname"
    t.string   "sname"
    t.string   "surname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "marital_statuses", :force => true do |t|
    t.string   "marriage_reg"
    t.string   "marriage_unreg"
    t.string   "single"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "woman_infos", :force => true do |t|
    t.integer  "age"
    t.datetime "input"
    t.datetime "output"
    t.integer  "bed"
    t.string   "directed"
    t.string   "home_adress"
    t.string   "tel"
    t.boolean  "invalidity"
    t.integer  "woman_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "women", :force => true do |t|
    t.string   "fname"
    t.string   "sname"
    t.string   "surname"
    t.integer  "history_id"
    t.integer  "doctor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
