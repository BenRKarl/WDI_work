class ChangeRaces < ActiveRecord::Migration
  def self.up
    # rename_column :table_name, :old_column, :new_column
    rename_column :races, :date, :race_date
    rename_column :races, :time, :finish_time
  end
  def self.down
    # rename back if you need or do something else or do nothing
  end
end
