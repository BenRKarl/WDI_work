class CreateSmartphones < ActiveRecord::Migration
  def change
    create_table :smartphones do |t|
      t.string :model
      t.string :os
      t.timestamps
    end
  end
end
