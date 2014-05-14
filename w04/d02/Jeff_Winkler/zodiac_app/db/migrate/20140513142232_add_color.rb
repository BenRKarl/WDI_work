class AddColor < ActiveRecord::Migration
  def change
    add_column :protos, :color, :string
  end
end
