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

ActiveRecord::Schema.define(version: 2018_10_06_075127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "boundaries", id: :serial, force: :cascade do |t|
    t.string "os"
    t.string "name"
    t.string "kind"
    t.polygon "shape"
    t.string "gss"
    t.index ["os"], name: "index_boundaries_on_os", unique: true
  end

  create_table "codes", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "snac"
    t.string "os"
    t.string "gss"
    t.string "kind"
  end

  create_table "postcodes", id: :serial, force: :cascade do |t|
    t.string "postcode"
    t.string "council"
    t.string "county"
    t.string "electoraldistrict"
    t.string "ward"
    t.string "constituency"
    t.string "country"
    t.string "parish"
    t.geography "latlng", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}, null: false
    t.geography "eastingnorthing", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}, null: false
    t.index ["postcode"], name: "index_postcodes_on_postcode", unique: true
  end

end
