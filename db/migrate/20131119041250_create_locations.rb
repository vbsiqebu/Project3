class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.text :comments

      t.timestamps
    end
  end
end
