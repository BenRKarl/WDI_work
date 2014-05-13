class DropceleberityChefs < ActiveRecord::Migration
  def down
    drop_table :celeberity_chefs
  end
end
