class Adding < ActiveRecord::Migration[6.1]
  def change
    add_column:items => special_of_day
  end
end
