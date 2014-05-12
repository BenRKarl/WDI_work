class ChangeNameToUrlForKittens < ActiveRecord::Migration
  def change
    rename_column :kittens, :name, :url
  end
end
