class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.string :color
      t.integer :side_length
      t.integer :border_radius
      t.timestamps
    end
  end
end

