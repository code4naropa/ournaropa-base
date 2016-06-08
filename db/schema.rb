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

ActiveRecord::Schema.define(version: 20160608143004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

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

  create_table "ournaropa_decisions_decisions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ournaropa_decisions_feedbacks", force: :cascade do |t|
    t.text     "content"
    t.string   "email"
    t.boolean  "wants_to_stay_informed"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ournaropa_decisions_reasons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ournaropa_forum_conversations", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "body",       null: false
    t.uuid     "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "ournaropa_forum_conversations", ["author_id"], name: "index_ournaropa_forum_conversations_on_author_id", using: :btree
  add_index "ournaropa_forum_conversations", ["slug"], name: "index_ournaropa_forum_conversations_on_slug", unique: true, using: :btree

  create_table "ournaropa_forum_conversations_users", force: :cascade do |t|
    t.uuid "user_id"
    t.uuid "conversation_id"
  end

  add_index "ournaropa_forum_conversations_users", ["conversation_id"], name: "index_ournaropa_forum_conversations_users_on_conversation_id", using: :btree
  add_index "ournaropa_forum_conversations_users", ["user_id"], name: "index_ournaropa_forum_conversations_users_on_user_id", using: :btree

  create_table "ournaropa_forum_permitted_users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "email",                         null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.boolean  "is_superuser",  default: false, null: false
    t.boolean  "has_signed_up", default: false, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "is_developer",  default: false, null: false
  end

  add_index "ournaropa_forum_permitted_users", ["email"], name: "index_ournaropa_forum_permitted_users_on_email", unique: true, using: :btree

  create_table "ournaropa_forum_replies", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.uuid     "author_id"
    t.uuid     "conversation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "ournaropa_forum_replies", ["author_id"], name: "index_ournaropa_forum_replies_on_author_id", using: :btree
  add_index "ournaropa_forum_replies", ["conversation_id"], name: "index_ournaropa_forum_replies_on_conversation_id", using: :btree

  create_table "ournaropa_forum_user_infos", force: :cascade do |t|
    t.string   "hometown"
    t.string   "major"
    t.string   "age"
    t.text     "description"
    t.boolean  "show_email",          default: false, null: false
    t.uuid     "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "share_email",         default: false, null: false
  end

  add_index "ournaropa_forum_user_infos", ["user_id"], name: "index_ournaropa_forum_user_infos_on_user_id", using: :btree

  create_table "ournaropa_forum_users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "email",                                         null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.string   "password_hash",                                 null: false
    t.string   "reset_token"
    t.boolean  "is_superuser",                  default: false, null: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.boolean  "is_receiving_inactivity_email", default: true,  null: false
    t.datetime "inactivity_email_sent_at"
    t.datetime "seen_at"
    t.boolean  "is_developer",                  default: false, null: false
  end

  add_index "ournaropa_forum_users", ["email"], name: "index_ournaropa_forum_users_on_email", unique: true, using: :btree

  create_table "ournaropa_planner_courses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "instructor"
    t.text     "requirements"
    t.text     "books"
    t.text     "description"
    t.text     "note"
    t.text     "meeting_times"
    t.float    "credits"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "enrollment_current"
    t.integer  "enrollment_maximum"
    t.integer  "enrollment_waitlist"
    t.date     "start_date"
    t.date     "end_date"
  end

  add_index "ournaropa_planner_courses", ["code"], name: "index_ournaropa_planner_courses_on_code", using: :btree

end
