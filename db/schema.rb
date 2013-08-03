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

ActiveRecord::Schema.define(:version => 20130731032311) do

  create_table "agendas", :force => true do |t|
    t.integer  "meeting_id"
    t.string   "agenda_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "meetings", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.string   "attendees"
    t.string   "agenda"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "minutes", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.string   "attendees"
    t.string   "agenda"
    t.string   "content"
    t.string   "actionpoints"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
