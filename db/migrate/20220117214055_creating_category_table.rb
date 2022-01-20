class CreatingCategoryTable < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.boolean :display, default: true
    end
  end
end
