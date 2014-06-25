class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :capacity
      t.string :description
      t.integer :user_id
      t.string :category

      t.timestamps
    end
  end
end
