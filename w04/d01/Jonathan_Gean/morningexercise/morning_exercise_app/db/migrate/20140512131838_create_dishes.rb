class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :cuisine
      t.integer :prep_time
      t.integer :cost
      t.timestamps
    end
  end
end
