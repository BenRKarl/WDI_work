class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :image_url
      t.integer :mass
      t.integer :diameter
      t.boolean :life

      t.timestamps
    end
  end
end
