class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :prep_time
      t.float :cost
      t.integer :celebrity_chef_id

      t.timestamps
    end
  end
end
