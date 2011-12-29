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

ActiveRecord::Schema.define(:version => 20111229203442) do

  create_table "claims", :force => true do |t|
    t.integer  "dibb_id"
    t.integer  "owner_id"
    t.integer  "contender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "claims", ["contender_id"], :name => "index_claims_on_contender_id"
  add_index "claims", ["dibb_id"], :name => "index_claims_on_dibb_id"
  add_index "claims", ["owner_id"], :name => "index_claims_on_owner_id"

  create_table "comments", :force => true do |t|
    t.integer  "claim_id"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["claim_id"], :name => "index_comments_on_claim_id"
  add_index "comments", ["owner_id"], :name => "index_comments_on_owner_id"

  create_table "confirms", :force => true do |t|
    t.integer  "user_id"
    t.integer  "claim_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "confirms", ["claim_id"], :name => "index_confirms_on_claim_id"
  add_index "confirms", ["user_id"], :name => "index_confirms_on_user_id"

  create_table "contenders", :force => true do |t|
    t.integer  "contendent_id"
    t.string   "contendent_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contenders", ["contendent_id"], :name => "index_contenders_on_contendent_id"

  create_table "dibbs", :force => true do |t|
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dibbs", ["owner_id"], :name => "index_dibbs_on_owner_id"

  create_table "likes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["comment_id"], :name => "index_likes_on_comment_id"
  add_index "likes", ["user_id"], :name => "index_likes_on_user_id"

  create_table "nonusers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
