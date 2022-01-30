class CreateFavoritesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
    t.string :name
    t.text :description
    t.decimal :price
    t.text :image_url
    t.integer :category_id
    t.integer :item_id
    t.text :notes, default: " "
    t.timestamps 
    end
  end
end
