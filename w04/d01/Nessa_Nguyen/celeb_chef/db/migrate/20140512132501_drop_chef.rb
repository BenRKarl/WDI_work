class DropChef < ActiveRecord::Migration
#  def change
#    drop_table :celebrity_chefs
#  end

  def up 
    drop_table :celebrity_chefs
  end
    create_table :celebrity_chefs do |t|
      t.string :name
      t.integer :age
      t.boolean :bleached_goatee
      t.timestamps
  def down

  end
end
