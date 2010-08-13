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

ActiveRecord::Schema.define(:version => 20100804155307) do

  create_table "agenda_events", :force => true do |t|
    t.string   "requester_name"
    t.string   "requester_email"
    t.integer  "ubication_id"
    t.string   "description"
    t.integer  "event_type_id"
    t.text     "commentaries"
    t.string   "status"
    t.datetime "status_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agenda_reservations", :force => true do |t|
    t.integer  "event_id"
    t.integer  "resource_id"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_event_types", :force => true do |t|
    t.string   "abbr"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_resources", :force => true do |t|
    t.string   "name"
    t.string   "abbr"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "id_color"
  end

  create_table "catalogs_ubications", :force => true do |t|
    t.string   "abbr"
    t.string   "name"
    t.string   "responsible"
    t.string   "tel_ext"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
