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

ActiveRecord::Schema.define(:version => 20110608150015) do

  create_table "board_surfers", :force => true do |t|
    t.integer  "surfer_id"
    t.integer  "board_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boards", :force => true do |t|
    t.string   "name"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surfers", :force => true do |t|
    t.string   "firstname"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "tel"
    t.integer  "state_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
  end

  add_index "surfers", ["email"], :name => "index_surfers_on_email", :unique => true
  add_index "surfers", ["reset_password_token"], :name => "index_surfers_on_reset_password_token", :unique => true

end
