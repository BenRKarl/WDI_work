class RemoveCelebrityChefFromDishes < ActiveRecord::Migration
  def change
    remove_column :dishes, :celebrity_chef, :boolean
  end
end
