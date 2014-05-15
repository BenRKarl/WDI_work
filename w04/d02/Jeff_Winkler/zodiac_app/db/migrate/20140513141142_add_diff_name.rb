class AddDiffName < ActiveRecord::Migration
  def change
    add_column :protos, :zs, :string
  end
end
