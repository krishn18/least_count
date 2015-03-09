class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :points
      t.integer :points1
      t.integer :points2
      t.integer :points3
      t.integer :points4
      
      t.timestamps null: false
    end
  end
end
