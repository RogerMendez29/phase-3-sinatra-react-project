class CreatingItemTable < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.text :image_url
      t.text :notes, default: " "
      t.boolean :availability, default: true
      t.string :special_day, default: " "
      t.integer :category_id
      t.timestamps
    end
  end
end
