class CreateCelebrityChefs < ActiveRecord::Migration
  def change
    create_table :celebrity_chefs do |t|
      t.string :name
      t.integer :age
      t.boolean :bleached_goatee
      t.timestamps
    end
      drop_table :celebrity_chefs

  end
end
