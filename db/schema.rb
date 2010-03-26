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

ActiveRecord::Schema.define(:version => 20100326141326) do

  create_table "civil_statuses", :force => true do |t|
    t.string   "family_name"
    t.string   "name"
    t.integer  "age"
    t.date     "birthday"
    t.string   "hometown"
    t.string   "current_city"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "compagnies", :force => true do |t|
    t.string   "name"
    t.string   "headquaters"
    t.integer  "registration_number"
    t.string   "legal_form"
    t.string   "activity"
    t.string   "sector"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_sheets", :force => true do |t|
    t.string   "position"
    t.string   "fields"
    t.string   "mission"
    t.string   "competence"
    t.string   "experience"
    t.string   "task"
    t.string   "degree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
