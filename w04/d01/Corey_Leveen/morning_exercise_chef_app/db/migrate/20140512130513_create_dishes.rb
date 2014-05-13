class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :cuisine
      t.integer :prep_time
      t.integer :cost
      t.integer :celebrity_chef_id

      t.timestamps
    end
  end
end
