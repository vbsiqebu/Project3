class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.float :latency
      t.float :bandwidth
      t.references :location, index: true

      t.timestamps
    end
  end
end
