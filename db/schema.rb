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

ActiveRecord::Schema.define(:version => 20110108154501) do

  create_table "activities", :force => true do |t|
    t.string   "action"
    t.string   "model"
    t.integer  "model_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "name",        :limit => 100
    t.string   "description", :limit => 500
    t.string   "asset"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authorizations", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title",       :limit => 300
    t.string   "description", :limit => 1024
    t.string   "properties",  :limit => 1024
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",       :limit => 100
    t.string   "email",      :limit => 200
    t.string   "avatar_url", :limit => 300
    t.string   "roles"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
