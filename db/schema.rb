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

ActiveRecord::Schema.define(version: 20140216165042) do

  create_table "aeronaves", force: true do |t|
    t.string   "nombre"
    t.integer  "max_marcianos"
    t.integer  "nave_origen"
    t.integer  "nave_destino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movimientos", force: true do |t|
    t.integer  "tipo_movimiento"
    t.integer  "pasajero_id"
    t.integer  "aeronave_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nave_nodrizas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pasajeros", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "aeronave_id"
  end

  create_table "revision_pasajeros", force: true do |t|
    t.integer  "revision_id"
    t.integer  "pasajero_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revisions", force: true do |t|
    t.string   "revisior"
    t.integer  "aeronave_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
