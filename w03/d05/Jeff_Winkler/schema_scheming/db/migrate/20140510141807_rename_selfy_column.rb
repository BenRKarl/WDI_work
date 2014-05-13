class RenameSelfyColumn < ActiveRecord::Migration
  def change
    rename_column :comments, :sefly_id, :selfy_id
  end
end
