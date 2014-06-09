class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.integer :side_length
      t.integer :border_radius
      t.string :color

      t.timestamps
    end
  end
end
