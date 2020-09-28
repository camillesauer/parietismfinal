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

ActiveRecord::Schema.define(version: 2020_09_28_180058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ais_articles", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "website_url1"
    t.text "website_url2"
    t.text "video"
    t.text "legend"
    t.text "legend_2"
    t.text "legend_3"
    t.text "legend_4"
    t.text "legend_5"
    t.text "legend_6"
    t.text "legend_7"
    t.text "legend_8"
    t.text "legend_9"
    t.text "legend_10"
    t.text "title"
    t.text "sous_titre"
    t.text "date"
    t.text "lieu"
    t.text "image_url"
    t.text "content"
    t.text "content_2"
    t.text "content_3"
    t.text "content_4"
    t.text "content_5"
    t.text "image_url_2"
    t.text "image_url_3"
    t.text "image_url_4"
    t.text "image_url_5"
    t.text "image_url_6"
    t.text "image_url_7"
    t.text "image_url_8"
    t.text "image_url_9"
    t.text "image_url_10"
    t.text "image_url_11"
    t.text "image_url_12"
    t.text "image_url_13"
    t.text "image_url_14"
    t.text "image_url_15"
    t.text "legend_11"
    t.text "legend_12"
    t.text "legend_13"
    t.text "legend_14"
    t.text "legend_15"
    t.text "content_6"
    t.text "content_7"
    t.text "content_8_en"
    t.text "content_9_en"
    t.text "content_10_en"
    t.text "content_11_en"
    t.text "content_12_en"
    t.text "content_13_en"
    t.text "content_14_en"
    t.text "content_15_en"
  end

  create_table "avatars", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "img_avatar"
    t.string "nom"
    t.string "prenom"
    t.string "bio_url"
    t.string "role"
    t.string "category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "rir_articles", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "url1"
    t.text "url2"
    t.text "video_url"
    t.text "legend1"
    t.text "legend2"
    t.text "legend3"
    t.text "legend4"
    t.text "legend5"
    t.text "legend6"
    t.text "legend7"
    t.text "legend8"
    t.text "legend9"
    t.text "legend10"
    t.text "title_rir"
    t.text "sous_titre_rir"
    t.text "date_rir"
    t.text "lieu_rir"
    t.text "image_1"
    t.text "contenu_1"
    t.text "contenu_2"
    t.text "contenu_3"
    t.text "contenu_4"
    t.text "contenu_5"
    t.text "image_2"
    t.text "image_3"
    t.text "image_4"
    t.text "image_5"
    t.text "image_6"
    t.text "image_7"
    t.text "image_8"
    t.text "image_9"
    t.text "image_10"
    t.text "image_11"
    t.text "image_12"
    t.text "image_13"
    t.text "image_14"
    t.text "image_15"
    t.string "theme_id"
    t.text "legend11"
    t.text "legend12"
    t.text "legend13"
    t.text "legend14"
    t.text "legend15"
    t.text "contenu_6"
    t.text "contenu_7"
    t.text "contenu_8_en"
    t.text "contenu_9_en"
    t.text "contenu_10_en"
    t.text "contenu_11_en"
    t.text "contenu_12_en"
    t.text "contenu_13_en"
    t.text "contenu_14_en"
    t.text "contenu_15_en"
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "themes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name_theme"
    t.string "img_theme"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
