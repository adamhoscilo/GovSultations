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

ActiveRecord::Schema.define(:version => 20100315160943) do

  create_table "consultation_policy_fields", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "consultation_id"
    t.integer  "policy_field_id"
  end

  add_index "consultation_policy_fields", ["consultation_id"], :name => "index_consultation_policy_fields_on_consultation_id"
  add_index "consultation_policy_fields", ["policy_field_id"], :name => "index_consultation_policy_fields_on_policy_field_id"

  create_table "consultation_target_groups", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "consultation_id"
    t.integer  "target_group_id"
  end

  add_index "consultation_target_groups", ["consultation_id"], :name => "index_consultation_target_groups_on_consultation_id"
  add_index "consultation_target_groups", ["target_group_id"], :name => "index_consultation_target_groups_on_target_group_id"

  create_table "consultations", :force => true do |t|
    t.string   "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "objective"
    t.text     "result_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contact_id"
  end

  add_index "consultations", ["contact_id"], :name => "index_consultations_on_contact_id"

  create_table "contacts", :force => true do |t|
    t.string   "title"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "source_documents_id"
    t.integer  "result_documents_id"
  end

  add_index "documents", ["result_documents_id"], :name => "index_documents_on_result_documents_id"
  add_index "documents", ["source_documents_id"], :name => "index_documents_on_source_documents_id"

  create_table "institutions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "policy_fields", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "target_groups", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
