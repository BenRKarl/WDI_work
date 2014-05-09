class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :name #tells db to have a column for name
    end
  end
end
