class AddGlutenDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :gluten, :boolean, :default => false
  end
end
