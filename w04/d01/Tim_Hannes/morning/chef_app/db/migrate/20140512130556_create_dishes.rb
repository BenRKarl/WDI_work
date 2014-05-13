class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :cuisine
      t.integer :prep_time
      t.integer :cost
      t.boolean :celebrity_chef

      t.timestamps
    end
  end

  def change
      add_column :dishes, :gluten, :boolean
  end

end
