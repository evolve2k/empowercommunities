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

ActiveRecord::Schema.define(:version => 20091023043701) do

  create_table "area_products", :force => true do |t|
    t.integer  "product_id"
    t.string   "shape"
    t.float    "width"
    t.float    "length"
    t.float    "area"
    t.float    "perimeter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "channels", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "suburb"
    t.string   "post_code"
    t.string   "country"
    t.string   "primary_contact"
    t.string   "position"
    t.string   "contact_number"
    t.string   "website"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "channel_id"
    t.integer  "state_id"
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_roles", :id => false, :force => true do |t|
    t.integer "permission_id"
    t.integer "role_id"
  end

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.date     "first_production"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "product_type_id"
    t.date     "first_production"
    t.date     "ceased_production"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

  create_table "volunteers", :force => true do |t|
    t.text     "given_names"
    t.text     "surname"
    t.text     "preffered_name"
    t.date     "birth_date"
    t.text     "email"
    t.text     "skype_name"
    t.text     "mobile"
    t.text     "home_phone"
    t.text     "work_phone"
    t.text     "business_name"
    t.text     "processed_by"
    t.text     "entered_by"
    t.text     "region"
    t.boolean  "paid"
    t.text     "payment_method"
    t.text     "payment_notes"
    t.text     "personal_skills"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
