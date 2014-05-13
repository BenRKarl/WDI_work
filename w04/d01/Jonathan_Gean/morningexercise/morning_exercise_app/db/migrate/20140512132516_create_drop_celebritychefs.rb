class CreateDropCelebritychefs < ActiveRecord::Migration
  def change
    drop_table :celebrity_chefs
    end
  end
end
