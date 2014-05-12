class AddGlutten < ActiveRecord::Migration
  def change
    add_column :dishes, :glutten, :boolean, default: true
  end
end
