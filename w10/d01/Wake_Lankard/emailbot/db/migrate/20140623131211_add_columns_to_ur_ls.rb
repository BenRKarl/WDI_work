class AddColumnsToUrLs < ActiveRecord::Migration
  def change
    add_column :urls, :url, :string
  end
end
