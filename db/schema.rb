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

ActiveRecord::Schema.define(version: 20161128171530) do

  create_table "apps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "appToken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state_id"
    t.index ["state_id"], name: "index_apps_on_state_id", using: :btree
  end

  create_table "bug_nos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bugs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "state_id"
    t.string   "status"
    t.string   "priority"
    t.text     "comment",    limit: 65535
    t.integer  "bugnumber"
    t.string   "app_name"
    t.string   "app_token"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "app_id"
    t.index ["app_id"], name: "index_bugs_on_app_id", using: :btree
    t.index ["state_id"], name: "index_bugs_on_state_id", using: :btree
  end

  create_table "counters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "device_name"
    t.string   "device_os"
    t.integer  "device_memory"
    t.integer  "device_storage"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
