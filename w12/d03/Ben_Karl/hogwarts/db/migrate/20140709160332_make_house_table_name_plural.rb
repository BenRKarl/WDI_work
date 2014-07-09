class MakeHouseTableNamePlural < ActiveRecord::Migration
  def change
    rename_table :house, :houses
  end
end
