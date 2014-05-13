class DeleteTables < ActiveRecord::Migration
  def up
    drop_table :celebrity_chefs
    drop_table :dishes
  end

  def down
    create_table :dishes do |t|
      t.string :cuisine
      t.integer :prep_time
      t.integer :cost
      t.integer :celebrity_chef_id
      t.timestamps
    end
    create_table :celebrity_chefs do |t|
      t.string :name
      t.integer :age
      t.boolean :bleched_goatee
    end
  end

end
