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

ActiveRecord::Schema.define(:version => 20110117025230) do

  create_table "accounts", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",                     :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["email"], :name => "index_accounts_on_email", :unique => true
  add_index "accounts", ["reset_password_token"], :name => "index_accounts_on_reset_password_token", :unique => true
  add_index "accounts", ["unlock_token"], :name => "index_accounts_on_unlock_token", :unique => true

  create_table "businesses", :force => true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "street"
    t.string   "locality"
    t.string   "city"
    t.string   "region"
    t.string   "postcode"
    t.string   "country"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "phone"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "budget"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "jobs", :force => true do |t|
    t.integer  "category_id"
    t.string   "job_title"
    t.string   "job_location"
    t.text     "job_description"
    t.text     "company_apply_to"
    t.string   "company_name"
    t.string   "company_url"
    t.string   "company_email"
    t.string   "company_logo_file_name"
    t.string   "company_logo_content_type"
    t.integer  "company_logo_file_size"
    t.datetime "company_logo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", :force => true do |t|
    t.integer  "profile_id"
    t.string   "title"
    t.string   "summary"
    t.string   "url"
    t.string   "screenshot_file_name"
    t.string   "screenshot_content_type"
    t.integer  "screenshot_file_size"
    t.datetime "screenshot_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "title"
    t.integer  "phone"
    t.string   "position"
    t.string   "website"
    t.text     "scratch"
    t.string   "street"
    t.string   "locality"
    t.string   "city"
    t.string   "region"
    t.string   "postcode"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "email"
    t.string   "summary"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "nickname"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "review_id"
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", :force => true do |t|
    t.integer  "business_id"
    t.string   "title"
    t.integer  "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
