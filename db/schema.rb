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

ActiveRecord::Schema.define(version: 2022_12_19_202841) do

  create_table "ghosts", force: :cascade do |t|
    t.string "name"
    t.integer "age_at_death"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "haunted_houses", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hauntings", force: :cascade do |t|
    t.integer "ghost_id", null: false
    t.integer "haunted_house_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ghost_id"], name: "index_hauntings_on_ghost_id"
    t.index ["haunted_house_id"], name: "index_hauntings_on_haunted_house_id"
  end

  add_foreign_key "hauntings", "ghosts"
  add_foreign_key "hauntings", "haunted_houses"
end
