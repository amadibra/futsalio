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

ActiveRecord::Schema.define(version: 20170111140602) do

  create_table "detail_orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "id_order"
    t.integer  "satuan_sewa"
    t.integer  "id_lapangan"
    t.time     "lama_sewa"
    t.integer  "harga_satuan"
    t.time     "end"
    t.time     "start"
    t.integer  "total"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "kecamatans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nama"
    t.integer  "id_kota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kelurahans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nama"
    t.integer  "id_kecamatan"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "kota", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lapangans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nama"
    t.integer  "id_tempat_futsal"
    t.integer  "satuan_sewa"
    t.string   "jenis"
    t.time     "jam_tutup"
    t.time     "jam_buka"
    t.integer  "harga_satuan"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "id_user"
    t.boolean  "is_expired"
    t.integer  "kode_order"
    t.datetime "tanggal_order"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tempat_futsals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "id_kelurahan"
    t.string   "nama"
    t.string   "alamat"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
