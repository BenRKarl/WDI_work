class CreateJuices < ActiveRecord::Migration
  def change
    create_table :juices do |t|
      t.string :name
      t.string :flavor
      t.integer :rating
      t.string :sizes
      t.string :niclevels
      t.boolean :recommend

      t.timestamps
    end
  end
end
