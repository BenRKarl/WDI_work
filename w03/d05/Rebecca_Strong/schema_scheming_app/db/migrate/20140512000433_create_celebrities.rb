class CreateCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|
      t.string :celebrityname
      t.integer :age
      t.boolean :substance
      t.string :fame
      t.timestamps
    end
  end
end
