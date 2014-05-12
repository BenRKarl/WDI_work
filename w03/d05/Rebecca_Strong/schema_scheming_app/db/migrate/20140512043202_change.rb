class Change < ActiveRecord::Migration

  def self.up
    create_table :celebrities do |t|
      t.string :celebrityname
      t.integer :age
      t.boolean :substance
      t.string :fame
      t.timestamps
    end
  end


  def self.down
    change_column_default(:celebrities, :substance, true)
  end
end

