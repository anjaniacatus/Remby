# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091113064152) do

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.text     "description"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firms", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.string   "baseline"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "further_infos", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "description"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offerings", :force => true do |t|
    t.string   "title"
    t.string   "permalink"
    t.text     "description"
    t.datetime "on_line"
    t.datetime "dead_line"
    t.integer  "firm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "family_name"
    t.string   "name"
    t.string   "town"
    t.string   "sex"
    t.string   "permalink"
    t.text     "comment"
    t.date     "birthday"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualifications", :force => true do |t|
    t.string   "permalink"
    t.string   "name"
    t.string   "domain"
    t.string   "school"
    t.integer  "study_duration"
    t.date     "obtain_at"
    t.text     "comment"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.string   "permalink"
    t.string   "name"
    t.string   "level"
    t.text     "description"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
