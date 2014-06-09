class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :url
      t.string :name
      t.string :quote
      t.timestamps
    end
  end
end
