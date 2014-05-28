class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :cuisine
      t.integer :prep_time
      t.decimal :cost
      t.integer :celebrity_chef_id
      t.timestamps
    end
  end

  def up
    add_column t.boolean :gluten, default: 'true'
  end

  def down
    remove
  end

end
