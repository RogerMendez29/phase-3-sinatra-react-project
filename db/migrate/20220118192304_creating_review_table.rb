class CreatingReviewTable < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name 
      t.integer :phone_number
      t.text :email
      t.text :comment
      t.timestamps
    end
  end
end
