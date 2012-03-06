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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120306101258) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "label_id"
    t.integer  "project_id"
    t.integer  "genre_id"
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "labels", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.integer  "project_id"
    t.integer  "musician_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "musicians", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.date     "birth_date"
    t.date     "death_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.boolean  "active"
    t.integer  "set_up_year"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "test_users", :force => true do |t|
    t.integer  "testcolumn"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.string   "type"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_foreign_key "albums", "genres", :name => "albums_genre_id_fk"
  add_foreign_key "albums", "labels", :name => "albums_label_id_fk"
  add_foreign_key "albums", "projects", :name => "albums_project_id_fk"

  add_foreign_key "members", "musicians", :name => "members_musician_id_fk"
  add_foreign_key "members", "projects", :name => "members_project_id_fk"

end
