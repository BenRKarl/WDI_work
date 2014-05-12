class CreateSquareModelApps < ActiveRecord::Migration
  def change
    create_table :square_model_apps do |t|
      t.integer :side_length
      t.integer :border_radius
      t.string :color

      t.timestamps
    end
  end
end
