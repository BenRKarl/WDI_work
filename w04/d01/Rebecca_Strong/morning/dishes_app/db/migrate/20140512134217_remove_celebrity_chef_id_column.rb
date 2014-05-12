class RemoveCelebrityChefIdColumn < ActiveRecord::Migration
  def
    remove_column :dishes, :celebrity_chef_id, :integer
  end
end
