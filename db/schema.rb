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

ActiveRecord::Schema.define(version: 20181024152534) do

  create_table "card_connections", id: false, force: :cascade do |t|
    t.integer "card_a_id", null: false
    t.integer "card_b_id", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.integer "project_board_id"
    t.text "title", limit: 288
    t.text "description"
    t.string "color", default: "#0000FF"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_board_id"], name: "index_cards_on_project_board_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "project_boards", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_project_boards_on_user_id"
  end

  create_table "subscription_plans", force: :cascade do |t|
    t.integer "type"
    t.integer "plan"
    t.integer "number_of_licenses"
    t.float "monthly_charge"
    t.float "annual_charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_lists", force: :cascade do |t|
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_task_lists_on_card_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "task_list_id"
    t.integer "state"
    t.text "description", limit: 288
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_list_id"], name: "index_tasks_on_task_list_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.integer "subscription_plan_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["subscription_plan_id"], name: "index_users_on_subscription_plan_id"
  end

end
