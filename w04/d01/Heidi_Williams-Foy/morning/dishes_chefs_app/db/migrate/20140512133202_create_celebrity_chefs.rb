class CreateCelebrityChefs < ActiveRecord::Migration
  def change
    create_table :celebrity_chefs do |t|
      t.string :name
      t.string :age
      t.boolean :bleached_goatee

      t.timestamps
    end
  end
end
