class AddColumnsToKittens < ActiveRecord::Migration
  def change
    add_column :kittens, :width, :string
    add_column :kittens, :height, :string
  end
end
