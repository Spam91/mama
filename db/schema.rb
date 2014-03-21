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

ActiveRecord::Schema.define(:version => 20140318181521) do

  create_table "admin_doctors", :force => true do |t|
    t.string   "fname"
    t.string   "sname"
    t.string   "surname"
    t.string   "email"
    t.integer  "role"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "admin_mkh_groups", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_mkhs", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "mkh_group_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "admin_name_operations", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_name_znebols", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_surgeons", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "zvanie"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "apgars", :force => true do |t|
    t.integer  "afterbir"
    t.integer  "sercebitia"
    t.integer  "duhania"
    t.integer  "colorshkiru"
    t.integer  "tonysmiaziv"
    t.integer  "reflexy"
    t.integer  "child_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "bloods", :force => true do |t|
    t.integer  "number"
    t.boolean  "plusminus"
    t.integer  "gemo"
    t.float    "tutr"
    t.string   "alegreac"
    t.datetime "rw11"
    t.boolean  "rw12"
    t.datetime "rw21"
    t.boolean  "rw22"
    t.datetime "gonorea1"
    t.boolean  "gonorea2"
    t.integer  "woman_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "child_father_bloods", :force => true do |t|
    t.integer  "number1"
    t.boolean  "plusminus1"
    t.integer  "number2"
    t.boolean  "plusminus2"
    t.integer  "child_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "child_infos", :force => true do |t|
    t.datetime "birth"
    t.datetime "input"
    t.datetime "output"
    t.datetime "dead"
    t.datetime "move"
    t.string   "where"
    t.integer  "child_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "children", :force => true do |t|
    t.integer  "history_id"
    t.string   "fname"
    t.string   "sname"
    t.string   "surname"
    t.integer  "woman_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "diagnozs", :force => true do |t|
    t.integer  "tipdia"
    t.integer  "mkh_id"
    t.integer  "woman_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "diamkhs", :force => true do |t|
    t.integer  "diagnoz_id"
    t.integer  "mkh_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctorhistories", :force => true do |t|
    t.integer  "woman_id"
    t.string   "act"
    t.string   "type"
    t.datetime "date"
    t.integer  "doctor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "oglads", :force => true do |t|
    t.integer  "zrist"
    t.integer  "vaga"
    t.float    "temperature"
    t.integer  "vagitnist"
    t.integer  "pology"
    t.date     "menstryacia"
    t.date     "vorshiniaplody"
    t.integer  "tazsp"
    t.integer  "tazcr"
    t.integer  "taztr"
    t.integer  "tazext"
    t.integer  "tazdiag"
    t.integer  "tazvera"
    t.integer  "okryg"
    t.integer  "vusdnamatry"
    t.string   "pologplod"
    t.string   "sercebitia"
    t.string   "legchas"
    t.string   "where"
    t.string   "pologdia"
    t.string   "vagaplod"
    t.integer  "woman_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "operations", :force => true do |t|
    t.integer  "name_operation_id"
    t.datetime "dateandtime"
    t.string   "name_znebol_id"
    t.string   "problem"
    t.integer  "surgeon_id"
    t.integer  "woman_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "params", :force => true do |t|
    t.boolean  "stat"
    t.boolean  "life"
    t.boolean  "stan"
    t.integer  "weight"
    t.integer  "height"
    t.integer  "head"
    t.integer  "body"
    t.integer  "duration"
    t.string   "zahodu"
    t.string   "spad_mot"
    t.string   "spad_fat"
    t.integer  "child_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pologs", :force => true do |t|
    t.datetime "perbeg"
    t.datetime "vodyvid"
    t.string   "qualityvod"
    t.string   "povnevidk"
    t.datetime "begpotug"
    t.integer  "vtratabloods"
    t.integer  "peredchasn"
    t.integer  "woman_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "problems", :force => true do |t|
    t.string   "vadrozv"
    t.string   "pologtravm"
    t.integer  "child_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.integer  "categor"
    t.string   "seria"
    t.string   "number_pos"
    t.string   "national"
    t.string   "palata"
    t.string   "misce_progiv"
    t.string   "sim_stan"
    t.string   "job"
    t.boolean  "vid_akysher"
    t.integer  "raziv"
    t.string   "name_cons"
    t.integer  "woman_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "women", :force => true do |t|
    t.string   "fname"
    t.string   "sname"
    t.string   "surname"
    t.integer  "history_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
