class CreateDropCelebrtyChefs < ActiveRecord::Migration
  def change
    drop_table :celebrity_chefs do |t|
      t.timestamps
    end
  end
end
