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

ActiveRecord::Schema.define(version: 20151108201947) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frameworks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hackathons", force: :cascade do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "ends"
    t.integer  "location_id"
    t.integer  "teams_id"
    t.string   "picture"
    t.string   "link"
    t.integer  "languages_id"
    t.integer  "frameworks_id"
    t.string   "github"
    t.string   "prize"
    t.integer  "rules_id"
    t.integer  "projects_id"
    t.integer  "tags_id"
    t.integer  "category_id"
    t.integer  "user_id"
    t.string   "desc"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "sponsor_id"
  end

  add_index "hackathons", ["sponsor_id"], name: "index_hackathons_on_sponsor_id"
  add_index "hackathons", ["teams_id"], name: "index_hackathons_on_teams_id"
  add_index "hackathons", ["user_id"], name: "index_hackathons_on_user_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "site"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "contact"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.boolean  "captain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "memberships", ["team_id"], name: "index_memberships_on_team_id"
  add_index "memberships", ["user_id"], name: "index_memberships_on_user_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "team_id"
    t.integer  "user_id"
    t.string   "picture"
    t.string   "desc"
    t.integer  "languages_id"
    t.integer  "frameworks_id"
    t.integer  "tags_id"
    t.integer  "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "projects", ["category_id"], name: "index_projects_on_category_id"
  add_index "projects", ["frameworks_id"], name: "index_projects_on_frameworks_id"
  add_index "projects", ["languages_id"], name: "index_projects_on_languages_id"
  add_index "projects", ["tags_id"], name: "index_projects_on_tags_id"
  add_index "projects", ["team_id"], name: "index_projects_on_team_id"
  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

  create_table "rules", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "picture"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teams", ["user_id"], name: "index_teams_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
