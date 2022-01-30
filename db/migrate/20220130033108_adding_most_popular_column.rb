class AddingMostPopularColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :popular, :boolean, default: false
  end
end
