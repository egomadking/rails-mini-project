# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_08_145500) do

  create_table "installed_gems", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_installed_gems", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "installed_gem_id", null: false
    t.text "user_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["installed_gem_id"], name: "index_user_installed_gems_on_installed_gem_id"
    t.index ["user_id"], name: "index_user_installed_gems_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "gem_folder"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_installed_gems", "installed_gems"
  add_foreign_key "user_installed_gems", "users"
end
