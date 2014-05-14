class CreateCelebrityChefs < ActiveRecord::Migration
  def change
    create_table :celebrity_chefs do |t|
    t.string :name
    t.integer :age
    t.boolean :bleached goatee

  change_column_default(:createcelebritychefs, :bleached_goatee, true)

  end
end
end
