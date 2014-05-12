class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :planet_name
      t.string :planet_url
      t.integer :diameter
      t.integer :mass
      t.boolean :life

      t.timestamps
    end
  end
end
