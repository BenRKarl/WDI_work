class AddGlutenBooleanToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :gluten, :boolean
  end
end
