class CreateFavoritesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.text "image_url"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false

    end
  end
end
