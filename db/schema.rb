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

ActiveRecord::Schema.define(:version => 20090814043645) do

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
