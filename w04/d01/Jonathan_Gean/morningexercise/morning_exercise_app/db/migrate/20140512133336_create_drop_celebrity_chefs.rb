class CreateDropCelebrityChefs < ActiveRecord::Migration


  def up
        drop_table :celebrity_chefs
  end

  def down
      create_table :celebrity_chefs do |t|
        t.string :name
        t.integer :age
end
 end
end
