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

ActiveRecord::Schema.define(:version => 20090817001713) do

  create_table "admin_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", :force => true do |t|
    t.string   "username"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "itunes_url"
    t.string   "cd_baby_url"
    t.string   "rhapsody_url"
    t.string   "amazon_url"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
  end

  create_table "assets", :force => true do |t|
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fan_id"
  end

  create_table "fan_sessions", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fan_statuses", :force => true do |t|
    t.text     "status_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fan_id"
  end

  create_table "fans", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_login_at"
  end

  create_table "link_types", :force => true do |t|
    t.string   "link_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "permalink"
    t.integer  "link_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link_image_file_name"
    t.string   "link_image_content_type"
    t.integer  "link_image_file_size"
    t.datetime "link_image_updated_at"
  end

  create_table "lyrics", :force => true do |t|
    t.text     "description"
    t.string   "permalink"
    t.integer  "song_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photo_albums", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.integer  "photo_album_id"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "fan_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.string   "address"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "shows", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "venue"
    t.string   "address"
    t.datetime "date"
    t.string   "other_bands"
    t.string   "ticket_price"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", :force => true do |t|
    t.integer  "album_id"
    t.string   "title"
    t.text     "description"
    t.string   "track_number"
    t.boolean  "active"
    t.boolean  "downloadable"
    t.boolean  "buy"
    t.string   "itunes_link"
    t.string   "cd_baby_link"
    t.string   "rhapsody_link"
    t.string   "amazon_link"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "song_file_name"
    t.string   "song_content_type"
    t.integer  "song_file_size"
    t.datetime "song_updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "abbreviation", :limit => 2
    t.string   "full_name"
    t.boolean  "display",                   :default => true
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
