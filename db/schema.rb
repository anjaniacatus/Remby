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

ActiveRecord::Schema.define(:version => 20100915063919) do

  create_table "applications", :force => true do |t|
    t.integer  "job_id"
    t.integer  "cv_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applies", :force => true do |t|
    t.integer  "job_id"
    t.integer  "cv_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "user_id"
    t.binary   "image_file_data"
    t.integer  "job_id"
  end

  create_table "compagnies", :force => true do |t|
    t.string   "name"
    t.string   "headquarters",        :default => "default address"
    t.integer  "registration_number"
    t.string   "legal_form"
    t.string   "activity"
    t.string   "sector"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "validated"
    t.string   "baseline"
    t.text     "description"
    t.binary   "image_file_data"
  end

  create_table "contact_infos", :force => true do |t|
    t.string   "value"
    t.string   "value_format"
    t.text     "description"
    t.string   "contactable_type"
    t.integer  "contactable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cvs", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.integer  "civil_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published"
    t.integer  "field_id"
    t.integer  "job_id"
    t.integer  "application_id"
    t.binary   "image_file_data"
    t.integer  "applies_id"
  end

  create_table "degree_courses", :force => true do |t|
    t.integer  "school_id"
    t.string   "degree_name"
    t.string   "field"
    t.text     "description"
    t.integer  "cv_id"
    t.date     "start_on"
    t.date     "end_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "field_id"
    t.string   "option"
  end

  create_table "domains", :force => true do |t|
    t.string   "ref"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "essais", :force => true do |t|
    t.string   "essai_name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiences", :force => true do |t|
    t.integer  "compagny_id"
    t.integer  "cv_id"
    t.string   "jobtitle"
    t.integer  "job_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "duration"
    t.string   "compagny_name"
  end

  create_table "fields", :force => true do |t|
    t.string   "field_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests", :force => true do |t|
    t.text     "description"
    t.integer  "cv_id"
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

  create_table "jobs", :force => true do |t|
    t.string   "ref"
    t.text     "description"
    t.text     "attribution"
    t.text     "profile"
    t.text     "folder"
    t.datetime "dead_line"
    t.integer  "society_id"
    t.integer  "function_id"
    t.integer  "localisation_id"
    t.integer  "contract_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "compagny_id"
    t.boolean  "published"
    t.integer  "application_id"
    t.string   "job_title"
    t.integer  "applies_id"
  end

  create_table "languages", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cv_id"
  end

  create_table "localisations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "society_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offerings", :force => true do |t|
    t.string   "ref"
    t.string   "object"
    t.text     "conditions"
    t.datetime "dead_line"
    t.integer  "society_id"
    t.string   "content_type"
    t.integer  "size"
    t.string   "filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "other_infos", :force => true do |t|
    t.string   "ref"
    t.string   "name"
    t.text     "description"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "other_skills", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "cv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presentations", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "compagny_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", :force => true do |t|
    t.string   "ref"
    t.string   "name"
    t.text     "description"
    t.date     "founded_on_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.integer  "field_id"
    t.string   "keywords"
    t.date     "after"
    t.date     "before"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slugs", :force => true do |t|
    t.string  "name"
    t.integer "sluggable_id"
    t.integer "sequence",                     :default => 1, :null => false
    t.string  "sluggable_type", :limit => 40
    t.string  "scope",          :limit => 40
  end

  create_table "societies", :force => true do |t|
    t.string   "name"
    t.string   "baseline"
    t.text     "description"
    t.integer  "category"
    t.integer  "sector"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email",                                   :null => false
    t.string   "crypted_password",                        :null => false
    t.string   "password_salt",                           :null => false
    t.string   "persistence_token",                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles",             :default => "member"
  end

end
