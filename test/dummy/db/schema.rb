# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_30_193234) do

  create_table "feedback", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "email"
    t.text "text"
    t.text "response"
    t.integer "status", default: 0
    t.string "version"
    t.boolean "notify"
    t.integer "user_id"
    t.integer "category", default: 0
    t.integer "owner_id"
    t.integer "priority", default: 0
    t.integer "impact"
    t.integer "confidence"
    t.integer "ease"
    t.integer "ice_score", default: 0
    t.datetime "closed_at"
    t.string "reported_version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_feedback_on_owner_id"
    t.index ["user_id"], name: "index_feedback_on_user_id"
  end

  create_table "feedback_comments", force: :cascade do |t|
    t.integer "ticket_id", null: false
    t.integer "user_id", null: false
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticket_id"], name: "index_feedback_comments_on_ticket_id"
    t.index ["user_id"], name: "index_feedback_comments_on_user_id"
  end

  create_table "feedback_tickets", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "text"
    t.text "response"
    t.integer "status"
    t.string "version"
    t.boolean "notify"
    t.integer "category"
    t.integer "priority"
    t.string "reported_version"
    t.datetime "closed_at"
    t.string "title"
    t.integer "confidence"
    t.integer "impact"
    t.integer "ease"
    t.integer "ice_score"
    t.integer "user_id", null: false
    t.integer "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_feedback_tickets_on_owner_id"
    t.index ["user_id"], name: "index_feedback_tickets_on_user_id"
  end

  add_foreign_key "feedback_comments", "tickets"
  add_foreign_key "feedback_comments", "users"
  add_foreign_key "feedback_tickets", "owners"
  add_foreign_key "feedback_tickets", "users"
end
