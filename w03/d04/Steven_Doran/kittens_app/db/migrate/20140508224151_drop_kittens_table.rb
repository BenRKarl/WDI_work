class DropKittensTable < ActiveRecord::Migration
  def change
    drop_table :kittens_tables
  end
end
