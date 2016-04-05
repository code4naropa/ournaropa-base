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

ActiveRecord::Schema.define(version: 20160405064506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "ournaropa_calendar_events", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "location"
    t.string   "organizer_name"
    t.string   "organizer_email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "edit_code"
  end

  add_index "ournaropa_calendar_events", ["end_time"], name: "index_ournaropa_calendar_events_on_end_time", using: :btree
  add_index "ournaropa_calendar_events", ["start_time"], name: "index_ournaropa_calendar_events_on_start_time", using: :btree

end
