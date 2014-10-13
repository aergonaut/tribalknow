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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140917210613) do

  create_table "activities", force: true do |t|
    t.integer   "trackable_id"
    t.string    "trackable_type"
    t.integer   "owner_id"
    t.string    "owner_type"
    t.string    "key"
    t.text      "parameters"
    t.integer   "recipient_id"
    t.string    "recipient_type"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "tenant_id"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "owner_id", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "recipient_id", using: :btree
  add_index "activities", ["tenant_id", "created_at"], name: "tenant_id", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "trackable_id", using: :btree

  create_table "answers", force: true do |t|
    t.integer   "question_id"
    t.text      "text"
    t.integer   "score",       default: 0
    t.integer   "tenant_id"
    t.integer   "creator_id"
    t.integer   "updater_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "delta",       default: true
  end

  add_index "answers", ["question_id"], name: "question_id", using: :btree
  add_index "answers", ["tenant_id"], name: "tenant_id", using: :btree

  create_table "app_configs", force: true do |t|
    t.integer  "tenant_id"
    t.string   "key"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "app_configs", ["key"], name: "index_app_configs_on_key", using: :btree
  add_index "app_configs", ["tenant_id"], name: "index_app_configs_on_tenant_id", using: :btree

  create_table "docs", force: true do |t|
    t.string   "doc_group_id"
    t.string   "name"
    t.string   "type"
    t.string   "description"
    t.string   "path"
    t.string   "basepath"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "docs", ["basepath"], name: "index_docs_on_basepath", using: :btree
  add_index "docs", ["doc_group_id"], name: "index_docs_on_doc_group_id", using: :btree

  create_table "friendly_id_slugs", force: true do |t|
    t.string    "slug"
    t.integer   "sluggable_id"
    t.string    "sluggable_type", limit: 50
    t.string    "scope"
    t.timestamp "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "slug", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "sluggable_type", using: :btree

  create_table "notes", force: true do |t|
    t.string   "path"
    t.string   "title"
    t.text     "content"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "delta",      default: true
  end

  add_index "notes", ["path"], name: "index_notes_on_path", using: :btree

  create_table "notifications", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer   "topic_id"
    t.string    "title"
    t.text      "text"
    t.integer   "tenant_id"
    t.integer   "creator_id"
    t.integer   "updater_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "slug"
    t.boolean   "delta",      default: true
  end

  add_index "questions", ["tenant_id"], name: "tenant_id", using: :btree

  create_table "sessions", force: true do |t|
    t.string    "session_id"
    t.text      "data"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "sessions", ["session_id"], name: "session_id", using: :btree
  add_index "sessions", ["updated_at"], name: "updated_at", using: :btree

  create_table "settings", force: true do |t|
    t.string    "var"
    t.text      "value"
    t.integer   "target_id"
    t.string    "target_type"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "site_news", force: true do |t|
    t.integer   "tenant_id"
    t.string    "title"
    t.text      "text"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "creator_id"
    t.integer   "updater_id"
  end

  add_index "site_news", ["tenant_id", "created_at"], name: "tenant_id", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.integer  "tenant_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "taggings_count", default: 0
  end

  add_index "tags", ["name", "tenant_id"], name: "index_tags_on_name_and_tenant_id", unique: true, using: :btree

  create_table "tags_original", force: true do |t|
    t.string    "name"
    t.text      "description"
    t.integer   "tenant_id"
    t.integer   "creator_id"
    t.integer   "updater_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "tags_original", ["name"], name: "name", using: :btree
  add_index "tags_original", ["tenant_id"], name: "tenant_id", using: :btree

  create_table "tenants", force: true do |t|
    t.string    "name"
    t.string    "subdomain"
    t.string    "fqdn"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "new_user_restriction",      default: false
    t.string    "self_serve_allowed_domain"
    t.string    "safe_domains"
    t.boolean   "default",                   default: false
    t.text      "site_title"
    t.text      "landing_page"
    t.text      "footer"
  end

  add_index "tenants", ["fqdn"], name: "domain", using: :btree
  add_index "tenants", ["subdomain"], name: "subdomain", using: :btree

  create_table "topic_files", force: true do |t|
    t.integer   "topic_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "asset_file_name"
    t.string    "asset_content_type"
    t.integer   "asset_file_size"
    t.timestamp "asset_updated_at"
  end

  create_table "topics", force: true do |t|
    t.integer   "parent_topic_id"
    t.string    "name"
    t.string    "description"
    t.text      "content"
    t.integer   "tenant_id"
    t.integer   "creator_id"
    t.integer   "updater_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "slug"
    t.string    "icon_file_name"
    t.string    "icon_content_type"
    t.integer   "icon_file_size"
    t.timestamp "icon_updated_at"
    t.boolean   "delta",             default: true
  end

  add_index "topics", ["tenant_id"], name: "tenant_id", using: :btree

  create_table "user_notifications", force: true do |t|
    t.integer  "user_id"
    t.integer  "notification_id"
    t.boolean  "read",            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string    "provider"
    t.string    "uid"
    t.string    "name"
    t.string    "avatar_url"
    t.boolean   "admin"
    t.integer   "tenant_id"
    t.string    "email",                  default: ""
    t.string    "encrypted_password",     default: ""
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",          default: 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.string    "confirmation_token"
    t.timestamp "confirmed_at"
    t.timestamp "confirmation_sent_at"
    t.string    "unconfirmed_email"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "approved",               default: false
    t.boolean   "active",                 default: true
    t.string    "hipchat_mention_name"
    t.string    "avatar_file_name"
    t.string    "avatar_content_type"
    t.integer   "avatar_file_size"
    t.datetime  "avatar_updated_at"
  end

  add_index "users", ["approved"], name: "approved", using: :btree

  create_table "versions", force: true do |t|
    t.string    "item_type"
    t.integer   "item_id"
    t.string    "event"
    t.string    "whodunnit"
    t.text      "object"
    t.timestamp "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "item_type", using: :btree

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
