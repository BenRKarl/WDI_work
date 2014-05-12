class DropCelebrityChefsIdFromDishes < ActiveRecord::Migration
  # 'change' function not reversible
  # def change
  #   remove_column :dishes, :celebrity_chef_id
  # end

  def up
    remove_column :dishes, :celebrity_chef_id
  end

  def down
    add_column :dishes, :celebrity_chef_id, :integer
  end

end
