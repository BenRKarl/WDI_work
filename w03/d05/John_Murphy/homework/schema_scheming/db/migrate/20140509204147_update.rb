class Update < ActiveRecord::Migration
  def change
    rename_column :comments, :selfie_id, :selfy_id
  end
end
