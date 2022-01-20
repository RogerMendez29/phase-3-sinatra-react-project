class CreatingItemTable < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.text :image_url
      t.boolean :availability, default: true
      t.boolean :daily_special, default: false
      t.integer :category_id
      t.timestamps
    end
  end
end
