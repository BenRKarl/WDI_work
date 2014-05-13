class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :image_url
      t.integer :diamter
      t.integer :mass
      t.boolean :ife

      t.timestamps
    end
  end
end
