class DropCelebId < ActiveRecord::Migration
  def change
    remove_column :dishes, :celebrity_chef_id
  end
end
